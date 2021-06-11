class ApplicationController < ActionController::Base
    before_action :validate_logged_user!
    before_action :set_locale

    def set_locale
        I18n.locale = extract_locale || I18n.default_locale
        
    end

    #def locale_from_header
    #    request.env.fetch('HTTP_ACCEPT_LANGUAGE', '').scan(/[a-z]{2}/).first
    #end
    def extract_locale
        parsed_locale = params[:locale] || request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/)[0]
        I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
    end
    
    def default_url_options
        { locale: I18n.locale }
    end

    def validate_logged_user!
        if !current_user
            redirect_to '/login'
        end
    end


    def current_user
        user_id = session[:user_id]
        if user_id
            User.find(user_id)
        end
    end
    helper_method :current_user

end
