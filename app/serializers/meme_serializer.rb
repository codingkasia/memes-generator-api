class MemeSerializer < ActiveModel::Serializer
  attributes  :url, :user_id, :page_url, :template_id, :username ,:password, :text0, :text1
end