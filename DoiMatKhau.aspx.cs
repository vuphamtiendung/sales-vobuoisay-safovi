using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Safovi;

namespace Safovi
{
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTenDN.Focus();
        }
        // Xử lý nút đồng ý
        protected void btnDongY_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = x.GetData("Select TenDN From KHACHHANG Where TenDN= '" + txtTenDN + "' and MatKhau '" + txtMatKhauCu.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    x.Execute("Update KHACHHANG Set MatKhau = '" + txtMatKhauMoi.Text + "' Where TenDN '" + txtTenDN.Text + "'");
                    lbThongBaoLoi.Text = "Đổi mật khẩu thành công";
                }
                else
                {
                    lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không đúng";
                }
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại";
            }
        }
    }
}