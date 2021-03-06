﻿<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"  %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/public/css/reset.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/public/css/login.css" />
        <script type="text/javascript" src="<%=request.getContextPath()%>/public/js/jquery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/public/js/login.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/public/js/jquery.json.min.js"></script>

</head>
<body>
<div class="page">
	<div class="loginwarrp">
		<div class="logo">管理员登陆</div>
        <div class="login_form">
			<form id="LoginForm" name="Login" method="post" action="/login">
				<li class="login-item">
					<span>用户名：</span>
					<input type="text" id="username" name="UserName" class="login_input" >
                                        <span id="count-msg" class="error"></span>
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" id="password" name="password" class="login_input" >
                                        <span id="password-msg" class="error"></span>
				</li>
				<li class="login-item verify">
					<span>验证码：</span>
					<input type="text" name="CheckCode" class="login_input verify_input">
				</li>
				<img id="verifyimg" class="verifyimg" border="0" alt="验证码" src="<%=request.getContextPath()%>/verifyCode" onclick="changeImg()" />
				<div class="clearfix"></div>
				<li class="login-sub">
					<input id="submitBtn" type="button" name="Submit" value="登录" />
                                        <input type="reset" name="Reset" value="重置" />
				</li>
				<li>
					<div class="jsrz_main_check" ></div>
				</li>
           </form>
		</div>
	</div>
</div>
<script type="text/javascript">

    var CTX_PATH = '<%=request.getContextPath()%>';

    window.onload = function() {
			var config = {
				vx : 4,
				vy : 4,
				height : 2,
				width : 2,
				count : 100,
				color : "121, 162, 185",
				stroke : "100, 200, 180",
				dist : 6000,
				e_dist : 20000,
				max_conn : 10
			}
			CanvasParticle(config);
		}
        $(function() {

        });

        function changeImg() {
            var imgSrc = $("#verifyimg");
            var src = imgSrc.attr("src");
            imgSrc.attr("src", chgUrl(src));
        }

        // 时间戳
        // 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
        function chgUrl(url) {
            var timestamp = (new Date()).valueOf();
            url = url.substring(0, 20);
            if ((url.indexOf("&") >= 0)) {
                url = url + "*tamp=" + timestamp;
            } else {
                url = url + "?timestamp=" + timestamp;
            }
            return url;
        }

        $("#submitBtn").bind("click",function(){
            var UserName = $("input[name=UserName]").val();
            var password = $("input[name=password]").val();
            var verifyCode = $("input[name=CheckCode]").val();

            var params = {};
            params["UserName"] = UserName;
            params["password"] = password;
            params["verifyCode"] = verifyCode;


            $.ajax({
                type: "POST",
                dataType: "json",
                url: CTX_PATH+'/login',
                data:params,
                success: function (result) {
                    if(undefined == result){
                        $('.jsrz_main_check').html("服务异常，请稍后再试");
                        $(".jsrz_main_check").css("color","red");
                    }else{
                        if (result.code == 0) {
                            $('.jsrz_main_check').html('登陆成功');
                            $(".jsrz_main_check").css("color","green");
                            window.location.href = CTX_PATH+"/toCryptocurrency";
                        } else {
                            $('.jsrz_main_check').html(result.errorDescription);
                            $(".jsrz_main_check").css("color","red");
                        }
                    }
                }
            });
        });

	</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/public/js/canvas-particle.js"></script>
</body>
</html>