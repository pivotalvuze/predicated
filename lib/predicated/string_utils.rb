module Predicated
  module StringUtils
    
    #Ripped from activesupport.  
    #If I start using a bunch of code from that project I'll create a dependency.
    #I hope this is not bad form.
    def self.underscore(camel_cased_word)
      camel_cased_word.to_s.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr("-", "_").
        downcase
     end
  end
end