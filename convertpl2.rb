  infile=ARGV[0]
  outfile=ARGV[1]

  out=File.open(outfile,"w")

  File.open(infile, encoding: 'utf-8-mac:utf-8') do |file|
    # IO#each_lineは1行ずつ文字列として読み込み、それを引数にブロックを実行する
    # 第1引数: 行の区切り文字列
    # 第2引数: 最大の読み込みバイト数
    # 読み込み用にオープンされていない場合にIOError
    file.each_line do |str|
      # strには読み込んだ行が含まれる
      str = str.gsub(/\/Volumes\/HD-EG5\/Media\//,'E:\\')
      str = str.gsub(/\//,'\\')
  #    out.puts str.encode('cp932')
      out.puts str
    end
  end