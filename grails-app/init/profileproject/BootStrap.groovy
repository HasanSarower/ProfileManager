package profileproject


import com.mascot.pp.AppInitializationService



class BootStrap {



    def init = { servletContext ->
        AppInitializationService.initialize()
    }

    def destroy = {
    }
}