require "pry"
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
  languages.each do |style, language_with_details|
    language_with_details.each do |language_name, type|
      new_hash[language_name] = type
    end
  end
  new_hash.each do |languageName, language_detail_hash|
  if languageName == :python || languageName == :ruby || languageName== :java
      new_hash[languageName].store(:style, [:oo])
    elsif languageName == :scala || languageName == :erlang || languageName == :clojure
      new_hash[languageName].store(:style, [:functional])
    else new_hash[languageName].store(:style, [:oo, :functional])
    end
 end
  new_hash
end










