class TopController < ApplicationController
  def index
  end

  def figure
    @figures = []
    # @figures << Figure.new(name, path, catchcopy, job, birth, death, color, script)
    @figures << Figure.new(
                "鍋島直正", "nabeshima.jpg", "幕末佐賀藩の名君、10代藩主", "佐賀藩主", 1815, 1871, '#d43a52',
                "<p>工事中</p>"
              )
    @figures << Figure.new(
                "大隈重信", "okuma.jpg", "内閣総理大臣を2度務めた", "政治家", 1838, 1922, '#d43a52',
                "<p>工事中</p>"
                )
    @figures << Figure.new(
                "岡田三郎助", "okada.jpg", "明治洋画の開拓者のひとり", "画家", 1869, 1939, '#c6d443',
                "<p>工事中</p>"
                )
    @figures << Figure.new(
                "伊東玄朴", "ito.jpg", "種痘の普及をしすすめた", "医師", 1801, 1971, '#429ade',
                "<p>伊東玄朴は、種痘の普及に大きな貢献を果たした佐賀出身の蘭学医です。</p><br><br><br><h1>医者への道とシーボルトとの出会い</h1><br><p>神崎郡神埼市仁比山で玄朴（幼名：勘造）が生まれたのは、黒船来航の53年前となる1800年のことでした。玄朴は早くも医者を目指し16歳から漢方医のもとで学んだ後、23歳で佐賀城下へ医学の修行に向かいます。</p><br><p>その後、玄朴は蘭学の才能を見抜かれて長崎の名医のもとに赴き、蘭学の勉強に明け暮れます。<br>1823年にはシーボルトが日本での博物学の調査のために長崎に来航。そこでシーボルトが開講した講義に玄朴は出席し蘭学を深め、シーボルト門下生となるのです。</p><br><p>その後玄朴は、シーボルトに付いて江戸へ向かいます。シーボルト事件※1を生き延び、そのまま江戸で開業した玄朴はこのとき29歳でした。自らを顧みず医者として治療にあたる玄朴の評判は、江戸でも高まっていきます。</p><br><br><br><h1>「佐賀藩医」としての活躍</h1><br><p>一方佐賀藩では、1830年に鍋島直正が藩主となり、藩政の改革を進め始めました。人材登用をすすめる佐賀藩に、玄朴は32歳で藩医として取り立てられます。</p><br><p>しかし拠点としては玄朴は江戸に住み続け、34歳で「象先堂」という塾を開きました。江戸に出て10年足らずで多くの人脈、実力、大きな塾を経営するようなマネジメント力を身につけた玄朴の活躍は刮目ものです。</p><br><br><br><h1>玄朴と天然痘</h1><br><p>玄朴の大きな業績の一つに、天然痘※2の予防策としての牛痘種法（種痘）に貢献したことがあります。</p><br><p>イギリスのジェンナーが発明した「牛痘種法」は、端的にいうと牛がかかる牛痘の膿やカサブタの一部を人に注射して抗体をつくるといったもので、当時まだまだ日本では普及していない方法でした。玄朴はその方法を学び日本でも実施しようとしましたが、牛痘の入手が困難であったため人痘（人の天然痘の膿やカサブタを用いる。牛痘と比べ確実性や安全性に欠ける）を用いるに留まりました。そのため、藩主鍋島直正に牛痘の入手と活用を進言しました。</p><br><p>佐賀藩ではその後、進言通りに1849年に直正と藩医・楢林宗健の尽力によって藩内での牛痘種法を成功させ、日本での牛痘種法の普及に大きな貢献を果たしています。</p><br><br><br><h1>「お玉ケ池種痘所」の設置</h1><br><p>その成功を受けて、玄朴のもとにもようやく種痘の苗が届けられ、江戸での接種が始まります。他の医師の協力も受け、江戸では合計で数万人への実施が実現したといわれています。</p><br><p>しかし玄朴らが目指していたのはより広い普及、誰しもが受けられるような官営規模での予防接種です。1858年、江戸にいる蘭方医の多くを集め、基金を集めて「お玉ケ池種痘所」を開設しました。その種痘所は医師たちの尽力により官営となり、その後の種痘の普及に大きな効果をあげました。</p><br><p>なおお玉ケ池種痘所はその後蘭学教育機関としての側面を伸ばし、現在の東京大学医学部の前身となっています。</p><br><br><br><h1>蘭方医の頂点とその後</h1><br><p>1861年から西洋医学所の取締役を務め、同年には医師の身分では最高位の法印（将軍の御匙＝侍医長に与えられる僧位）を与えられて名実ともに蘭方医の頂点に立ちました。しかし1863年、異なる流派の蘭方医・松本良順によって失脚を余儀なくされ、罷免となったのち1867年に引退に至りました。</p><br><p>老後は自宅で近辺の住民等の診療を行い、悠々自適の生活を過ごしていたようです。その後1871年、伊東玄朴は72歳にてこの世を去りました。</p><br><br><br><h1>玄朴の人となり</h1><br><p>玄朴は現実主義で利益を重視する人物であったといわれています。しかし義理堅い側面もあり、理屈の通らない処へはお金を出さない合理的な思考の持ち主でもありました。学問の力で農民から将軍家の奥付医師まで駆け上がり、当時の価値観の中で蘭方医学を幕府に認めさせて公的なものとした、その実力は医師としても経済人としても確かなものであったと思われます。<br>伊東玄朴は確かに、日本の近代医学の発展に貢献した開拓者の一人でありました。</p><br><br><br><br><p>※シーボルト事件…シーボルトがオランダに帰国する際、伊能忠敬の測量図を持ち出そうとして咎められた事件。当時日本地図は国外への持ち出しが禁じられており、この事件で十数名の役人や門人が処刑されました。玄朴は地図の入った包みをシーボルトに渡した張本人でしたが、中身を知らなかったとして処罰を免れました。</p><br><p>※天然痘…天然痘ウイルスを病原体とする感染症。全身に膿のあるできものを生じさせ、これらが内蔵などにも及んで20〜50%の割合で死に至ります。感染力は非常に高く、ヨーロッパや中国などでも幾度も流行しています。日本でも古来よりその流行に苦しんでいましたが、種痘の普及によって1980年には天然痘は根絶したとされています。</p>"
                )
    @figures << Figure.new(
                "佐野常民", "sano.jpg", "日本赤十字の創始者", "政治家", 1823, 1902, '#d43a52',
                "<p>工事中</p>"
                )
    @figures << Figure.new(
                "草場佩川", "kusaba.jpg", "優れた詩文や書をのこした", "儒学者", 1787, 1867, '#c6d443',
                "<p>工事中</p>"
                )

  end

  def notes
  end
end
