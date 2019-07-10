package com.mascot.pp

class User {

//    AuthenticationService authenticationService
//    PasswordController passwordController

    Integer id
    String firstName
    String lastName
    String address
    Integer phone
    String email
    String dateOfBirth
    String password
    // newPassword
    // String confirmPassword
    String userType = GlobalConfig.USER_TYPE.REGULAR_USER
    String identityHash
    Long identityHashLastUpdate
    Boolean isActive = true

    Date dateCreated
    Date lastUpdated

    static constraints = {

        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
       // newPassword(blank: false)
        //confirmPassword(blank: false)
        firstName(nullable: false)
        lastName(nullable: false)
        identityHash(nullable: true)
        identityHashLastUpdate(nullable: true)

//        password blank: false, validator: { val, obj ->
//            return passwordController.isPasswordValid()
//        }
//        newPassword validator: { val, obj ->
//            val == obj.confirmPassword
//        }
    }


//    User updatePassword() {
//        User currentUser = authenticationService.getUser()
//
//        currentUser.password = newPassword
//
//        currentUser.save(flush: true)
//    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }

}
