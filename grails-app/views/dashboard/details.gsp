%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="user" args="['Details']"/>
    </div>
    <div class="card-body">
        <g:if test="${user}">
            <table class="table">
                <tr>
                    <th class="text-right"><g:message code="first.name"/></th><td class="text-left">${user.firstName}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="last.name"/></th><td class="text-left">${user.lastName}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="address"/></th><td class="text-left">${user.address}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="phone"/></th><td class="text-left">${user.phone}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="email"/></th><td class="text-left">${user.email}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="date.of.birth"/></th><td class="text-left">${user.dateOfBirth}</td>
                </tr>
            </table>
        </g:if>
        <div class="form-action-panel">
            <g:link controller="dashboard" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>