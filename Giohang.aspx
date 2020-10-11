<%@ Page Title="" Language="C#" MasterPageFile="~/Safovi.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="Safovi.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 481px;
        }
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style4 {
            width: 481px;
            height: 27px;
        }
        .auto-style5 {
            width: 104px;
            height: 27px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
        <h2 class="text-success text-center">Giỏ Hàng</h2>
    <hr />
    <div class="container">
        <asp:gridview runat="server" autogeneratecolumns="False" cellpadding="4" forecolor="#333333" gridlines="None" class="offset-2 text-center" width="715px" datakeynames="MaSP" id="gvgiohang">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm">
                <HeaderStyle CssClass="text-center" />
                <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm">
                <HeaderStyle CssClass="text-center" />
                <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá">
                <HeaderStyle CssClass="text-center" />
                <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Số Lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                    </ItemTemplate>
                    <HeaderStyle CssClass="text-center" />
                    <ItemStyle CssClass="text-center" />
                </asp:TemplateField>
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
                <asp:CommandField ButtonType="Button" SelectText="Chọn" />
                <asp:CommandField CancelText="cancel" DeleteText="delete" EditText="edit" UpdateText="Cập nhật" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" Text="Button" DataTextField="xoa" />
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
        </asp:gridview>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Tổng cộng: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTongSL" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Tổng Tiền:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTongThanhTien" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div class="offset-3">
            <asp:button id="btnTiepTucMua" runat="server" text="Tiếp Tục Mua" type="submit" class="btn btn-success" OnClick="btnTiepTucMua_Click"/>
            &nbsp;&nbsp;
            <asp:button id="btnXoaGioHang" runat="server" text="Xóa Giỏ Hàng" type="submit" class="btn btn-success " OnClick="btnXoaGioHang_Click"/>
            &nbsp;&nbsp;
            <asp:button id="btnCapNhat" runat="server" text="Cập Nhật" type="submit" class="btn btn-success" OnClick="btnCapNhat_Click"/>
            &nbsp;&nbsp;
            <asp:button id="btnDatHang" runat="server" text="Đặt Hàng" type="submit" class="btn btn-success" OnClick="btnDatHang_Click"/>
        </div>
        <table style="width: 100%;">
            <tr>
                <td class="text-center">
                    <asp:Label ID="lblThongBaoLoi" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
