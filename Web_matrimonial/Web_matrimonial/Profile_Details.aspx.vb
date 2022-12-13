Imports System.Data.SqlClient
Partial Public Class Profile_Details
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim kk As String
    Dim profileid, profile_photo, profile_firstnm, profile_middnm, profile_lastnm, profile_dob, profile_gender, profile_maritalstatus, profile_address, profile_mobile, profile_smoke, profile_height, profile_weight, profile_complext, profile_bloodgrp As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True"
        cn.Open()
        If Not IsPostBack Then
            kk = Request.QueryString("id")




            cmd.Connection = cn
            cmd.CommandText = "select * from member_profile where prof_id=" & kk
            dr = cmd.ExecuteReader()
            PlaceHolder1.Controls.Add(New LiteralControl("<table border=1 style='border:solid 2px red;' width='100%'>"))
            If dr.Read Then



                profileid = dr(0)
                profile_firstnm = dr(2)
                profile_middnm = dr(3)
                profile_lastnm = dr(4)
                profile_address = dr(10)
                profile_dob = dr(5)
                profile_gender = dr(6)
                profile_maritalstatus = dr(7)
                profile_mobile = dr(11)
                profile_smoke = dr(17)
                profile_height = dr(18)
                profile_weight = dr(19)
                profile_complext = dr(20)
                profile_bloodgrp = dr(21)
                profile_photo = dr(26)


                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td  align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<img src='Upload/" & profile_photo & "' height=400 width=400></img>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<td align=right >"))
                PlaceHolder1.Controls.Add(New LiteralControl("<table border=1  align=center width='100%' >"))


                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>First Name:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_firstnm & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))


                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Middle Name:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_middnm & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Last Name:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_lastnm & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Address:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_address & "</font>"))
                ' PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>DOB:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_dob & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))


                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Gender:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_gender & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Marital Status:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_maritalstatus & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))


                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Mobile No:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_mobile & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Smoke:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_smoke & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Height:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_height & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Weight:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_weight & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Complexion:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_complext & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=40>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'><B>Blood Group:"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=center>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<font color='brown'>" & profile_bloodgrp & "</font>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))


                PlaceHolder1.Controls.Add(New LiteralControl("<tr height=50>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td align=left>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))



                PlaceHolder1.Controls.Add(New LiteralControl("</table></td>"))

                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))




                PlaceHolder1.Controls.Add(New LiteralControl("</table>"))






            End If
            
            dr.Close()

        End If

    End Sub

End Class