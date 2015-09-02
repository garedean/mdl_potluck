module SharedMethods
  def ingredients_count
    if has_children?
			total = 0
      count = 0
			descendants.each do |descendant|
				if descendant.is_childless?
					total += descendant.ingredients.unused.size
				end
        count +=1
			end
			return total
		else
			ingredients.unused.size
		end
  end
end
