module SharedMethods
  def ingredients_count
    if has_children?
			total = 0
			descendants.each do |descendant|
				if descendant.is_childless?
					total += descendant.ingredients.size
				end
			end
			return total
		else
			ingredients.size
		end
  end
end
