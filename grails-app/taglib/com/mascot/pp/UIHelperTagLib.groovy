package com.mascot.pp

class UIHelperTagLib {
    static namespace = "UIHelper"

    AuthenticationService authenticationService

    def renderErrorMessage = { attrs, body ->
        def model = attrs.model
        String fieldName = attrs.fieldName
        String errorMessage = attrs.errorMessage? g.message(code: attrs.errorMessage): g.message(code: "invalid.input")
        if (model && model.errors && model.errors.getFieldError(fieldName)){
            out << "<small class='form-text text-danger''><strong>${errorMessage}</strong></small>"
        }
    }
    def userActionMenu = { attrs, body ->
        out << '<li class="nav-item dropdown show">'
        out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown"){authenticationService.getUserName()}
        out << '<div class="dropdown-menu">'
        out << g.link(controller: "password", action: "index", class: "dropdown-item"){g.message(code:"change.password")}
        out << g.link(controller: "authentication", action: "logout", class: "dropdown-item"){g.message(code:"logout")}
        out << "</div></li>"
    }
    def leftNavigation = { attrs, body ->
        List navigations = [
        ]
        if(!authenticationService.isAdministratorUser()){
            navigations.add([controller: "dashboard", action: "details", name: "Profile Page"])
            navigations.add([controller: "password", action: "index", name: "Change Password"])
        }
        if(authenticationService.isAdministratorUser()){
            navigations.add([controller: "user", action: "index", name: "User List"])
        }

        navigations.each { menu ->
            out << '<li class="list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }
}
