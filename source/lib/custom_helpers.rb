module CustomHelpers
  def tags_and_titles
    # tags = blog.tags.map{|tag, _| tag}
    # articles = blog.articles.map{|a| a.title}
    tags = blog.tags.map{|tag, _| link_to(tag_path(tag)}
    articles = blog.articles.map{ |a| link_to(a.title, a) }

    tags_and_titles = tags + articles

    return tags_and_titles.join(",")
  end
end
