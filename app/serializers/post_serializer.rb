class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content

  belongs_to :author, serializer: AuthorSerializer
  has_many :tags, serializer: TagSerializer

  def short_content
    object.content.truncate(40)
  end
end
