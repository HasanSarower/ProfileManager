package com.mascot.pp


class DashboardService {



    def getById(Serializable id) {
        return User.get(id)
    }
}
