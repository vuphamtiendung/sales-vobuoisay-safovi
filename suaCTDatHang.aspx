<%@ Page Title="" Language="C#" MasterPageFile="~/adminSafovi.Master" AutoEventWireup="true" CodeBehind="suaCTDatHang.aspx.cs" Inherits="Safovi.suaCTDatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="SoDH,MaSP" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="837px">
            <Columns>
                <asp:BoundField DataField="SoDH" HeaderText="Số Đơn Hàng" ReadOnly="True" SortExpression="SoDH" />
                <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" SortExpression="DonGia" />
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" ReadOnly="True" SortExpression="ThanhTien" />
                <asp:CommandField ButtonType="Button" DeleteText="Xóa" EditText="Chỉnh Sửa" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Cập Nhật" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLSafoviConnectionString7 %>" DeleteCommand="DELETE FROM [CTDATHANG] WHERE [SoDH] = @original_SoDH AND [MaSP] = @original_MaSP AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL)) AND (([ThanhTien] = @original_ThanhTien) OR ([ThanhTien] IS NULL AND @original_ThanhTien IS NULL))" InsertCommand="INSERT INTO [CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (@SoDH, @MaSP, @SoLuong, @DonGia, @ThanhTien)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CTDATHANG]" UpdateCommand="UPDATE [CTDATHANG] SET [SoLuong] = @SoLuong, [DonGia] = @DonGia, [ThanhTien] = @ThanhTien WHERE [SoDH] = @original_SoDH AND [MaSP] = @original_MaSP AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL)) AND (([ThanhTien] = @original_ThanhTien) OR ([ThanhTien] IS NULL AND @original_ThanhTien IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SoDH" Type="Int32" />
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_SoLuong" Type="Int32" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter Name="original_ThanhTien" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SoDH" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="ThanhTien" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="ThanhTien" Type="Decimal" />
                <asp:Parameter Name="original_SoDH" Type="Int32" />
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_SoLuong" Type="Int32" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter Name="original_ThanhTien" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
</asp:Content>
