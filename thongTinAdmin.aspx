<%@ Page Title="" Language="C#" MasterPageFile="~/adminSafovi.Master" AutoEventWireup="true" CodeBehind="thongTinAdmin.aspx.cs" Inherits="Safovi.thongTinAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 88%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaAdmin" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="972px" CssClass="text-center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="HoTenAdmin" HeaderText="Họ Tên" SortExpression="HoTenAdmin" />
                <asp:BoundField DataField="DienThoaiAdmin" HeaderText="Điện Thoại" SortExpression="DienThoaiAdmin" />
                <asp:BoundField DataField="TenDNAdmin" HeaderText="Tên Đăng Nhập" SortExpression="TenDNAdmin" />
                <asp:BoundField DataField="MatKhauAdmin" HeaderText="Mật Khẩu" SortExpression="MatKhauAdmin" />
                <asp:BoundField DataField="QuyenAdmin" HeaderText="Quyền" SortExpression="QuyenAdmin" />
                <asp:CommandField ButtonType="Button" DeleteText="Xóa" EditText="Chỉnh Sửa" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Cập Nhật" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLSafoviConnectionString8 %>" DeleteCommand="DELETE FROM [ADMIN] WHERE [MaAdmin] = @original_MaAdmin AND (([HoTenAdmin] = @original_HoTenAdmin) OR ([HoTenAdmin] IS NULL AND @original_HoTenAdmin IS NULL)) AND (([DiaChiAdmin] = @original_DiaChiAdmin) OR ([DiaChiAdmin] IS NULL AND @original_DiaChiAdmin IS NULL)) AND (([DienThoaiAdmin] = @original_DienThoaiAdmin) OR ([DienThoaiAdmin] IS NULL AND @original_DienThoaiAdmin IS NULL)) AND (([TenDNAdmin] = @original_TenDNAdmin) OR ([TenDNAdmin] IS NULL AND @original_TenDNAdmin IS NULL)) AND (([MatKhauAdmin] = @original_MatKhauAdmin) OR ([MatKhauAdmin] IS NULL AND @original_MatKhauAdmin IS NULL)) AND (([NgaySinhAdmin] = @original_NgaySinhAdmin) OR ([NgaySinhAdmin] IS NULL AND @original_NgaySinhAdmin IS NULL)) AND (([GioiTinhAdmin] = @original_GioiTinhAdmin) OR ([GioiTinhAdmin] IS NULL AND @original_GioiTinhAdmin IS NULL)) AND (([EmailAdmin] = @original_EmailAdmin) OR ([EmailAdmin] IS NULL AND @original_EmailAdmin IS NULL)) AND (([QuyenAdmin] = @original_QuyenAdmin) OR ([QuyenAdmin] IS NULL AND @original_QuyenAdmin IS NULL))" InsertCommand="INSERT INTO [ADMIN] ([HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (@HoTenAdmin, @DiaChiAdmin, @DienThoaiAdmin, @TenDNAdmin, @MatKhauAdmin, @NgaySinhAdmin, @GioiTinhAdmin, @EmailAdmin, @QuyenAdmin)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ADMIN]" UpdateCommand="UPDATE [ADMIN] SET [HoTenAdmin] = @HoTenAdmin, [DiaChiAdmin] = @DiaChiAdmin, [DienThoaiAdmin] = @DienThoaiAdmin, [TenDNAdmin] = @TenDNAdmin, [MatKhauAdmin] = @MatKhauAdmin, [NgaySinhAdmin] = @NgaySinhAdmin, [GioiTinhAdmin] = @GioiTinhAdmin, [EmailAdmin] = @EmailAdmin, [QuyenAdmin] = @QuyenAdmin WHERE [MaAdmin] = @original_MaAdmin AND (([HoTenAdmin] = @original_HoTenAdmin) OR ([HoTenAdmin] IS NULL AND @original_HoTenAdmin IS NULL)) AND (([DiaChiAdmin] = @original_DiaChiAdmin) OR ([DiaChiAdmin] IS NULL AND @original_DiaChiAdmin IS NULL)) AND (([DienThoaiAdmin] = @original_DienThoaiAdmin) OR ([DienThoaiAdmin] IS NULL AND @original_DienThoaiAdmin IS NULL)) AND (([TenDNAdmin] = @original_TenDNAdmin) OR ([TenDNAdmin] IS NULL AND @original_TenDNAdmin IS NULL)) AND (([MatKhauAdmin] = @original_MatKhauAdmin) OR ([MatKhauAdmin] IS NULL AND @original_MatKhauAdmin IS NULL)) AND (([NgaySinhAdmin] = @original_NgaySinhAdmin) OR ([NgaySinhAdmin] IS NULL AND @original_NgaySinhAdmin IS NULL)) AND (([GioiTinhAdmin] = @original_GioiTinhAdmin) OR ([GioiTinhAdmin] IS NULL AND @original_GioiTinhAdmin IS NULL)) AND (([EmailAdmin] = @original_EmailAdmin) OR ([EmailAdmin] IS NULL AND @original_EmailAdmin IS NULL)) AND (([QuyenAdmin] = @original_QuyenAdmin) OR ([QuyenAdmin] IS NULL AND @original_QuyenAdmin IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaAdmin" Type="Int32" />
                <asp:Parameter Name="original_HoTenAdmin" Type="String" />
                <asp:Parameter Name="original_DiaChiAdmin" Type="String" />
                <asp:Parameter Name="original_DienThoaiAdmin" Type="String" />
                <asp:Parameter Name="original_TenDNAdmin" Type="String" />
                <asp:Parameter Name="original_MatKhauAdmin" Type="String" />
                <asp:Parameter Name="original_NgaySinhAdmin" Type="DateTime" />
                <asp:Parameter Name="original_GioiTinhAdmin" Type="Boolean" />
                <asp:Parameter Name="original_EmailAdmin" Type="String" />
                <asp:Parameter Name="original_QuyenAdmin" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoTenAdmin" Type="String" />
                <asp:Parameter Name="DiaChiAdmin" Type="String" />
                <asp:Parameter Name="DienThoaiAdmin" Type="String" />
                <asp:Parameter Name="TenDNAdmin" Type="String" />
                <asp:Parameter Name="MatKhauAdmin" Type="String" />
                <asp:Parameter Name="NgaySinhAdmin" Type="DateTime" />
                <asp:Parameter Name="GioiTinhAdmin" Type="Boolean" />
                <asp:Parameter Name="EmailAdmin" Type="String" />
                <asp:Parameter Name="QuyenAdmin" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoTenAdmin" Type="String" />
                <asp:Parameter Name="DiaChiAdmin" Type="String" />
                <asp:Parameter Name="DienThoaiAdmin" Type="String" />
                <asp:Parameter Name="TenDNAdmin" Type="String" />
                <asp:Parameter Name="MatKhauAdmin" Type="String" />
                <asp:Parameter Name="NgaySinhAdmin" Type="DateTime" />
                <asp:Parameter Name="GioiTinhAdmin" Type="Boolean" />
                <asp:Parameter Name="EmailAdmin" Type="String" />
                <asp:Parameter Name="QuyenAdmin" Type="Int32" />
                <asp:Parameter Name="original_MaAdmin" Type="Int32" />
                <asp:Parameter Name="original_HoTenAdmin" Type="String" />
                <asp:Parameter Name="original_DiaChiAdmin" Type="String" />
                <asp:Parameter Name="original_DienThoaiAdmin" Type="String" />
                <asp:Parameter Name="original_TenDNAdmin" Type="String" />
                <asp:Parameter Name="original_MatKhauAdmin" Type="String" />
                <asp:Parameter Name="original_NgaySinhAdmin" Type="DateTime" />
                <asp:Parameter Name="original_GioiTinhAdmin" Type="Boolean" />
                <asp:Parameter Name="original_EmailAdmin" Type="String" />
                <asp:Parameter Name="original_QuyenAdmin" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
