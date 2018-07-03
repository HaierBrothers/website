<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>File upload</title>
    <!-- Mobile specific metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Force IE9 to render in normal mode -->
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="author" content="SuggeElson" />
    <meta name="description" content=""
    />
    <meta name="keywords" content=""
    />
    <meta name="application-name" content="sprFlat admin template" />
    <!-- Css files -->
    <!-- Icons -->
    <link href="<%=request.getContextPath()%>/public/css/icons.css" rel="stylesheet" />
    <!-- jQueryUI -->
    <link href="<%=request.getContextPath()%>/public/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
    <!-- Bootstrap stylesheets (included template modifications) -->
    <link href="<%=request.getContextPath()%>/public/css/bootstrap.css" rel="stylesheet" />
    <!-- Plugins stylesheets (all plugin custom css) -->
    <link href="<%=request.getContextPath()%>/public/css/plugins.css" rel="stylesheet" />
    <!-- Main stylesheets (template main css file) -->
    <link href="<%=request.getContextPath()%>/public/css/main.css" rel="stylesheet" />
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="<%=request.getContextPath()%>/public/css/custom.css" rel="stylesheet" />
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath()%>/public/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath()%>/public/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath()%>/public/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/public/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="icon" href="<%=request.getContextPath()%>/public/images/ico/favicon.ico" type="image/png">
    <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
    <meta name="msapplication-TileColor" content="#3399cc" />
</head>
<body>
<!-- Start #header -->
<div id="header">
    <div class="container-fluid">
        <div class="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">
                    <i class="im-windows8 text-logo-element animated bounceIn"></i><span class="text-logo">后台管理系统</span>
                </a>
            </div>
            <nav class="top-nav" role="navigation">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">
                            <img class="user-avatar" src="<%=request.getContextPath()%>/public/images/avatars/48.jpg" alt="SuggeElson">管理员</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- Start .header-inner -->
</div>
<!-- End #header -->
<!-- Start #sidebar -->
<div id="sidebar">
    <!-- Start .sidebar-inner -->
    <div class="sidebar-inner">
        <!-- Start #sideNav -->
        <ul id="sideNav" class="nav nav-pills nav-stacked">
            <li><a href="<%=request.getContextPath()%>/toEvents">EVENTS管理 </a>
            </li>
            <li><a href="<%=request.getContextPath()%>/toMainpage">mainpage管理 </a>
            </li>
            <li>
                <a href="#"> cryptocurrency管理</a>
                <ul class="nav sub">
                    <li><a href="<%=request.getContextPath()%>/toCryptocurrency"><i class="ec-pencil2"></i> 图片上传</a>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/toFileList"><i class="im-checkbox-checked"></i> 上传记录</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- End #sideNav -->
    </div>
    <!-- End .sidebar-inner -->
