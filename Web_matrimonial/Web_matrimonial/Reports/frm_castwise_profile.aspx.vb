Imports System.Data.SqlClient
Partial Public Class frm_genderwise_details
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
            Dim dt As New DataTable
            dt.Load(dr)
        End If
    End Sub

    Protected Sub btn_show_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_show.Click
        Dim r As New rpt_profile_list
        CrystalReportViewer1.SelectionFormula = "{Cast.cast_id }= " & DropDownList1.SelectedValue
        CrystalReportViewer1.ReportSource = r
    End Sub
End Class