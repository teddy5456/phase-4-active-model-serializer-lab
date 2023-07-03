class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: PostSerializer
end


class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags, serializer: TagSerializer

  def short_content
    "#{object.content[0..39]}..."
  end
end


class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url
end
