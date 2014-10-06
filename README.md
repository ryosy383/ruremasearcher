# RuremaSearcher
![Gem Version](https://badge.fury.io/rb/ruremasearcher.svg) ![build](https://travis-ci.org/ryosy383/ruremasearcher.svg?branch=master) 
[![Coverage Status](https://img.shields.io/coveralls/ryosy383/ruremasearcher.svg)](https://coveralls.io/r/ryosy383/ruremasearcher?branch=master) 
[![Code Climate](https://codeclimate.com/github/ryosy383/ruremasearcher/badges/gpa.svg)](https://codeclimate.com/github/ryosy383/ruremasearcher)  

CUIコマンドライン上で「るりまサーチ」（ http://docs.ruby-lang.org/ja/search/ ） で検索を行うことができるGemです。

## Installation

Add this line to your application's Gemfile:

    gem 'ruremasearcher'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruremasearcher

## Usage

$ ruremasercher search <検索したい文字列>  
(検索文字列が複数の場合はクォーテーションで囲ってください）  
最大5件まで検索結果が表示されます。  
例:  
$ ruremasercher search 'each with'

```
$ ruremasearcher search "each with"
---検索結果：1件目------------------------------
タイトル： Matrix#each(which = :all) -> Enumerator
分類：インスタンスメソッド
要約：行列の各要素を引数としてブロックを呼び出します。
説明：...Enumerator を返します。  Matrix[ [1,2], [3,4] ].each { |e| puts e }  # => prints the numbers 1 to 4  Matrix[ [1,2], [3,4] ].each(:strict_lower).to_a # => [3]@param which どの要素に対してブロックを呼び出すのかを Symbol で指定します@see Matrix#each_with_index...
---検索結果：2件目------------------------------
タイトル： Matrix#each(which = :all) {|e| ... } -> self
分類：インスタンスメソッド
要約：行列の各要素を引数としてブロックを呼び出します。
説明：...Enumerator を返します。  Matrix[ [1,2], [3,4] ].each { |e| puts e }  # => prints the numbers 1 to 4  Matrix[ [1,2], [3,4] ].each(:strict_lower).to_a # => [3]@param which どの要素に対してブロックを呼び出すのかを Symbol で指定します@see Matrix#each_with_index...
---検索結果：3件目------------------------------
タイトル： REXML::Element#each_element_with_attribute(key, value = nil, max = 0, name = nil) {|element| ... } -> ()
分類：インスタンスメソッド
要約：特定の属性を持つすべての子要素を引数としてブロックを呼び出します。
説明：...t.each_element_with_attribute('id'){|e| p e }  # >> <b id='1'/>  # >> <c id='2'/>  # >> <d id='1'/>  doc.root.each_element_with_attribute('id', '1'){|e| p e }  # >> <b id='1'/>  # >> <d id='1'/>  doc.root.each_element_with_attribute('id', '1', 1){|e| p e }  # >> <b id='1'/>  doc.root.each_e...                          ...lement_with_attribute('id', '1', 0, 'd'){|e| p e }  # >> <d id='1'/>...
---検索結果：4件目------------------------------
タイトル： REXML::Element#each_element_with_text(text = nil, max = 0, name = nil) {|element| ... } -> ()
分類：インスタンスメソッド
要約：テキストを子ノードとして持つすべての子要素を引数としてブロックを呼び出します。
説明：...a>'  doc.root.each_element_with_text {|e|p e}  # >> <b> ... </>  # >> <c> ... </>  # >> <d> ... </>  doc.root.each_element_with_text('b'){|e|p e}  # >> <b> ... </>  # >> <c> ... </>  doc.root.each_element_with_text('b', 1){|e|p e}  # >> <b> ... </>  doc.root.each_element_with_text(nil, 0,...
---検索結果：5件目------------------------------
タイトル： Matrix#each_with_index(which = :all) -> Enumerator
分類：インスタンスメソッド
要約：行列の各要素をその位置とともに引数としてブロックを呼び出します。
説明：...る要素の範囲を指定することができます。Matrix#each と同じなのでそちらを参照してください。ブロックを省略した場合、 Enumerator を返します。  Matrix[ [1,2], [3,4] ].each_with_index do |e, row, col|    puts "#{e} at #{row}, #{col}"  end    #...                          ...=> 1 at 0, 0    # => 2 at 0, 1    # => 3 at 1, 0    # => 4 at 1, 1@param which どの要素に対してブロックを呼び出すのかを Symbol で指定します@see Matrix#each...
```
## Release Notes
  
v0.0.7 説明のバグを修正しました。  
v0.0.6 Gemに依存関係を加えました。  
v0.0.5 出力形式の変更をしました。  
v0.0.1 初回リリース 

## Contributing

1. Fork it ( http://github.com/<my-github-username>/ruremasearcher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
