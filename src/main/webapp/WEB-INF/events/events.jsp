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
        <div class="row">
            <!-- Start .row -->
            <!-- Start .page-header -->
            <!-- End .page-header -->
        </div>
        <!-- End .row -->
        <!-- Page start here ( usual with .row ) -->
        <div class="outlet">
            <!-- Start .outlet -->
            <div class="row">
                <div class="col-lg-12 heading">
                    <div class="col-md-8">
                        <h1 class="page-header"><i class="en-upload"></i> <span>${eventMonth.year}</span> <span> ${eventMonth.month}</span>  </h1>
                        </ul>
                    </div>
                        <div class="col-md-4">
                            <div class="form-group page-header">
                                <button id="toAddMonthBtn" class="btn btn-primary start">
                                    <span>添加月</span>
                                </button>
                                <span class="jsrz_main_check"></span>
                            </div>
                        </div>
                </div>
            </div>

            <%-- tables --%>
            <div class="row">
                <!-- Start .row -->
                <div class="col-lg-12">
                    <!-- col-lg-12 start here -->
                    <div class="panel panel-default plain toggle panelClose panelRefresh">
                        <!-- Start .panel -->
                        <div class="panel-heading white-bg">
                            <h4 class="panel-title">Table bordered</h4>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th class="per10">
                                        日期（天）
                                    </th>
                                    <th class="per10">模块</th>
                                    <th class="per10">颜色/图片</th>
                                    <th class="per10">主标题</th>
                                    <th class="per11">主标题（英文）</th>
                                    <th class="per14">内容</th>
                                    <th class="per15">内容（英文）</th>
                                    <th class="per10">时间（小时）</th>
                                    <th class="per10">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        1
                                    </td>
                                    <td>Jacob Olsen</td>
                                    <td>Developer</td>
                                    <td>2530$</td>
                                    <td>2530$</td>
                                    <td>2530$</td>
                                    <td>2530$</td>
                                    <td>2530$</td>
                                    <td>
                                        <div class="form-group">
                                            <button  class="btn btn-xs btn-primary start updatebtn" data-dayId="afa">
                                                <span>修改</span>
                                            </button>
                                            <span class="jsrz_main_check"></span>
                                            <button  class="btn btn-xs btn-danger start cancelBtn" data-dayId="12312">
                                                <span>删除</span>
                                            </button>
                                            <span class="jsrz_main_check"></span>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- End .panel -->
                </div>
                <!-- col-lg-12 end here -->
            </div>
            <!-- End .row -->
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
    var CTX_PATH = '<%=request.getContextPath()%>';
    $("#toAddMonthBtn").bind("click",function(){
        window.location.href = CTX_PATH+"/toAddEvents";
    });
    $(".updatebtn").bind("click",function(){
        var dayId = $(this).attr("data-dayId");
        window.location.href = CTX_PATH+"/toAddEventsDays?dayId="+dayId;
    });
    $(".cancelBtn").bind("click",function(){
        var dayId = $(this).attr("data-dayId");

        var params = {};
        params["dayId"] = dayId;
        $.ajax({
            type: "POST",
            dataType: "json",
            url: CTX_PATH+'/submitEventsMonth',
            data:params,
            success: function (result) {
                alert(result.code == 0);
                alert(result.dataObject);
                alert(result.errorDescription);
                if (result.code == 0) {
                    alert(result.code );
                    $('.jsrz_main_check').html('保存成功');
                    $(".jsrz_main_check").css("color","green");
                    // 设置 月份ID
                    alert(result.dataObject);
                    monthId=result.dataObject;
                } else {
                    $('.jsrz_main_check').html(result.errorDescription);
                    $(".jsrz_main_check").css("color","red");
                }
            }
        });
    });

</script>

</body>
</html>
