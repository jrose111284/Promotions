class PromotionalRule

  def ten_percent_discount(total)
     if total > 60
       total -= total/10
     else
       total
     end
  end

end
