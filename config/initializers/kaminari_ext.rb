# Add support in Kaminari for url_builder
Kaminari::Helpers::Tag.class_eval do

  def page_url_for(page)
    params = params_for(page)
    params[:only_path] = true
    url_builder = params[:url_builder] || @template
    params.delete :url_builder
    url_builder.url_for params
  end

end
