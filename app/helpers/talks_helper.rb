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

end
