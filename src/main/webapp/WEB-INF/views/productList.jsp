<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp"%>

</br>
<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li class="active">Products</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--prdt-starts-->
<div class="prdt">
    <div class="container">
        <div class="prdt-top">
            <div class="col-md-12 prdt-left">
                <div class="product-one">

                <c:forEach items="${products}" var="product">
                    <div class="col-md-4 product-left p-left">
                        <div class="product-main simpleCart_shelfItem">
                            <a href="<spring:url value="/productList/viewProduct/${product.productId}"/>" class="mask"><img class="img-responsive zoom-img" src="<c:url value="/resources/images/${product.productId}.png"/>" style="width:100%;height:200px;" alt="" /></a>
                            <div class="product-bottom">
                                <h3>${product.productName}</h3>
                                <p>Explore Now</p>
                                <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">${product.productPrice} Euros</span></h4>
                            </div>
                            <div class="srch srch1">
                                <span>-20%</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--product-end-->

<%@include file="/WEB-INF/views/templates/footer.jsp"%>