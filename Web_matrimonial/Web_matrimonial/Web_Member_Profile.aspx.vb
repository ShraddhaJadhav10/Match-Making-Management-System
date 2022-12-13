Imports System.Data.SqlClient
Partial Public Class Web_Member
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader
    Shared basedir As String
    Shared path As String
    Shared imgname As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        cn.ConnectionString = " Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True"
        cn.Open()
        

        If Not IsPostBack Then
            cmd.Connection = cn
           

            cmd.CommandText = "select * from Cast "
            dr = cmd.ExecuteReader()

            DropDownList2.DataSource = dr
            DropDownList2.DataValueField = "cast_id"
            DropDownList2.DataTextField = "cast_nm"
            DropDownList2.DataBind()
            dr.Close()

            '  cmd.CommandText = "select * from member_profile where reg_id="
            ' dr = cmd.ExecuteReader()




            cmd.CommandText = "select * from Religion "
            dr = cmd.ExecuteReader()

            DropDownList3.DataSource = dr
            DropDownList3.DataValueField = "rel_id"
            DropDownList3.DataTextField = "rel_nm"
            DropDownList3.DataBind()
            dr.Close()

            cmd.CommandText = "select * from Education"
            dr = cmd.ExecuteReader()

            DropDownList4.DataSource = dr
            DropDownList4.DataValueField = "edu_id"
            DropDownList4.DataTextField = "edu_nm"
            DropDownList4.DataBind()
            dr.Close()
            txt_prof_id.Text = GetNewId()
        End If
    End Sub


    Protected Sub btn_save_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_save.Click
        cmd.Connection = cn
        cmd.CommandText = "insert into Member_profile values(" & txt_prof_id.Text & "," & Session("regid") & ",'" & txt_first_nm.Text & "','" & txt_middle_nm.Text & "','" & txt_last_nm.Text & "','" & txt_dob.Text & "','" & txt_gender.Text & "','" & txt_maritalstatus.Text & "'," & DropDownList2.SelectedValue & "," & DropDownList3.SelectedValue & ",'" & txt_prof_add.Text & "','" & txt_mob_no.Text & " ','" & txt_tele_no.Text & "'," & DropDownList4.SelectedValue & ",'" & txt_mangalik.Text & "','" & txt_drink.Text & "','" & txt_veg_nonveg.Text & "','" & txt_smoke.Text & "','" & _
        txt_height.Text & "','" & txt_weight.Text & "','" & txt_complexion.Text & "','" & txt_blood_group.Text & "','" & txt_hobbies.Text & "','" & txt_occupation.Text & "','" & txt_annual_income.Text & "','" & txt_expectation.Text & "','" & imgname & "')"
        cmd.ExecuteNonQuery()
        'MsgBox("Record Saved")'
        Response.Redirect("Web_Member_DashBoard.aspx")

    End Sub
    Public Function GetNewId() As Integer
        Dim max As Integer
        cmd.Connection = cn
        cmd.CommandText = "select max (prof_id) from Member_profile"
        dr = cmd.ExecuteReader
        dr.Close()
        If IsDBNull(cmd.ExecuteScalar) = True Then
            max = 1
        Else
            max = Convert.ToInt32(cmd.ExecuteScalar) + 1
        End If
        Return max
    End Function

    Protected Sub btn_upload_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_upload.Click
        basedir = Server.MapPath("~/Upload/")
        path = basedir & FileUpload1.FileName
        imgname = FileUpload1.FileName
        FileUpload1.SaveAs(path)
        'MsgBox(path)'
        Image1.ImageUrl = "~/Upload/" & FileUpload1.FileName
    End Sub
End Class