# *-adhearson-*-
# creator:	'michel@jkl5group.com' => 'Tue Jul 13 13:56:35 EDT 2010'
# last_mod:	'michel@jkl5group.com' => 'Wed Jul 14 12:06:48 EDT 2010'
# ----------------------------------------- 
# See http://docs.adhearsion.com for more information on how to write components or
# look at the examples in newly-created projects.

methods_for :global do
# --- 
	def dial_by_name(options={})
		company_directory(options)
	end #dial_by_name()

# --- 
	def company_directory(options={})
	voice_mail_context, dial_context = options.values_at :voice_mail_context, :dial_context
	
	extension = options.has_key?(:extension) ? options[:extension] : true
	first_name = options.has_key?(:first_name) ? options[:first_name] : true
	both_names = options.has_key?(:both_names) ? options[:both_names] : true
	
	voice_mail_context = if voice_mail_context
		if voice_mail_context.to_s =~ /^[\w_]+$/
			"#{voice_mail_context}"
		else
			raise ArgumentError, "voice mail context must be alphanumerical/underscore characters only!"
		end
	elsif voice_mail_context == ''
		raise "voice mail context name cannot be an empty String!"
	else
		nil
	end
	
	if dial_context.blank?
		dial_context = voice_mail_context
	end #dial_context.blank?
	
	real_options = ""
	real_options << "e" if extension
	real_options << "f" if first_name
	real_options << "b" if both_names
	
	execute 'Directory', voice_mail_context, dial_context, real_options
	end

end #methods_for :global 

# --- --- EOF --- ---
 
