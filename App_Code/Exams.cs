using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Exams
{
    public Int64 QuestionId { get; set; }
    public String Question { get; set; }
    public String Option1 { get; set; }
    public String Option2 { get; set; }
    public String Option3 { get; set; }
    public String Option4 { get; set; }
    public String QuestionAnswer { get; set; }
    public String SelectedAnswer { get; set; }
}