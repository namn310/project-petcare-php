<?php
//load file layout.php
$this->layoutPath = "Layout.php";
?>

<div class="pagetitle">
    <h1>Quản lý nhân viên</h1>
    <!-- End Page Title -->
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">

                    <div class="button-function d-flex justify-content-between mt-3 mb-4" style="width:70%">

                        <button id="uploadfile" class="btn btn-success" type="button" title="Nhập" onclick="myFunction(this)"><a id="addnhanvien" href="index.php?controller=nhanvien&action=create"><i class="fas fa-plus"></i>>
                                Tạo mới nhân viên</a></button>

                    </div>
                    <div class="search mt-4 mb-4 input-group" style="width:50%">
                        <button class="input-group-text btn btn-success"><i class="fa-solid fa-magnifying-glass"></i></button>
                        <input class="form-control" type="text" id="searchNV">
                    </div>



                    <table class="table table-hover table-bordered text-center" cellpadding="0" cellspacing="0" border="0" id="sampleTable">
                        <thead>
                            <tr class="table-primary">
                                <th>
                                </th>
                                <th>
                                    ID nhân viên
                                </th>
                                <th>
                                    Họ và tên
                                </th>
                                <th>
                                    Ảnh thẻ
                                </th>

                                <th>Ngày sinh</th>
                                <th>Giới tính</th>
                                <th>SĐT</th>
                                <th>email</th>
                                <th>Chức vụ</th>
                                <th>
                                    Tính năng
                                </th>
                            </tr>
                        </thead>
                        <tbody id="table-nv">
                            <?php
                            $conn = Connection::getInstance();
                            $query = $conn->query("select * from nhanvien");
                            $result = $query->fetchAll(PDO::FETCH_OBJ);
                            foreach ($result as $a) {
                            ?>
                                <tr>
                                    <td width="10">
                                        <input type="checkbox" name="check1" value="1" />
                                    </td>
                                    <td><?php echo $a->idNV ?></td>
                                    <td>
                                        <?php echo $a->tenNV ?>
                                    </td>
                                    <td>
                                        <img class="img-fluid" style="max-width:50%" src="../assets/img-nhanvien/<?php echo $a->anhNV  ?>" alt="" />
                                    </td>

                                    <td><?php echo $a->birth ?></td>
                                    <td><?php echo $a->sex ?></td>
                                    <td><?php echo $a->phone ?></td>
                                    <td><?php echo $a->email ?></td>
                                    <td><?php echo $a->chucvu ?></td>
                                    <td class="table-td-center">
                                        <a style="text-decoration:none;color:white" onclick="return confirm('Bạn có muốn xóa không ?')" href="index.php?controller=nhanvien&action=delete&id=<?php echo $a->idNV ?>"><button class="btn btn-danger btn-sm trash" type="button" title="Xóa">
                                                <i class="fas fa-trash-alt"></i></a>
                                        </button>
                                        <button class="btn btn-success btn-sm edit" type="button" title="Sửa" id="show-emp">
                                            <a style="text-decoration:none;color:white" href="index.php?controller=nhanvien&action=change&id=<?php echo $a->idNV ?>"><i class="fas fa-edit"></i> </a>
                                        </button>
                                    </td>
                                </tr>
                            <?php
                            } ?>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!--
  MODAL
-->

<!--
  MODAL
-->

<!-- Modal xóa -->
<div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Thông báo</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Bạn có muốn xóa không ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                <a style="text-decoration:none;color:white" href="index.php?controller=nhanvien&action=delete&id=<?php echo $a->idNV ?>"> <button type="button" class="btn btn-primary">Xác nhận</button> </a>

            </div>
        </div>
    </div>
</div>



<!-- ======= Footer ======= -->



<script type="text/javascript">
    const toastTrigger = document.getElementById('liveToastBtn')
    const toastLiveExample = document.getElementById('liveToast')

    if (toastTrigger) {
        const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample)
        toastTrigger.addEventListener('click', () => {
            toastBootstrap.show()
        })
    }
</script>

<script>
    $(document).ready(function() {
        $("#searchNV").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#table-nv tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
        $("#searchProduct").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#table-product tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>