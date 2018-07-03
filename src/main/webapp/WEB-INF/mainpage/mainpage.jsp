<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!-- Start #right-sidebar -->
        <div id="right-sidebar" class="hide-sidebar">
            <!-- Start .sidebar-inner -->
            <div class="sidebar-inner">
                <div class="sidebar-panel mt0">
                    <div class="sidebar-panel-content fullwidth pt0">
                        <div class="chat-user-list">
                            <form class="form-horizontal chat-search" role="form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search for user...">
                                    <button type="submit"><i class="ec-search s16"></i>
                                    </button>
                                </div>
                                <!-- End .form-group  -->
                            </form>
                            <ul class="chat-ui bsAccordion">
                                <li>
                                    <a href="#">Favorites <span class="notification teal">4</span><i class="en-arrow-down5"></i></a>
                                    <ul class="in">
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/49.jpg" alt="@chadengle">Chad Engle
                                                <span class="has-message"><i class="im-pencil"></i></span>
                                            </a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/54.jpg" alt="@alagoon">Anthony Lagoon</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/52.jpg" alt="@koridhandy">Kory Handy</a>
                                            <span class="status"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/50.jpg" alt="@divya">Divia Manyan</a>
                                            <span class="status"><i class="en-dot"></i></span>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Online <span class="notification green">3</span><i class="en-arrow-down5"></i></a>
                                    <ul class="in">
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/51.jpg" alt="@kolage">Eric Hofman</a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/55.jpg" alt="@mikebeecham">Mike Beecham</a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/53.jpg" alt="@derekebradley">Darek Bradly</a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Offline <span class="notification red">5</span><i class="en-arrow-down5"></i></a>
                                    <ul>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/56.jpg" alt="@laurengray">Lauren Grey</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/49.jpg" alt="@chadengle">Chad Engle</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/58.jpg" alt="@frankiefreesbie">Frankie Freesibie</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/57.jpg" alt="@joannefournier">Joane Fornier</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=request.getContextPath()%>/public/images/avatars/59.jpg" alt="@aiiaiiaii">Alia Alien</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="chat-box">
                            <h5>Chad Engle</h5>
                            <a id="close-user-chat" href="#" class="btn btn-xs btn-primary"><i class="en-arrow-left4"></i></a>
                            <ul class="chat-ui chat-messages">
                                <li class="chat-user">
                                    <p class="avatar">
                                        <img src="<%=request.getContextPath()%>/public/images/avatars/49.jpg" alt="@chadengle">
                                    </p>
                                    <p class="chat-name">Chad Engle <span class="chat-time">15 seconds ago</span>
                                    </p>
                                    <span class="status online"><i class="en-dot"></i></span>
                                    <p class="chat-txt">Hello Sugge check out the last order.</p>
                                </li>
                                <li class="chat-me">
                                    <p class="avatar">
                                        <img src="<%=request.getContextPath()%>/public/images/avatars/48.jpg" alt="SuggeElson">
                                    </p>
                                    <p class="chat-name">SuggeElson <span class="chat-time">10 seconds ago</span>
                                    </p>
                                    <span class="status online"><i class="en-dot"></i></span>
                                    <p class="chat-txt">Ok i will check it out.</p>
                                </li>
                                <li class="chat-user">
                                    <p class="avatar">
                                        <img src="<%=request.getContextPath()%>/public/images/avatars/49.jpg" alt="@chadengle">
                                    </p>
                                    <p class="chat-name">Chad Engle <span class="chat-time">now</span>
                                    </p>
                                    <span class="status online"><i class="en-dot"></i></span>
                                    <p class="chat-txt">Thank you, have a nice day</p>
                                </li>
                            </ul>
                            <div class="chat-write">
                                <form action="#" class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <textarea name="sendmsg" id="sendMsg" class="form-control elastic" rows="1"></textarea>
                                        <a role="button" class="btn" id="attach_photo_btn">
                                            <i class="fa-picture s20"></i>
                                        </a>
                                        <input type="file" name="attach_photo" id="attach_photo">
                                    </div>
                                    <!-- End .form-group  -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End .sidebar-inner -->
        </div>
        <!-- End #right-sidebar -->
        <!-- Start #content -->
        <div id="content">
            <!-- Start .content-wrapper -->
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-lg-12 heading">
                        <h1 class="page-header"><i class="en-upload"></i> BANNER</h1>
                        </ul>
                    </div>
                </div>
                <!-- Page start here ( usual with .row ) -->
                    <!-- Start .outlet -->
                    <div class="row">
                        <div class="col-md-12">
                            <form class="fileForm" enctype='multipart/form-data'>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">BANNER1：</label>
                                            <div class="col-lg-5 col-md-5">
                                                <input name="file" type="file" class="" id="filestyle-1" style="position: fixed; left: -500px; " ><div class="bootstrap-filestyle" style="display: inline;"><label for="filestyle-1" class="btn btn-primary"><i class="fa-plus-sign"></i> <span>Select file</span></label></div>
                                                <input type="hidden" name="bannerUrl" id="bannerUrl" value="" />
                                                <input type="button" value="上传" />
                                                <progress></progress>
                                                <span class="jsrz_main_check"></span>
                                            </div>
                                            <div class="col-lg-5 col-md-5">
                                                <span>大图尺寸90000X500  图片格式:PNG\JPG\JPEG</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">BANNER 顺序：</label>
                                        <div class="col-lg-3 col-md-3">
                                            <input type="text" id="bannerSort" name="bannerSort" class="form-control" placeholder="主标题" autofocus="autofocus" value="" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button id="submitBannerBtn" class="btn btn-primary start">
                                            <span>保存</span>
                                        </button>
                                        <span class="jsrz_main_check"></span>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12 heading">
                                    <h1 class="page-header"><i class="en-upload"></i> NEWS</h1>
                                    </ul>
                                </div>
                            </div>
                            <div class="row" >
                                <div class="col-lg-8" >
                                    <div class="form-group">
                                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">新闻位置：</label>
                                        <div class="col-lg-10 col-md-10">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <select id="newsSort" name="newsSort" class="form-control select2">
                                                        <option value="1">page1</option>
                                                        <option value="2">page2</option>
                                                        <option value="3">page3</option>
                                                        <option value="4">page4</option>
                                                        <option value="5">page5</option>
                                                        <option value="6">page6</option>
                                                        <option value="7">page7</option>
                                                    </select>
                                                    <span class="help-block">请选择新闻序号</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <form class="fileForm" enctype='multipart/form-data'>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="col-lg-2 col-md-2 col-sm-12 control-label">新闻图片：</label>
                                                    <div class="col-lg-5 col-md-5">
                                                        <input name="file" type="file" class="" id="filestyle-3" style="position: fixed; left: -500px; " ><div class="bootstrap-filestyle" style="display: inline;"><label for="filestyle-3" class="btn btn-primary"><i class="fa-plus-sign"></i> <span>Select file</span></label></div>
                                                        <input type="hidden" name="newsImage" id="newsImage" value="" />
                                                        <input type="button" value="上传" />
                                                        <progress></progress>
                                                        <span class="jsrz_main_check"></span>
                                                    </div>
                                                    <div class="col-lg-5 col-md-5">
                                                        <span>大图尺寸90000X500   图片格式:PNG\JPG\JPEG</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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
                                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">fullarticle链接：</label>
                                                <div class="col-lg-10 col-md-10">
                                                    <input type="text" id="fullarticleLink" name="fullarticleLink" class="form-control" placeholder="站外链接" autofocus="autofocus" value="" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">website链接：</label>
                                                <div class="col-lg-10 col-md-10">
                                                    <input type="text" id="websiteLink" name="websiteLink" class="form-control" placeholder="站外链接" autofocus="autofocus" value="" />
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
                                </div>
                                <div class="col-lg-4" >
                                    <img src="<%=request.getContextPath()%>/public/images/newsPlace.png">
                                    <span>图片位置对应序号</span>
                                </div>
                            </div>



                        </div>
                    </div>
                <!-- The blueimp Gallery widget -->
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
            var CTX_PATH = '<%=request.getContextPath()%>';

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
//            error: errorHandler,
                    // Form数据
                    data: formData,
                    //Options to tell JQuery not to process data or worry about content-type
                    cache: false,
                    contentType: false,
                    processData: false
                });
            });

            $("#submitBannerBtn").bind("click",function(){
                var bannerUrl = $("#bannerUrl").val();
                var bannerSort = $("#bannerSort").val();
                var params = {};
                params["bannerUrl"] = bannerUrl;
                params["bannerSort"] = bannerSort;
                var btnObj = $(this);
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: CTX_PATH+'/submitBanner',
                    data:params,
                    success: function (result) {
                        alert(result);
                        if(undefined == result){
                            btnObj.next().html("服务异常，请稍后再试");
                            btnObj.next().css("color","red");
                        }else{
                            var data = jQuery.parseJSON(result);
                            if (data.code == 0) {
                                btnObj.next().html('保存成功');
                                btnObj.next().css("color","green");
                                window.location.href = "/toCryptocurrency";
                            } else {
                                btnObj.next().html(data.errorDescription);
                                btnObj.next().css("color","red");
                            }
                        }
                    }
                });
            });


            $("#submitBtn").bind("click",function(){
                var newsSort = $("select[name=newsSort]").val();
                if(null == newsSort || undefined == newsSort){
                    alert("请选择新闻序号");
                    return ;
                }
                var newsImage = $("#newsImage").val();


                var tital = $("input[name=tital]").val();
                var titalEn = $("input[name=titalEn]").val();

                var contents = $("textarea[name=contents]").val();
                var contentsEn = $("textarea[name=contentsEn]").val();

                var fullarticleLink = $("input[name=fullarticleLink]").val();
                var websiteLink = $("input[name=websiteLink]").val();

                var params = {};
                params["picUrl"] = newsImage;
                params["newsSort"] = newsSort;
                params["titleCn"] = tital;
                params["titleEn"] = titalEn;
                params["contentCn"] = contents;
                params["contentEn"] = contentsEn;
                params["fullArticle"] = fullarticleLink;
                params["website"] = websiteLink;

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: CTX_PATH+'/submitNews',
                    data:params,
                    success: function (result) {
                        alert(reslut);
                        if(undefined == result){
                            $('.jsrz_main_check').html("服务异常，请稍后再试");
                            $(".jsrz_main_check").css("color","red");
                        }else{
                            var data = jQuery.parseJSON(result);
                            if (data.code == 0) {
                                $('.jsrz_main_check').html('登陆成功');
                                $(".jsrz_main_check").css("color","green");
                                window.location.href = "/toCryptocurrency";
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
