<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <c:if test="${! empty eventDayList}">
                        <c:forEach items="${eventDayList}" var="eventDay">
                            <tr>
                                <td>
                                    ${eventDay.day}
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${eventDay.type == 1}">
                                            小文本
                                        </c:when>
                                        <c:when test="${eventDay.type == 2}">
                                            大文本
                                        </c:when>
                                        <c:when test="${eventDay.type == 3}">
                                            小图
                                        </c:when>
                                        <c:when test="${eventDay.type == 4}">
                                            大图
                                        </c:when>
                                    </c:choose>
                                </td>
                                <td><c:choose>
                                    <c:when test="${! empty eventDay.color}">
                                        ${eventDay.color}
                                    </c:when>
                                    <c:otherwise>
                                        <img src="${eventDay.picUrl}">
                                    </c:otherwise>
                                </c:choose></td>
                                <td>${eventDay.titleCn}</td>
                                <td>${eventDay.titleEn}</td>
                                <td>${eventDay.contentCn}</td>
                                <td>${eventDay.contentEn}</td>
                                <td>${eventDay.time}</td>
                                <td>
                                    <div class="form-group">
                                        <button  class="btn btn-xs btn-primary start" onclick="update(${eventDay.sid},${eventDay.monthId})" data-monthId="${eventDay.monthId}" data-dayId="${eventDay.sid}">
                                            <span>修改</span>
                                        </button>
                                        <span class="jsrz_main_check"></span>
                                        <button  class="btn btn-xs btn-danger start" onclick="deleteDay(${eventDay.sid},${eventDay.monthId})" data-dayId="${eventDay.sid}" data-monthId="${eventDay.monthId}">
                                            <span>删除</span>
                                        </button>
                                        <span class="jsrz_main_check"></span>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- End .panel -->
    </div>
    <!-- col-lg-12 end here -->