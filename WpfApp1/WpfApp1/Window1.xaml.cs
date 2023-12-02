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
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    /// 
    public class CharityComments
    {

        public int Id { get; set; }

        public int CharityId { get; set; }

        public string Author { get; set; }

        public string Text { get; set; }

        public DateTime CreationDate { get; set; }


    }
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
            
            var client = new WebClient();
            client.Encoding = Encoding.UTF8;
            var response = client.DownloadString("http://localhost:50124/api/CharityComments");
            int temp = Convert.ToInt32(Application.Current.Properties["zxc"]);
            //MessageBox.Show(Convert.ToString(temp));
            DGridCharities.ItemsSource = JsonConvert.DeserializeObject<List<CharityComments>>(response).Where(x=>x.CharityId==temp);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Window b = new Window2();
            b.Show();
        }
    }
}
