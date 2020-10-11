using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Safovi
{
    
    public partial class Dangnhap : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTenDN.Focus();
        }
        // nút đăng nhập
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = x.GetData("Select * From KHACHHANG Where TenDN = '" + txtTenDN.Text + "' and MatKhau'" + txtMatKhau.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    Session["TenDN"] = txtTenDN.Text;
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    lblThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
                }
            }
            catch
            {
                lblThongBaoLoi.Text = "Thất bại!";
            }
        }

        protected void txtMatKhau_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtTenDN_TextChanged(object sender, EventArgs e)
        {

        }
    }
}