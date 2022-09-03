module ArticlesHelper
  def author_and_date(article)
    "by #{article.user.name}, #{article.created_at.to_date}"
  end
end
