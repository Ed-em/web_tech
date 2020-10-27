# Start the CGI program that receives and returns the data
require 'cgi'
cgi = CGI.new
# After receiving the data, return the response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['goya']
  #Return response in HTML
  "<html>
    <body>
      <p>The information of the person who sold it are as follows</p>
      string：#{get}
    </body>
  </html>"
}
