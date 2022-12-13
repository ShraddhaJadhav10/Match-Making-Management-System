Imports System.Data.SqlClient
Partial Public Class Web_Admin_Login
    Inherits System.Web.UI.Page
    Dim u, p As String
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader
    Protected Sub btn_login_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_login.Click

        u = txt_admin_Login_nm.Text
        p = txt_admin_pass.Text
        If u.Equals("admin") And p.Equals("admin") Then
            MsgBox("Login successfull")
            Response.Redirect("frm_menu.aspx")
        Else
            MsgBox("Login failed")

        End If
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub
End Class