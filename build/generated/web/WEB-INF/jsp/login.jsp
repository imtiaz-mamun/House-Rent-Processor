<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>House Rent Management</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900&subset=latin,greek,greek-ext,vietnamese,cyrillic-ext,latin-ext,cyrillic" rel="stylesheet" type="text/css">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/img/police-stop.png">
        <link rel="stylesheet" href="styles/vendor-72d47c3353.css">
        <link rel="stylesheet" href="styles/auth-20116342ad.css">
    </head>
    <body>
        <main class="auth-main">
            <div class="auth-block">
                <h1 style="background: #223c76;padding: 10px;">Sign In</h1>
                <h1><strong>House Rent Management</strong></h1>
                <a id="reg" href="reg" class="auth-link" style="color: yellow">New to <strong>House Rent Management</strong>? Sign up!</a>
                <form class="form-horizontal" action="login" method="post">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                            <input name="username" class="form-control" placeholder="User Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="password" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button name="login" type="submit" class="btn btn-default btn-auth">Sign in</button> 
                            <a href="" class="forgot-pass">Forgot password?</a>
                        </div>
                    </div>
                </form>
            </div>
        </main>
    </body>
</html>