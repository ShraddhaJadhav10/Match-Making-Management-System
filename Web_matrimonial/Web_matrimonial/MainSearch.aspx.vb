Public Partial Class MainSearch
    Inherits System.Web.UI.Page

  

    Protected Sub btn_search_rel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_search_rel.Click
        Response.Redirect("Web_Search_byReligion.aspx")

    End Sub

    Protected Sub btn_serachcast_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_serachcast.Click
        Response.Redirect("Web_SearchbyCast.aspx")
    End Sub

    Protected Sub btn_searchedu_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_search_Edu.Click
        Response.Redirect("Web_SearchbyEducation.aspx")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_searchall.Click
        Response.Redirect("Websearchby.aspx")

    End Sub

    Protected Sub btn_SearchGender_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_SearchGender.Click
        Response.Redirect("WebSearchbyGender.aspx")
    End Sub
End Class