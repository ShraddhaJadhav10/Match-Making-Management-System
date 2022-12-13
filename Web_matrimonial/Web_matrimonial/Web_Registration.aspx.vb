Imports System.Data.SqlClient
Partial Public Class Web_Registration
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True"
        cn.Open()
        If Not IsPostBack Then
            txt_reg_id.Text = GetNewId()
            Session("regid") = txt_reg_id.Text

        End If
    End Sub

    Protected Sub btn_save_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_save.Click
        cmd.Connection = cn
        cmd.CommandText = "insert into Registration values(" & txt_reg_id.Text & ",'" & txt_mem_nm.Text & "','" & txt_mem_city.Text & "','" & txt_mem_email.Text & "','" & txt_mem_pass.Text & "')"
        cmd.ExecuteNonQuery()
        'MsgBox("Record Saved")'
        Response.Redirect("~/Web_Payment.aspx")
    End Sub
    Public Function GetNewId() As Integer
        Dim max As Integer
        cmd.Connection = cn
        cmd.CommandText = "select max (reg_id) from Registration"
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