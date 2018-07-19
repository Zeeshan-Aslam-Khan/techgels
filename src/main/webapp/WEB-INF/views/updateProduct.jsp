<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/templates/header.jsp"%>

</br>
<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/admin"/>">Admin</a></li>
                <li><a href="<c:url value="/productInventory"/>">Product Inventory</a></li>
                <li class="active">Update Product</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Update Product</h1>

            <p class="lead">Fill the below form to update a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/updateProduct" method="post" commandName="product" enctype="multipart/form-data">

            <form:hidden path="productId" value="${product.productId}"/>

            <div class="form-group">
                <label for="product_name">Name</label><form:errors path="productName" cssStyle="color:red"/>
                <form:input path="productName" id="product_name" class="form-control" value="${product.productName}"/>
            </div>
            <div class="form-group">
                <label for="product_brand">Brand</label><form:errors path="productBrand" cssStyle="color:red"/>
                <form:input path="productBrand" id="product_brand" class="form-control" value="${product.productBrand}"/>
            </div>
            <div class="form-group">
                <label class="custom-control-label" for="product_image">Upload Image</label>
                <form:input path="productImage" id="product_image" type="file" class="form:input-large" />
            </div>
            <div class="form-group">
                <label for="product_category">Category</label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCategory" id="product_category" value="Car" />Car
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCategory" id="product_category" value="Motor Bike" />Motor Bike
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCategory" id="product_category" value="Van" />Van
                </label>
            </div>
            <div class="form-group">
                <label for="product_description">Description</label>
                <form:textarea path="productDescription" id="product_description" class="form-control" value="${product.productDescription}"/>
            </div>
            <div class="form-group">
                <label for="product_unit_in_stock">Unit in Stock</label><form:errors path="unitInStock" cssStyle="color:red"/>
                <form:input path="unitInStock" id="product_unit_in_stock" class="form-control" value="${product.unitInStock}"/>
            </div>
            <div class="form-group">
                <label for="product_price">Price</label><form:errors path="productPrice" cssStyle="color:red"/>
                <form:input path="productPrice" id="product_price" class="form-control" value="${product.productPrice}"/>
            </div>
            <div class="form-group">
                <label for="product_status">Status</label>
                <label class="form-check-inline">
                    <form:radiobutton path="productStatus" id="product_status" value="Available" />Available
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productStatus" id="product_status" value="Unavailable" />Unavailable
                </label>
            </div>

            </br></br>

            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory"/>" class="btn btn-default">Cancel</a>

        </form:form>

    </div>
</div><!-- /.container -->

<%@include file="/WEB-INF/views/templates/footer.jsp"%>