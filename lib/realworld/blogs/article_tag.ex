defmodule Realworld.Blogs.ArticleTag do
  use Ecto.Schema
  import Ecto.Changeset

  alias Realworld.Blogs.Article
  alias Realworld.Blogs.Tag

  @primary_key false
  schema "articles_tags" do

    field :article_id, :id
    field :tag_id, :id

  end

  @doc false
  def changeset(article_tag, attrs) do
    article_tag
    |> cast(attrs, [])
    |> validate_required([])
  end

end
