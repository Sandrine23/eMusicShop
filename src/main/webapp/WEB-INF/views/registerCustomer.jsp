<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p>Please fill in your information below</p>
        </div>


        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">

        <h3><strong>Basic Info</strong></h3>
        <br/>

        <div class="form-group">
            
            <form:input path="customerName" id="name" class="form-control" placeholder="Name..."/>
        </div>

        <div class="form-group">
            <span style="color: #ff0000">${emailMsg}</span><form:errors
                path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-control" placeholder="Email..."/>
        </div>

        <div class="form-group">
            
            <form:input path="customerPhone" id="phone" class="form-control" placeholder="Phone..."/>
        </div>

        <div class="form-group">
            <span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="username" cssStyle="color: #ff0000"/>
            <form:input path="Username" id="username" class="form-control" placeholder="Username..."/>
        </div>

        <div class="form-group">
            <form:errors path="password" cssStyle="color: #ff0000"/>
            <form:password path="password" id="password" class="form-control" placeholder="Password..."/>
        </div>

        <br/>

        <h3><strong>Billing Address</strong></h3>

        <div class="form-group">
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-control" placeholder="Street Name and Number..."/>
        </div>

        <br/><br/>

        <h3><strong>Shipping Address</strong></h3>

        <br/>
        <div class="form-group">
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-control" placeholder="Street Name..."/>
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-control" placeholder="Apartment Number..."/>
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.city" id="shippingCity" class="form-control" placeholder="City..."/>
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-control" placeholder="Country..."/>
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-control" placeholder="Zipcode..."/>
        </div>

        <br/><br/>

        <input type="submit" value="Submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>














































































