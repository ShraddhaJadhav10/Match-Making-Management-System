Public Partial Class frm_cast_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim r As New rpt_cast_list
        CrystalReportViewer1.ReportSource = r

    End Sub

    Protected Sub CrystalReportViewer1_Init(ByVal sender As Object, ByVal e As EventArgs) Handles CrystalReportViewer1.Init

    End Sub
End Class