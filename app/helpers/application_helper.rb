module ApplicationHelper
    def is_current_page(page_name)
        if current_page?(page_name)
            if page_name=='messages'
                return "enabled"
            end
            if current_page?(:controller => 'artists', :action => 'index')
                return "enabled"
            end
        end
        return " "
    end
end
