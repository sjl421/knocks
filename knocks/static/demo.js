/**
 * Created by liaoyangyang1 on 2017/12/13.
 */

//数组去除某个值
function removeByValue(arr, val) {
    for(var i=0; i<arr.length; i++) {
        if(arr[i] == val) {
            arr.splice(i, 1);
            break;
        }
    }
}


// 最简单数组去重法
function unique1(array){
    var n = []; //一个新的临时数组
    //遍历当前数组
    for(var i = 0; i < array.length; i++){
        //如果当前数组的第i已经保存进了临时数组，那么跳过，
        //否则把当前项push到临时数组里面
        if (n.indexOf(array[i]) == -1) n.push(array[i]);
    }
    return n;
}


//dom元素是否包含该class
function hasClass(element, cls) {
    return (' ' + element.className + ' ').indexOf(' ' + cls + ' ') > -1;
}

// 判断是否数组
function isArray(o){
    return Object.prototype.toString.call(o)=='[object Array]';
}

function bouncer(arr) {
    // Don't show a false ID to this bouncer.
    return arr.filter(function(val){
        return !(!val || val === ""||val.length==0);
    });
}
//获取url中的get参数
function GetQueryString(name)
{
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if(r!=null)return  unescape(r[2]); return null;
}


/**
 * Created by liaoyangyang1 on 2017/11/29.
 */
$.post("<?= Url::to('@web/app/appcolvalue') ?>", {'appid': appid,'colname':colname}, function(o) {
    if (o.code == 0) {
        console.log(o.data);
    }
});



//向上移动
function moveFileUp(obj){
    //alert(trId);
    var objParentTR = $('#'+obj);
    var prevTR = objParentTR.prev();
    if (prevTR.length > 0) {
        var name=prevTR.attr('name');
        if(name=='header'){
        }else{
            prevTR.insertAfter(objParentTR);
            fillFileXh();//移动后，要重新排序号
        }
    }
}
//移动后，要重新排序号
function fillFileXh(){
    var count=1;
    $("#cjtable").each(function(i){
        this.value = count;
        count++;
    });
}



function daydayup(obj) {
    var tr = $('#'+obj);
    var ptr = tr.prev();


    if(tr[0].rowIndex >1){
        tmp = ptr[0].rowIndex;
        ptr[0].rowIndex = tr[0].rowIndex;
        tr[0].rowIndex=tmp;

        console.log(tr[0].rowIndex);
        console.log(ptr[0].rowIndex);
    }else{
        console.log(tr[0].rowIndex);
    }

}

function submit() {
    console.log(111)

    $.ajax({
        url:'/test/home',
        data:{'todo':'gogogo'},
        dataType:'json',
        type:'post',
        success:function (o) {
            console.log(o)
            layer.msg('修改成功',{icon:1,time:2000});
        },
        error:function (data) {
            layer.msg('程序出错',{icon:2,time:2000})
        }
    });

}

//以下实例将显示当前时间。 setInterval() 方法设置每秒钟执行一次代码，就是手表一样。
//然后你可以使用clearInterval() 方法来停止执行。
var myVar=setInterval(function(){myTimer()},1000);
function myTimer(){
    var d=new Date();
    var t=d.toLocaleTimeString();
    document.getElementById("demo").innerHTML=t;
}
function myStopFunction(){
    clearInterval(myVar);
}

//setTimeout() 方法会返回某个值。在上面的语句中，值被储存在名为 t 的变量中。假如你希望取消这个 setTimeout()，你可以使用这个变量名来指定它。
//setTimeout() 的第一个参数是含有 JavaScript 语句的字符串。这个语句可能诸如 "alert('5 seconds!')"，或者对函数的调用，诸如 alertMsg()"。
var myVar;

function myFunction()
{
    myVar=setTimeout(function(){alert("Hello")},3000);
}

function myStopFunction()
{
    clearTimeout(myVar);
}