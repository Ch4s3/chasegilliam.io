module CustomHelpers
  def tags_and_titles
    tags = blog.tags.map{ |tag, _| { label: tag, value: link_to(tag_path(tag)) } }
    articles = blog.articles.map{ |a| { label: a, value: link_to(a.title, a) } }

    tags_and_titles = tags + articles

    return tags_and_titles
  end
end
