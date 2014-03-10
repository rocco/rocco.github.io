# Image Tag
#
# Easily put an image into a Jekyll page or blog post
# including classes and alt attribute
# 
# Based on Andrew Stewart's image plugin http://blog.stwrt.ca/2012/11/04/jekyll-images
# 
# Examples:
#   Input:
#     {% image myclass_wide_bold http://path/to/image.png "This is my caption" %}
#   Output:
#     <img src="http://path/to/image.png" class="myclass wide bold" alt="This is my caption">
#
module Jekyll
  class ImageTag < Liquid::Tag
    @url = nil
    @caption = nil
    @class = nil
    @classes = nil

    IMAGE_URL_WITH_CLASS_AND_CAPTION = /(\w+)(\s+)((https?:\/\/|\/)(\S+))(\s+)"(.*?)"/i
    IMAGE_URL_WITH_CAPTION = /((https?:\/\/|\/)(\S+))(\s+)"(.*?)"/i
    IMAGE_URL_WITH_CLASS = /(\w+)(\s+)((https?:\/\/|\/)(\S+))/i
    IMAGE_URL = /((https?:\/\/|\/)(\S+))/i

    def initialize(tag_name, markup, tokens)
      super
      if markup =~ IMAGE_URL_WITH_CLASS_AND_CAPTION
        @class   = $1
        @url     = $3
        @caption = $7
        @classes = @class.sub("_", " ")
      elsif markup =~ IMAGE_URL_WITH_CAPTION
        @url     = $1
        @caption = $5
      elsif markup =~ IMAGE_URL_WITH_CLASS
        @class = $1
        @url   = $3
        @classes = @class.sub("_", " ")
      elsif markup =~ IMAGE_URL
        @url = $1
      end
    end

    def render(context)
      source = '<img src="' + @url + '"'
      source += ' class="' + @classes + '"' if @classes
      source += ' alt="' + @caption + '"' if @caption
      source += '>'

      source
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::ImageTag)
