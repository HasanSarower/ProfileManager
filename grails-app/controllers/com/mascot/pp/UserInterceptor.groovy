package com.mascot.pp


class UserInterceptor {

    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorUser()){
            return true
        }
        flash.message = AppUtil.infoMessage("You are not Authorized for this Action.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}