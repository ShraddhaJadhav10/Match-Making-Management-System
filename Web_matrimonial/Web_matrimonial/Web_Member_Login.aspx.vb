
Imports System.Data.SqlClient
Partial Public Class Web_Customer_Login
    Inherits System.Web.UI.Page
    Dim m, p As String
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader
    Protected Sub btn_mem_login_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_mem_login.Click
        m = txt_login_email.Text
        p = txt_mem_login_pass.Text
        cmd.Connection = cn
        cmd.CommandText = "select * from Registration where Mem_email='" & m & "' and Mem_pass='" & p & "' "
        dr = cmd.ExecuteReader()

        If dr.Read Then
            Session("regid") = dr(0)
            MsgBox("Login successfull")
            Response.Redirect("~/Web_Member_DashBoard.aspx")



        Else
            MsgBox("Login failed")
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True "
        cn.Open()
       
    End Sub
    End Class