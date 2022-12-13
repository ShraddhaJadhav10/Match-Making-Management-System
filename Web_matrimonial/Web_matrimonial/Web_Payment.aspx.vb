Imports System.Data.SqlClient
Partial Public Class Web_Payment
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True"
        cn.Open()
        txt_reg_date.Text = Now
        If Not IsPostBack Then
           
            txt_pay_id.Text = GetNewId()
            Session("pid") = txt_pay_id.Text
        End If
    End Sub

    Protected Sub btn_save_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_save.Click
        cmd.Connection = cn
        cmd.CommandText = "insert into Payment values(" & txt_pay_id.Text & "," & Session("regid") & ",'" & txt_reg_date.Text & "'," & txt_reg_amount.Text & ")"
        'MsgBox("Record Saved")'
        cmd.ExecuteNonQuery()
        Response.Redirect("~/Reports/frm_payment_receipt.aspx")
    End Sub
    Public Function GetNewId() As Integer
        Dim max As Integer
        cmd.Connection = cn
        cmd.CommandText = "select max (pay_id) from Payment"
        dr = cmd.ExecuteReader
        dr.Close()
        If IsDBNull(cmd.ExecuteScalar) = True Then
            max = 1
        Else
            max = Convert.ToInt32(cmd.ExecuteScalar) + 1
        End If
        Return max
    End Function
End Class