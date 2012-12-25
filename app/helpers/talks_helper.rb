module TalksHelper

  def vacant_class?(talk)
    "vacant" if talk.vacant?
  end

  def gravatar_img_url(hash)
    rand = (Random.rand(15) + 1).to_s.rjust(2, '0')
    default_img = "http://cdn.sitepress.cc.s3.amazonaws.com/libs/images/ui/users/monsters/silver/#{ rand }.png"
    "http://www.gravatar.com/avatar/#{ hash }?s=200&d=#{ URI::encode(default_img) }"
  end

  def excerpt(talk)
    string = truncate(talk.notes, :length => 260, :separator => ' ')
    read_more_link =  link_to "[read more]", talk_path(talk)

    return raw "#{ string } #{ read_more_link }" unless talk.notes.blank?
  end

  def social_network_url(network)
    case network[:name]
    when "twitter"
      return "http://twitter.com/#{ network[:id] }"
    when "facebook"
      return "http://facebook.com/#{ network[:id] }"
    when "googleplus"
      return "https://plus.google.com/#{ network[:id] }"
    when "linkedin"
      return "http://www.linkedin.com/in/#{ network[:id] }"
    when "github"
      return "http://github.com/#{ network[:id] }"
    when "website"
      return "http://#{ network[:id] }"
    end
  end

  def share_link(network, url, title=nil, summary=nil, image_url=nil, icon_class = "social", popup_class="popup")

    if Rails.env == "development"
      url = url.gsub("http://localhost:3000", "http://capstone.dmitweb.com")
    end



    case network.to_sym
    when :facebook
      endpoint = "http://www.facebook.com/sharer.php?"
      params = "s=100&"
      params << "p[title]=#{ title }&" if title
      params << "p[summary]=#{ summary }&" if summary
      params << "p[images][0]=#{ image_url }&" if image_url
      params << "p[url]=#{ url }"

    when :twitter
      # raise Rails.env.inspect
      # raise url.inspect
      # url = CGI.escape(url)
      endpoint = "https://twitter.com/share?"
      params = ""
      params << "text=#{ title }&" if title
      params << "url=#{ url }"
      # raise CGI.escape(params).inspect

    when :googleplus
      # url = CGI.escape(url)
      endpoint = "https://plus.google.com/share?"
      params = "url=#{ url }"

    when :linkedin
      # url = CGI.escape(url)
      endpoint = "http://www.linkedin.com/shareArticle?mini=true&"
      params = ""
      params << "title=#{ title }&" if title
      params << "summary=#{ summary }&" if summary
      params << "url=#{ url }"

    when :mail
      icon_class = "general"
      popup_class = ""
      endpoint = "mailto:?"
      params = ""
      params << "subject=#{ title }&" if title
      params << "subject=Check Out This Talk from DMIT Web Industry Series&" unless title
      params << "body=#{ url }"

    end

    endpoint = endpoint + URI.escape(params)

    return link_to raw("<span class='#{ icon_class } foundicon-#{ network.to_s }'></span> Share"), endpoint, class: "#{ network.to_s } share #{ popup_class }"
  end

end
