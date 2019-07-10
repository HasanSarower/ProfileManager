package com.mascot.pp


class  PasswordController {

    PasswordService passwordService
    AuthenticationService authenticationService

    def id = authenticationService.getUserId()

    def index() {
    }



    /*def submitPasswordChange(User user) {
        if (request.method == "POST") {
            if (user.hasErrors()) {
                flash.message = "Opps something went wrong"
                return
            }
            user.updatePassword()
            flash.message = "Password updated :)"
            redirect(controller: "password", action: "index")
        }
    }*/

    def update() {
        if(isPasswordValid() && isPasswordConfirm()) {
            def response = passwordService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
                redirect(controller: "dashboard", action: "index")
            } else {
                response = passwordService.update(response.password, params.confirmPassword)
                if (!response.isSuccess) {
                    flash.redirectParams = response.model
                    flash.message = AppUtil.infoMessage(g.message(code: "unable.to.update"), false)
                    redirect(controller: "password", action: "index")
                } else {
                    flash.message = AppUtil.infoMessage(g.message(code: "updated"))
                    redirect(controller: "dashboard", action: "index")
                }
            }
        }
        else{
            flash.message = AppUtil.infoMessage(g.message(code: "try.again"))
        }
    }


    def isPasswordValid(){

        if(params.password == authenticationService.getUserPassword()){
            return true
        }
        return false
    }

    def isPasswordConfirm(){
        if(params.newPassword == params.confirmPassword){
            return true
        }
        return false
    }



}
