Imports System.Data.SqlClient
Partial Public Class Web_SubCast
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim cn As New SqlConnection
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=DESKTOP-CRNRE6B;Initial Catalog=matrimonialDB;Integrated Security=True "
        cn.Open()
        
        If Not IsPostBack Then
            cmd.Connection = cn
            cmd.CommandText = "select * from Cast"
            dr = cmd.ExecuteReader()

            DropDownList1.DataSource = dr
            DropDownList1.DataTextField = "cast_nm"
            DropDownList1.DataValueField = "cast_id"
            DropDownList1.DataBind()
            dr.Close()
            txt_subcast_id.Text = GetNewId()
        End If

    End Sub

    Protected Sub btn_show_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_show.Click
        cmd.Connection = cn
        cmd.CommandText = "select * from SubCast"
        dr = cmd.ExecuteReader
        GridView1.DataSource = dr
        GridView1.DataBind()
        dr.Close()
    End Sub

    Protected Sub btn_insert_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_insert.Click
        cmd.Connection = cn
        cmd.CommandText = "insert into SubCast values (" & txt_subcast_id.Text & " ," & DropDownList1.SelectedValue & ",'" & txt_subcast_nm.Text & "')"
        cmd.ExecuteNonQuery()
        MsgBox("Record Inserted")
        cleartext()
    End Sub

    Protected Sub btn_update_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_update.Click
        cmd.Connection = cn
        cmd.CommandText = "update SubCast set cast_id=" & DropDownList1.SelectedValue & ", SubCast_nm='" & txt_subcast_nm.Text & "'where SubCast_id=" & txt_subcast_id.Text
        cmd.ExecuteNonQuery()
        MsgBox("Record Updated")
        cleartext()
        btn_insert.Enabled = True
        btn_update.Enabled = False
        btn_delete.Enabled = False
    End Sub

    Protected Sub btn_delete_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_delete.Click
        cmd.Connection = cn
        cmd.CommandText = "delete from SubCast where SubCast_id=" & txt_subcast_id.Text
        cmd.ExecuteNonQuery()
        MsgBox("Record Deleted")
        cleartext()
        btn_insert.Enabled = True
        btn_update.Enabled = False
        btn_delete.Enabled = False
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        txt_subcast_id.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(1).Text
        ' txt_subcast_id.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(2).Text
        txt_subcast_nm.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(3).Text
        btn_update.Enabled = True
        btn_delete.Enabled = True
        btn_insert.Enabled = False
    End Sub
    Public Sub cleartext()
        txt_subcast_id.Text = ""

        txt_subcast_nm.Text = ""

    End Sub

    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_search.Click
        Dim id As Integer
        id = InputBox("Enter id")
        cmd.Connection = cn
        cmd.CommandText = "select * from SubCast where subcast_id=" & id
        dr = cmd.ExecuteReader()
        GridView1.DataSource = dr
        GridView1.DataBind()
    End Sub
    Public Function GetNewId() As Integer
        Dim max As Integer
        cmd.Connection = cn
        cmd.CommandText = "select max (subcast_id) from SubCast"
        dr = cmd.ExecuteReader()
        dr.Close()
        If IsDBNull(cmd.ExecuteScalar) = True Then
            max = 1
        Else
            max = Convert.ToInt32(cmd.ExecuteScalar) + 1
        End If
        Return max
    End Function
End Class