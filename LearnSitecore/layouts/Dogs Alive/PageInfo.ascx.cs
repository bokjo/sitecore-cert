namespace LearnSitecore.layouts.Dogs_Alive
{
    using Sitecore.Collections;
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.Linq;
    using Sitecore.ContentSearch.SearchTypes;
    using Sitecore.ContentSearch.Utilities;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;
    using Sitecore.Links;
    using Sitecore.Security.Accounts;
    using Sitecore.SecurityModel;
    using Sitecore.Web.UI.WebControls;
    using System;
    using System.Linq;
    using System.Web;

    public partial class PageInfo : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            Item item = Sitecore.Context.Item;
            Database db = Sitecore.Context.Database;
            User user = Sitecore.Context.User;

            litInformation.Text = "| UserName: " + user.Name + " | Item Name: " + item.Name + " | DB: " + db.Name + " |";

            // Get item by path
            Item itemByPath = Sitecore.Context.Database.GetItem("/sitecore/content/Home");

            // Get item by ID
            Item itemByID = Sitecore.Context.Database.GetItem(new ID("{110D559F-DEA5-42EA-9C1C-8A5DF7E70EF9}"));

            // Get item from a specific database
            Database masterDB = Sitecore.Configuration.Factory.GetDatabase("master");
            Item itemFromMasterDB = masterDB.GetItem("/sitecore/content/Home");

            // Get item children
            var itemByPathChildren = itemByPath.GetChildren(ChildListOptions.SkipSorting);

            var itemByPathChildrenOptions = itemByPath.Children;

            // Get item URL
            Item Dzeki = Sitecore.Context.Database.GetItem("/sitecore/content/Home/Elderly Dogs/Dzeki");

            UrlOptions options = new UrlOptions
            {
                UseDisplayName = true
            };

            string dzekiUrl = LinkManager.GetItemUrl(Dzeki, options);

            // Create and edit an item on page load

            Database master = Sitecore.Configuration.Factory.GetDatabase("master");

            Item parentItem = master.GetItem("/sitecore/content/Home/Elderly Dogs");

            Item newItem = parentItem.Add("Bokjo", new TemplateID(new ID("{981394C9-6183-400B-8D53-1EEB7BA20E53}")));
            
            try
            {
                using (new SecurityDisabler())
                {
                    newItem.Editing.BeginEdit();

                    Field mainHeading = newItem.Fields["Main Heading"];

                    if (mainHeading != null)
                    {
                        mainHeading.Value = newItem.Name;
                    }

                    newItem.Editing.EndEdit();
                }
            }
            catch
            {
                newItem.Editing.CancelEdit();
            }

            string rawValue = Sitecore.Context.Item.Fields["Main Image"].Value;
            string renderedValue = FieldRenderer.Render(Sitecore.Context.Item, "Main Image", "mw=120");

            litImage.Text = HttpUtility.HtmlEncode(rawValue) + "<br />" + HttpUtility.HtmlEncode(renderedValue);

            // executing a search

            var index = ContentSearchManager.GetIndex("sitecore_master_index");

            using (var searchContext = index.CreateSearchContext())
            {
                //var results = searchContext.GetQueryable<CustomClass>().Where(x => x.MainHeading.Like("Dogs")).ToList();

                //var results2 = searchContext.GetQueryable<CustomClass>().GetResults();

                //var facets = results2.Facets.Categories;
                //int total = results2.TotalSearchResults;
                //var list = results2.Hits.Select(x => x.Document);

                var results = searchContext.GetQueryable<SearchResultItem>().FacetOn(x => x.TemplateName).Take(50);

                var resultSet = results.GetResults();
                var count = resultSet.TotalSearchResults;
                var facets = resultSet.Facets.Categories;

            }
             
        }
    }

    public class CustomClass : SearchResultItem {
        [IndexField("Main Heading")]
        public string MainHeading { get; set; }

        [IgnoreIndexFieldAttribute]
        public string DoNotMapMe { get; set; }
    }
}