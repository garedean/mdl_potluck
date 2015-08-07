module Admin::Locations::LocationsHelper
  def nested_locations(locations)
    locations.map do |location, sub_locations|
      render(location) + content_tag(:div, nested_locations(sub_locations), class: "nested_locations")
    end.join.html_safe
  end
end
