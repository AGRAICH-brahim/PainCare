<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>

    <!-- CSS -->
     <link rel="stylesheet" href="css/cssauthuser.css">
     <link rel="stylesheet" href="css/style.css">
    <!-- Box icons CSS -->
      <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">

</head>

<body>
<section class="container forms">
    <div class="form login">
        <div class="form-content">
            <header>Login</header>
            <p class="" style="color:red; font-size:12px; display:flex; justify-content: center; "> ${message}</p>
            <form action="Login" method="post">
                <div class="field input-field">
                    <label>
                        <input type="email" placeholder="Email" name="email" class="input" required>
                    </label>
                </div>

                <div class="field input-field">
                    <label>
                        <input type="password" placeholder="Password" name="password" class="password" required>
                    </label>
                    <i class='bx bx-hide eye-icon'></i>
                </div>

                <div class="form-link">
                    <a href="#" class="forgot-pass">Forgot password?</a>
                </div>

                <div class="field button-field">
                    <button>Login</button>
                </div>
            </form>

            <div class="form-link">
                <span>Don't have an account? <a href="Signup" class="link signup-link">Signup</a></span>
            </div>
        </div>

        <div class="line"></div>

        <div class="media-options">
            <a href="#" class="field google">
                <i class="bi bi-google"></i>
                <span>Login with Google</span>
            </a>
        </div>

    </div>

</section>

</body>
</html>