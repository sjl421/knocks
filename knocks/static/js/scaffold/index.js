//文件上传
function file(obj) {
        layer.open({
            title : '导入向导'
            ,maxWidth: '900px'
            ,content:
                '<form  id="upload_form" enctype="multipart/form-data" method="post" target="upload_proxy" style="display:inline-block;">'+
                '<lable><span class="c-gridinputmust pr10">*</span>请输入项目名称：</lable>'+
                '<input type="text" class="form-control" id="projectname" name="projectname" value="" onkeyup="value=value.replace(/[\\W]/g,\'\') " onbeforepaste="clipboardData.setData(\'text\',clipboardData.getData(\'text\').replace(/[^\\d]/g,\'\'))" placeholder="请输入项目名称,只能数字和英文">'+
                // '<input type="text" class="form-control" id="email" name="email" value="" placeholder="请输入EMAIL，用于接收最终生成的信息">'+
                '<p></p>'+
                '<lable><span class="c-gridinputmust pr10">*</span>请选择导入文件：</lable>'+
                '<input type="file" id="importPrivateHost" name="importPrivateHost">'+
                '<span class="import-file-name ml15"></span>'+
                '<p style="color:#666;padding:10px 0 0 5px;"></p>'+
                '<p class="">温馨提示：<br>文件类型支持xls、xlsx;  <br></p>'+
                '</form>'
        ,yes:function (index, layero) {

            var projectname = $('#projectname').val();
            // var email = $('#email').val();

            if(!projectname){
                $('#output').append(">没有填写项目名称～ \n");
                return;
            }else {
                 var form = new FormData(document.getElementById("upload_form"));
                 var output = $('#output');
                 $.ajax({
                    url:"/scaffold/index",
                    type:"post",
                    data:form,
                    processData:false,
                    contentType:false,
                    success:function(data){
                        layer.closeAll();
                        output.append(">Upload Done \n");
                        var origin = document.location.origin;

                        if(data['err']){
                            output.append(">"+data['err']+" \n");
                        }

                        if(data['cols']){
                            var cols = data['cols'];
                            var _html = '<th>#</th>';
                            var _html2 = '<td>1</td>';
                            var _html3 = '';
                            for(i=0;i<cols.length;i++){
                                if (cols[i] != ''){
                                    _html += "<th>"+cols[i]+"</th>"
                                    _html2 += "<td>col_"+[i]+"</td>"
                                }
                            }

                            _html += '<th>操作</th>';
                            _html2 += '<td><a href="">edit</a> | <a href="">del</a></td>';

                            var table_name = 't_'+data['project'];
                            var project_url = origin+"/datatable/"+data['project'];

                            _html3 += "项目名称: "+data['project']+"\n";
                            _html3 += "数据库表名: "+table_name+"\n" ;
                            _html3 += "项目页面url: "+project_url+"\n" ;

                            var btn_html = '<button id="btn_excute" class="btn btn-primary" onclick="excute(\''+cols+'\',\''+table_name+'\')" hidden >生成页面</button>';


                            $('#th').html(_html);
                            $('#td').html(_html2);
                            $('#show').show();
                            $('#show').html(_html3);
                            $('#show').after(btn_html);

                        }

                    },
                    error:function(e){
                        $('#output').append(">错误！！\n");
                    }
                });
            }


        }
        });

    }



function excute(cols,table_name) {
     $.ajax({
        url:"/scaffold/excute",
        type:"post",
        data:{"cols":cols,"table_name":table_name,"comefrom":"datatable"},
        success:function(data){
            $('#output').append(">"+data+"\n");

        }
     })
}