 //初始化datatable
function initdatatable() {
    table = $('.dataTables-example').DataTable({
        dom: '<"html5buttons"B>lTfgitp',
        buttons: [
            {extend: 'copy'},
            {extend: 'csv'},
            {extend: 'excel', title: 'ExampleFile'},
            {extend: 'pdf', title: 'ExampleFile'},

            {extend: 'print',
             customize: function (win){
                    $(win.document.body).addClass('white-bg');
                    $(win.document.body).css('font-size', '10px');

                    $(win.document.body).find('table')
                            .addClass('compact')
                            .css('font-size', 'inherit');
            }
            }
        ]

    });
}
//按字段计数查询
function searchbycol(col,table_name) {
    var sql = "select  "+col+",count(1) as qty from  "+table_name+" group by "+col;
    search(sql,table_name);
}
//按sql查询
function searchbysql(table_name) {
    layer.open({
         title : 'sql输入框'
        ,maxWidth: '900px'
        ,content:
        '<textarea name="sqlinput" id="sqlinput" cols="60" rows="10">Select * From '+table_name+';</textarea> '
,yes:function (index, layero) {

            var sqlinput = $('#sqlinput').val();
            search(sqlinput,table_name);
        }

    })
}
//添加 restapi 接口
function addrestapi(table_name,type) {
     $.ajax({
        url:"/api/",
        type:"post",
        data:{"type":type,'table_name':table_name,'comefrom':'datatable'},
        success:function(data){
           console.log(data)
            window.location.reload();
        }
     })
}
//显示仍然可以添加的 api类型
function menu_restapi(table_name) {
    var sql = "select `get`,`post`,`put`,`delete` from t_map where table_name = '"+table_name+"'";
    var result;
    $.ajax({
        url:"/search/sql",
        type:"get",
        data:{"sql":sql,'table_name':table_name},
        success:function(data){
            var _html = '';
            result = data.content.values;
            for(i=0;i<data.content.cols.length;i++){
                for(j=0;j<data.content.values.length;j++){
                    if(data.content.values[j][data.content.cols[i]] == null || data.content.values[j][data.content.cols[i]] == ''){
                        if(data.content.cols[i] == 'get'){
                            _html += '<li><a href="#" onclick="addrestapi(\''+table_name+'\',\'get\')">GET（获取内容）</a></li>'
                        }else if(data.content.cols[i] == 'post'){
                            _html +=  '<li><a href="#" onclick="addrestapi(\''+table_name+'\',\'post\')">POST（新增内容）</a></li>'
                        }else if(data.content.cols[i] == 'put'){
                            _html +=  '<li><a href="#" onclick="addrestapi(\''+table_name+'\',\'put\')">PUT（修改内容）</a></li>'
                        }else if(data.content.cols[i] == 'delete'){
                            _html +=  '<li><a href="#" onclick="addrestapi(\''+table_name+'\',\'delete\')">DELETE（删除内容）</a></li>'
                        }

                    }
                }
            }

            $('#menu_restapi').after(_html);
        }
    });

}
//结果显示
function showmsg(msg) {
    var alter = $('#alter');
    alter.html('');
    alter.show();
    alter.html(msg);
}
//查询基础方法
function search(sql,table_name) {
    table.destroy();
    $.ajax({
        url:"/search/sql",
        type:"get",
        data:{"sql":sql,'table_name':table_name},
        success:function(data){
            console.log(data)
            var cols = data.content.cols;
            var values = data.content.values;
            var cols_html = '<tr>';
            var values_html = '';
            for(i=0;i<cols.length;i++){
                cols_html+= '<th>'+cols[i]+'</th>'
            }
            if(cols.indexOf('id')!='-1'){
                cols_html+= '<th>操作</th>';
            }

            cols_html+= '</tr>';
            $('#table_thead').html(cols_html);

            for(j=0;j<values.length;j++){
                values_html += '<tr>';
                for(i=0;i<cols.length;i++){
                    values_html += '<td>'+values[j][cols[i]]+'</td>';
                }
                if(cols.indexOf('id')!='-1'){
                    values_html += '<td><a href="">Edit</a> | <a href="">Del</a></td>';
                }

                values_html += '</tr>';
            }
            $('#table_tbody').html(values_html);
            initdatatable();
            showmsg(sql+'   此语句查询成功!');

        }
    })
}
//导入功能
function importexcel(table_name){
    layer.open({
        title : '导入向导'
        ,maxWidth: '900px'
        ,content:
            '<form  id="upload_form" enctype="multipart/form-data" method="post" target="upload_proxy" style="display:inline-block;">'+
            '<lable><span class="c-gridinputmust pr10">*</span>请选择导入文件：</lable>'+
            '<input type="file" id="importPrivateHost" name="importPrivateHost">'+
            '<input type="text"  name="table_name" value="'+table_name+'" hidden>'+
            '<span class="import-file-name ml15"></span>'+
            '<p style="color:#666;padding:10px 0 0 5px;"></p>'+
            '<p class="">温馨提示：<br>文件类型支持xls、xlsx;  <br></p>'+
            '</form>'
        ,yes:function (index, layero) {
             layer.closeAll();
             layer.load(1, {shade: [0.1,'#fff'] });
             var form = new FormData(document.getElementById("upload_form"));
             $.ajax({
                url:"/scaffold/importexcel",
                type:"post",
                data:form,
                processData:false,
                contentType:false,
                success:function(data){
                    layer.closeAll();
                    showmsg(data);
                    window.location.reload()

                }
             })

        }
    })
}