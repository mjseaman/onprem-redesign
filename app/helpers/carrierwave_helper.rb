module CarrierwaveHelper
	def reprocess_slides
		Slide.all.each do |slide| 
		  begin
		    # slide.process_your_uploader_upload = true # only if you use carrierwave_backgrounder
		    ap slide
		    slide.image.cache_stored_file! 
		    slide.image.retrieve_from_cache!(slide.image.cache_name) 
		    slide.image.recreate_versions! 
		    slide.save! 
		  rescue => e
		    puts  "ERROR: #{model}: #{slide.id} -> #{e.to_s}"
		  end
		end
	end
end