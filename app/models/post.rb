class Post < ApplicationRecord
	belongs_to :user
    before_save :update_tags

  def save_location_tags
    [city, city.state, city.state.country].map do |loc|
      (Tag.it({id: loc.id, name: loc.name, tag_type: 'LOCATION'}).id rescue nil)
    end
  end

  def update_tags
    self.tags = [
      save_location_tags,
      (Tag.it({name: founding_year, tag_type: 'COMPANY_FOUNDING_YEAR'}).id rescue nil)
    ].flatten.compact
  end
end
end
