﻿Public Partial Class frm_education_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim r As New rpt_education_list
        CrystalReportViewer1.ReportSource = r

    End Sub

End Class