package com.mascot.pp

import grails.web.servlet.mvc.GrailsParameterMap


class PasswordService {

    AuthenticationService authenticationService

    def getById(Serializable id) {
        return User.get(id)
    }


    def update(User user, GrailsParameterMap params) {
        user.properties = params
        def response = AppUtil.saveResponse(false, user)
        if (user.validate()) {
            user.save(flush: true)
            if (!user.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }
}
