<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div id="login-box">

            <h2>Login with Username and Password</h2>

            <c:if test="${not empty msg}">
                <div class="msg" style="text-align: center;">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check" /> " method="post">
                <c:if test="${not empty error}">
                    <center><div class="error" style="color: #ff0000">${error}</div></center>
                </c:if>

                <br><br><br>

                <div class="form-group" style="width: 50%; margin: auto;">
                    <input type="text" id="username" name="username" class="form-control" placeholder="Username..."/>
                </div>
                <br>
                <div class="form-group" style="width: 50%; margin: auto;">
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password..."/>
                    <br>
                    <input type="submit" value="Submit" class="btn btn-success"/>
                </div>

                <!-- Cross Site Request Forgery (CSRF) docs.spring.io/spring-security/site/docs/current/reference/html/csrf.html -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>

