# coding: utf-8

require 'ruremasearcher/version'
require 'auto_redirector'
require 'html_parser'
require 'spec_helper'

describe Ruremasearcher do
  it 'should have a version number' do
    expect(Ruremasearcher::VERSION).to eq('0.0.5')
  end
end

describe AutoRedirector do
  it 'valid redirect url' do
    agent = 'Linux Firefox'
    words = 'each map'
    url = 'http://rurema.clear-code.com/'
    ar = AutoRedirector.new(agent)
    ar.get(url)
    search_result = ar.search(words)
    expect(search_result.uri.to_s).to eq('http://rurema.clear-code.com/query:each/query:map/')
  end
end

describe HtmlParser do
  it 'valid html parse' do
    html = <<-EOS
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<div class="result">
  <h2>検索結果</h2>
  <div class="leading-link-box">
    <h3 class="leading-link-title">
      先頭5件
    </h3>
    <ol class="leading-links">
    <li><a href="#entry-0">String<wbr />#<wbr />split(sep = <wbr />$<wbr />;<wbr />,<wbr /> limit = 0) -&gt; [String] | [[String]]</a></li>
    <li><a href="#entry-1">Pathname<wbr />#<wbr />split -&gt; Array</a></li>
    <li><a href="#entry-2">BigDecimal<wbr />#<wbr />split -&gt; [Integer<wbr />,<wbr /> String<wbr />,<wbr /> Integer<wbr />,<wbr /> Integer]</a></li>
    <li><a href="#entry-3">Shell<wbr />#<wbr />split(pathname) -&gt; [String]</a></li>
    <li><a href="#entry-4">Shell<wbr />::<wbr />CommandProcessor<wbr />#<wbr />split(pathname) -&gt; [String]</a></li>
    </ol>
  </div>


  <dl class="entries">
    <dt class="entry-name" id="entry-0">
      <h3>
        <span class="signature">
          String<wbr />#<wbr />split(sep = <wbr />$<wbr />;<wbr />,<wbr /> limit = 0) -&gt; [String] | [[String]]
        </span>
        <span class="score">(18222)</span>
      </h3>
    </dt>
    <dd>
      <ul class="entry-links">
        <li class="entry-version">
          <a href="http://docs.ruby-lang.org/ja/1.8.7/method/String/i/split.html">1.8.7</a>
        </li>
        <li class="entry-version">
          <a href="http://docs.ruby-lang.org/ja/1.9.3/method/String/i/split.html">1.9.3</a>
        </li>
        <li class="entry-version">
          <a href="http://docs.ruby-lang.org/ja/2.0.0/method/String/i/split.html">2.0.0</a>
        </li>
        <li class="entry-version">
          <a href="http://docs.ruby-lang.org/ja/2.1.0/method/String/i/split.html">2.1.0</a>
        </li>
      </ul>
      <ul class="entry-metadata">
        <li class="entry-type">
          <span class="entry-instance-method">
            インスタンスメソッド
          </span>
        </li>
      </ul>
      <div class="entry-summary">
        <p>
