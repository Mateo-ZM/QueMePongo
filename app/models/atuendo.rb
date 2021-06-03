class Atuendo < ApplicationRecord
    belongs_to :prenda_torso, class_name: "Prenda" 
    belongs_to :prenda_piernas, class_name: "Prenda" 
    belongs_to :prenda_pies, class_name: "Prenda" 
    belongs_to :prenda_accesorios, class_name: "Prenda"
    enum Puntaje: [:'1', :'2', :'3', :'4', :'5', :'6', :'7', :'8', :'9', :'10']
    enum Etiqueta_Formal: [:Formal, :Informal]
    enum Etiqueta_Estacion: [:Verano, :Invierno, :OtonioPrimavera]
    enum Etiqueta_DiaNoche: [:Dia, :Noche]

    def comprobar_text_overflow
        if self.prenda_torso.tipo != nil
            if self.prenda_torso.tipo.length > 18
                self.prenda_torso.tipo = self.prenda_torso.tipo[0,18] + '...'
            else
                self.prenda_torso.tipo
            end
        end
        if self.prenda_piernas.tipo != nil
            if self.prenda_piernas.tipo.length > 18
                self.prenda_piernas.tipo = self.prenda_piernas.tipo[0,18] + '...'
            else
                self.prenda_piernas.tipo
            end
        end
        if self.prenda_pies.tipo != nil
            if self.prenda_pies.tipo.length > 18
                self.prenda_pies.tipo = self.prenda_pies.tipo[0,18] + '...'
            else
                self.prenda_pies.tipo
            end
        end
        if self.prenda_accesorios.tipo != nil
            if self.prenda_accesorios.tipo.length > 18
                self.prenda_accesorios.tipo = self.prenda_accesorios.tipo[0,18] + '...'
            else
                self.prenda_accesorios.tipo
            end
        end
    end

    #def comprobar_prendas!
     #   if !(self.prenda_torso && self.prenda_accesorios && self.prenda_piernas && self.prenda_pies)
      #      self.destroy!
       # end
    #end
end
