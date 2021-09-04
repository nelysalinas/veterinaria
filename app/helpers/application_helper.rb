module ApplicationHelper

    def active_class?(controlador)
        return 'active' if controller_name == controlador
        ''
    end
    
end
