module ApplicationHelper

	# Returns the full title of the page
	def full_title(page_title)
		base_title = "Yada App"
		if page_title.empty?
			base_title
		else
			"#{base_title} - #{page_title}"
		end
	end
end
