<?php
// jika data setting sudah ada maka update data tersebut
// selain itu kalo blm ada maka insert data
$querySetting = mysqli_query($koneksi, "SELECT * FROM settings LIMIT 1");
$row = mysqli_fetch_assoc($querySetting);

if (isset($_POST['simpan'])) {
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $ig = $_POST['ig'];
    $fb = $_POST['fb'];
    $twitter = $_POST['twitter'];
    $linkedin = $_POST['linkedin'];

    // jika gambar terupload
    if (!empty($_FILES['logo']['name'])) {
        $logo = $_FILES['logo']['name'];
        $path = "uploads/";
        if (!is_dir($path)) mkdir($path);

        $logo_name = time() . "-" . basename($logo);
        $target_files = $path . $logo_name;
        if (move_uploaded_file($_FILES['logo']['tmp_name'], $target_files)) {
            // jika gambarnya ada maka gambar sebelumnya akan di ganti oleh 
            // gambar baru
            if (!empty($row['logo'])) {
                unlink($path . $row['logo']);
            }
        }
    }

    if ($row) {
        // update
        $id_setting = $row['id'];

        $update = mysqli_query($koneksi, "UPDATE settings SET 
        email='$email',
        phone='$phone',
        logo ='$logo_name',
        address='$address', ig='$ig', fb='$fb', twitter='$twitter',
        linkedin='$linkedin' WHERE id='$id_setting'");
        if ($update) {
            header("location:?page=setting&ubah=berhasil");
        }
    } else {
        // insert
        $insert = mysqli_query($koneksi, "INSERT INTO settings 
        (email, phone, address, ig, fb, twitter, linkedin)
         VALUES ('$email','$phone', '$address', '$ig','$fb', '$twitter', '$linkedin')");
        if ($insert) {
            header("location:?page=setting&tambah=berhasil");
        }
    }
}


?>
<div class="pagetitle">
    <h1>Pengaturan</h1>
</div><!-- End Page Title -->

<section class="section">
    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Pengaturan</h5>
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">Email</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="email" name="email" id=""
                                    class="form-control" value="<?php echo isset($row['email']) ? $row['email'] : '' ?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">No Telp</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="number" name="phone" id="" class="form-control" value="<?php echo isset($row['phone']) ? $row['phone'] : '' ?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">Alamat</label>
                            </div>
                            <div class="col-sm-6">
                                <textarea name="address" id="" class="form-control"><?php echo isset($row['address']) ? $row['address'] : '' ?></textarea>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">Facebook</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="url" name="fb" id="" class="form-control" value="<?php echo isset($row['fb']) ? $row['fb'] : '' ?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">Instagram</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="url" name="ig" id="" class="form-control" value="<?php echo isset($row['ig']) ? $row['ig'] : '' ?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">Twitter</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="url" name="twitter" id="" class="form-control" value="<?php echo isset($row['twitter']) ? $row['twitter'] : '' ?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">Linkedin</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="url" name="linkedin" id="" class="form-control" value="<?php echo isset($row['linkedin']) ? $row['linkedin'] : '' ?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-2">
                                <label for="" class="form-label fw-bold">Logo</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="file" name="logo">
                                <img class="mt-2" src="uploads/<?php echo isset($row['logo']) ? $row['logo'] : '' ?>"
                                    alt="" width="100">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-12">
                                <button class="btn btn-primary" name="simpan">Simpan</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>

    </div>

</section>