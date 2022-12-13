Imports System.Data.SqlClient
Partial Public Class Websearchby
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = " Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True"
        cn.Open()

        If Not IsPostBack Then
            cmd.Connection = cn
            cmd.CommandText = "select * from Religion "
            dr = cmd.ExecuteReader()

            DropDownList4.DataSource = dr
            DropDownList4.DataValueField = "rel_id"
            DropDownList4.DataTextField = "rel_nm"
            DropDownList4.DataBind()
            dr.Close()

            cmd.CommandText = "select * from Cast "
            dr = cmd.ExecuteReader()


            DropDownList2.DataSource = dr
            DropDownList2.DataValueField = "cast_id"
            DropDownList2.DataTextField = "cast_nm"
            DropDownList2.DataBind()
            dr.Close()

            cmd.CommandText = "select * from Education"
            dr = cmd.ExecuteReader()


            DropDownList3.DataSource = dr
            DropDownList3.DataValueField = "edu_id"
            DropDownList3.DataTextField = "edu_nm"
            DropDownList3.DataBind()
            dr.Close()
        End If
    End Sub

    Protected Sub btn_show_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_show.Click
        Dim cnt As Integer
        cmd = New SqlCommand("SELECT * from Member_profile where rel_id=" & DropDownList4.SelectedValue & " and  cast_id=" & DropDownList2.SelectedValue & " and  edu_id=" & DropDownList3.SelectedValue, cn)
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
                    PlaceHolder1.Controls.Add(New LiteralControl("<a href=Profile_Details.aspx?id=" & dr(0) & ">"))

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