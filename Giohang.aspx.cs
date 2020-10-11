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
    public partial class Giohang : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * Trường hợp: người dùng chọn nút đặt mua sản phẩm
             * Xử lý thêm sản phẩm vào giỏ hàng
             */
            if (!IsPostBack)
            {
                if(Request.QueryString["MaSP"] != null)
                {
                    int MaSP = int.Parse(Request.QueryString["MaSP"]);
                    DataTable dt = x.GetData("Select TenSP, DonGia From SanPham Where MaSP" + MaSP);
                    String TenSP = dt.Rows[0][0].ToString();
                    float DonGia = float.Parse(dt.Rows[0][1].ToString());
                    int SoLuong = 1;
                    ThemVaoGioHang(MaSP, TenSP, DonGia, SoLuong);
                }
                if(Session["Giohang"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)Session["Giohang"];
                    System.Decimal TongThanhTien = 0;
                    foreach(DataRow r in dt.Rows)
                    {
                        r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToInt32(r["DonGia"]);
                        TongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                        lblTongThanhTien.Text = TongThanhTien.ToString();
                    }
                    gvgiohang.DataSource = dt;
                    gvgiohang.DataBind();
                }
            }
        }
        // Hàm thêm sản phẩm vào giỏ hàng
        public void ThemVaoGioHang(int MaSP, string TenSP, float DonGia, int SoLuong)
        {
            DataTable dt;
            if(Session["Giohang"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("MaSP");
                dt.Columns.Add("TenSP");
                dt.Columns.Add("DonGia");
                dt.Columns.Add("SoLuong");
                dt.Columns.Add("ThanhTien");
            }
            else
            {
                dt = (DataTable)Session["Giohang"];
                int dong = SPDaCoTrongGioHang(MaSP, dt);
                if(dong != -1)
                {
                    dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
                }
                else
                {
                    DataRow dr = dt.NewRow();
                    dr["MaSP"] = MaSP;
                    dr["TenSP"] = TenSP;
                    dr["DonGia"] = DonGia;
                    dr["SoLuong"] = SoLuong;
                    dr["ThanhTien"] = DonGia * SoLuong;
                    dt.Rows.Add(dr);
                }
                Session["Giohang"] = dt;
            }
            
        }
        // Hàm kiểm tra sản phẩm đã có thì tăng số lượng
        public static int SPDaCoTrongGioHang(int MaSP, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i]["MaSP"].ToString()) == MaSP)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }
        // Xử lý button Xóa giỏ hàng
        protected void btnXoaGioHang_Click(object sender, EventArgs e)
        {
            Session["Giohang"] = null;
            Response.Redirect("~/Default.aspx");
        }
        // Xử lý button tiếp tục mua
        protected void btnTiepTucMua_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
        // Xử lý button cập nhật
        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["Giohang"];
            foreach(GridViewRow r in gvgiohang.Rows)
            {
                foreach(DataRow dr in dt.Rows)
                {
                    if (Convert.ToString(gvgiohang.DataKeys[r.DataItemIndex].Value) == dr["MaSP"].ToString())
                    {
                        TextBox t = (TextBox)r.Cells[2].FindControl("txtSoLuong");
                        if(Convert.ToInt32(t.Text) <= 0)
                        {
                            dt.Rows.Remove(dr);
                        }
                        else
                        {
                            dr["SoLuong"] = t.Text;
                        }
                        break;
                    }
                }
            }
            Session["Giohang"] = dt;
            Response.Redirect("~/Giohang.aspx");
        }

        // Lệnh có một dòng trong giỏ hàng
        protected void gvgiohang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Xoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["Giohang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["Giohang"] = dt;
                    Response.Redirect("~/Giohang.aspx");
                }
                catch
                {
                    Response.Redirect("~/Giohang.aspx");
                }
            }
        }

        // Xử lý button đặt hàng
        protected void btnDatHang_Click(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                lblThongBaoLoi.Text = "Bạn chưa đăng nhập";
                Response.Redirect("~/Dangnhap.aspx");
            }
            else
            {
                Response.Redirect("~/Thanhtoan.aspx");
            }
        }
    }
}