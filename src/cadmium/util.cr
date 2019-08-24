require "./util/*"

module Cadmium::Util
  def remove_diacritics(str : String)
    DIACRITICS.each do |rule|
      str = str.gsub(rule[:letters], rule[:base])
    end
    str
  end
end
