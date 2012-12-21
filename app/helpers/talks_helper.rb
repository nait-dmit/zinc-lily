module TalksHelper

  def vacant?(talk)
    "vacant" if talk.title.downcase == "vacant"
  end


end
