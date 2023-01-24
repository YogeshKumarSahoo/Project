<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>SignUp</title>
    <!-- CSS only -->
    	
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
		<link rel="stylesheet" href="CSS/bootstrap.min.css">
		<link rel="stylesheet" href="CSS/SignUp.css">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

    <script src="script/signUp.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>

<body>

    <div class="img-container">
        <img id="back" src="images/david-van-dijk-3LTht2nxd34-unsplash.jpg">
    </div>
    <div class="col-md-6">
          <div class="box">
            <h2 class="h2">Please register your self</h2>
            <form  method="post" action="register" id="contactForm" name="reg" onsubmit="return checkRegistration()" class="mb-5 needs-validation" novalidate>
              <div class="row">
                
                <div class="col-md-6 form-group">
                  <label for="name" class="col-form-label">First Name </label>
                  <input type="text" class="form-control" name="fname" id="name" placeholder="Your First name" required>
                </div>
                <div class="col-md-6 form-group">
                  <label for="name" class="col-form-label">Last Name</label>
                  <input type="text" class="form-control" name="lname" id="organization" placeholder="Your Last name" required>
                </div>
              </div>
              <div class="row">
                
                <div class="col-md-6 form-group">
                  <label for="name" class="col-form-label" maxlength="10">Mobile Number </label>
                  <input type="text" class="form-control" name="mob" id="name" placeholder="Your name" required>
                </div>
                <div class="col-md-6 form-group">
                  <label for="sex" class="col-form-label" required>Gender:</label><br>
                    <input type="radio" name="Gender" id="sex" value="male">Male
                    <input type="radio" name="Gender" id="sex" value="female">female
                    <input type="radio" name="Gender" id="sex" value="other">Other
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="email" class="col-form-label">Email </label>
                  <input type="text" class="form-control" name="email" id="email" placeholder="Your email address" pattern="/[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/"  required>
                </div>
              </div>

              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="message" class="col-form-label">Address</label>
                  <textarea class="form-control" name="adrs" id="message" cols="30" rows="7" placeholder="Enter Address here" required></textarea>
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-md-6 form-group">
                  <label for="budget" class="col-form-label">Courses</label>
                  <select class="custom-select" id="budget" name="course" required>
	                    <option value="">-select-</option>
	                    <option value="Java">Java</option>
	                    <option value="Python">Python</option>
	                    <option value="PHP">PHP</option>
	                    <option value="Mysql">Mysql</option>
                	</select>
  
                </div>
                <div class="col-md-6 form-group">
                  <label for="message" class="col-form-label">Password</label>
                  <input type="password" class="form-control" name="pass" id="date" placeholder="**Password**" required>

               
                </div>
                <div class="invalid-feedback">Please Enter Your Address</div>
			</div>
              </div>

              <div class="row">
                <div class="col-md-12">
                  <input type="submit" value="Sign up" class="btn btn-block btn-primary rounded-0 py-2 px-4" >
                  <span class="submitting"></span>
                </div>
              </div>
            </form>

            <div id="form-message-warning mt-4"></div> 
            <div id="form-message-success">
              Your message was sent, thank you!
            </div>
          </div>
        </div>
  
    
</body>
<script>

var forms = document.querySelectorAll(".needs-validation");

Array.prototype.slice.call(forms).forEach(function(form) {
	form.addEventListener("submit", function(event) {
		if (!form.checkValidity()) {
			event.preventDefault();
			event.stopPropagation();
		}
		form.classList.add("was-validated");
	});
});
</script>

</html>