package com.example.dialogfragments  // ✅ Ensure the correct package

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import android.content.DialogInterface
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.example.dialogfragments.databinding.ActivityMainBinding  // ✅ Removed incorrect import

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // ✅ Initialize ViewBinding
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // ✅ Show AlertDialog when button is clicked
        binding.btnShowDialog.setOnClickListener {
            showAlertDialog()
        }

        // ✅ Show Custom Dialog when button is clicked
        binding.btnShowCustomDialog.setOnClickListener {
            showCustomDialog()
        }

        // ✅ Show DialogFragment when button is clicked
        binding.btnShowDialogFragment.setOnClickListener {
            showDialogFragment()
        }
    }

    // ✅ AlertDialog Example
    private fun showAlertDialog() {
        val builder = AlertDialog.Builder(this)
        builder.setTitle("Exit Confirmation")
        builder.setMessage("Are you sure you want to exit?")

        // ✅ Positive Button (Yes)
        builder.setPositiveButton("Yes") { dialog: DialogInterface, _: Int ->
            Toast.makeText(this, "Exiting...", Toast.LENGTH_SHORT).show()
            dialog.dismiss()
        }

        // ❌ Negative Button (No)
        builder.setNegativeButton("No") { dialog: DialogInterface, _: Int ->
            dialog.dismiss()
        }

        // ✅ Show the dialog
        builder.create().show()
    }

    // ✅ Custom Dialog Example
    private fun showCustomDialog() {
        val dialogView = layoutInflater.inflate(R.layout.custom_dialog, null)
        val editText = dialogView.findViewById<EditText>(R.id.etUserInput)
        val btnSubmit = dialogView.findViewById<Button>(R.id.btnSubmit)

        val dialog = AlertDialog.Builder(this)
            .setView(dialogView)
            .setCancelable(true)
            .create()

        btnSubmit.setOnClickListener {
            val input = editText.text.toString()
            Toast.makeText(this, "Hello, $input!", Toast.LENGTH_SHORT).show()
            dialog.dismiss()
        }

        dialog.show()
    }

    // ✅ DialogFragment Example
    private fun showDialogFragment() {
        val dialog = MyDialogFragment()
        dialog.show(supportFragmentManager, "MyDialog")
    }
}
