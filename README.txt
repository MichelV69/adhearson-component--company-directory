 
 adhearson component:  implements Asterisk dialplan method "directory"
 
 creator:	'michel@jkl5group.com' => 'Tue Jul 13 13:56:35 EDT 2010'
 last_mod:	'michel@jkl5group.com' => 'Wed Jul 14 12:06:48 EDT 2010'

 Useage:  dial_by_name( {:voice_mail_context => 'context_from_voicemail.conf',
					:dial_context => 'context_from_extensions.conf',
					:extension => true,
					:first_name => false,
					:both_names => false} )

		  OR
		  
		  company_directory( {:voice_mail_context => 'context_from_voicemail.conf',
					:dial_context => 'context_from_extensions.conf',
					:extension => true,
					:first_name => false,
					:both_names => false} )					

	:voice_mail_context is any valid voice mail context found within 
		voicemail.conf or users.conf.  Required option.
	:dial_context is any valid dial plan context found within 
		extensions.conf or users.conf.  Optional;  if left blank, defaults
		to the value of :voice_mail_context.
	:extension can be either TRUE or FALSE.  Default is FALSE.  If set
		TRUE, in addition to the name, the system also reads the extension 
		number to the caller before presenting dialing options.
	:first_name can be either TRUE or FALSE.  Default is FALSE.  If set
		TRUE,it allows the caller to search on the first name of a user 
		in the directory instead of searching on the last name.
	:both_names can be either TRUE or FALSE.  Default is FALSE.  If set
		TRUE,it allows the caller to search on either the first name or 
		last name of a user in the directory instead of searching on 
		only the last name.

	The "name" field of the voice mail record from either voicemail.conf 
		or user.conf is searched for matches from caller keypad inputs.
		Only the first three letters of either the last name or first name 
		(based on options) are matched.

 Misc:  
	(1) See http://www.voip-info.org/wiki/view/Asterisk+cmd+Directory for 
 more information on the Asterisk "Directory" Dial Plan command.
 
	(2) See http://docs.adhearsion.com for more information on how to 
 write components or look at the examples in newly-created projects.

	(3) Any questions or problems?  Contact the author at the above email,
 or via the Adhearsion IRC channel (irc.freenode.net #adhearsion)
 