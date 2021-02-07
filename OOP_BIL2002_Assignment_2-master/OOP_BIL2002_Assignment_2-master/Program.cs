using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;

namespace Odev2
{
    class Program
    {
        static void Main(string[] args)
        {  
            /*                     Bartu Bozkurt 2017280013 Bilgisayar Bilimleri
                                                 # KAYNAKLAR #
             1) https://github.com/dotnet/training-tutorials/blob/master/content/csharp/getting-started/exceptions.md
             2) https://www.tutorialspoint.com/csharp/csharp_exception_handling.htm
             3) https://www.tutorialsteacher.com/csharp/csharp-file
             4) https://www.guru99.com/c-sharp-file-operations.html
             5) https://www.guru99.com/c-sharp-serialization.html
             6) https://www.guru99.com/c-sharp-stream.html
             7) https://www.dotnetperls.com/file
             8) https://www.c-sharpcorner.com/article/exception-handling-in-C-Sharp/
             9) https://www.tutorialspoint.com/java/java_serialization.htm
             */


            Console.WriteLine("______________ Hosgeldiniz______________");  // Menu
            Console.WriteLine("\nLutfen Yapmak Istediginiz Islemi Seciniz.");
            Console.WriteLine("\t      ___ MENU ___");
            Console.WriteLine("\n");                
             
            Console.WriteLine("\n[1] - [Dosyayı ac, oku ve serilestir.]");  
            Console.WriteLine("[2] - [Desirilestir ve ekrana yazdir.]");   
            Console.WriteLine("[3] - [Programdan cıkıs yap.]\n");           

            while (true)
            {
                try
                {
                    Console.WriteLine("\n");
                    Console.Write("Seciminizi Giriniz : ");             // secim giriniz
                    int secim = (Convert.ToInt32(Console.ReadLine()));
                    Console.WriteLine("\n");                  

                    switch (secim) 
                    {
                        case 1:         // 1 e basıldıgında Analizler sınıfının Files() methodunu calıstıracak Files() methodunun icinde AnalizIslem() fonksiyonunu'da cagırıyor
                            Analizler.Files();                          
                            break;

                        case 2:         // 2 e basıldıgında Analizler sınıfının Deserialize() methodunu calıstıracak
                            Analizler.Deserialize();                            
                            break;

                        case 3:        // 3 e basıldıgında Programdan cıkılacak      
                            Console.WriteLine("CIKIS YAPTINIZ !");
                            Console.ReadKey();
                            Environment.Exit(0);
                            break;

                        default:        // belirtilen caseler harici bir sey basılırsa default ta yanlıs tusa bastınız lutfen deneyın dıyecek
                            Console.WriteLine("Yanlis tusa bastiniz lutfen tekrar deneyiniz !"); 
                            break;
                    }                     
                }

                catch (Exception) // try da bir sıkıntı olursa catch te bildirecek
                {
                    Console.WriteLine("Hata");
                }
            }         
            Console.ReadLine();
            
        }
    }
}
