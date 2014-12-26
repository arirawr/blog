module AddThis

class ShareLink < Liquid::Tag

def initialize(name, params, tokens)
	super
		@service = params.delete(' ')
end

def render(context)
	site_url = context.registers[:site].config['url']
	page_path = context.environments.first["page"]["url"]
	image_path = context.registers[:site].config['addthis']['image']
	url = "#{site_url}#{page_path}"
	title = context.environments.first["page"]["title"]
	teaser = context.environments.first["page"]["description"]
	pubid = context.registers[:site].config['addthis']['pubid']
	image = "#{site_url}#{image_path}"
	ShareLink::share_url(@service,url,title,teaser,pubid,image)
end

def self.share_url(service, url, title, teaser, pubid, image)
	servicename = service
	if service != 'default'
		service = 'forward/'+service+'/'
	else
		servicename = service
		service = ''
end

link = sprintf "http://api.addthis.com/oexchange/0.8/%soffer?url=%s&title=%s&description=%s&pubid=%s&screenshot=%s", service, CGI::escape(url), CGI::escape(title), CGI::escape(teaser), CGI::escape(pubid), CGI::escape(image)
sprintf "<a href=\"%s\" rel=\"nofollow\" class=\"share-link share-%s\" target=\"_blank\">%s</a>", link, servicename, servicename

end
end
end
