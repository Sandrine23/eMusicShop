<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1 style="text-align: center; font-family: 'Nova Script', cursive; font-size: 48px;">Add Product</h1>
        </div><br/>


        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data" >
        <div class="form-group">
            <label for="name">Name</label> <form:errors path="productName" cssStyle="color: #ff0000"/>
            <form:input path="productName" id="name" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="name">Category</label>
            <form:input path="productCategory" id="category" class="form-control" value="${product.productCategory}"/>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label> <form:errors path="productPrice" cssStyle="color: #ff0000"/>
            <form:input path="productPrice" id="price" class="form-control"/>
        </div>


        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label> <form:errors path="unitInStock" cssStyle="color: #ff0000"/>
            <form:input path="unitInStock" id="unitInStock" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>


        <br/><br/>

        <input type="submit" value="Submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>

        <br><br><br><br><br>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>











































































