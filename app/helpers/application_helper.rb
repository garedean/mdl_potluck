module ApplicationHelper

  # this app has multiple levels of hierarchical user selection. For instance, when adding a food item, the user must go through multiple levels of food categories to find the desired food to add. List items for each hierarchy follow a pattern: if the item has children assigned to it in the db, then it should link to the next page listing all of the children locations/categories. If it does not have children, go to another page

  def hierarchy_link(object, link_type = nil, category, css_classes)
    has_children = object.children.any?

    if link_type == :store
      if has_children
        link_to object.name, store_category_path(object), class: css_classes
      else
        # link_to object.name, store_category_ingredients_path(object), class: css_classes, method: :post
        link_to object.name, new_store_category_ingredient_path(object), class: css_classes
      end
    elsif link_type == :location
      if has_children
        link_to object.name, location_path(object), class: css_classes
      else
        link_to object.name, location_ingredients_path(object), class: css_classes
      end
    elsif link_type == :place_in_location
      if has_children
        link_to object.name, store_ingredient_location_path(category, object), class: css_classes
      else
        link_to object.name, edit_store_ingredient_location_path(category, object), class: css_classes
      end
    # standard 'prepare' category hierarchy link
    else
      if has_children
        link_to object.name, category_path(object), class: css_classes
      else
        link_to object.name, category_ingredients_path(object), class: css_classes
      end
    end
  end
end
