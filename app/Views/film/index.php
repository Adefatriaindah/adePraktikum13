<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Film</title>

</head>
<body>
<?= $this->extend('layout/page_layout') ?>
<?= $this->section('content') ?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
            <div class="card-header">

            <div class="row">
            <div class="col-md-6" >
            <h3>Semua Film</h3>
            </div>
            <div class="col-md-6 text-end">
                <a href="/film/add" class="btn btn-primary">Tambah Data</a>
            </div>
            </div>

            </div>
            <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <td><b>NO</b></td>
                    <td><b>Cover</b></td>
                    <td><b>Nama Film</b></td>
                    <td><b>Genre</b></td>
                    <td><b>Durasi</b></td>
                    <td><b>Aksi</b></td> 
                </tr>

                <?php $i = 1;
                foreach($data_film as $film) : ?>

                <tr>
                        <td><?= $i++ ?></td>
                        <td><img src="/assets/cover/<?= $film["cover"] ?>" class="img-fluid" alt="..." width ="75px"> </td>
                        <td><?= $film['nama_film'] ?></td>
                        <td><?= $film['nama_genre'] ?></td>
                        <td><?= $film['duration'] ?></td>
                        <td>
                        <td>
                            <a href="/film/update/<?= $film["id"]; ?>" class="btn btn-success">Update</a>
                            <a class="btn btn-danger" onclick="return confirmDelete()">Delete</a>
                        </td>
                

                    <?php endforeach; ?>
                
            </table>
            </div>
        </div>
    </div>
</div>
<!-- tambahkan dari sini  -->
<script>
    function confirmDelete() {
        swal({
                title: "Apakah Anda yakin?",
                text: "setelah dihapus! data anda akan benar-benar hilang!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {

                    window.location.href = "/film/destroy/<?= $film['id'] ?>";

                } else {
                    swal("Data tidak jadi dihapus!");
                }
            });
    }
</script>
  <!-- sampai sini -->
<?= $this->endSection() ?>
</body>
</html>