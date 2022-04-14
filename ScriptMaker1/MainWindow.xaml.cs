using Microsoft.VisualBasic.FileIO;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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

namespace ScriptMaker1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
        }

        private void SingleInsert_Click(object sender, RoutedEventArgs e) //This will put each complete row in an insert 
        {
            Util util = new Util();
            List<string> needQuotes = util.DoesIndexNeedQuotes(txtBool2.Text);
            string singleInsert = "";
            string finalInsert = "";
            string inputText = txtInput.Text;
            var reader = new StringReader(inputText);
            string line;

            while ((line = reader.ReadLine()) != null)
            {
                //If the data type requires quotations, then add
                if (needQuotes[0].Equals("Y"))
                {
                    singleInsert += util.Quotes(line) + ", ";
                }
                else
                {
                    singleInsert += line + ", ";
                }
            }
            //Remove the last comma before parenthesis
            singleInsert = singleInsert.Remove(singleInsert.Length - 2, 1);

            finalInsert = util.Parenthesis(singleInsert);

            txtOutput.Text = finalInsert;
        }

        private void MultiInsert_Click(object sender, RoutedEventArgs e) //This will set up insert based on indexes (commas)
        {
            Util util = new Util();
            List<string> needQuotes = util.DoesIndexNeedQuotes(txtBool.Text);
            bool quote = false;
            string singleInsert = "";
            string multiInsert = "";
            string finalInsert = "";
            string inputText = txtInput.Text;
            var reader = new StringReader(inputText);
            string line;

            while ((line = reader.ReadLine()) != null)
            {
                //Initialize variables each time
                int count = 0;
                string temp = "";

                //Split comma separated items 
                //var values = Regex.Split(line, ",(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)");
                var values = line.Split(' ');

                //Get the length of values


                //Take each value, determine the datatype, and add quotes if necessary
                foreach ( var v in values)
                {

                    //If the data type requires quotations, then add
                    if(needQuotes[count].Equals("Y"))
                    {
                        temp += util.Quotes(v) + ", ";
                    }
                    else
                    {
                        temp += v + ", ";
                    }
                    count++;
                }
                //Remove the last comma in the string
                temp = temp.Remove(temp.Length - 2, 1);

                //add parenthesis to insert item
                multiInsert += util.Parenthesis(temp) + ", \n";
            }
            //Collect all inserts for a final string with everything
            finalInsert = multiInsert;

            //Remove the last comma from the string
            finalInsert = finalInsert.Remove(finalInsert.Length - 3, 1);

            //Output to the app screen for user to copy for insert purposes
            txtOutput.Text = finalInsert;
        }

        private void Split_Button_Click(object sender, RoutedEventArgs e) //This splits by the denoted space (space 3 for instance. It isolates the word)
        {
            Util util = new Util();
            string split = "";
            string finalInsert = "";
            string inputText = txtInput.Text;
            var reader = new StringReader(inputText);
            string line;
            while ((line = reader.ReadLine()) != null)
            {
                //var line = reader.ReadLine().Split('\r');
                var values = line.Split(' ');

                split += values[2] + "\r ";
            }

            //finalInsert = util.Parenthesis(singleInsert);

            txtOutput.Text = split;
        }

        private void List_Button_Click(object sender, RoutedEventArgs e) //this lists by spaces
        {
            Util util = new Util();
            List<string> chapters = new List<string>();
            List<Chapters> finalChap = new List<Chapters>();
            
            string split = "";
            string finalInsert = "";
            string inputText = txtInput.Text;
            var reader = new StringReader(inputText);
            string line;
            while ((line = reader.ReadLine()) != null)
            {
                var values = line.Split(' ');
                //var line = reader.ReadLine().Split('\r');
                for (int i = 0; i < values.Length; i++)
                {
                    chapters.Add(values[i]);
                }
                //split += values[2] + "\r ";
            }

            foreach (var c in chapters)
            {
                Chapters chapList = new Chapters();
                for (int i = 1; i <= int.Parse(c); i++)
                {
                    chapList.chap.Add(i.ToString());
                }
                finalChap.Add(chapList);
            }

            //finalInsert = util.Parenthesis(singleInsert);

            txtOutput.Text = split;
        }

        private void Clear_Button_Click(object sender, RoutedEventArgs e)
        {
            txtInput.Text = "";
            txtOutput.Text = "";
            txtBool.Text = "";
            txtBool2.Text = "";
        }
    }

    public class Chapters
    {
        public List<string> chap = new List<string>();
    }

}
