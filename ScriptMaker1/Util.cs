using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScriptMaker1
{
    class Util
    {
        public string Quotes(string value)
        {
            string quote = "\'" + value + "\'";
            return quote;
        }

        public string Parenthesis(string value)
        {
            string parenthesis = "";

            //Check for comma at the end
            string substr = value.Substring(value.Length - 1);

            //if there is a comma, remove it
            if(substr == ",")
            {
                value.Remove(value.Length - 1);
                parenthesis = "(" + value + ")";
            }
            else
            {
                parenthesis = "(" + value + ")";
            } 
            return parenthesis;
        }

        public List<string> DoesIndexNeedQuotes(string YesOrNo)
        {
            List<string> needQuotes = new List<string>();
            string[] temp = YesOrNo.Split(',');
            foreach(var v in temp)
            {
                needQuotes.Add(v.ToUpper());
            }
            return needQuotes;
        }
    }
}
