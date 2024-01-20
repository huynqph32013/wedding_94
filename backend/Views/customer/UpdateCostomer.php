
<body>
<div class="container w-75 rounded border align-items-center mt-5 p-5">
    <?php extract($customer)?>
    <h3>Sửa người dùng</h3>
    <form action="?url=updateUser&id=<?= $_GET['id']?>" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Name</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name" value="<?= $name?>">
            <div class="error">
                <?php if(isset($error_name)){echo $error_name;}?>
            </div>
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" value="<?= $email?>">
            <div class="error">
                <?php if(isset($error_email)){echo $error_email;}?>
            </div>
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Mật khẩu</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="pass" value="<?= $pass_word?>">
<!--            <div class="error">-->
<!--                --><?php //if(isset($error_name)){echo $error_name;}?>
<!--            </div>-->
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Phone</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phone" value="<?= $phone?>">
            <div class="error">
                <?php if(isset($error_phone)){echo $error_phone;}?>
            </div>
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Địa chỉ</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="address" value="<?= $address?>">
            <div class="error">
<!--                --><?php //if(isset($error_phone)){echo $error_phone;}?>
            </div>
        </div>
        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
    </form>
    <a href="?url=list_customer">Danh sách</a>
</div>
