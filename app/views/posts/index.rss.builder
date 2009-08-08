xml.instruct! :xml, :version=>"1.0" 

xml.rss(:version => "2.0", 
		'xmlns:content' => "http://purl.org/rss/1.0/modules/content/", 
		'xmlns:wfw' 	  => "http://wellformedweb.org/CommentAPI/", 
		'xmlns:dc' 		  => "http://purl.org/dc/elements/1.1/",
		'xmlns:itunes' 	=> "http://www.itunes.com/dtds/podcast-1.0.dtd",
		'xmlns:media' 	=> "http://search.yahoo.com/mrss/"
		) {


  xml.channel{
    xml.title options['blogname']
    xml.link  options['blogurl']
	  xml.description options['blogdescription']
	  xml.lastBuildDate @posts.first.post_date.to_s(:rfc2822)
	  xml.generator "#{APP_NAME} #{APP_VERSION}"

    @posts.each do |post|
    	xml.item do	
      		xml.title post.post_title
	  		  xml.dc(:creator){xml.text! post.user.display_name}
      		xml.description h(post.post_content)
	  		  xml.content(:encoded){xml.cdata! post.post_content}
      		xml.pubDate post.post_date.to_s(:rfc2882)
      		xml.link  post_url(post)
      		xml.guid  post.guid
      		xml.comments post_comments_url(post)
      		
      		post.enclosures.each do |e|
      		  xml.enclosure(:url => e[0], :length => e[1], :type => e[2])
    		  end
      		
		  end
    end
  }

}