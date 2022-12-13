Imports System.Data.SqlClient
Partial Public Class Web_SearchbySubCast
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True "
        cn.Open()
        If Not IsPostBack Then
            cmd.Connection = cn
            cmd.CommandText = "select * from SubCast"
            dr = cmd.ExecuteReader()

            DropDownList1.DataSource = dr
            DropDownList1.DataValueField = "subcast_id"
            DropDownList1.DataValueField = "cast_id"
            DropDownList1.DataTextField = "subcast_nm"
            DropDownList1.DataBind()
            dr.Close()
        End If
    End Sub

    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_search.Click
        Dim cnt As Integer
        cmd = New SqlCommand("SELECT * from Member_profile where cast_id=" & DropDownList1.SelectedValue, cn)
        dr = cmd.ExecuteReader
        While dr.Read
            cnt = cnt + 1
        End While

        dr.Close()

        dr = cmd.ExecuteReader
        Dim i As Integer

        Dim lit1, lit2, lit3, lit4, lit5 As New Literal
        lit1.Text = "<table border=1>"
        lit2.Text = "<tr>"
        lit3.Text = "<td align=center width=100 height=100 >"
        lit4.Text = "</td>"

        lit5.Text = "</tr>"


        PlaceHolder1.Controls.Add(New LiteralControl("<table border=1><br>"))
        PlaceHolder1.Controls.Add(New LiteralControl("<tr>"))
        Dim j As Integer

        For i = 0 To cnt
            For j = 0 To 3

                If dr.Read Then

                    Dim img As New Image
                    img.ImageUrl = "~/Upload/" & dr(26)
                    img.Height = 150
                    img.Width = 150
                    PlaceHolder1.Controls.Add(New LiteralControl("<td width=250 style=border-right-style: ridge; border-right-color:red;><center>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("<a href=mobile_details.aspx?Name=" & dr(2) & ">"))

                    PlaceHolder1.Controls.Add(img)
                    PlaceHolder1.Controls.Add(New LiteralControl("<br>"))


                    PlaceHolder1.Controls.Add(New LiteralControl(dr(2)))
                    PlaceHolder1.Controls.Add(New LiteralControl("</a><br>"))


                    PlaceHolder1.Controls.Add(New LiteralControl("</center></td>"))

                End If

            Next
            PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

        Next

        PlaceHolder1.Controls.Add(New LiteralControl("</table>"))
        cn.Close()
    End Sub
End Class