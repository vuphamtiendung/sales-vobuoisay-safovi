<%@ Page Title="" Language="C#" MasterPageFile="~/adminSafovi.Master" AutoEventWireup="true" CodeBehind="suaLoaiSanPham.aspx.cs" Inherits="Safovi.suaLoaiSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Maloai" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" CssClass="text-center" Width="873px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Maloai" HeaderText="Mã loại" InsertVisible="False" ReadOnly="True" SortExpression="Maloai" />
                <asp:BoundField DataField="Tenloai" HeaderText="Tên Loại" SortExpression="Tenloai" />
                <asp:CommandField ButtonType="Button" DeleteText="Xóa" EditText="Chỉnh sửa" InsertText="" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Cập nhật" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLSafoviConnectionString6 %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [Maloai] = @original_Maloai AND [Tenloai] = @original_Tenloai" InsertCommand="INSERT INTO [LoaiSP] ([Tenloai]) VALUES (@Tenloai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [Tenloai] = @Tenloai WHERE [Maloai] = @original_Maloai AND [Tenloai] = @original_Tenloai">
            <DeleteParameters>
                <asp:Parameter Name="original_Maloai" Type="Int32" />
                <asp:Parameter Name="original_Tenloai" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tenloai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tenloai" Type="String" />
                <asp:Parameter Name="original_Maloai" Type="Int32" />
                <asp:Parameter Name="original_Tenloai" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
</asp:Content>
