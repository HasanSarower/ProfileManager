package com.mascot.pp

class DashboardController {

    DashboardService dashboardService
    AuthenticationService authenticationService





    def index() {
    }

    def myAction() {
         def id  = authenticationService.getUserId()
        return id
    }

    def details() {
        def id = myAction()

        def response = dashboardService.getById(id)
        if (!response){
            redirect(controller: "dashboard", action: "index")
        }else{
            [user: response]
        }
    }
}


