package com.mascot.pp

class AppInitializationService {

    static initialize() {
        initUser()
    }

    private static initUser() {
        if (User.count() == 0) {
            User user = new User()
            user.firstName = "System"
            user.lastName = "Administrator"
            user.email = "admin@localhost.local"
            user.password = "admin"
            user.userType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            user.save(flash: true)
        }
    }
}