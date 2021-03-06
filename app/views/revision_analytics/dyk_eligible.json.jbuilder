# frozen_string_literal: true
json.articles do
  json.array! @articles do |article|
    revision = article.revisions.last
    json.key revision.id
    json.title full_title(article)
    json.article_url article_url(article)
    json.diff_url revision.url
    json.revision_score revision.wp10
    json.username revision.user.username
    json.datetime revision.date
    json.courses revision.infer_courses_from_user.each do |course|
      json.title course.title
      json.slug course.slug
    end
  end
end
