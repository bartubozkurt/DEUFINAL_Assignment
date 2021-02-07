using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using System.IO;

namespace Odev2  
{
    [Serializable] // Serializable attribute
    class Ozellikler
    {
        private int toplamSozcukAdet;    // field
        private int toplamCumleAdet;    // field
        private string enFazlaGecenSozcuk; // field
        private int enfazlaSozcukAdet;      // field

        public int ToplamSozcukAdet  // Property
        {
            get { return toplamSozcukAdet; } // get method
            set { toplamSozcukAdet = value; } // set method
        }

        public int ToplamCumleAdet // Property
        {
            get { return toplamCumleAdet; } // get method
            set { toplamCumleAdet = value; } // set method
        }

        public string EnFazlaGecenSozcuk // Property
        {
            get { return enFazlaGecenSozcuk; } // get method
            set { enFazlaGecenSozcuk = value; } // set method
        }

        public int EnfazlaSozcukAdet // Property
        {
            get { return enfazlaSozcukAdet; } // get method
            set { enfazlaSozcukAdet = value; } // set method
        }
        
        public Ozellikler(int toplamSozcukAdet,int toplamCumleAdet,string enFazlaGecenSozcuk, int enfazlaSozcukAdet) // Ozellikler sınıfının Constructor'u
        {
            ToplamSozcukAdet = toplamSozcukAdet;  // this keyword'suz yaptım hocam Property'leri bas harfleri buyuk.
            ToplamCumleAdet = toplamCumleAdet;
            EnFazlaGecenSozcuk = enFazlaGecenSozcuk;
            EnfazlaSozcukAdet = enfazlaSozcukAdet;
        }        
    }
}
