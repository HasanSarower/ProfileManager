<meta name="layout" content="public"/>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.css">

<div class="container">
    <div class="row">
        <div class="col-sm- -md-4 mx-auto">
            <div class="well login-box">
<g:form controller="authentication" action="doLogin" class="form-signin">
                    <legend>Login</legend>
                    <div class="form-group">
                        <label >E-mail</label>
                        <g:textField name="email" class="form-control" placeholder="Email" required="required" />
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
                    </div>
                    <div class="form-group text-center">
                        <g:submitButton class="btn btn-success btn-login-submit" name="login" value="Login" />
                        <g:link controller="authentication" action="registration" class="btn btn-default btn-register">Register</g:link>
                    </div>
</g:form>
            </div>
        </div>
    </div>
</div>