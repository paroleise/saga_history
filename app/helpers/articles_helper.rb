module ArticlesHelper


  def top_ruler(division)
    case division
    when "jomon" then
      "縄文時代の上"
    when "yayoi" then
      "弥生時代の上"
    when "kofun" then
      "古墳時代の上"
    when "asuka" then
      "飛鳥時代の上"
    when "heian" then
      "平安時代の上"
    when "kamakura" then
      "鎌倉時代の上"
    when "muromachi" then
      "室町時代の上"
    when "azuchi" then
      "安土桃山の上"
    when "edofirst" then
      "江戸前期の上"
    when "edolast" then
      "江戸後期の上"
    when "meiji" then
      "明治時代の上"
    when "taisho" then
      "大正時代の上"
    when "showa" then
      "昭和時代の上"
    when "heisei" then
      "平成時代の上"
    else
      nil
    end
  end

  def bottom_ruler(division)
    case division
    when "jomon" then
      "縄文時代の下"
    when "yayoi" then
      "弥生時代の下"
    when "kofun" then
      "古墳時代の下"
    when "asuka" then
      "飛鳥時代の下"
    when "heian" then
      "平安時代の下"
    when "kamakura" then
      "鎌倉時代の下"
    when "muromachi" then
      "室町時代の下"
    when "azuchi" then
      "安土桃山の下"
    when "edofirst" then
      "江戸前期の下"
    when "edolast" then
      "江戸後期の下"
    when "meiji" then
      "明治時代の下"
    when "taisho" then
      "大正時代の下"
    when "showa" then
      "昭和時代の下"
    when "heisei" then
      "平成時代の下"
    else
      nil
    end
  end


end
