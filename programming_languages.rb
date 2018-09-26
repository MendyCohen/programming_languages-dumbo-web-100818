def reformat_languages(languages)
  new_hash = {}
  languages.collect do |language_hash, inside_language_hash|
    inside_language_hash.collect do |language, inside_language|
      if !new_hash[language]
        new_hash[language] = inside_language
        new_hash[language].merge!({style: [language_hash]})
      else 
        new_hash[language][:style] << language_hash
      end
    end
  end
  new_hash
end