</div>
<!-- End #sidebar -->
<!-- Start #content -->
<div id="content">
    <!-- Start .content-wrapper -->
    <div class="content-wrapper">
        <!-- Page start here ( usual with .row ) -->
        <div class="outlet">
            <form class="fileForm" enctype='multipart/form-data'>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">列表LOGO：</label>
                            <div class="col-lg-5 col-md-5">
                                <input name="file" type="file" class="" id="filestyle-1" style="position: fixed; left: -500px;" ><div class="bootstrap-filestyle" style="display: inline;"> <label for="filestyle-1" class="btn btn-primary"><i class="fa-plus-sign"></i> <span>Select file</span></label></div>
                                <input type="hidden" name="listLogoPath" id="listLogoPath" value=""/>
                                <input type="button" value="上传" />
                                <progress></progress>
                                <span class="jsrz_main_check"></span>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5">
                            <span>小图尺寸：76X76   图片格式：png</span>
                        </div>
                    </div>
                </div>
            </form>
            <form class="fileForm" enctype='multipart/form-data'>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">弹窗LOGO：</label>
                            <div class="col-lg-5 col-md-5">
                                <input name="file" type="file" class="" id="filestyle-2" style="position: fixed; left: -500px; " ><div class="bootstrap-filestyle" style="display: inline;"><label for="filestyle-2" class="btn btn-primary"><i class="fa-plus-sign"></i> <span>Select file</span></label></div>
                                <input type="hidden" name="popupLogoPath" id="popupLogoPath" value="" />
                                <input type="button" value="上传" />
                                <progress></progress>
                                <span class="jsrz_main_check"></span>
                            </div>
                            <div class="col-lg-5 col-md-5">
                                <span>小图尺寸：62X62   图片格式：png</span>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <form id="fileForm" enctype='multipart/form-data'>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">LOGO名称：</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" id="logoName" name="logoName" class="form-control" placeholder="LOGO名称" autofocus="autofocus" value="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">LOGO名称(英文)：</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" id="logoNameEn" name="logoNameEn" class="form-control" placeholder="LOGO名称" autofocus="autofocus" value="" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">主标题：</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" id="tital" name="tital" class="form-control" placeholder="主标题" autofocus="autofocus" value="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">主标题(英文)：</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" id="titalEn" name="titalEn" class="form-control" placeholder="主标题" autofocus="autofocus" value="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">内容：</label>
                            <div class="col-lg-10 col-md-10">
                                <textarea id="contents" name="contents" class="form-control" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">内容(英文)：</label>
                            <div class="col-lg-10 col-md-10">
                                <textarea id="contentsEn" name="contentsEn" class="form-control" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">站外链接：</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" id="outWebsiteLink" name="outWebsiteLink" class="form-control" placeholder="站外链接" autofocus="autofocus" value="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button id="submitBtn" class="btn btn-primary start">
                                <span>提交</span>
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- End .outlet -->
    </div>
    <!-- End .content-wrapper -->
    <div class="clearfix"></div>
</div>

<!-- End #content -->
<!-- Javascripts -->
<!-- Load pace first -->
<script src="<%=request.getContextPath()%>/public/plugins/core/pace/pace.min.js"></script>
<!-- Important javascript libs(put in all pages) -->
<script src="<%=request.getContextPath()%>/public/js/jquery-1.8.3.min.js"></script>
<script>
    window.jQuery || document.write('<script src="<%=request.getContextPath()%>/public/js/libs/jquery-2.1.1.min.js">\x3C/script>')
