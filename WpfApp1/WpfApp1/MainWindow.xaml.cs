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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Newtonsoft.Json;
using System.IO;



namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    /// 

    public class Charity
    {

        public int CharityId { get; set; }

        public string CharityName { get; set; }

        public string CharityDescription { get; set; }

        public string CharityLogo { get; set; }

        public byte[] Logo
        {
            get
            {
                if (CharityLogo != null)
                {
                    byte[] buffer = Convert.FromBase64String(CharityLogo);
                    return buffer;
                }
                else
                {
                    return File.ReadAllBytes("C:/Users/206930/Desktop/zxc.png");
                }
            }
        }
    }
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            var client = new WebClient();
            var response = client.DownloadString("http://localhost:50124/api/charities");

            DGridCharities.ItemsSource = JsonConvert.DeserializeObject<List<Charity>>(response);
        }

        private void Row_DoubleClick(object sender, MouseButtonEventArgs e)
        { 
            var temp =(Charity)DGridCharities.SelectedItem;
            Application.Current.Properties["zxc"] = temp.CharityId;
            Window1 a = new Window1();
            a.Show();
            
        }
    }

    
}
