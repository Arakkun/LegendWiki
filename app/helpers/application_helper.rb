module ApplicationHelper
    def is_current_page(page_name)
        if page_name==params[:controller]
            state="active"
        else
            state=page_name+" "+params[:controller]
        end
    end
end
