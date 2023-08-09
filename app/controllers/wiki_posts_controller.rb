# frozen_string_literal: true

class WikiPostsController < ApplicationController
  def index
    uri = URI.parse('http://localhost:3000/api/v1/wiki_posts')
    response = Net::HTTP.get_response(uri)

    @wiki_posts = JSON.parse(response.body)
  end
end
