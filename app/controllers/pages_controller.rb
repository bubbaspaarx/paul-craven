class PagesController < ApplicationController
  def home
  end

  def blogs
    require "rss"
    require 'open-uri'
    rss_results = []
    rss = RSS::Parser.parse(open("http://medium.com/feed/@rshotton?format=xml").read, false).items
    rss.each do |result|
      image = result.content_encoded.to_s.html_safe.match(/http([\w\W]+?)(jpeg|gif|jpg|png|tiff|JPEG|JPG|TIFF|PNG)/)
      description = result.content_encoded.to_s.html_safe.gsub(/<figure>([\w\W]+?)<\/figure>/, '')
      result = { title: result.title, date: result.pubDate, link: result.link, description: result.description, content: description, image: image }
      rss_results.push(result)
    end
    @blogs = rss_results
  end

end
