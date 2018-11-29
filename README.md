# README

# pullしたらやること
- bundle exec rails db:migrate → マイグレーションファイルのコンパイルを実行する
- ブランチを切る(切ろう)

# スタイルを整える
- app > views > articles で html
- app > views > layouts > application.html.erb headerなどの共通部分のレイアウト
- app > assets > stylesheetでCSS

# Articleモデルの中身
"title"  
"content"  
"created_at"  
"updated_at"  
"region" → 地域  
"category" → カテゴリ
"division" → 時代区分
"year" → 年号  
"hidden" →非表示にするなら Boolean型  
"coordinateX" → ドットのX座標(左から) int型  
"coordinateY" → ドットのY座標(上から)int型  


# ログインするには
urlに /login を打つ
→.envで設定したパスワードを入力

# 画像ファイルを入れる場所
- public > img の中にいれる
html.erbでの呼び出しは　``` <%= image_tag("/img/gazou.jpg", class: "hoge") %> ``` と入力する
