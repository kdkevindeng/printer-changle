
function getformvalue() {
    var formdata=new Object();
    formdata.id=$("[name='id']").val();
    formdata.quanbanzongliang=$("[name='quanbanzongliang']").val();
    formdata.hetonghao=$("[name='hetonghao']").val();
    formdata.pinming=$("[name='pinming']").val();
    formdata.huohao=$("[name='huohao']").val();
    formdata.guige=$("[name='guige']").val();
    formdata.sehao=$("[name='sehao']").val();
    formdata.shuliang=$("[name='shuliang']").val();
    formdata.guohao=$("[name='guohao']").val();
    formdata.fenshu=$("[name='fenshu']").val();
    formdata.riqi=$("[name='riqi']").val();
    formdata.caijiangong=$("[name='caijiangong']").val();
    formdata.shoubian=$("[name='shoubian']").val();
    formdata.hejian=$("[name='hejian']").val();
    formdata.baolingbian=$("[name='baolingbian']").val();
    formdata.baoxiu=$("[name='baoxiu']").val();
    formdata.hexiu=$("[name='hexiu']").val();
    formdata.dajie=$("[name='dajie']").val();
    formdata.hefeng=$("[name='hefeng']").val();
    formdata.sizhen=$("[name='sizhen']").val();
    formdata.baocha=$("[name='baocha']").val();
    formdata.baojiaokou=$("[name='baojiaokou']").val();
    formdata.luyao=$("[name='luyao']").val();
    formdata.dingbiao=$("[name='dingbiao']").val();
    formdata.shangsongjindai=$("[name='shangsongjindai']").val();
    formdata.hecha=$("[name='hecha']").val();
    formdata.pingban=$("[name='pingban']").val();
    formdata.latiao=$("[name='latiao']").val();
    formdata.beizhu=$("[name='beizhu']").val();
    debugger;
    return formdata;
}
function loaddata(formdata) {
    $("[name='id']").text(formdata.id);
    $("[name='quanbanzongliang']").text(formdata.quanbanzongliang);
    $("[name='hetonghao']").text(formdata.hetonghao);
    $("[name='pinming']").text(formdata.pinming);
    $("[name='huohao']").text(formdata.huohao);
    $("[name='guige']").text(formdata.guige);
    $("[name='sehao']").text(formdata.sehao);
    $("[name='shuliang']").text(formdata.shuliang);
    $("[name='guohao']").text(formdata.guohao);
    $("[name='fenshu']").text(formdata.fenshu);
    $("[name='riqi']").text(formdata.riqi);
    $("[name='caijiangong']").text(formdata.caijiangong);
    $("[name='shoubian']").text(formdata.shoubian);
    $("[name='hejian']").text(formdata.hejian);
    $("[name='baolingbian']").text(formdata.baolingbian);
    $("[name='baoxiu']").text(formdata.baoxiu);
    $("[name='hexiu']").text(formdata.hexiu);
    $("[name='dajie']").text(formdata.dajie);
    $("[name='hefeng']").text(formdata.hefeng);
    $("[name='sizhen']").text(formdata.sizhen);
    $("[name='baocha']").text(formdata.baocha);
    $("[name='baojiaokou']").text(formdata.baojiaokou);
    $("[name='luyao']").text(formdata.luyao);
    $("[name='dingbiao']").text(formdata.dingbiao);
    $("[name='shangsongjindai']").text(formdata.shangsongjindai);
    $("[name='hecha']").text(formdata.hecha);
    $("[name='pingban']").text(formdata.pingban);
    $("[name='latiao']").text(formdata.latiao);
    $("[name='beizhu']").text(formdata.beizhu);
}
function init_home_button() {
    $("[name='printbtn']").click(function () {
        //document.location.href=generate_url("print.jsp",getformvalue());
        //document.location.href="print.jsp?formdata="+encodeURI(JSON.stringify(getformvalue()));
        var formdata=getformvalue();
        if(formdata.quanbanzongliang==null||formdata.quanbanzongliang==undefined||formdata.quanbanzongliang===""){
            alert("全板总量不可为空！格式必须为数字用,隔开！");
        }else {
            $("form").attr("action","/printer/print.do");
            $("form").submit();
        }
    });
    $("[name='previewbtn']").click(function () {
        //document.location.href=generate_url("preview.jsp",getformvalue());
        //document.location.href="preview.jsp?formdata="+encodeURI(JSON.stringify(getformvalue()));
        var formdata=getformvalue();
        var quanbanzongliang=formdata.quanbanzongliang;
        if(quanbanzongliang==null||quanbanzongliang==undefined||quanbanzongliang===""){
            alert("全板总量不可为空！格式必须为数字用英文状态下的.隔开！");
        }else {
            $("form").attr("action","/printer/preview.do");
            $("form").submit();
        }
    });
}

function generate_url(url,formdata) {
    var url=url+"?";
    url=url+"id ="+formdata.id;
    url=url+"&quanbanzongliang ="+formdata.quanbanzongliang;
    url=url+"&hetonghao="+formdata.hetonghao ;
    url=url+"&pinming="+formdata.pinming ;
    url=url+"&huohao ="+formdata.huohao;
    url=url+"&guige="+formdata.guige ;
    url=url+"&sehao="+formdata.sehao ;
    url=url+"&shuliang ="+formdata.shuliang;
    url=url+"&guohao ="+formdata.guohao;
    url=url+"&fenshu ="+formdata.fenshu;
    url=url+"&riqi ="+formdata.riqi;
    url=url+"&caijiangong="+formdata.caijiangong ;
    url=url+"&shoubian ="+formdata.shoubian;
    url=url+"&hejian ="+formdata.hejian;
    url=url+"&baolingbian="+formdata.baolingbian ;
    url=url+"&baoxiu ="+formdata.baoxiu;
    url=url+"&hexiu="+formdata.hexiu ;
    url=url+"&dajie="+formdata.dajie ;
    url=url+"&hefeng ="+formdata.hefeng;
    url=url+"&sizhen ="+formdata.sizhen;
    url=url+"&baocha ="+formdata.baocha;
    url=url+"&baojiaokou ="+formdata.baojiaokou;
    url=url+"&luyao="+formdata.luyao ;
    url=url+"&dingbiao ="+formdata.dingbiao;
    url=url+"&shangsongjindai="+formdata.shangsongjindai ;
    url=url+"&hecha="+formdata.hecha ;
    url=url+"&pingban="+formdata.pingban ;
    url=url+"&latiao ="+formdata.latiao;
    url=url+"&beizhu ="+formdata.beizhu;
    debugger;
    url=encodeURI(url);
    return url;
}
