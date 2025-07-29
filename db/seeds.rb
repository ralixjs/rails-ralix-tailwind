require_relative 'seed_data'

if User.none?
  SeedData::USERS.each do |user_data|
    User.create!(
      name: user_data[:name],
      email: user_data[:email],
      password: "1234asdf"
    )
  end
end

if Article.none?
  SeedData::ARTICLES.each do |article_data|
    Article.create!(
      title: article_data[:title],
      body: article_data[:body],
      user: User.all.sample
    )
  end
end
