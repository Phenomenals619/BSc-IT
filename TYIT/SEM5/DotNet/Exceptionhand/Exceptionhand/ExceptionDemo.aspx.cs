using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exceptionhand
{
    public partial class ExceptionDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Parse input and throw an exception if it's not a valid number
                int number = int.Parse(InputTextBox.Text);

                // Simulate a business logic check that may fail
                if (number < 0)
                {
                    throw new CustomException("Negative numbers are not allowed.");
                }

                // Process the valid input (e.g., square the number)
                int result = number * number;
                ResultLabel.Text = $"The square of {number} is {result}.";
                ErrorLabel.Text = ""; // Clear error message if successful
            }
            catch (CustomException ex)
            {
                ErrorLabel.Text = $"Custom Error: {ex.Message}";
                ResultLabel.Text = ""; // Clear result if there's an error
            }
            catch (FormatException)
            {
                ErrorLabel.Text = "Please enter a valid integer.";
                ResultLabel.Text = ""; // Clear result if there's an error
            }
            catch (Exception ex)
            {
                ErrorLabel.Text = $"An unexpected error occurred: {ex.Message}";
                ResultLabel.Text = ""; // Clear result if there's an error
            }
        }
    }
}