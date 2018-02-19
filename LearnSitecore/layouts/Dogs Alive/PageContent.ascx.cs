namespace LearnSitecore.layouts.Dogs_Alive
{
    using System;

    public partial class PageContent : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            string datasourceGuid = Attributes["sc_datasource"];

            MainHeading.DataSource = datasourceGuid;
            MainImage.DataSource = datasourceGuid;
            MainText.DataSource = datasourceGuid;

            var parametersRaw = Attributes["sc_parameters"];
            var parametersCollection = Sitecore.Web.WebUtil.ParseUrlParameters(parametersRaw);
            var background = parametersCollection["background"];

            Background = background;
        }

        public string Background
        {
            get; set;
        }
    }
}