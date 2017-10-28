module IdeasHelper
  def naughty_filter(string)
    if string.include?("poop")
      return string.gsub("poop", "shit")
    else
      return string
    end
  end
end
