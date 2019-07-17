# encoding: utf-8

# Класс Хэштэг.
class Hashtag
  def self.find_hashtag(string)
    # Регулярное выражение.
    template = /#[[:word:]-]+/

    string.scan(template)
  end
end
