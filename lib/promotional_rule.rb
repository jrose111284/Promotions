class PromotionalRule

  def ten_percent_discount(total)
    total -= total/10 if total > 60
  end
end
