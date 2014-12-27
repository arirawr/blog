require 'cgi'

module Jekyll
  class SpotifyPlay < Liquid::Tag
    def initialize(tag_name, text, token)
      super
      @spotify_uri = text
    end

    def render(context)
      html_output_for @spotify_uri
    end

    def html_output_for(spotify_uri)
"<div class='spotify_play_button'>
<iframe src='https://embed.spotify.com/?uri=#{spotify_uri}' width='300' height='380' frameborder='0' allowtransparency='true'></iframe>
</div>"
    end
  end
end

Liquid::Template.register_tag('spotify', Jekyll::SpotifyPlay)
