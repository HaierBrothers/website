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
<!-- Start #content -->
<div id="content">
    <!-- Start .content-wrapper -->
    <div class="content-wrapper">
        <!-- Page start here ( usual with .row ) -->
        <div class="outlet">
            <!-- Start .outlet -->
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">当前为：</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <input type="text" id="yearInput" name="yearInput" class="form-control" placeholder="填写将要添加的年" autofocus="autofocus" value="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                    <label class="col-lg-2 col-md-2 col-sm-12 control-label">请选择天：</label>
                    <div class="col-lg-10 col-md-10">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <select id="daysSelect" name="daysSelect" class="form-control select2">
                                    <option value="1">1号</option>
                                    <option value="2">2号</option>
                                    <option value="3">3号</option>
                                    <option value="4">4号</option>
                                    <option value="5">5号</option>
                                    <option value="6">6号</option>
                                    <option value="7">7号</option>
                                    <option value="8">8号</option>
                                    <option value="9">9号</option>
                                    <option value="10">10号</option>
                                    <option value="11">11号</option>
                                    <option value="12">12号</option>
                                    <option value="13">13号</option>
                                    <option value="14">14号</option>
                                    <option value="15">15号</option>
                                    <option value="16">16号</option>
                                    <option value="17">17号</option>
                                    <option value="18">18号</option>
                                    <option value="19">19号</option>
                                    <option value="20">20号</option>
                                    <option value="21">21号</option>
                                    <option value="22">22号</option>
                                    <option value="23">23号</option>
                                    <option value="24">24号</option>
                                    <option value="25">25号</option>
                                    <option value="26">26号</option>
                                    <option value="27">27号</option>
                                    <option value="28">28号</option>
                                    <option value="29">29号</option>
                                    <option value="30">30号</option>
                                    <option value="31">31号</option>
                                </select>
                                <span class="help-block">请选择月</span>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">请选模块：</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <select id="modelSelect" name="modelSelect" class="form-control select2">
                                        <option value="0">图片</option>
                                        <option value="1">文本</option>
                                    </select>
                                    <span class="help-block">请选择模块</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <form class="fileForm" enctype='multipart/form-data'>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">事件图片：</label>
                            <div class="col-lg-5 col-md-5">
                                <input name="file" type="file" class="" id="filestyle-1" style="position: fixed; left: -500px;" ><div class="bootstrap-filestyle" style="display: inline;"> <label for="filestyle-1" class="btn btn-primary"><i class="fa-plus-sign"></i> <span>Select file</span></label></div>
                                <input type="hidden" name="eventsPath" id="eventsPath" value=""/>
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
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">Color picker</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <input class="form-control" id="color-picker" >
                                    <span class="help-block">Predefined color</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">颜色值：</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                            <input type="text" id="colorVal" name="colorVal" class="form-control" placeholder="主标题" autofocus="autofocus" value="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">主标题：</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                            <input type="text" id="tital" name="tital" class="form-control" placeholder="主标题" autofocus="autofocus" value="" />
                        </div>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">主标题(英文)：</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                            <input type="text" id="titalEn" name="titalEn" class="form-control" placeholder="主标题" autofocus="autofocus" value="" />
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">内容：</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                            <textarea id="contents" name="contents" class="form-control" rows="3"></textarea>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">内容(英文)：</label>
                        <div class="col-lg-10 col-md-10">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                            <textarea id="contentsEn" name="contentsEn" class="form-control" rows="3"></textarea>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">选择时间：</label>
                        <div class="col-lg-10 col-md-10">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                        <input class="form-control datetime-picker2" name="timeVal" type="text" value="">
                        <span class="input-group-addon"><i class="fa-calendar"></i></span>
                    </div>
                    </div>
                    </div>
                    <span class="help-block">Without time picker</span>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <button id="submitBtn" class="btn btn-primary start">
                            <span>提交</span>
                        </button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <button id="cancelBtn" class="btn btn-primary start">
                            <span>返回</span>
                        </button>
                    </div>
                </div>
                <div class="jsrz_main_check" ></div>
            </div>
            <!-- Page End here -->
        </div>
        <!-- End .outlet -->
    </div>
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
<script src="<%=request.getContextPath()%>/public/plugins/forms/daterangepicker/daterangepicker.js"></script>
<script src="<%=request.getContextPath()%>/public/plugins/forms/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/public/js/jquery.sprFlat.js"></script>
<script src="<%=request.getContextPath()%>/public/js/app.js"></script>
<script src="<%=request.getContextPath()%>/public/js/pages/file.js"></script>
<script type="text/javascript">

    var monthId = "";
    var CTX_PATH = '<%=request.getContextPath()%>';
    $("#submitBtn").bind("click",function(){


        var dayId = $("input[name=dayId]").val();
        var monthId = $("input[name=monthId]").val();
        var day = $("select[name=daysSelect]").val();
        var type = $("select[name=modelSelect]").val();
        var picUrl = $("input[name=eventsPath]").val();
        var color = $("input[name=colorVal]").val();
        var titleCn = $("input[name=tital]").val();
        var titleEn = $("input[name=titalEn]").val();
        var contentCn = $("textarea[name=contents]").val();
        var contentEn = $("textarea[name=contentsEn]").val();
        var time = $("input[name=timeVal]").val();


        var params = {};
        params["dayId"] = dayId;
        params["monthId"] = monthId;
        params["day"] = day;
        params["type"] = type;
        params["picUrl"] = picUrl;
        params["color"] = color;
        params["titleCn"] = titleCn;
        params["titleEn"] = titleEn;
        params["contentCn"] = contentCn;
        params["contentEn"] = contentEn;
        params["time"] = time;
        $.ajax({
            type: "POST",
            dataType: "json",
            url: CTX_PATH+'/submitEventsDays',
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

    $("#cancelBtn").bind("click",function(){
        window.location.href = CTX_PATH+"/toEvents?monthId="+monthId;
    });

</script>
</body>
</html>
