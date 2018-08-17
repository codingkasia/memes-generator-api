class Meme < ApplicationRecord
  # belongs_to :user
  # has_many :comments

  def self.generate_meme(params)
    url = 'https://api.imgflip.com/caption_image'

    meme = RestClient.post(url, params)
    json = JSON.parse(meme.body)
    return json["data"]
    # "latest change"
  end
end