第 1 引数 sep で指定されたセパレータによって文字列を limit 個まで分割し、
結果を文字列の配列で返します。</p>
      </div>
      <div class="entry-document">
        <div class="entry-snippets">
          <div class="snippet"><span class="separator">...</span>p &quot;   a \t  b \n  c&quot;.<span class="keyword">split</span>(/\s+/) # =&gt; [&quot;&quot;, &quot;a&quot;, &quot;b&quot;, &quot;c&quot;]<br /><br />    p &quot;   a \t  b \n  c&quot;.<span class="keyword">split</span>(nil)   # =&gt; [&quot;a&quot;, &quot;b&quot;, &quot;c&quot;]<br />    p &quot;   a \t  b \n  c&quot;.<span class="keyword">split</span>(' ')   # =&gt; [&quot;a&quot;, &quot;b&quot;, &quot;c&quot;]   #<span class="keyword"> split</span>(nil) と同じ<br />    p &quot;   a \t  b \n  c&quot;.<span class="keyword">split</span>        # =&gt; [&quot;a&quot;, &quot;b&quot;, &quot;c&quot;]   #<span class="keyword"> split</span>(nil) と同じ<br /><br />    #<span class="separator">...</span></div>
        </div>
        <div class="entry-snippets">
          <div class="snippet"><span class="separator">...</span>p '1-10,20'.<span class="keyword">split</span>(/([-,])/)   # =&gt; [&quot;1&quot;, &quot;-&quot;, &quot;10&quot;, &quot;,&quot;, &quot;20&quot;]<br /><br />    # 正規表現が空文字列にマッチする場合は 1 文字に分割<br />    p 'hi there'.<span class="keyword">split</span>(/\s*/).join(':')  # =&gt; &quot;h:i:t:h:e:r:e&quot;<br /><br />    # 文字列全体を 1 文字ずつに分割する例<br />    p 'hi there'.<span class="keyword">split</span>(//).join(':'<span class="separator">...</span></div>
        </div>
        <div class="entry-snippets">
          <div class="snippet"><span class="separator">...</span>'.<span class="keyword">split</span>(//).join(':')       # =&gt; &quot;文:字:列&quot;<br /><br />    # limit == 0 だと制限なく分割、配列末尾の空文字列は取り除かれる<br />    p &quot;a,b,c,,,&quot;.<span class="keyword">split</span>(/,/, 0)   # =&gt; [&quot;a&quot;, &quot;b&quot;, &quot;c&quot;]<br /><br />    # limit 省略時は 0 と同じ (最もよく使われるパターン)<br />    p &quot;a,b,c,,,&quot;.<span class="keyword">split</span>(/,/)<span class="separator">...</span></div>
        </div>
        <div class="entry-snippets">
          <div class="snippet"><span class="separator">...</span>p &quot;a,b,c,,,&quot;.<span class="keyword">split</span>(/,/, 0)   # =&gt; [&quot;a&quot;, &quot;b&quot;, &quot;c&quot;]<br /><br />    # limit 省略時は 0 と同じ (最もよく使われるパターン)<br />    p &quot;a,b,c,,,&quot;.<span class="keyword">split</span>(/,/)      # =&gt; [&quot;a&quot;, &quot;b&quot;, &quot;c&quot;]<br /><br />    # 正の limit 使用例<br />    p &quot;a,b,c,d,e&quot;.<span class="keyword">split</span>(/,/, 1)  # =&gt; [&quot;a,b,c,d,e&quot;]<br />    p &quot;a,b,c,d,e&quot;.<span class="keyword">split</span>(/,/, 2)  # =<span class="separator">...</span></div>
        </div>
      </div>
      <ul class="entry-related-entries">
        <li class="entry-related-entry-class">
          <a href="./class:String/">String</a>
        </li>
        <li class="entry-related-entry-query">
          <a href="/ja/search/type:instance-method/query:String%23partition/">String#partition</a>
        </li>
        <li class="entry-related-entry-query">
          <a href="/ja/search/type:instance-method/query:String%23rpartition/">String#rpartition</a>
        </li>
      </ul>
    </dd>
    <dt class="entry-name" id="entry-1">
      <h3>
        <span class="signature">
          Pathname<wbr />#<wbr />split -&gt; Array
        </span>
        <span class="score">(18124)</span>
      </h3>
    </dt>
  </dl>
</body>
</html>
EOS
    hp = HtmlParser.new(html)
    hp.parse
    expect(hp.titles[0]).to eq("String#split(sep = $;, limit = 0) -> [String] | [[String]]")
    expect(hp.metadata[0]).to eq('インスタンスメソッド')
    expect(hp.summaries[0]).to eq("第 1 引数 sep で指定されたセパレータによって文字列を limit 個まで分割し、結果を文字列の配列で返します。")
    expect(hp.descriptions[0]).to eq("...p \"   a \t  b   c\".split(/ +/) # => [\"\", \"a\", \"b\", \"c\"]    p \"   a \t  b   c\".split(nil)   # => [\"a\", \"b\", \"c\"]    p \"   a \t  b   c\".split(' ')   # => [\"a\", \"b\", \"c\"]   # split(nil) と同じ    p \"   a \t  b   c\".split        # => [\"a\", \"b\", \"c\"]   # split(nil) と同じ    #...")

  end
end
