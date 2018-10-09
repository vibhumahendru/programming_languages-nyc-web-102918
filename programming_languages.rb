languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  style_type = [:oo, :functional]

  languages.each do |style, style_block|
    style_block.each do |language_name, type|
      
      new_hash[language_name] = type
    end
  end
  new_hash.each do |languageName, value|
    if languageName == :ruby ||:python ||:java
      new_hash[languageName] = value.merge(:style => [:oo])
    else 
      new_hash[languageName] = value.merge(:style => [:functional])
    end
  end
end
    
  new_hash
end

reformat_languages(languages)










