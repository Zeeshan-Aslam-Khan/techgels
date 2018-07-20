<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/templates/header.jsp"%>

<br/>
<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li class="active">Login</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->


<div class="register-top heading">
    <h2>Login</h2>
</div>

<!--register-starts-->
<div class="register">
    <div class="container">
        <div class="col-md-4 account-left">
        </div>
        <div class="col-md-4 account-left">
            <div id="login-box">

                <c:if test="${not empty msg}">
                    <div class="msg">${msg}</div>
                </c:if>

                <form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="POST">

                    <c:if test="${not empty error}">
                        <div class="error" style="color:red;">${error}</div>
                    </c:if>

                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" class="form-control"/>
                    </div>

                    <input type="submit" value="Submit" class="btn btn-default"/>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
        <div class="col-md-4 account-left">
        </div>


    </div>
</div>
<!--register-end-->

<%@include file="/WEB-INF/views/templates/footer.jsp"%>