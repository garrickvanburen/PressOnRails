# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def get_blog_info_rss(param)
    # 'name' - Weblog title; set in General Options. (Default)
    # 'description' - Tagline for your blog; set in General Options.
    # 'url' - URL for your blog's web site address.
    # 'rdf_url' - URL for RDF/RSS 1.0 feed.
    # 'rss_url' - URL for RSS 0.92 feed.
    # 'rss2_url' - URL for RSS 2.0 feed.
    # 'atom_url' - URL for Atom feed.
    # 'comments_rss2_url' - URL for comments RSS 2.0 feed.
    # 'pingback_url' - URL for Pingback (XML-RPC file).
    # 'admin_email' - Administrator's email address; set in General Options.
    # 'charset' - Character encoding for your blog; set in Reading Options.
    # 'version' - Version of WordPress your blog uses.
    # The following work in WordPress version 1.5 or after:
    # 'html_type' - "Content-type" for your blog.
    # 'wpurl' - URL for WordPress installation.
    # 'template_url' - URL for template in use.
    # 'template_directory' - URL for template's directory.
    # 'stylesheet_url' - URL for primary CSS file.
    # 'stylesheet_directory' - URL for stylesheet directory.
  end

  def get_blog_info(param)
    options.fetch(params)
    # name
    # (default) returns the Weblog title set in Administration → Settings → General. This data is retrieved from the blogname record in the wp_options table.
    # description
    # the Tagline set in Administration → Settings → General. This data is retrieved from the blogdescription record in the wp_options table.
    # url
    # home (deprecated)
    # siteurl (deprecated)
    # the Blog address (URI) is the URL for your blog's web site address and is set in Administration → Settings → General. This data is retrieved from the home record in the wp_options table.
    # wpurl
    # the WordPress address (URI) is the URL for your WordPress installation and is set in Administration → Settings → General. This data is retrieved from the siteurl record in the wp_options table.
    # rdf_url
    # URL for the blog's RDF/RSS 1.0 feed (/feed/rfd).
    # rss_url
    # URL for the blog's RSS 0.92 feed (/feed/rss).
    # rss2_url
    # URL for the blog's RSS 2.0 feed (/feed).
    # atom_url
    # URL for the blog's Atom feed (/feed/atom).
    # comments_rss2_url
    # URL for the blog's comments RSS 2.0 feed (/comments/feed).
    # pingback_url
    # URL for Pingback XML-RPC file (xmlrpc.php).
    # stylesheet_url
    # URL for primary CSS file (usually style.css) of the active theme.
    # stylesheet_directory
    # URL of the stylesheet directory of the active theme. (Was a local path in earlier WordPress versions.)
    # template_directory
    # template_url
    # URL of the active theme's directory. (template_directory was a local path before 2.6; see get_theme_root() and get_template() for hackish alternatives.)
    # admin_email
    # The Administrator's E-mail address set in Administration → Settings → General. This data is retrieved from the admin_email record in the wp_options table.
    # charset
    # The Encoding for pages and feeds set in Administration → Settings → Reading. This data is retrieved from the blog_charset record in the wp_options table.
    # version
    # Version of WordPress your blog uses. This data is the value of $wp_version variable set in wp-includes/version.php.
    # html_type
    # Content-Type of WordPress HTML pages (default: text/html); stored in the html_type record in the wp_options table. Themes and plugins can override the default value by using the pre_option_html_type filter (see this section of the Codex for more information on pre_option_ filters).    
  end


  def wp_list_authors(params)
    # optioncount 
    # (boolean) Display number of published posts by each author. Options are:
    # 1 (true)
    # 0 (false) - default
    # exclude_admin 
    # (boolean) Exclude the 'admin' (login is admin) account from authors list. Options are:
    # 1 (true) - default
    # 0 (false)
    # show_fullname 
    # (boolean) Display the full (first and last) name of the authors. If false, the "Display name publicly as" is displayed. Options are:
    # 1 (true)
    # 0 (false) - default
    # hide_empty 
    # (boolean) Do not display authors with 0 posts. Options are:
    # 1 (true) - default
    # 0 (false)
    # echo 
    # (boolean) Display the results. Options are:
    # 1 (true) - default
    # 0 (false)
    # feed 
    # (string) Text to display for a link to each author's RSS feed. Default is no text, and no feed displayed.
    # feed_image 
    # (string) Path/filename for a graphic. This acts as a link to each author's RSS feed, and overrides the feed parameter.
    # style 
    # (string) Style in which to display the author list. A value of list, the default, displays the authors as an unordered list, while none generates no special display method (the list items are separated by comma). If html is false, this option is ignored. This option was added with Version 2.8. Valid values:
    # list - default.
    # none
    # html 
    # (boolean) Whether to list the items in html or plaintext. The default setting is true. If html is false, the style setting is ignored and the items are returned, separated by comma. This option was added with Version 2.8. Valid values:
    # 1 (true) - default
    # 0 (false)
  end

  def wp_list_categories(params)
    # show_option_all 
    #     (string) A non-blank values causes the display of a link to all categories if the style is set to list. The default value is not to display a link to all.
    #     orderby 
    #     (string) Sort categories alphabetically, by unique Category ID, or by the count of posts in that Category. The default is sort by category name. Valid values:
    #     ID
    #     name - Default
    #     slug
    #     count
    #     term_group
    #     order 
    #     (string) Sort order for categories (either ascending or descending). The default is ascending. Valid values:
    #     ASC - Default
    #     DESC
    #     show_last_updated 
    #     (boolean) Should the last updated timestamp for posts be displayed (TRUE) or not (FALSE). Defaults to FALSE.
    #     1 (True)
    #     0 (False) - Default
    #     style 
    #     (string) Style to display the categories list in. A value of list displays the categories as list items while none generates no special display method (the list items are separated by <br> tags). The default setting is list (creates list items for an unordered list). See the markup section for more. Valid values:
    #     list - Default
    #     none
    #     show_count 
    #     (boolean) Toggles the display of the current count of posts in each category. The default is false (do not show post counts). Valid values:
    #     1 (True)
    #     0 (False) - Default
    #     hide_empty 
    #     (boolean) Toggles the display of categories with no posts. The default is true (hide empty categories). Valid values:
    #     1 (True) - Default
    #     0 (False)
    #     use_desc_for_title 
    #     (boolean) Sets whether a category's description is inserted into the title attribute of the links created (i.e. <a title="<em>Category Description</em>" href="...). The default is true (category descriptions will be inserted). Valid values:
    #     1 (True) - Default
    #     0 (False)
    #     child_of 
    #     (integer) Only display categories that are children of the category identified by this parameter. There is no default for this parameter.
    #     feed 
    #     (string) Display a link to each category's rss-2 feed and set the link text to display. The default is no text and no feed displayed.
    #     feed_type 
    #     (string)
    #     feed_image 
    #     (string) Set a URI for an image (usually an rss feed icon) to act as a link to each categories' rss-2 feed. This parameter overrides the feed parameter. There is no default for this parameter.
    #     exclude 
    #     (string) Exclude one or more categories from the results. This parameter takes a comma-separated list of categories by unique ID, in ascending order. See the example. The child_of parameter is automatically set to false.
    #     exclude_tree 
    #     (string) Exclude category-tree from the results. This parameter added at Version 2.7.1
    #     include 
    #     (string) Only include the categories detailed in a comma-separated list by unique ID, in ascending order. See the example.
    #     hierarchical 
    #     (boolean) Display sub-categories as inner list items (below the parent list item) or inline. The default is true (display sub-categories below the parent list item). Valid values:
    #     1 (True) - Default
    #     0 (False)
    #     title_li 
    #     (string) Set the title and style of the outer list item. Defaults to "_Categories". If present but empty, the outer list item will not be displayed. See below for examples.
    #     number 
    #     (integer) Sets the number of Categories to display. This causes the SQL LIMIT value to be defined. Default to no LIMIT.
    #     echo 
    #     (boolean) Show the result or keep it in a variable. The default is true (display the categories organized). This parameter added at Version 2.3 Valid values:
    #     1 (True) - Default
    #     0 (False)
    #     depth 
    #     (integer) This parameter controls how many levels in the hierarchy of Categories are to be included in the list of Categories. The default value is 0 (display all Categories and their children). This parameter added at Version 2.5
    #     0 - All Categories and child Categories (Default).
    #     -1 - All Categories displayed in flat (no indent) form (overrides hierarchical).
    #     1 - Show only top level Categories
    #     n - Value of n (some number) specifies the depth (or level) to descend in displaying Categories
    #     current_category 
    #     (integer) Allows you to force the "current-cat" to appear on uses of wp_list_categories that are not on category archive pages. Normally, the current-cat is set only on category archive pages. If you have another use for it, or want to force it to highlight a different category, this overrides what the function thinks the "current" category is. This parameter added at Version 2.6
      end

end
