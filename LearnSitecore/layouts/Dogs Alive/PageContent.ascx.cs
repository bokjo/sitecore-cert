namespace LearnSitecore.layouts.Dogs_Alive
{
    using System;

    public partial class PageContent : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            string datasourceGuid = Attributes["sc_datasource"];

            if (!String.IsNullOrEmpty(datasourceGuid))
            {
                MainHeading.DataSource = MainImage.DataSource = MainText.DataSource = datasourceGuid;
            }
        }
    }
}