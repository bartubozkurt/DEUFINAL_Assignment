using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2017280013
{
    class Lisans : Ogrenci
    {        
        public void LisansEstetik()
        {
            Console.WriteLine("LISANS");
        }
                              
        public void OgrenciGoster()
        {
            Console.WriteLine(Id);
            Console.WriteLine(AdSoyad);
            Console.WriteLine(Bolum);
        }
       
    }
}
