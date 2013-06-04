class LinksController < ActionController::Base
 def index
 end

 def create
  @link = Link.new(url: params[:url], short_url: SecureRandom.hex(3))
  if @link.save
    redirect_to link_path(@link)
  else
    raise "Did not save URL"
  end
end

def show
  @link = Link.find(params[:id])
 end
end
