class CarDecorator < Draper::Decorator
  delegate_all

  def picture
    if model.asset.present?
      h.link_to (h.image_tag model.asset.url, class: "car-picture"), model.asset.url
    else
      h.image_tag "default-car.jpg"
    end
  end

  def brand_name
    model.brand.present? ? model.brand : "No Brand"
  end

  def car_year
    model.year.present? ? model.year : "Year was not specified"
  end

  def car_notes
    model.notes.present? ? model.notes : "No notes for now"
  end

  def car_price
    model.price.present? ? model.price : "Unknown price"
  end

  def car_owner
    model.owner.present? ? model.owner : "The owner not give his name "
  end
  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end
