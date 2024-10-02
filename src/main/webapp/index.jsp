<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign In / Sign Up</title>
  <link rel="stylesheet" href="Style1.css"> <!-- Ensuring that Style1.css is linked -->
</head>
<body>
  <div class="cont">
    <!-- Sign In Form -->
    <div class="form sign-in">
      <h2>Sign In</h2>
      <form action="login" method="POST">
        <label>
          <span>Username</span>
          <input type="text" name="username" required>
        </label>
        <label>
          <span>Password</span>
          <input type="password" name="password" required>
        </label>
        <button class="submit" type="submit">Sign In</button>
        <p class="forgot-pass">Forgot Password?</p>
        <div class="social-media">
          <ul>
            <!-- Social media links can go here -->
          </ul>
        </div>
      </form>
    </div>

    <!-- Toggle Button -->
    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>Sign up and discover a great amount of new opportunities!</p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already have an account, just sign in. We've missed you!</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>

      <!-- Sign Up Form -->
      <div class="form sign-up">
        <h2>Sign Up</h2>
        <form action="register" method="POST">
          <label>
            <span>Name</span>
            <input type="text" name="username" required>
          </label>
          <label>
            <span>Email</span>
            <input type="email" name="email" required>
          </label>
          <label>
            <span>Password</span>
            <input type="password" name="password" required>
          </label>
          <button type="submit" class="submit">Sign Up Now</button>
        </form>
      </div>
    </div>
  </div>

  <script type="text/javascript">
    document.querySelector('.img-btn').addEventListener('click', function() {
      document.querySelector('.cont').classList.toggle('s-signup');
    });
  </script>
</body>
</html>
