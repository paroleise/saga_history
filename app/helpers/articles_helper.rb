module ArticlesHelper


  def top_ruler(division)
    case division
    when "jomon" then
      "石器時代"
    when "yayoi" then
      "前4世紀"
    when "kofun" then
      "前3世紀中頃"
    when "asuka" then
      "592年"
    when "heian" then
      "794年"
    when "kamakura" then
      "1133年"
    when "muromachi" then
      "1336年"
    when "azuchi" then
      "1573年"
    when "edofirst" then
      "1603年"
    when "edolast" then
      "1729年"
    when "meiji" then
      "1868年"
    when "taisho" then
      "1912年"
    when "showa" then
      "1926年"
    when "heisei" then
      "1989年"
    else
      nil
    end
  end

  def  bottom_ruler(division)
    case division
    when "jomon" then
      "前4世紀"
    when "yayoi" then
      "後3世紀中頃"
    when "kofun" then
      "592年"
    when "asuka" then
      "794年"
    when "heian" then
      "1185年"
    when "kamakura" then
      "1336年"
    when "muromachi" then
      "1573年"
    when "azuchi" then
      "1603年"
    when "edofirst" then
      "1729年"
    when "edolast" then
      "1868年"
    when "meiji" then
      "1912年"
    when "taisho" then
      "1926年"
    when "showa" then
      "1989年"
    when "heisei" then
      "2019年"
    else
      nil
    end
  end


end
