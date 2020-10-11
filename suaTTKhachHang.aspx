<%@ Page Title="" Language="C#" MasterPageFile="~/adminSafovi.Master" AutoEventWireup="true" CodeBehind="suaTTKhachHang.aspx.cs" Inherits="Safovi.suaTTKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" CssClass="text-center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="HoTenKH" HeaderText="Họ Tên" SortExpression="HoTenKH" />
                <asp:BoundField DataField="DiaChiKH" HeaderText="Địa Chỉ" SortExpression="DiaChiKH" />
                <asp:BoundField DataField="DienThoaiKH" HeaderText="Điện Thoại" SortExpression="DienThoaiKH" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" />
                <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ButtonType="Button" DeleteText="Xóa" EditText="Chỉnh sửa" InsertText="insert" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Cập nhật" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLSafoviConnectionString5 %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [MaKH] = @original_MaKH AND (([HoTenKH] = @original_HoTenKH) OR ([HoTenKH] IS NULL AND @original_HoTenKH IS NULL)) AND (([DiaChiKH] = @original_DiaChiKH) OR ([DiaChiKH] IS NULL AND @original_DiaChiKH IS NULL)) AND (([DienThoaiKH] = @original_DienThoaiKH) OR ([DienThoaiKH] IS NULL AND @original_DienThoaiKH IS NULL)) AND (([TenDN] = @original_TenDN) OR ([TenDN] IS NULL AND @original_TenDN IS NULL)) AND (([MatKhau] = @original_MatKhau) OR ([MatKhau] IS NULL AND @original_MatKhau IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([DaDuyet] = @original_DaDuyet) OR ([DaDuyet] IS NULL AND @original_DaDuyet IS NULL))" InsertCommand="INSERT INTO [KHACHHANG] ([HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (@HoTenKH, @DiaChiKH, @DienThoaiKH, @TenDN, @MatKhau, @NgaySinh, @GioiTinh, @Email, @DaDuyet)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [HoTenKH] = @HoTenKH, [DiaChiKH] = @DiaChiKH, [DienThoaiKH] = @DienThoaiKH, [TenDN] = @TenDN, [MatKhau] = @MatKhau, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh, [Email] = @Email, [DaDuyet] = @DaDuyet WHERE [MaKH] = @original_MaKH AND (([HoTenKH] = @original_HoTenKH) OR ([HoTenKH] IS NULL AND @original_HoTenKH IS NULL)) AND (([DiaChiKH] = @original_DiaChiKH) OR ([DiaChiKH] IS NULL AND @original_DiaChiKH IS NULL)) AND (([DienThoaiKH] = @original_DienThoaiKH) OR ([DienThoaiKH] IS NULL AND @original_DienThoaiKH IS NULL)) AND (([TenDN] = @original_TenDN) OR ([TenDN] IS NULL AND @original_TenDN IS NULL)) AND (([MatKhau] = @original_MatKhau) OR ([MatKhau] IS NULL AND @original_MatKhau IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([DaDuyet] = @original_DaDuyet) OR ([DaDuyet] IS NULL AND @original_DaDuyet IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaKH" Type="Int32" />
                <asp:Parameter Name="original_HoTenKH" Type="String" />
                <asp:Parameter Name="original_DiaChiKH" Type="String" />
                <asp:Parameter Name="original_DienThoaiKH" Type="String" />
                <asp:Parameter Name="original_TenDN" Type="String" />
                <asp:Parameter Name="original_MatKhau" Type="String" />
                <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
                <asp:Parameter Name="original_GioiTinh" Type="Boolean" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_DaDuyet" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoTenKH" Type="String" />
                <asp:Parameter Name="DiaChiKH" Type="String" />
                <asp:Parameter Name="DienThoaiKH" Type="String" />
                <asp:Parameter Name="TenDN" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="NgaySinh" Type="DateTime" />
                <asp:Parameter Name="GioiTinh" Type="Boolean" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DaDuyet" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoTenKH" Type="String" />
                <asp:Parameter Name="DiaChiKH" Type="String" />
                <asp:Parameter Name="DienThoaiKH" Type="String" />
                <asp:Parameter Name="TenDN" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="NgaySinh" Type="DateTime" />
                <asp:Parameter Name="GioiTinh" Type="Boolean" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DaDuyet" Type="Boolean" />
                <asp:Parameter Name="original_MaKH" Type="Int32" />
                <asp:Parameter Name="original_HoTenKH" Type="String" />
                <asp:Parameter Name="original_DiaChiKH" Type="String" />
                <asp:Parameter Name="original_DienThoaiKH" Type="String" />
                <asp:Parameter Name="original_TenDN" Type="String" />
                <asp:Parameter Name="original_MatKhau" Type="String" />
                <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
                <asp:Parameter Name="original_GioiTinh" Type="Boolean" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_DaDuyet" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
</asp:Content>
