using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Safovi
{
    public class GIO_HANG
    {
        private int msp;
        
        public int Msp
        {
            get
            {
                return msp;
            }
            set
            {
                msp = value;
            }
        }
        private string tensp;

        public string TenSP
        {
            get
            {
                return tensp;
            }
            set
            {
                tensp = value;
            }
        }
        private decimal dongia;

        public decimal DonGia
        {
            get
            {
                return dongia;
            }
            set
            {
                dongia = value;
            }
        }
        private int soluong;

        public int SoLuong
        {
            get
            {
                return soluong;
            }
            set
            {
                soluong = value;
            }
        }
        private int thanhtien;

        public decimal ThanhTien
        {
            get
            {
                return soluong * dongia;
            }
        }

        public GIO_HANG()
        {

        }

    }
}