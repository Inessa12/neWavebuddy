# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

   def link_to_back_or_default default=nil
    link_to('Return to Previous Page', default || request.env['HTTP_REFERER'] || '/')
  end

  def onload_event(event_handler)    
    content_for(:onload_home) { event_handler }
    nil
  end

   def t(key, *options)
    I18n.translate(key, options)
  end


   def select_categories
    @categories = Category::all
    @categories.collect { |item|     [h(item.name), item.id] }
  end
  
end
