Public Partial Class frm_payment_receipt
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim r As New rpt_Payment_Receipt
        CrystalReportViewer1.SelectionFormula = "{payment.pay_id}=" & Session("pid")
        CrystalReportViewer1.ReportSource = r

    End Sub

    Protected Sub CrystalReportViewer1_Init(ByVal sender As Object, ByVal e As EventArgs) Handles CrystalReportViewer1.Init

    End Sub
End Class