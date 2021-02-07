using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2017280013
{
    class Doktora : YuksekLisans
    {
        public void DoktoraEstetik()
        {
            Console.WriteLine("DOKTORA");
        }
        public void OgrenciGoster() 
        {
            Console.WriteLine(Id);
            Console.WriteLine(AdSoyad);
            Console.WriteLine(Bolum);
            Console.WriteLine(universiteAdı);
            Console.WriteLine(bolumAdı);
            Console.WriteLine(uniAd);
            Console.WriteLine(bolAd);
        }

        internal string universiteAdı;
        internal string bolumAdı;
        internal string uniAd;
        internal string bolAd;

        public Doktora(string universiteAdı, string bolumAdı, string uniAd, string bolAd) : base(universiteAdı, bolumAdı)
        {
            this.universiteAdı = universiteAdı;
            this.bolumAdı = bolumAdı;
            this.uniAd = uniAd;
            this.bolAd = bolAd;
        }
        







    }
}
