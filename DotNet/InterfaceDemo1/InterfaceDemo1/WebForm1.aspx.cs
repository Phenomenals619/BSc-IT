using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterfaceDemo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        interface Area
        {
            double show(double a, double b);
        }
        class Reactangle : Area
        {
            public double show(double a, double b)
            {
                return a * b;
            }

        }

        class Circle : Area
        {
            public double show(double a, double b)
            {
                return (3.14 * a * b);
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Reactangle r1 = new Reactangle();
            double x = r1.show(3, 4);
            Circle c1 = new Circle();
            double y = c1.show(3, 4);
            Label1.Text = x.ToString();
            Label2.Text = y.ToString();
        }
    }
}