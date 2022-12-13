Public Partial Class frm_paymentwise_date
    Inherits System.Web.UI.Page


    Protected Sub btn_show_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_show.Click
        Dim r As New rpt_payment_list
        CrystalReportViewer1.SelectionFormula = "Date({Payment.Reg_date})>Date('" & Calendar1.SelectedDate & "') and Date({Payment.Reg_date})< Date('" & Calendar2.SelectedDate & "')"
        CrystalReportViewer1.ReportSource = r


    End Sub
End Class