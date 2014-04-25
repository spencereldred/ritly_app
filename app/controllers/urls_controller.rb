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
    # binding.pry
    url = params[:url][:link]
    # binding.pry

    # ??url[0..6].match ??
    if url[0] != 'h'
      url = "http://" + url
    end
    params[:url][:link] = url

    # Rails 3 version: 
    # Url.create(link: url, hash_code: SecureRandom.urlsafe_base64(8))
    random_url
    # binding.pry
    @url = Url.create url_params
    redirect_to url_path(@url)
  end

  def edit
    @url = Url.find(params[:id])
  end

  def update
    # binding.pry
    # Url.update_attributes(link: url, hash_code: SecureRandom.urlsafe_base64(8))
    @url = Url.find(params[:id])
    random_url
    @url.update url_params
    redirect_to url_path(@url)
  end

  def redirection
    @url = Url.find_by_hash_code (params[:random_string])
    redirect_to @url.link
  end

  def preview
    @url = Url.find_by_hash_code (params[:hash_code])
    @link = @url.link
    render :preview
  end

  private
    def url_params
      params.require(:url).permit(:link, :hash_code) 
    end

    def random_url
      params[:url][:hash_code] = SecureRandom.urlsafe_base64(8)
    end

    def url_id
      params.require(:url).permit(:id)
    end

end
