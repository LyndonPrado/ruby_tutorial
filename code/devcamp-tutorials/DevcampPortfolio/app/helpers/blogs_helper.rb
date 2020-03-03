module BlogsHelper
	def gravatar_helper user
		image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 40
	end

	class CodeRayify < Redcarpet::Render::HTML
		def block_code(code, language)
			CodeRay.scan(code, language || :text || :html).div
		end
	end

	def markdown(text)
		# binding.pry
		coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)
		# binding.pry

		options = {
			fenced_code_blocks: true,
			no_intra_emphasis: true,
			autolink: true,
			lax_html_blocks:true
		}

		markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
		markdown_to_html.render(text).html_safe
	end
end
