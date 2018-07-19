module BlogsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end
  
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true,
    }

    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end
  
  def blog_status_color blog
    'color: red;' if blog.draft?
  end
  
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def blog_img img, type
    if img.model.main_img? || img.model.thumb_img?
      img
    elsif type == 'thumb-img'
      image_generator(height: '600', width: '250')
    elsif type == 'main-img'
      image_generator(height: '800', width: '400')
    end
  end
end
