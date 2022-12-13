Imports System.Data.SqlClient

Partial Public Class Web_Member_DashBoard
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim cn As New SqlConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True "
        cn.Open()
        cmd = New SqlCommand
        cmd.Connection = cn

        cmd.CommandText = "select * from member_profile where Reg_id=" & Session("regid")
        dr = cmd.ExecuteReader()
        If (dr.Read) Then
            HyperLink1.Visible = False
        Else
            HyperLink1.Visible = True
        End If
    End Sub

End Class
