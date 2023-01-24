function checkRegistration() {
        	console.log("passs1");
            var fname = document.getElementById("fname").value;
            var lname = document.getElementById("lname").value;
            var mob = document.getElementById("mob").value;
            var addr = document.getElementById("adrs").value;
            var course = document.getElementById("course").value;
            var email = document.getElementById("email").value;
            var pass = document.getElementById("pass").value;
            var sex = document.reg_form.gender;

            
            if (fname == '') {
                alert('Please enter first name');
                return false
                
            }
            console.log("passs2");
            if (lname == '') {
                alert('Please enter last name');
                return false
            }
            if (sex == '') {
                alert('Please choose your gender');
                return false
            }
            if (mob == '') {
                alert('Enter your mobile number');
                return false
            }
            if (addr == '') {
                alert('Please Enter your address');
                return false
            }
            if (course == '') {
                alert('Please choose Course');
                return false
            }
            if (email == '') {
                alert('Please Enter your email address');
                return false
            }
            if (pass == '') {
                alert('Please enter password');
                return false
            }
        }