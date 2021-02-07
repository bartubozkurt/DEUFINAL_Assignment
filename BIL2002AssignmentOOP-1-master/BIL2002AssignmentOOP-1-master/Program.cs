using System;
using System.Collections.Generic;
using System.Collections;

namespace _2017280013
{
    class Program
    {
        static void Main(string[] args)
        {
            Lisans ogrenci = new Lisans();
            Lisans ogrenci1 = new Lisans();
            YuksekLisans ogrenci2 = new YuksekLisans("\t"+ "İSTANBUL ÜNİVERSİTESİ", "" + "\t" + "TARİH");
            YuksekLisans ogrenci4 = new YuksekLisans("\t" + "LEED ÜNİVERSİTESİ", "" + "\t" + "BİYOLOJİ");
            Doktora ogrenci3 = new Doktora("\t" + "EGE ÜNİVERSİTESİ", "" + "\t" + "BEDEN EĞİTİMİ VE SPOR", "" + Environment.NewLine + "" + "\t" + "UNVERSITY OF BRITISH COLUMBIA", "" + "\t" + "KINESIOLOGY" );

            ogrenci.LisansEstetik();
            ogrenci.Id = "\t" + "2017280013";
            ogrenci.AdSoyad = "\t" + "BARTU BOZKURT";
            ogrenci.Bolum = "\t" + "Bilgisayar Bilimleri";

            ogrenci.OgrenciGoster();
          
            ogrenci.Derslerim("BİL2002", "Nesneye Yönelik Programlama", 7, 80);
            ogrenci.Derslerim("BİL1001", "Bilgisayar Bilimleri Giris I", 7, 90);
            ogrenci.Derslerim("IST 1003", "İstatistik ve Olasılık", 4, 65);

            ogrenci.DersGoster();
            Console.WriteLine("\t\tKÜMÜLATİF = " + ogrenci.KumulatifHesapla());
         
           
            Console.WriteLine(Environment.NewLine);

            ogrenci1.Id = "\t" + "2017280066";
            ogrenci1.AdSoyad = "\t" + "JOHN PETRUCCİ";
            ogrenci1.Bolum = "\t" + "Müzik";

            ogrenci1.OgrenciGoster();            

            ogrenci1.Derslerim("MÜ1001", "Müzik Tarihi", 4, 75);
            ogrenci1.Derslerim("MZÖ 3011", "ORKESTRA/ODA MÜZİĞİ I", 7, 100);

            ogrenci1.DersGoster();
            Console.WriteLine("\t\tKÜMÜLATİF = " + ogrenci1.KumulatifHesapla());
            Console.WriteLine(Environment.NewLine);

            ogrenci2.YuksekLisansEstetik();
           

            ogrenci2.Id = "\t" + "2009291062";
            ogrenci2.AdSoyad = "\t" + "ERİC CLAPTON";
            ogrenci2.Bolum = "\t" + "TARİH" + Environment.NewLine;

            ogrenci2.OgrenciGoster();           

            ogrenci2.Derslerim("TAR505", "Tatar Tarihi", 18, 79);
            ogrenci2.Derslerim("TAR511	", "Uzakdoğu Halkları", 18, 100);
            ogrenci2.Derslerim("CHP101", "Politikaya Giriş I", 18, 100);

            ogrenci2.DersGoster();
            Console.WriteLine("\t\tKÜMÜLATİF = " + ogrenci2.KumulatifHesapla());
            Console.WriteLine(Environment.NewLine);

            ogrenci4.Id = "\t" + "2010555031";
            ogrenci4.AdSoyad = "\t" + "MARK KNOPFLER";
            ogrenci4.Bolum = "\t" + "Biyomedikal Teknolojiler" + Environment.NewLine;

            ogrenci4.OgrenciGoster();

            ogrenci4.Derslerim("BIP 6002", "SYSTEMS THEORY OF THE BRAİN I", 9, 79);
            ogrenci4.Derslerim("BYT 5018	", "BİYONANOTEKNOLOJİ", 8, 100);

            ogrenci4.DersGoster();

            Console.WriteLine("\t\tKÜMÜLATİF = " + ogrenci4.KumulatifHesapla());
            Console.WriteLine(Environment.NewLine);
            ogrenci3.DoktoraEstetik();

            ogrenci3.Id = "\t" + "2009291030";
            ogrenci3.AdSoyad = "\t" + "DOĞAÇ SAZAN";
            ogrenci3.Bolum = "\t" + "SPOR BİLİMLERİ" + Environment.NewLine;

            ogrenci3.OgrenciGoster();      
            
            ogrenci3.Derslerim("SPB603", "Rehabilitatif Spor", 18, 95);
            ogrenci3.Derslerim("SPB630	", "Sporda Sponsorluk", 6, 100);
            ogrenci3.Derslerim("FA333	", "Spor Ahlakı", 4, 95);


            ogrenci3.DersGoster();

            Console.WriteLine("\t\tKÜMÜLATIF = " + ogrenci3.KumulatifHesapla());
            Console.WriteLine(Environment.NewLine);
            
            Console.ReadLine();
                                      
            
        }

        
    }
}
