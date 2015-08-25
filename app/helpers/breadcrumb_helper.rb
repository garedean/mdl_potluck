module BreadcrumbHelper
  def breadcrumb_menu
    content_tag :div, id: "breadcrumbs" do
      yield
    end
  end

  private

  def page_name(title)
    content_tag "strong", title
  end

  def breadcrumb_link(link_name, path)
    (link_to link_name, path) + " > "
  end

  def ancestor_chain(resource, subresource = nil, type = nil)
    if resource.ancestors.any?
      resource_links = resource.ancestors.map do |ancestor|
        if type == :store
          link_to ancestor.name, store_category_path(ancestor)
        elsif type == :store_in_location
          link_to ancestor.name, store_category_location_path(subresource, ancestor)
        else
          link_to ancestor.name, ancestor
        end
      end
      resource_links.map { |link| "#{link} > "}.join.html_safe
    end
  end
end
