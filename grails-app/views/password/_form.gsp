


    <div class="form-group">
        <label><g:message code="previous.password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${user?.password}" placeholder="Please Enter Previous Password"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${user}" errorMessage="Please Enter a Password."/>
    </div>
    <div class="form-group">
        <label><g:message code="new.password"/> *</label>
        <g:passwordField name="newPassword" class="form-control" value="${user?.newPassword}" placeholder="Please Enter New Password"/>
        <UIHelper:renderErrorMessage fieldName="newPassword" model="${user}" errorMessage="Please Enter a Password."/>
    </div>
    <div class="form-group">
        <label><g:message code="confirm.password"/> *</label>
        <g:passwordField name="confirmPassword" class="form-control" value="${user?.confirmPassword}" placeholder="Please Enter New Password Again"/>
        <UIHelper:renderErrorMessage fieldName="confirmPassword" model="${user}" errorMessage="Please Enter a Password."/>
    </div>

