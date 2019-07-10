<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        Change Password
    </div>
    <div class="card-body">

        <g:form controller="password" action="update">
            <g:render template="/password/form"/>
            <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "update")}"/>
            <g:link controller="dashboard" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </g:form>

    </div>
</div>