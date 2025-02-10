using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calendercontrol
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calVacation.TodaysDate = DateTime.Now;
        }
        protected void calVacation_SelectionChanged(object sender, EventArgs e)
        {
            // Display selected dates
            lblVacationDates.Text = "Selected Dates: " + calVacation.SelectedDate.ToString("yyyy-MM-dd");
        }

        protected void btnBookVacation_Click(object sender, EventArgs e)
        {
            // Book vacation logic
            string vacationDates = lblVacationDates.Text;
            // Save to database or perform booking logic
            Response.Write("Vacation booked for: " + vacationDates);
        }
    }
}