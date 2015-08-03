require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |paradigm, all_languages|
  	all_languages.each do |language_name, attribute|
  		# binding.pry
	  	if new_hash[language_name] != nil
	  		new_hash[language_name][:style] << paradigm
	  	else
	  		new_hash[language_name] = { type: attribute[:type], style: [paradigm]}
  		end
  	end
  end
  new_hash
end