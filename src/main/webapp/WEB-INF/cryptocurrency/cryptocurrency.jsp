<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>cryptocurrency管理</title>
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
    <!--[if lt IE 9] -->
    <!-- Css files -->
    <!-- Icons -->
    <link href="../../public/css/icons.css" rel="stylesheet" />
    <!-- jQueryUI -->
    <link href="../../public/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
    <!-- Bootstrap stylesheets (included template modifications) -->
    <link href="../../public/css/bootstrap.css" rel="stylesheet" />
    <!-- Plugins stylesheets (all plugin custom css) -->
    <link href="../../public/css/plugins.css" rel="stylesheet" />
    <!-- Main stylesheets (template main css file) -->
    <link href="../../public/css/main.css" rel="stylesheet" />
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="../../public/css/custom.css" rel="stylesheet" />
    <!-- Fav and touch icons -->
    <link rel="icon" href="../../public/images/ico/favicon.ico" type="image/png">
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
                <ul class="nav navbar-nav pull-left">
                </ul>
                <ul class="nav navbar-nav pull-right">

                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">
                            <img class="user-avatar" src="../../public/images/avatars/48.jpg" alt="SuggeElson">SuggeElson</a>
                        <ul class="dropdown-menu right" role="menu">
                            <li><a href="profile.html"><i class="st-user"></i> Profile</a>
                            </li>
                            <li><a href="file.html"><i class="st-cloud"></i> Files</a>
                            </li>
                            <li><a href="#"><i class="st-settings"></i> Settings</a>
                            </li>
                            <li><a href="login.html"><i class="im-exit"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <!-- Start #header-area -->
        <div id="header-area" class="fadeInDown">
            <div class="header-area-inner">
                <ul class="list-unstyled list-inline">
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="im-pie"></i>
                                <span>Earning Stats</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="ec-images color-dark"></i>
                                <span>Gallery</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="en-light-bulb color-orange"></i>
                                <span>Fresh ideas</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="ec-link color-blue"></i>
                                <span>Links</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="ec-support color-red"></i>
                                <span>Support</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="st-lock color-teal"></i>
                                <span>Lock area</span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- End #header-area -->
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
            <li><a href="gallery.html"> EVENTS管理</a>
            </li>
            <li><a href="/toMainpage"> mainpage管理</a>
            </li>
            <li>
                <a href="#"> cryptocurrency管理 <i class="im-paragraph-justify"></i></a>
                <ul class="nav sub">
                    <li><a href="/toCryptocurrency"><i class="ec-pencil2"></i> 图片上传</a>
                    </li>
                    <li><a href="data-tables.html"><i class="im-checkbox-checked"></i> 上传记录</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- End #sideNav -->
        <!-- Start .sidebar-panel -->
        <div class="sidebar-panel">

        </div>
        <!-- End .sidebar-panel -->
    </div>
    <!-- End .sidebar-inner -->
</div>
<!-- End #sidebar -->
<!-- Start #content -->
<div id="content">
    <!-- Start .content-wrapper -->
    <div class="content-wrapper">
        <div class="row">
            <!-- Start .row -->
            <!-- Start .page-header -->
            <div class="col-lg-12 heading">
                <h1 class="page-header"><i class="en-upload"></i> cryptocurrency管理</h1>
                <!-- Start .bredcrumb -->
                <ul id="crumb" class="breadcrumb">
                </ul>
                <!-- End .breadcrumb -->
            </div>
            <!-- End .page-header -->
        </div>
        <!-- End .row -->
        <!-- Page start here ( usual with .row ) -->
        <div class="outlet">
            <!-- Start .outlet -->
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
            <%--<form id="fileForm" enctype="multipart/form-data">--%>
                <%--<input name="file" type="file" />--%>
                <%--<input type="button" value="Upload" />--%>
            <%--</form>--%>
            <%--<progress></progress>--%>

            <!-- Page End here -->
    </div>
    <!-- End .outlet -->
