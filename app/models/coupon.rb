class Coupon < ApplicationRecord
  belongs_to :user


  #Método para definir si el cupón se utilizó o no
  def usable? 
    valid_on_count?
  end

  #Método que permite definir que tipo de cupon es (si puede ser usado por muchos o un cliente en específico)
  def valid_on_count? 
    if type.eq?('target')
      return(count>0)
    end
  end

  #Método que permite diferenciar si cupón es aplicado con porcentaje o un monto específico
  def compute_total(total)
    if discount.eq?('percent')
      percent_value = amount.to_f /100
      total - (total * percent_value)
    else
      total = total - amount
      (total < 0) ? 0 : total
    end
  end
end
