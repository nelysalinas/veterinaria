module ApplicationHelper

    def active_class?(controlador)
        return 'active' if controller_name == controlador
        ''
    end

    def formato_fecha(fecha)
        fecha.strftime("%d/%m/%Y")
    end
    
    
end
