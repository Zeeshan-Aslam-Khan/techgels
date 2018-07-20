<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 7/18/2018
  Time: 2:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Demo: Car Super Mart</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all" />
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="<c:url value="/resources/js/jquery-1.11.0.min.js"/>"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--start-menu-->
    <link href="<c:url value="/resources/css/memenu.css"/>" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<c:url value="/resources/js/memenu.js"/>"></script>
    <script>$(document).ready(function(){$(".memenu").memenu();});</script>
    <!--dropdown-->
    <script src="<c:url value="/resources/js/jquery.easydropdown.js"/>"></script>
</head>
<body>

<!--start-logo-->
<div class="logo">
    <a href="<c:url value="/"/>"><h1>Demo: Car Super Mart</h1></a>
</div>
<!--start-logo-->
<!--bottom-header-->
<div class="header-bottom">
    <div class="container">
        <div class="header">

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <div class="col-md-8 header-left">
                    <div class="top-nav">
                        <ul class="memenu skyblue">
                            <li class="active"><a href="<c:url value="/"/>">Home</a></li>
                            <li class="grid"><a href="<c:url value="/productList"/>">Products</a></li>
                            <li class="grid"><a href="<c:url value="/admin/productInventory"/>">Product Inventory</a></li>
                            <li class="grid"><a href="<c:url value="/admin/productInventory/addProduct"/>">Add Product</a></li>
                            <li class="grid"><a href="">About</a></li>
                            <li class="grid"><a href="">Contact</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-3 top-header-right">
                    <ul class="memenu skyblue header-right">
                <li class="grid">
                    Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
                </li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <div class="col-md-10 header-left">
                    <div class="top-nav">
                        <ul class="memenu skyblue">
                            <li class="active"><a href="<c:url value="/"/>">Home</a></li>
                            <li class="grid"><a href="<c:url value="/productList"/>">Products</a></li>
                            <li class="grid"><a href="">About</a></li>
                            <li class="grid"><a href="">Contact</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-1 top-header-right">
                    <ul class="memenu skyblue header-right">
                        <li class="grid"><a href="<c:url value="/login"/>">Login</a></li>
                    </ul>
                </div>
            </c:if>

            <div class="col-md-1 top-header-right">
                <div class="cart box_1">
                    <a href="#">
                        <div class="total">
                            <span class="simpleCart_total"></span></div>
                        <img src="<c:url value="/resources/images/cart-1.png"/>" alt="" />
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--bottom-header-->