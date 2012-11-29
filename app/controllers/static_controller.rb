class StaticController < ApplicationController

  def index

  end

  def changelog


    # events = Github::Activity::Events.new( user: 'christiannaths')
    # events.public do |event|
    #   @output =  event
    # end
    @github = Github.repos.commits.all  'nait-dmit', 'zinc-lily'

  end

end
