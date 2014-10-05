# Ruremasearcher
[![Gem Version](https://badge.fury.io/rb/ruremasearcher.svg)](http://badge.fury.io/rb/ruremasearcher) 

CUI上で「るりまサーチ」（ http://docs.ruby-lang.org/ja/search/ ） ができるGemです。

## Installation

Add this line to your application's Gemfile:

    gem 'ruremasearcher'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruremasearcher

## Usage

$ ruremasercher serch 検索したい文字列（複数の場合はクォーテーションで囲ってください）
最大5件まで検索結果が表示されます。

```
$ ruremasearcher search succ
---検索結果：1件目------------------------------
タイトル： IPAddr#succ -> IPAddr
        
        (18107)
分類：インスタンスメソッド
要約：次の IPAddr オブジェクトを返します。
説明：...次の IPAddr オブジェクトを返します。  ipaddr = IPAddr.new('192.168.1.1')  p ipaddr.succ.to_s #=> "192.168.1.2"...
---検索結果：2件目------------------------------
タイトル： Time#succ -> Time
        
        (18107)
分類：インスタンスメソッド
要約：self に 1 秒足した Time オブジェクトを生成して返します。
説明：...成して返します。このメソッドは obsolete です。 self + 1 を代わりに使用してください。  t = Time.now  p t  p t.succ  # => Sun Jul 18 01:41:22 JST 2004       Sun Jul 18 01:41:23 JST 2004...
---検索結果：3件目------------------------------
タイトル： Fixnum#succ -> Fixnum | Bignum
        
        (18101)
分類：インスタンスメソッド
要約：self の次の整数を返します。
説明：self の次の整数を返します。
---検索結果：4件目------------------------------
タイトル： String#succ -> String
        
        (15239)
分類：インスタンスメソッド
要約：self の「次の」文字列を返します。
説明：..."aa".succ        # => "ab"  p "88".succ.succ   # => "90""99" → "100", "AZZ" → "BAA" のような繰り上げも行われます。このとき負符号などは考慮されません。    p "99".succ   # => "100"    p "ZZ".succ   # => "AAA"    p "a9".succ   # => "b0"    p "-9".succ   #...
---検索結果：5件目------------------------------
タイトル： Prime::EratosthenesGenerator#succ -> Integer
        
        (15113)
分類：インスタンスメソッド
要約：次の(疑似)素数を返します。なお、この実装においては疑似素数は真に素数です。
説明：...文字になり、残りは保存されます。    p "1.9.9".succ # => # "2.0.0"逆に self がアルファベットや数字をまったく含まない場合は、単純に文字コードを 1 増やします。    p ".".succ     # => "/"さらに、self が空文字列の場合は "" を...
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/ruremasearcher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