</script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
    window.jQuery || document.write('<script src="<%=request.getContextPath()%>/public/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
</script>
<!--[if lt IE 9]>
<script type="text/javascript" src="<%=request.getContextPath()%>/public/js/libs/excanvas.min.js"></script>
<script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/public/js/libs/respond.min.js"></script>
<![endif]-->
<!-- Bootstrap plugins -->
<script src="<%=request.getContextPath()%>/public/js/bootstrap/bootstrap.js"></script>
<!-- Core plugins ( not remove ever) -->
<!-- Handle responsive view functions -->
<script src="<%=request.getContextPath()%>/public/js/jRespond.min.js"></script>
<!-- Custom scroll for sidebars,tables and etc. -->
<script src="<%=request.getContextPath()%>/public/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
<!-- Resize text area in most pages -->
<script src="<%=request.getContextPath()%>/public/plugins/forms/autosize/jquery.autosize.js"></script>
<!-- Proivde quick search for many widgets -->
<script src="<%=request.getContextPath()%>/public/plugins/core/quicksearch/jquery.quicksearch.js"></script>
<!-- Bootbox confirm dialog for reset postion on panels -->
<script src="<%=request.getContextPath()%>/public/plugins/ui/bootbox/bootbox.js"></script>
<!-- Other plugins ( load only nessesary plugins for every page) -->
<script src="<%=request.getContextPath()%>/public/plugins/core/moment/moment.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/misc/highlight/highlight.pack.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.ui.widget.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/tmpl.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/load-image.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/canvas-to-blob.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.blueimp-gallery.min.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.iframe-transport.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.fileupload.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.fileupload-process.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.fileupload-image.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.fileupload-audio.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.fileupload-video.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.fileupload-validate.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/file/jquery.fileupload-ui.js"></script>
<script src="<%=request.getContextPath()%>/public/js/jquery.sprFlat.js"></script>
<script src="<%=request.getContextPath()%>/public/js/app.js"></script>
<script src="<%=request.getContextPath()%>/public/js/pages/file.js"></script>
<script type="text/javascript">
    var CTX_PATH = "<%=request.getContextPath()%>";
    $('input[type=file]').change(function(){
        var file = this.files[0];
        name = file.name;
        size = file.size;
        type = file.type;
        //your validation
    });

    $('input[type=button]').click(function(){
        var formData = new FormData($(this).parents('.fileForm')[0]);
        var btnObj = $(this)
        $.ajax({
            url: CTX_PATH+'/upload/upload',  //server script to process data
            type: 'POST',
            xhr: function() {  // custom xhr
                myXhr = $.ajaxSettings.xhr();
                if(myXhr.upload){ // check if upload property exists
                    myXhr.upload.addEventListener('progress',function (e) {
                        if(e.lengthComputable){
                            btnObj.next().attr({value:e.loaded,max:e.total});
                        }
                    }, false); // for handling the progress of the upload
                }
                return myXhr;
            },
            //Ajax事件
//            beforeSend: beforeSendHandler,
            success: function (result) {
                if(undefined == result){
                    btnObj.find('.jsrz_main_check').html("服务异常，请稍后再试");
                    btnObj.find(".jsrz_main_check").css("color","red");
                }else{
                    if (result.type == "success") {
                        btnObj.find('.jsrz_main_check').html('上传成功');
                        btnObj.find(".jsrz_main_check").css("color","green");
                        btnObj.prev().attr("value",result.logoUrl);
                    } else {
//                        $('.jsrz_main_check').html(data.errorDescription);
//                        $(".jsrz_main_check").css("color","red");
                    }
                }
            },
            error: function(data) {
                alert("error:"+data.errorDescription);
            },
            data: formData,
            cache: false,
            contentType: false,
            processData: false
        });
    });

    $("#submitBtn").bind("click",function(){
        var listLogoPath = $("#listLogoPath").val();
        var popupLogoPath = $("#popupLogoPath").val();
        var tital = $("input[name=tital]").val();
        var contents = $("textarea[name=contents]").val();

        var logoNameEn = $("input[name=logoNameEn]").val();
        var titalEn = $("input[name=titalEn]").val();
        var contentsEn = $("textarea[name=contentsEn]").val();

        var outWebsiteLink = $("input[name=outWebsiteLink]").val();
        var logoName = $("input[name=logoName]").val();
        var params = {};
        params["listLogoPath"] = listLogoPath;
        params["popupLogoPath"] = popupLogoPath;
        params["tital"] = tital;
        params["contents"] = contents;
        params["logoName"] = logoName;
        params["logoNameEn"] = logoNameEn;
        params["titalEn"] = titalEn;
        params["contentsEn"] = contentsEn;
        params["outWebsiteLink"] = outWebsiteLink;
        $.ajax({
            type: "POST",
            dataType: "json",
            url: CTX_PATH+'/submitCryptocurrency',
            data:params,
            success: function (result) {
                if(undefined == result){
                    $('.jsrz_main_check').html("服务异常，请稍后再试");
                    $(".jsrz_main_check").css("color","red");
                }else{
                    if (result.code == 0) {
                        $('.jsrz_main_check').html('保存成功');
                        $(".jsrz_main_check").css("color","green");
                        alert(result.errorDescription);
                        window.location.href =CTX_PATH+ "/toCryptocurrency";
                    } else {
                        $('.jsrz_main_check').html(result.errorDescription);
                        $(".jsrz_main_check").css("color","red");
                    }
                }
            }
        });
    });
</script>
</body>
</html>
