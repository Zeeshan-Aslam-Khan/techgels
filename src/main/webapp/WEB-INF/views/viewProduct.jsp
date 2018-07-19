<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/templates/header.jsp"%>

</br>
<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/productList"/>">Product</a></li>
                <li class="active">${product.productName}</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->



<!--start-single-->
<div class="single contact">
    <div class="container">
        <div class="single-main">
            <div class="col-md-9 single-main-left">
                <div class="sngl-top">
                    <div class="col-md-5 single-top-left">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="<c:url value="/resources/images/${product.productId}.png"/>">
                                    <div class="thumb-image"> <img src="<c:url value="/resources/images/${product.productId}.png"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                            </ul>
                        </div>
                        <!-- FlexSlider -->
                        <script src="<c:url value="/resources/js/imagezoom.js"/>"></script>
                        <script defer src="<c:url value="/resources/js/jquery.flexslider.js"/>"></script>
                        <link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css"/>" type="text/css" media="screen" />

                        <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function() {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>
                    </div>
                    <div class="col-md-7 single-top-right">
                        <div class="single-para simpleCart_shelfItem">
                            <h2>${product.productName}</h2>
                            <div class="star-on">
                                <ul class="star-footer">
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                </ul>
                                <div class="review">
                                    <a href="#"> ${product.productBrand} </a>

                                </div>
                                <div class="clearfix"> </div>
                            </div>

                            <h5 class="item_price">${product.productPrice} Euros</h5>
                            <p>${product.productDescription}</p>
                            <div class="available">
                                <p><strong>Category</strong> : ${product.productCategory}</p>
                                <p>Stock Status: ${product.productStatus}</p>
                                <p>Quantity: (${product.unitInStock}) </p>
                            </div>
                            <a href="#" class="add-cart item_add">ADD TO CART</a>

                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--end-single-->


<%@include file="/WEB-INF/views/templates/footer.jsp"%>