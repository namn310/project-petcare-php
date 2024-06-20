<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Admin-Petcare</title>
    <link rel="stylesheet" href="\admin/Boostrap/css/bootstrap.css">
    <script href="\admin/Boostrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" /> <!-- Latest compiled JavaScript -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="/../Project-petcare-php/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/../Project-petcare-php/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/../Project-petcare-php/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/../Project-petcare-php/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="/../Project-petcare-php/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="/../Project-petcare-php/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/../Project-petcare-php/assets/vendor/simple-datatables/style.css" rel="stylesheet">
    <link rel="stylesheet" href="\admin/Boostrap/css/bootstrap.css">
    <script href="\admin/Boostrap/js/bootstrap.bundle.min.js"></script>
    <!-- Template Main CSS File -->
    <link href="/../Project-petcare-php/assets/css/style.css" rel="stylesheet">
    <link href="/../Project-petcare-php/assets/css/style.css" rel="stylesheet">

</head>

<body>

    <main>
        <div class="container">

            <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                            <div class="d-flex justify-content-center py-4">
                                <a href="index.php" class="logo d-flex align-items-center w-auto">
                                    <img src="/../Project-petcare-php/assets/img/PetCARE.png" alt="">
                                    <span class="d-none d-lg-block"></span>
                                </a>
                            </div><!-- End Logo -->
                            <script>
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
                                        /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$/;
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
                                        /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$/;
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
                                    if (checkRePass() !== true || checkPassword() !== true || checkEmail() !== true || checkUser() !== true) {
                                        return confirm("Kiểm tra lại thông tin");
                                    } else {

                                    }
                                }

                                function get() {
                                    var pass = document.getElementById("password").value;
                                    console.log(pass);
                                }
                            </script>

                            <div class="card mb-3">

                                <div class="card-body">

                                    <div class="pt-4 pb-2">
                                        <h5 class="card-title text-center pb-0 fs-4">Tạo tài khoản</h5>

                                    </div>

                                    <form class="row g-3" method="post" onsubmit="checkFormRegis()" action="index.php?controller=login&action=registerAccount">
                                        <div class="col-12">
                                            <label for="username" class="form-label">Họ tên</label>
                                            <input onclick="checkUser()" onkeyup="checkUser()" type="text" name="name" class="form-control" id="name" required>
                                            <!-- <p class="p1 text-danger">Nhập lại họ tên</p> -->
                                        </div>

                                        <div class="col-12">
                                            <label for="email_signup" class="form-label">Email</label>
                                            <div class="input-group has-validation">
                                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                                <input onclick="checkEmail()" onkeyup="checkEmail()" type="text" name="email_signup" class="form-control  " id="email" required>
                                            </div>
                                            <!-- <p class="p2 text-danger">Nhập lại Email</p> -->
                                        </div>

                                        <div class="col-12">
                                            <label for="password_signup" class="form-label">Mật khẩu</label>
                                            <input type="password" onclick="checkPassword()" onkeyup="checkPassword()" name="password" class="form-control" id="password" required>
                                            <i class="text-sm">Mật khẩu tối thiểu 6 bao gồm chữ thường,chữ hoa,số và ký tự đặc biệt </i>
                                            <!-- <p class="p3 text-danger">Mật khẩu dài 8 ký tự</p> -->
                                        </div>
                                        <div class="col-12">
                                            <label for="Repassword_signup" class="form-label">Nhập lại mật khẩu</label>
                                            <input type="password" onclick="checkRePass()" onkeyup="checkRePass()" name="password" class="form-control" placeholder="Mật khẩu dài 8 ký tự" id="Repassword" required>
                                            <!-- <p class="p4 text-danger">Mật khẩu không khớp</p> -->
                                        </div>

                                        <div class="col-12">
                                            <button class="btn btn-primary w-100" id="registButton" type="submit">Tạo tài khoản</button>

                                        </div>
                                        <div class="col-12">
                                            <p class="small mb-0">Bạn đã có tài khoản <a href="index.php?controller=login">Đăng nhập</a></p>
                                        </div>
                                    </form>

                                </div>
                            </div>


                        </div>
                    </div>
                </div>

            </section>

        </div>
    </main><!-- End #main -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="/../Project-petcare-php/assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="/../Project-petcare-php/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/../Project-petcare-php/assets/vendor/chart.js/chart.umd.js"></script>
    <script src="/../Project-petcare-php/assets/vendor/echarts/echarts.min.js"></script>
    <script src="/../Project-petcare-php/assets/vendor/quill/quill.js"></script>
    <script src="/../Project-petcare-php/assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="/../Project-petcare-php/assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="/../Project-petcare-php/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="../assets/js/main.js"></script>

</body>

<script>
    /*
    $(document).ready(function() {
        $(".p1").hide();
        $(".p2").hide();
        $(".p3").hide();
        $(".p4").hide();
        $("#registButton").hide();
        $('username').on('click', function() {
            if ($('username').val().length() < 6) {
                $(".p1").show();
            }
        })

    })
    */
</script>

</html>