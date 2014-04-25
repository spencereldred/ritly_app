class UrlsController < ApplicationController
  
  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def show
    @url = Url.find(params[:id])   
  end

  def create
    url = params[:url]
    # binding.pry
    if url[0] != 'h'
      url = "http://" + url
    end

    # Rails 3 version: 
    # Url.create(link: url, hash_code: SecureRandom.urlsafe_base64(8))

    @url = Url.create url_params
    redirect_to url_path(@url)
  end

  def edit
    @url = Url.find(params[:id])
  end

  def update
    puts "&&&&&&&  We reached the update action with params[:url] = #{params[:url]}"
    url = params[:url]
    # Url.update_attributes(link: url, hash_code: SecureRandom.urlsafe_base64(8))
    @url = Url.update url_params
    redirect_to url_path(@url)
  end

  def redirection
    @url = Url.find_by_hash_code (params[:code])
    puts @url.link
    redirect_to @url.link
  end

  def preview
    @url = Url.find_by_hash_code (params[:code])
    @link = @url.link
    render :preview
  end

  private
    def url_params
      require(:url).permit(:link, :hash_code, :count) 
    end

    def url_id
      require(:url).permit(:id)
    end

end
