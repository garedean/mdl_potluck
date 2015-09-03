module SharedMethods
  def descendants_count_helper
    if has_children?
			total = 0
			descendants.each do |descendant|
				if descendant.is_childless?
					total += descendant.ingredients.unused.size
				end
			end
			return total
		else
			ingredients.unused.size
		end
  end
end
