require "./util/*"

module Cadmium::Util
  def remove_diacritics(str : String)
    DIACRITICS.each do |rule|
      str = str.gsub(rule[:letters], rule[:base])
    end
    str
  end

  macro method_generator(hash)
    {% for name, mod in hash %}
      # Convenience method for accessing `{{ mod }}`
      def self.{{ name.id }}
        {{ mod }}
      end
    {% end %}
  end
end