</div>
<!-- End .content-wrapper -->
<div class="clearfix"></div>
</div>
<!-- End #content -->
<!-- Javascripts -->
<!-- Load pace first -->
<script src="../../public/plugins/core/pace/pace.min.js"></script>
<!-- Important javascript libs(put in all pages) -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<%--<script>--%>
    <%--window.jQuery || document.write('<script src="../../public/js/libs/jquery-2.1.1.min.js">\x3C/script>')--%>
<%--</script>--%>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
    window.jQuery || document.write('<script src="../../public/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
</script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../../public/js/libs/excanvas.min.js"></script>
<script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script type="text/javascript" src="../../public/js/libs/respond.min.js"></script>
<![endif]-->
<!-- Bootstrap plugins -->
<script src="../../public/js/bootstrap/bootstrap.js"></script>
<!-- Core plugins ( not remove ever) -->
<!-- Handle responsive view functions -->
<script src="../../public/js/jRespond.min.js"></script>
<!-- Custom scroll for sidebars,tables and etc. -->
<script src="../../public/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../public/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
<!-- Resize text area in most pages -->
<script src="../../public/plugins/forms/autosize/jquery.autosize.js"></script>
<!-- Proivde quick search for many widgets -->
<script src="../../public/plugins/core/quicksearch/jquery.quicksearch.js"></script>
<!-- Bootbox confirm dialog for reset postion on panels -->
<script src="../../public/plugins/ui/bootbox/bootbox.js"></script>
<!-- Other plugins ( load only nessesary plugins for every page) -->
<script src="../../public/plugins/core/moment/moment.min.js"></script>
<script src="../../public/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="../../public/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="../../public/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="../../public/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="../../public/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="../../public/plugins/misc/highlight/highlight.pack.js"></script>
<script src="../../public/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="../../public/plugins/file/jquery.ui.widget.js"></script>
<script src="../../public/plugins/file/tmpl.min.js"></script>
<script src="../../public/plugins/file/load-image.min.js"></script>
<script src="../../public/plugins/file/canvas-to-blob.min.js"></script>
<script src="../../public/plugins/file/jquery.blueimp-gallery.min.js"></script>
<script src="../../public/plugins/file/jquery.iframe-transport.js"></script>
<script src="../../public/plugins/file/jquery.fileupload.js"></script>
<script src="../../public/plugins/file/jquery.fileupload-process.js"></script>
<script src="../../public/plugins/file/jquery.fileupload-image.js"></script>
<script src="../../public/plugins/file/jquery.fileupload-audio.js"></script>
<script src="../../public/plugins/file/jquery.fileupload-video.js"></script>
<script src="../../public/plugins/file/jquery.fileupload-validate.js"></script>
<script src="../../public/plugins/file/jquery.fileupload-ui.js"></script>
<script src="../../public/js/jquery.sprFlat.js"></script>
<script src="../../public/js/app.js"></script>
<script src="../../public/js/pages/file.js"></script>
<script type="text/javascript" src="../../public/js/jquery.json.min.js"></script>
<script type="text/javascript">

    $(':file').change(function(){
        var file = this.files[0];
        name = file.name;
        size = file.size;
        type = file.type;
        //your validation
    });

    $(':button').click(function(){
        var formData = new FormData($(this).parents('.fileForm')[0]);
        var btnObj = $(this)
        $.ajax({
            url: '/upload/upload',  //server script to process data
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
//            error: errorHandler,
            // Form数据
            data: formData,
            //Options to tell JQuery not to process data or worry about content-type
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
                url: '/submitCryptocurrency',
                data:params,
                success: function (result) {
                    if(undefined == result){
                        $('.jsrz_main_check').html("服务异常，请稍后再试");
                        $(".jsrz_main_check").css("color","red");
                    }else{
                        var data = jQuery.parseJSON(result);
                        if (data.code == 0) {
                            $('.jsrz_main_check').html('保存成功');
                            $(".jsrz_main_check").css("color","green");
                        } else {
                            $('.jsrz_main_check').html(data.errorDescription);
                            $(".jsrz_main_check").css("color","red");
                        }
                    }
                }
            });
        });
</script>
</body>
</html>

