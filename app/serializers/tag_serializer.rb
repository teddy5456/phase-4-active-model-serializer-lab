class TagSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts, serializer: PostSerializer
end
