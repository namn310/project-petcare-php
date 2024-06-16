<!DOCTYPE html>
<html lang="en">

<head>
    <me<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pet Care</title>
        <link rel="shortcut icon" type="image/png" href="/../images/logo/PetCARE.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
        <link rel="stylesheet" href="../css/user-responsive.css">
        <link rel="stylesheet" href="../css/user1.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
</head>
</head>

<body>

    <!----------------------- Main Container -------------------------->
    <div class="container d-flex justify-content-center align-items-center min-vh-100">




        <!----------------------- Login Container -------------------------->
        <div class="row border rounded-5 p-3 bg-white shadow box-area">




            <!--------------------------- Left Box ----------------------------->
            <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box"
                style="background: #FFE4DA;">
                <div class="featured-image mb-3">
                    <img src="images/logo/PetCARE (2).png" class="img-fluid mt-3" style="width:100%">
                </div>


            </div>


            <!-------------------- ------ Right Box ---------------------------->
            <div class="col-md-6 right-box">
                <div class="row align-items-center">
                    <div class="header-text mb-4">
                        <h3 class="text-center"
                            style="font-family: 'Courier New', Courier, monospace;font-weight: 600;">QUÊN MẬT KHẨU</h3>
                    </div>
                    <form id="loginForm">
                        <div class="form-group mb-3">
                            <input type="email" class="form-control form-control-lg bg-light fs-6" id="email_login"
                                placeholder="Nhập Email của bạn">
                            <p class="emailError text-danger"></p>
                        </div>
                        <div class="input-group mb-3">
                            <button class="btn btn-lg btn-warning w-100 fs-6" type="button" id="submitButton">Gửi yêu
                                cầu</button>
                            <div id="image" style="display: none;">
                                <img src="images/login-img/load2.gif" id="image" class="w-75">
                            </div>
                        </div>
                    </form>
                </div>
            </div>


        </div>
    </div>
    <script>
        function isEmail (inputEmail)
        {
            var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return regex.test(inputEmail);
        }


        $(document).ready(function ()
        {
            $('#email_login').change(function ()
            {
                var email = $(this).val().trim();
                // alert(`email = ${JSON.stringify(email)}`)
                if (!isEmail(email)) {
                    //Error ?
                    $(".emailError").html("Email is not valid format");
                } else {
                    $(".emailError").html("");
                }
            });
            $("#submitButton").click(function ()
            {

                // Hiển thị hình ảnh
                $("#image").show();

                // Đặt hẹn giờ 10 giây để ẩn hình ảnh và chuyển sang trang login.html
                setTimeout(function ()
                {
                    $("#image").hide();
                    // Chuyển sang trang login.html
                    window.location.href = "login.html";
                }, 3000); // Thời gian đặt hẹn giờ là 10 giây
            });
        });



    </script>


</body>

</html>