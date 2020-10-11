<%@ Page Title="" Language="C#" MasterPageFile="~/Safovi.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="Safovi.DoiMatKhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr>
		<h2 class="text-center text-success">Đổi Mật Khẩu</h2>
	<hr>

    <div class="container">
			<div class="offset-3 col-sm-6">
				<div class="form-group">
					<label for="exampleInputEmail">Tên đăng nhập:</label>
                    <asp:TextBox ID="txtTenDN" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập tên đăng nhập" ControlToValidate="txtTenDN">Bạn chưa nhập tên đăng nhập</asp:RequiredFieldValidator>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Mật khẩu cũ: </label>
                    <asp:TextBox ID="txtMatKhauCu" runat="server" type="password" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu cũ" ControlToValidate="txtMatKhauCu">Bạn chưa nhập mật khẩu cũ</asp:RequiredFieldValidator>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Mật khẩu mới: </label>
                    <asp:TextBox ID="txtMatKhauMoi" runat="server" type="password" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu mới" ControlToValidate="txtMatKhauMoi">Bạn chưa nhập mật khẩu mới</asp:RequiredFieldValidator>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Nhập lại mật khẩu mới: </label>
                    <asp:TextBox ID="txtMatKhauMoi2" runat="server" type="password" class="form-control"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu mới chưa trùng khớp" ControlToCompare="txtMatKhauMoi" ControlToValidate="txtMatKhauMoi2">Mật khẩu mới chưa trùng khớp</asp:CompareValidator>
				</div>
                <asp:Button ID="btnDongY" runat="server" Text="Đồng Ý" type="submit" class="btn btn-success" OnClick="btnDongY_Click"/>
                <table style="width: 100%;">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbThongBaoLoi" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
			</div>
		</div>	
</asp:Content>
