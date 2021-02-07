using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2017280013
{ 
    class YuksekLisans : Ogrenci
    {
        public void YuksekLisansEstetik()
        {
            Console.WriteLine("YÜKSEK LİSANS");
        }

        public void OgrenciGoster()
        {
            Console.WriteLine(Id);
            Console.WriteLine(AdSoyad);
            Console.WriteLine(Bolum);
            Console.WriteLine(universiteAdı);
            Console.WriteLine(bolumAdı);
        }

        internal string universiteAdı;
        internal string bolumAdı;

         public YuksekLisans(string universiteAdı, string bolumAdı)
         {
            this.universiteAdı = universiteAdı;
            this.bolumAdı = bolumAdı;
         }










    }
}
