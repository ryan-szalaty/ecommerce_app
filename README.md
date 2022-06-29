# README

# Why e-commerce?

Challenging website features are important to develop when improving your skills as a developer, and an e-commerce website seemed like an appropriate challenge. As I had never done something this complex on my own before, I decided to take three weeks to develop one. 

現在のレベルと比べて高いレベルの機能のあるウエブサイトを作るの方がいいと思っていました。それの承知の上で、　e-commerceのウエブサイトにし、決めた時から三週間このウエブサイトを作っていきました。

# Challenges when making the project:

Using Rails to build a complex app was a challenge. Rails's convention over configuration style was counterintuitive coming from a JavaScript background. In addition, making good use of Rails's rollback system was quite challenging as well.

初めてレールスというフレームワークでアプリを作るのは大変でした。構成変更ではなくて、レールスの仕組みにしっかり従ってそのまま行くのも、JavaScriptの学歴の私にとって分かりにくくかったです。それにも、レールスのデータベースの仕組みも学びにくくかったです。

# Current issues:

Unfortunately, late into development, I discovered a bug where an item could not be added to the shopoing cart if another user had already done so. I will come back to this in the future.

あいにくですが、ディベロップメントの最後のステージに至った時に新しい問題を発見しました。その問題は、もしとあるユーザーが商品の一つをカートに入れ、そして他のユーザーが同じ商品を入れてみたら、重複IDの原因で許されなかったということです。数ヶ月後確認する予定です。

# What I learned from this project:

Thinking about data structure beforehand and using Rails's database rollback system were some of the first things I learned. Next, using Rails's credentials file to store sensitive information and using some extra gems to perform necessary operations (e.g. HTTP Party) was good to learn. Finally, I learned that Rails has a strict data-tracking system that does not allow duplicate IDs, which caused some headaches during development.

データの構造とかロールバックなどのレールスの機能は最初に学んだことのいくつかです。そして、credentials.rbと言うファイルで秘密な情報を隠し、とあるジェムで必要な業務を動かさせるのも学んでよかったです。最後には、ディベロップメント中に迷惑をかけたのは、重複IDを許さない厳しいシステムであるのが学んでよかったと思います。

# What I would do differently next time:

Node.js with Express would be better for something like an e-commerce website because of scalability issues. I would also implement payment with Stripe.

e-commerceというウエブサイトの種類と考えると、機能に会うNode.jsとExpressの方が実現的だっと思います。そして、Stripeという納入システムを実現します。

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
