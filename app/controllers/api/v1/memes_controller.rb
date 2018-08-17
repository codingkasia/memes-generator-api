class Api::V1::MemesController < ApplicationController
      def index
    render json: Meme.all
  end

  def show
    meme = Meme.find(params[:id])
    render json: meme
  end

  def create
    # meme = Meme.generate_meme(params)
  meme = Meme.generate_meme(template_id: params[:template_id], username: "kasiarosenb", password: "kasiarosenb", text0: params[:text0], text1: params[:text1])
 
  new_meme = Meme.create(url: meme["url"], page_url: meme["page_url"])
    render json: new_meme
  end

  def destroy
    Meme.destroy(params[:id])
  end

  def update
    meme = Meme.find(params[:id])
    meme.update_attributes(meme_params)
    render json: meme
  end

  private

  def meme_params
    params.require(:meme).permit(:template_id, :memeId,
        :username,
        :password,
        :text0,
        :text1)
  end
end
