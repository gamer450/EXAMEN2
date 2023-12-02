using System;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Newtonsoft.Json;
using System.IO;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для Window2.xaml
    /// </summary>
    /// 
    public class CharityImage
    {

        public int ImageId { get; set; }

        public int CharityId { get; set; }

        public string ImageSource { get; set; }

        public string Description { get; set; }

        public byte[] zxc
        {
            get
            {
                if (ImageSource != null)
                {
                
                    return File.ReadAllBytes(ImageSource);
                }
                else
                {
                    return File.ReadAllBytes("C:/Users/206930/Desktop/zxc.png");
                }
            }
        }

    }

    public partial class Window2 : Window
    {
        public Window2()
        {
            InitializeComponent();
            var client = new WebClient();
            client.Encoding = Encoding.UTF8;
            var response = client.DownloadString("http://localhost:50124/api/CharityImages");
            int temp = Convert.ToInt32(Application.Current.Properties["zxc"]);
            DGridCharities.ItemsSource = JsonConvert.DeserializeObject<List<CharityImage>>(response).Where(x => x.CharityId == temp);
        }
    }
}
