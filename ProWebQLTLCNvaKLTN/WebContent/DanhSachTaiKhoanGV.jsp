<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <img src="header.jpg" class="img-rounded" alt="Cinque Terre" width="100%">
            <hr />
        </div>
        <div class="row">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="TrangChu.jsp"> Trang chủ</a>
                        </li>
                        <li><a href="Quanlytaikhoan.jsp">Quản lý tài khoản</a></li>
                        <li><a href="QuanLyDeTai.jsp" class="active">Quản lý đề tài</a></li>
                        <li><a href="KiemTraSaoChep.jsp">Kiểm tra sao chép</a></li>
                        <li><a href="SoSanh.jsp">So sánh</a></li>
                        <li><a href="Loc.jsp">Lọc</a></li>
                    </ul>
                    <div style="padding-top:8px;">
                        <label class="col-md-offset-3" style="padding-top:8px;">Admin</label>
                        <a href="DangNhapChung.jsp" class="btn btn-primary pull-right">Đăng xuất</a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">Danh sách tài khoản Giảng Viên</div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Mã GV</th>
                                    <th>Họ Tên</th>
                                    <th>Email</th>
                                    <th>Tên Đăng Nhập</th>
                                    <th>Mật Khẩu</th>
                                    <th>Hiệu Chỉnh</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>GV10112</td>
                                    <td>Nguyễn Trần Thi Văn</td>
                                    <td>abs@gmail.com</td>
                                    <td>GV10112</td>
                                    <td>GV10112</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-warning btn-xs">
                                            <span class="fa fa-unlock" aria-hidden="true"></span> Khóa
                                        </button>
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#myModal">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span> Sửa
                                        </button>
                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modalXoa">
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Xóa
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>GV10122</td>
                                    <td>Trương Thị Ngọc Phượng</td>
                                    <td>abs@gmail.com</td>
                                    <td>GV10122</td>
                                    <td>GV10122</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-warning btn-xs">
                                            <span class="glyphicon glyphicon-lock" aria-hidden="true"></span> Mở khóa
                                        </button>
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#myModal">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Sửa
                                        </button>
                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modalXoa">
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Xóa
                                        </button>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="TimDanhSachTaiKhoan.jsp" class="btn btn-primary">Trở về</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Modal sửa tài khoản -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Sửa thông tin tài khoản</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="id">Mã GV/ Mã SV :</label>
                        <input type="text" class="form-control" id="id" required value="GV10122">
                    </div>
                    <div class="form-group">
                        <label for="name">Họ tên :</label>
                        <input type="text" class="form-control" id="name" required value="Trương Thị Ngọc Phượng">
                    </div>
                    <div class="form-group">
                        <label for="email">Email :</label>
                        <input type="email" class="form-control" id="email" required value="abs@gmail.com">
                    </div>
                    <label>Quyền hệ thống</label>
                    <br />
                    <br />
                    <label><input type="checkbox" value="">Quyền Giảng Viên</label>
                    <br />
                    <br />
                    <label><input type="checkbox" value="">Quyền Sinh Viên</label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Sửa</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal Sửa tài khoản  -->
    <!-- Start Modal xóa tài khoản -->
    <div class="modal fade" id="modalXoa" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Sửa thông tin tài khoản</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Bạn có muốn xóa tài khoản này</label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Xóa</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal Xóa tài khoản  -->
</body>
</html>