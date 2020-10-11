<%@ Page Title="" Language="C#" MasterPageFile="~/Safovi.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="Safovi.Dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <style type="text/css">
        .auto-style4 {
            width: 95%;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <hr />
            <h3 class="text-center text-success"> ĐĂNG NHẬP </h3>  
        <hr />
        <div class="container offset-4 col-sm-4">
            <div class="form-group row">
				<label for="exampleInputEmail">Tên đăng nhập: </label>
                <asp:TextBox ID="txtTenDN" runat="server" class="form-control" OnTextChanged="txtTenDN_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" SetFocusOnError="True">Bạn chưa nhập tên người dùng</asp:RequiredFieldValidator>
            </div>
			<div class="form-group row">
				<label for="exampleInputPassword1">Mật Khẩu: </label>
                <asp:TextBox ID="txtMatKhau" runat="server" type="password" class="form-control" OnTextChanged="txtMatKhau_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" SetFocusOnError="True">Bạn chưa nhập mật khẩu</asp:RequiredFieldValidator>
			</div>
            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" class="btn btn-success" OnClick="btnDangNhap_Click" BorderStyle="Double" />
            <asp:HyperLink ID="btnDoiMK" runat="server" class="offset-4" OnClick="btnDoiMK_Click" NavigateUrl="../DoiMatKhau.aspx">Đổi Mật Khẩu</asp:HyperLink>
            <table>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblThongBaoLoi" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
		</div>
    </div>
</asp:Content>
