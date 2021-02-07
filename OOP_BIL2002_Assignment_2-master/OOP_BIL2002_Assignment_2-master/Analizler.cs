using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

namespace Odev2
{
    static class Analizler
    {
        public static void Files() // Dosya islemleri icin bir method belirledim
        {
            try 
            {
                string path = @"C:\Users\bartu\Desktop\Odev2 - Kopya\odev2-oku.txt";  // dosya yolu
                FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read); // dosyamızı açıp okuma modu ile okuyoruz
                StreamReader rd = new StreamReader(fs);
                string lines = rd.ReadLine();
                AnalizIslem(lines); // Okuduğumuz satırları islem methoduna yolluyoruz

                fs.Close();
                rd.Close();
            }
            catch (Exception)
            {
                Console.WriteLine("An error has occured"); // try da bir hata yakalarsa catch'te bildiriyor
            }          
        }

        public static void AnalizIslem(string lines) // Satırlara yapılacak olan islemler icin bir method belirledim
        {
            string[] arr = lines.Split(' '); // Satırları Split() fonksiyonu ile ayırarak arr e atıyor Sozcuk sayısını bulacagız bununla

            string[] dizi = lines.Split('.','!','?'); // Satırlarda nokta,ünlem,soru işareti olan yerleri Split() fonksiyonu ile ayırıyor ve diziye atıyor Cümle sayısını bulacagız bununla

            var result = lines.ToLower().Split(' ').GroupBy(r => r).Select(grp => new { Word = grp.Key, Count = grp.Count() }); // En fazla gecen sozcuk ve adetini bulup result değiskenine attık

            string sozcuk= "";
            int sozcukAdet= 0;

            foreach (var item in result)   
            {
                if (item.Count > sozcukAdet)
                {                               // burada En fazla gecen sozcuk ve adetini sozcuk ve sozcuk adeti degiskenlerine attık
                    sozcuk = item.Word;
                    sozcukAdet = item.Count;
                }
                
            }

            Analizler.Serialize(arr.Length,dizi.Length,sozcuk,sozcukAdet); // Serialize fonksiyonunu cagırdık parametrelerini verdik
        }

        public static void Serialize(int toplamSozcukAdet, int toplamCumleAdet, string enFazlaGecenSozcuk, int enfazlaSozcukAdet) // Serileştirme için method olusturdum
        { 
            try
            {
                Ozellikler analiz = new Ozellikler(toplamSozcukAdet, toplamCumleAdet, enFazlaGecenSozcuk, enfazlaSozcukAdet); // analiz nesnesi olusturdum
                BinaryFormatter bf = new BinaryFormatter(); //binary formata donusturmek icin bir nesne olusturdum
                FileStream stream = new FileStream(@"deneme.txt", FileMode.OpenOrCreate, FileAccess.Write, FileShare.Write); //C:\Users\bartu\Desktop\Odev2 - Kopya\Odev2\bin\Debug\deneme.txt   
                bf.Serialize(stream, analiz);                // serilestirdik
                stream.Close();                             // dosyayı kapadık
                Console.WriteLine("Serilestirildi!");
            }
            catch (SerializationException)              // Serileştirirken hata olursa catch'te bildiriyor
            {
                Console.WriteLine("Serileştirme hatası!");
            }
        }
        
        public static void Deserialize() //Deserileştirme icin bir method olusturdum
        {
            Ozellikler analiz = null;
            try
            {                
                BinaryFormatter bf = new BinaryFormatter();             
                FileStream stream = new FileStream(@"deneme.txt", FileMode.Open, FileAccess.Read); // C:\Users\bartu\Desktop\Odev2 - Kopya\Odev2\bin\Debug\
                analiz = (Ozellikler)bf.Deserialize(stream);          // deserileştirdik
                stream.Close();
                Console.WriteLine("Deserilestirildi!");
            }
            catch (Exception) //Deserileştirirken hata olursa catch'te bildiriyor.
            {

                Console.WriteLine("Deserilestirme hatası!");
            }

            Console.WriteLine(Environment.NewLine);
            StringBuilder stringBuilder = new StringBuilder("__BILGILER__");  // stringBuilder nesnesi olusturdum  bilgileri yazdırmak icin
            stringBuilder.AppendLine("\n");
            stringBuilder.AppendLine(analiz.ToplamSozcukAdet.ToString());
            stringBuilder.AppendLine(analiz.ToplamCumleAdet.ToString());
            stringBuilder.Append(analiz.EnFazlaGecenSozcuk.ToString());
            stringBuilder.Append(" , ");
            stringBuilder.AppendLine(analiz.EnfazlaSozcukAdet.ToString());
            Console.WriteLine(stringBuilder);
                                                                           
        }       
    }
}

