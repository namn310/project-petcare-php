<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Care</title>
    <link rel="shortcut icon" type="image/png" href="../images/logo/PetCARE.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="../css/user-responsive.css">
    <link rel="stylesheet" href="../css/user1.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>


<body>

    <!----------------------- Main Container -------------------------->
    <div class="container d-flex justify-content-center align-items-center min-vh-100">




        <!----------------------- Login Container -------------------------->
        <div class="row border rounded-5 p-3 bg-white shadow box-area">




            <!--------------------------- Left Box ----------------------------->
            <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background:  #FFE4DA;">
                <div class="featured-image mb-3">
                    <img src="../Project-petcare-php/assets/img/PetCARE.png" class="img-fluid mt-3" style="width:100%">
                </div>

            </div>


            <!-------------------- ------ Right Box ---------------------------->
            <div class="col-md-6 right-box">
                <div class="row align-items-center text-center">
                    <div class="header-text mb-4">
                        <h3 style="font-family: 'Courier New', Courier, monospace;font-weight: 600;">Đăng Ký</h3>
                    </div>

                    <form id="loginForm" onsubmit="checkFormRegis()" method="post" action="index.php?controller=register&action=registerPost">
                        <div class="form-group mb-3">
                            <input onclick="checkUser()" onkeyup="checkUser()" type="username" name="name" class="form-control form-control-lg bg-light fs-6" id="name" placeholder="Tên người dùng">
                            <p class="UsernameError text-danger text-start ps-1"></p>
                        </div>
                        <div class="form-group mb-3">
                            <input onclick="checkEmail()" onkeyup="checkEmail()" type="email" name="email" class="form-control form-control-lg bg-light fs-6" id="email" placeholder="Địa chỉ Email">
                            <p class="emailError text-danger text-start ps-1"></p>
                        </div>
                        <div class="form-group mb-3">
                            <input type="text" onclick="checkPhone()" onkeyup="checkPhone()" name="phone" class="form-control form-control-lg bg-light fs-6" id="phone" placeholder="Số điện thoại">
                            <p class=" text-danger text-start ps-1"></p>
                        </div>
                        <div class="form-group mb-3">
                            <input type="text" name="local" class="form-control form-control-lg bg-light fs-6" id="local" placeholder="Địa chỉ">
                            <p class=" text-danger text-start ps-1"></p>
                        </div>
                        <div class="form-group mb-3">
                            <input onclick="checkPassword()" onkeyup="checkPassword()" type="password" name="pass" class="form-control form-control-lg bg-light fs-6" id="password" placeholder="Mật Khẩu">
                            <p class="passwordError text-danger text-start ps-1"></p>
                            <i>Mật khẩu ít nhất 6 ký tự bao gồm số và chữ</i>
                        </div>
                        <div class="form-group mb-3">
                            <input onclick="checkRePass()" onkeyup="checkRePass()" type="password" name="pass" class="form-control form-control-lg bg-light fs-6" id="Repassword" placeholder="Nhập lại mật khẩu">
                            <p class="passwordError text-danger text-start ps-1"></p>
                        </div>

                        <div class="input-group mb-3">
                            <button class="btn btn-lg btn-warning w-100 fs-6" type="submit" name="dangky" id="submit">Đăng Ký</button>
                        </div>
                    </form>


                    <div class="row">
                        <small>Bạn đã có tài khoản? <a href="login.html">Đăng Nhập</a></small>
                    </div>

                </div>
            </div>


        </div>
    </div>
    <script>
        function checkPhone() {
            var correct_phone =
                /^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$/;
            var phone = document.getElementById("phone");
            var phone_val = parseInt(phone.value);
            if (phone_val == "" || correct_phone.test(phone_val) == false) {
                phone.classList.add("is-invalid");
                return false;
            } else {
                phone.classList.remove("is-invalid");
                phone.classList.add("is-valid");
                return true;
            }
        }
        //Check dang ky
        function checkUser() {
            var name_correct =
                /^[A-Za-z\sAÀẢÃÁẠĂẰẲẴẮẶÂẦẨẪẤẬBCDĐEÈẺẼÉẸÊỀỂỄẾỆFGHIÌỈĨÍỊJKLMNOÒỎÕÓỌÔỒỔỖỐỘƠỜỞỠỚỢPQRSTUÙỦŨÚỤƯỪỬỮỨỰVWXYỲỶỸÝỴZaàảãáạăằẳẵắặâầẩẫấậbcdđeèẻẽéẹêềểễếệfghiìỉĩíịjklmnoòỏõóọôồổỗốộơờởỡớợpqrstuùủũúụưừửữứựvwxyỳỷỹýỵz]+$/;
            var name = document.getElementById("name");
            var name_val = document.getElementById("name").value;
            if (name_val == "" || name_correct.test(name_val) == false) {
                name.classList.add("is-invalid");
                return false;
            } else {
                name.classList.remove("is-invalid");
                name.classList.add("is-valid");
                return true;
            }
        }

        function checkEmail() {
            var correct_email =
                /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$/;
            var email = document.getElementById("email");
            var email_val = email.value;
            if (email_val == "" || correct_email.test(email_val) == false) {
                email.classList.add("is-invalid");
                return false;
            } else {
                email.classList.remove("is-invalid");
                email.classList.add("is-valid");
                return true;
            }

        }

        function checkPassword() {
            var correct_password =
                /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
            var pass = document.getElementById("password");
            var pass_val = pass.value;
            if (pass_val == "" || correct_password.test(pass_val) == false) {
                pass.classList.add("is-invalid");
                return false;
            } else {
                pass.classList.remove("is-invalid");
                pass.classList.add("is-valid");
                return true;
            }
        }

        function checkRePass() {
            var correct_password =
                /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
            var Repass = document.getElementById("Repassword");
            var Repass_val = Repass.value;
            var pass = document.getElementById("password").value;
            if (Repass_val == "" || Repass_val !== pass || correct_password.test(Repass_val) == false) {
                Repass.classList.add("is-invalid");
                return false;
            } else {
                Repass.classList.remove("is-invalid");
                Repass.classList.add("is-valid");
                return true;
            }
        }

        function checkFormRegis() {
            if (checkRePass() !== true || checkPassword() !== true || checkEmail() !== true || checkUser() !== true || checkPhone() == false) {
                return confirm("Kiểm tra lại thông tin");
            } else {

            }
        }

        function get() {
            var pass = document.getElementById("password").value;
            console.log(pass);
        }
    </script>
</body>

</html>