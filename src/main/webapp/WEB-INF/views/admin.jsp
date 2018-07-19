<%@include file="/WEB-INF/views/templates/header.jsp"%>

</br>
<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li class="active">Admin</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Manage Products</h1>

            <p class="lead">Manager all products here.</p>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory"/>">Product Inventory</a>
        </h3>

        <p>Here you can view and modify the products.</p>



    </div><!-- /.container -->

<%@include file="/WEB-INF/views/templates/footer.jsp"%>