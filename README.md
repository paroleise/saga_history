# README  
    
## Articleモデルの中身
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
"regionCoordinateX" → 地域別表示の際のX座標
"regionCoordinateY" → 地域別表示の際のY座標 
  
## ログイン  
/login  
→```.env```で設定したパスワードを入力  
    
## 画像ファイルを入れる場所  
- public > img の中にいれる  
```html.erb```での呼び出しは　``` <%= image_tag("/img/gazou.jpg", class: "hoge") %> ``` と入力する  

## Figureインスタンスの作成  
app/controllers/top_controller.rbのfigureアクションで既存コードをコピペしてfigure[]に格納  
モーダル用のHTMLコードは"", ''のエスケープに注意すること  

##記事の画像アップロード
Wysiwyg内では画像ファイルを上げずに、HTML編集で```<img src="/img/article/hogehoge.jpg">```を追加する。

