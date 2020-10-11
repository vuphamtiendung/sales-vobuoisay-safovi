<%@ Page Title="" Language="C#" MasterPageFile="~/adminSafovi.Master" AutoEventWireup="true" CodeBehind="SuaSanPham.aspx.cs" Inherits="Safovi.SuaSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <asp:gridview runat="server" class="text-center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="974px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
                <asp:BoundField DataField="DonViTinh" HeaderText="Đơn Vị Tính" SortExpression="DonViTinh" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" SortExpression="DonGia" />
                <asp:BoundField DataField="MoTa" HeaderText="Mô Tả" SortExpression="MoTa" />
                <asp:BoundField DataField="HinhMinhHoa" HeaderText="Hình Minh Họa" SortExpression="HinhMinhHoa" />
                <asp:BoundField DataField="Maloai" HeaderText="Mã Loại" SortExpression="Maloai" />
                <asp:BoundField DataField="NgayCapNhat" HeaderText="Ngày Cập Nhật" SortExpression="NgayCapNhat" />
                <asp:CommandField EditText="Chỉnh Sửa" InsertText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Cập nhật" ButtonType="Button" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:gridview>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLSafoviConnectionString4 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND (([DonViTinh] = @original_DonViTinh) OR ([DonViTinh] IS NULL AND @original_DonViTinh IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL)) AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([HinhMinhHoa] = @original_HinhMinhHoa) OR ([HinhMinhHoa] IS NULL AND @original_HinhMinhHoa IS NULL)) AND (([Maloai] = @original_Maloai) OR ([Maloai] IS NULL AND @original_Maloai IS NULL)) AND (([MaNSX] = @original_MaNSX) OR ([MaNSX] IS NULL AND @original_MaNSX IS NULL)) AND (([NgayCapNhat] = @original_NgayCapNhat) OR ([NgayCapNhat] IS NULL AND @original_NgayCapNhat IS NULL)) AND (([SoLuongBan] = @original_SoLuongBan) OR ([SoLuongBan] IS NULL AND @original_SoLuongBan IS NULL)) AND (([SoLanXem] = @original_SoLanXem) OR ([SoLanXem] IS NULL AND @original_SoLanXem IS NULL))" InsertCommand="INSERT INTO [SanPham] ([TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [Maloai], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (@TenSP, @DonViTinh, @DonGia, @MoTa, @HinhMinhHoa, @Maloai, @MaNSX, @NgayCapNhat, @SoLuongBan, @SoLanXem)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [DonViTinh] = @DonViTinh, [DonGia] = @DonGia, [MoTa] = @MoTa, [HinhMinhHoa] = @HinhMinhHoa, [Maloai] = @Maloai, [MaNSX] = @MaNSX, [NgayCapNhat] = @NgayCapNhat, [SoLuongBan] = @SoLuongBan, [SoLanXem] = @SoLanXem WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND (([DonViTinh] = @original_DonViTinh) OR ([DonViTinh] IS NULL AND @original_DonViTinh IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL)) AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([HinhMinhHoa] = @original_HinhMinhHoa) OR ([HinhMinhHoa] IS NULL AND @original_HinhMinhHoa IS NULL)) AND (([Maloai] = @original_Maloai) OR ([Maloai] IS NULL AND @original_Maloai IS NULL)) AND (([MaNSX] = @original_MaNSX) OR ([MaNSX] IS NULL AND @original_MaNSX IS NULL)) AND (([NgayCapNhat] = @original_NgayCapNhat) OR ([NgayCapNhat] IS NULL AND @original_NgayCapNhat IS NULL)) AND (([SoLuongBan] = @original_SoLuongBan) OR ([SoLuongBan] IS NULL AND @original_SoLuongBan IS NULL)) AND (([SoLanXem] = @original_SoLanXem) OR ([SoLanXem] IS NULL AND @original_SoLanXem IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_DonViTinh" Type="String" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_HinhMinhHoa" Type="String" />
                <asp:Parameter Name="original_Maloai" Type="Int32" />
                <asp:Parameter Name="original_MaNSX" Type="Int32" />
                <asp:Parameter Name="original_NgayCapNhat" Type="DateTime" />
                <asp:Parameter Name="original_SoLuongBan" Type="Int32" />
                <asp:Parameter Name="original_SoLanXem" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="DonViTinh" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="HinhMinhHoa" Type="String" />
                <asp:Parameter Name="Maloai" Type="Int32" />
                <asp:Parameter Name="MaNSX" Type="Int32" />
                <asp:Parameter Name="NgayCapNhat" Type="DateTime" />
                <asp:Parameter Name="SoLuongBan" Type="Int32" />
                <asp:Parameter Name="SoLanXem" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="DonViTinh" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="HinhMinhHoa" Type="String" />
                <asp:Parameter Name="Maloai" Type="Int32" />
                <asp:Parameter Name="MaNSX" Type="Int32" />
                <asp:Parameter Name="NgayCapNhat" Type="DateTime" />
                <asp:Parameter Name="SoLuongBan" Type="Int32" />
                <asp:Parameter Name="SoLanXem" Type="Int32" />
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_DonViTinh" Type="String" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_HinhMinhHoa" Type="String" />
                <asp:Parameter Name="original_Maloai" Type="Int32" />
                <asp:Parameter Name="original_MaNSX" Type="Int32" />
                <asp:Parameter Name="original_NgayCapNhat" Type="DateTime" />
                <asp:Parameter Name="original_SoLuongBan" Type="Int32" />
                <asp:Parameter Name="original_SoLanXem" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
</asp:Content>
