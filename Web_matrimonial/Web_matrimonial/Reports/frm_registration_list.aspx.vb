﻿Public Partial Class frm_registration_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim r As New rpt_registration_list
        CrystalReportViewer1.ReportSource = r

    End Sub

End Class