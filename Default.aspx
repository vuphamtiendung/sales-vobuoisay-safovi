<%@ Page Title="" Language="C#" MasterPageFile="~/Safovi.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Safovi.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style4 {
            width: 95%;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            width: 98%;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
   
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="auto-style5">
        <hr>
		    <h2 class="text-center text-success">SẢN PHẨM</h2>
	    <hr>
        <div class="auto-style4">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource_SanPham" CellPadding="3" RepeatColumns="3" Width="1024px" ForeColor="#333333" Height="501px" CssClass="auto-style1" CellSpacing="3">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle ForeColor="#333333" BackColor="#F7F6F3" />
                <ItemTemplate>
                    <div class="card text-center" style="width: 18rem;">
                        <div class="card-img-top">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/sanpham/" + Eval("HinhMinhHoa") %>' CssClass="text-center"/>
                         </div>
                        <div class="card-body text-center">
                        <h5 class="card-title">
                            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                        </h5>
                        <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                            <br />
                                <asp:HyperLink ID="HyperLink1" runat="server"  ImageUrl="~/Images/nut_chonmua.gif" NavigateUrl='<%# "..\\Giohang.aspx?ms=" + Eval("MaSP") %>'>HyperLink</asp:HyperLink>
                            <br />
                      </div>
                    </div>
                    
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource_SanPham" runat="server" ConnectionString="<%$ ConnectionStrings:QLSafoviConnectionString_SanPham_Safovi %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

