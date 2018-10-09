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
  languages.each do |style, style_block|
    style_block.each do |language_name, type|
      new_hash[language_name] = type
    end
  end
  new_hash.each do |languageName, language_detail_hash|
    if languageName == :python || :ruby || :java
      language_detail_hash.store(:style, [:oo])
    end
  end
  new_hash[:javascript] = {
    :type => "interpreted",
    :style => [:oo, :functional]
  }
    new_hash[:erlang]= {
    :type => "compiled",
    :style => [:functional]
  }
  new_hash[:scala]= {
    :type => "compiled",
    :style => [:functional]
  }
  new_hash[:clojure]= {
    :type => "compiled",
    :style => [:functional]
  }
  new_hash
end

reformat_languages(languages)










