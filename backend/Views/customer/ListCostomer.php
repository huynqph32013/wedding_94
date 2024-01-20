
<body>
<div class="container">
    <button type="button" class="btn btn-primary mb-2">
        <a class="text-decoration-none text-white" href="?url=add_customer">Thêm khách hàng</a>
    </button>
    <table class="table">
        <thead>
        <tr>
            <th>Id</th>
            <th>Tên</th>
            <th>Email</th>
            <th>Mật khẩu</th>
            <th>Điện thoại</th>
            <th>Địa chỉ</th>
            <th>Sửa</th>
            <th>Xóa</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <?php
        foreach ($customer as $value): ?>
            <tr>
                <td><?= $value['id']?></td>
                <td><?= $value['name']?></td>
                <td><?= $value['email']?></td>
                <td><?= $value['pass_word']?></td>
                <td><?= $value['phone']?></td>
                <td><?= $value['address']?></td>
                <td>
                    <button type="button" class="btn btn-success">
                        <a class="text-decoration-none text-white" href="?url=detail_customer&id=<?= $value['id']?>">Sửa</a>
                    </button>
                </td>
                <td>
                    <button type="button" class="btn btn-danger">
                        <a class="text-decoration-none text-white" href="?url=deleteUser&id=<?= $value['id']?>" onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này không?')">Xóa</a>
                    </button>
                </td>
            </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>
