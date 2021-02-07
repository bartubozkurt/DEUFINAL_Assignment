using System;
using System.Collections.Generic;
using System.Collections;


namespace  _2017280013
{
    abstract class Ogrenci
    {        
        private string id;
        private string adSoyad;
        private string bolum;

        public string Id
        {
            get { return id; }
            set { id = value; }
        }
        public string AdSoyad
        {
            get { return adSoyad; }
            set { adSoyad = value; }
        }
        
        public string Bolum
        {
            get { return bolum; }
            set { bolum = value; }
        }
                                        
        internal ArrayList derslerim = new ArrayList();
        internal ArrayList AktsArr = new ArrayList();

        int toplamNotxAkts = 0;
        int toplamAkts = 0;
        internal int sayac = 0;       

        public void Derslerim(string DersKodu, string DersAdi, int Akts, int DonemNotu)
        {
            derslerim.Add("\t\t" + DersKodu + "  ;  " + DersAdi + "    " + Akts + "    " + DonemNotu);
            AktsArr.Add(Akts);
            AktsArr.Add(DonemNotu);
            sayac += 2;                      
        }
        
        public void DersGoster()
        {
            foreach (var i in derslerim)
            {
                Console.WriteLine(i);
            }
        }               

        public double KumulatifHesapla()
        {
            for (int i = 0; i < sayac; i++)
            {
                if (i % 2 == 0)
                {
                      toplamAkts += Convert.ToInt32( AktsArr[i]);
                }
                else
                {
                    toplamNotxAkts += Convert.ToInt32(AktsArr[i]) * Convert.ToInt32(AktsArr[i - 1]);
                }
            }
            return toplamNotxAkts / toplamAkts;
        }
    }

}
