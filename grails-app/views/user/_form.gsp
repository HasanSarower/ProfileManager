

<div class="form-group">
    <label><g:message code="first.name"/> *</label>
    <g:textField name="firstName" class="form-control" value="${user?.firstName}" placeholder="Please Enter First Name"/>
    <UIHelper:renderErrorMessage fieldName="firstName" model="${user}" errorMessage="please.enter.first.name"/>
</div>

<div class="form-group">
    <label><g:message code="last.name"/> *</label>
    <g:textField name="lastName" class="form-control" value="${user?.lastName}" placeholder="Please Enter Last Name"/>
    <UIHelper:renderErrorMessage fieldName="lastName" model="${user}" errorMessage="please.enter.last.name"/>
</div>

<div class="form-group">
    <label><g:message code="address"/></label>
    <g:textField  name="address" class="form-control" value="${user?.address}" placeholder="Please Enter Address"/>
</div>

<div class="form-group">
    <label><g:message code="phone"/></label>
    <g:textField  name="phone" class="form-control" value="${user?.phone}" placeholder="Please Enter Phone"/>
</div>

<div class="form-group">
    <label><g:message code="date.of.birth"/></label>
    <g:textField  name="dateOfBirth" class="form-control" value="${user?.dateOfBirth}" placeholder="Please Enter Date Of Birth"/>
</div>

<div class="form-group">
    <label><g:message code="email.address"/> *</label>
    <g:textField id='txtEmail' type="email" name="email" class="form-control email" value="${user?.email}" placeholder="Please Enter Email"/>
    <UIHelper:renderErrorMessage fieldName="email" model="${user}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${user?.password}" placeholder="Please Enter Password"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${user}" errorMessage="Please Enter a Password."/>
    </div>
</g:if>