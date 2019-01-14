class TopController < ApplicationController
  def index
  end

  def figure
    @figures = []
    # @figures << Figure.new(name, path, catchcopy, job, birth, death, color, script)
    @figures << Figure.new(
                "鍋島直正", "nabeshima.jpg", "幕末佐賀藩の名君、10代藩主", "佐賀藩主", 1815, 1871, '#F75757',
                "<h1>おれは</h1><b>さまときさまだ</b><br><span style='color: red'>貴様は</span><i>誰だ</i>"
              )
    @figures << Figure.new(
                "大隈重信", "okuma.jpg", "内閣総理大臣を2度務めた", "政治家", 1838, 1922, '#F75757',
                "<h1>さげぽよ〜</h1>"
                )
    @figures << Figure.new(
                "岡田三郎助", "okada.jpg", "明治洋画の開拓者のひとり", "画家", 1869, 1939, '#a7c737',
                "ここにモーダル文章のHTMLをコピペ"
                )
    @figures << Figure.new(
                "伊東玄朴", "ito.jpg", "種痘の普及をしすすめた", "医師", 1801, 1971, '#37a7F7',
                "ここにモーダル文章のHTMLをコピペ"
                )
    @figures << Figure.new(
                "佐野常民", "sano.jpg", "日本赤十字の創始者", "政治家", 1823, 1902, '#F75757',
                "ここにモーダル文章のHTMLをコピペ"
                )
    @figures << Figure.new(
                "草場佩川", "kusaba.jpg", "優れた詩文や書をのこした", "儒学者", 1787, 1867, '#a7c737',
                "ここにモーダル文章のHTMLをコピペ"
                )
  end

  def notes
  end
end
