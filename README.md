# アプリケーション名
OHANA<br><br>

# アプリケーション概要
連絡ノートをWEB化にする事で、場所を選ばずタイムリーに確認が可能になる。<br><br>

# URL
https://ohana.onrender.com
<br><br>

# テスト用アカウント
・BASIC認証ID　：admin<br>
・BASIC認証パスワード　：2222<br><br>
・管理者(施設)ID　：admin@adomin.ne.jp<br>
・管理用(施設)パスワード　：a123456<br><br>
・利用者①ID　：hoge1@hoge.ne.jp<br>
・利用者①パスワード　：a11111<br><br>
・利用者②ID　：hoge2@hoge.ne.jp<br>
・利用者②パスワード　：a22222<br><br><br>


# 利用方法
## 共通
 1.トップページのヘッダーからユーザー新規登録、または登録者はログインを行う。<br>

## ノート記入（管理者）
 1.ヘッダーのノート記入ボタンから、登録されている利用者を選択肢し、各項目を入力し投稿する。<br>
 2.必要に応じて修正、削除が可能。<br>
 3.管理者のみ閲覧可能な"管理者専用ページ"にて過去の投稿記録の閲覧が可能。<br><br>

## ノート記入（利用者）
 1.トップページから見たい日記をクリックして詳細ページを確認する。<br>
 2.詳細ページから、必要に応じてコメントをする。<br>
 3.ヘッダーのマイページをクリックすると、登録情報や過去の日記のデータ・バイタルのグラフが確認できる。<br><br><br>

# アプリケーションを作成した背景
祖母が実際に通っているデイサービスの連絡のやり取りが手書きノートでのやり取りとなっており、<br>
ノートを持っている人にしか内容の確認をすることができないという課題があった。<br>
これを、WEB化にすることで場所に制限されることなく情報を確認できると共に<br>
情報の交換・更新や変更も迅速かつ容易に行うことができる為、常に最新の情報を提供することが可能となる。<br>
また介護職員の負担軽減のため、データ化による管理の簡素化を図り、<br>
社会問題の解消にも繋がると考え、アプリケーションの開発を行った。<br><br>


【実際のノート】<br>
[![Image from Gyazo](https://i.gyazo.com/fea5796363763d022fc6a9f0ed463510.png)](https://gyazo.com/fea5796363763d022fc6a9f0ed463510)
<br><br>

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1LK6EnxoT9Uc2E2CJqne7I97EMEXPa6ubh33S41YWtrk/edit?usp=sharing
<br><br><br>
# 実装した機能についての画像やGIFおよびその説明
・未ログインの場合はサンプルの表示のみ<br>
[![Image from Gyazo](https://i.gyazo.com/de48df95160bc70d03fdd11726eed91e.png)](https://gyazo.com/de48df95160bc70d03fdd11726eed91e)
<br><br>

・管理者ページ<br>
ヘッダーには、管理者のみノート記入、管理者専用表示がされる。<br>
[![Image from Gyazo](https://i.gyazo.com/cd60b008c119999ef003b19490066a64.png)](https://gyazo.com/cd60b008c119999ef003b19490066a64)
<br><br>

・ノート記入ページ<br>
登録された利用者情報を選択し、必要事項を入力して投稿する。<br>
[![Image from Gyazo](https://i.gyazo.com/b4ddc4e883c1b5f5d5d7dcfadaef6a8a.gif)](https://gyazo.com/b4ddc4e883c1b5f5d5d7dcfadaef6a8a)
<br><br>

・ノートの表示<br>
最新の日付のノートがトップページのトップへ、以降のノートはしたの過去一覧へ表示される。<br>
管理者は全てのノートが表示され、利用者側は自身の投稿されたノートが表示される。<br>
[![Image from Gyazo](https://i.gyazo.com/e4ab57c9521602571eaa959ca4ddad60.gif)](https://gyazo.com/e4ab57c9521602571eaa959ca4ddad60)
<br><br>

・利用者(家族)側は自身の情報の閲覧と詳細ページからコメントが可能。<br>
[![Image from Gyazo](https://i.gyazo.com/f885445bd736143c4d1cd3c366d3039f.gif)](https://gyazo.com/f885445bd736143c4d1cd3c366d3039f)
<br><br>

・利用者(家族)側はマイページをクリックすると、登録情報、バイタルのグラフ、ノート一覧が可能。<br>
[![Image from Gyazo](https://i.gyazo.com/88c4581584ab021eb1af19e9564c33f1.png)](https://gyazo.com/88c4581584ab021eb1af19e9564c33f1)
<br><br>

<br><br>
# 実装予定の機能
・アカウント情報の編集機能<br>
・管理者専用 利用者データ一覧<br>
・検索機能<br>
・コメント機能の非同期処理<br>
・通知機能<br><br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/e71f87269ce9f75ea0fef4a6a7106e20.png)](https://gyazo.com/e71f87269ce9f75ea0fef4a6a7106e20)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/89af4147f3bffba6ada1b48bc659e37f.png)](https://gyazo.com/89af4147f3bffba6ada1b48bc659e37f)
# 開発環境
・フロントエンド<br>
・バックエンド<br>
・インフラ<br><br>
<table>
  <thead>
    <tr>
      <th>カテゴリー</th> <th>ソフトウェア名</th>
    </tr>
  </thead>
  <tr>
    <td> 言語 </td> <td>Ruby</td>
  </tr>
  <tr>
    <td> データベース </td> <td>MySQL</td>
  </tr>
</table><br><br>


# 工夫したポイント
・複雑なシステムにしてしまうと、使用者がその使い方に苦労したり、使用することに抵抗を感じることがある為、<br>
できるだけシンプルにし、使用者が負担を感じない仕様を意識して制作を行った。<br>
・ログイン情報によりヘッダー表示内容を分けた<br>
・紙の連絡帳ではできなかった画像投稿機能を付ける事で、普段の利用者の過ごし方が確認できる様にした。<br>
・蓄積されたデータを利用して、バイタル情報をグラフ化し、日々の変化を視覚的に確認できるようにした。<br><br>