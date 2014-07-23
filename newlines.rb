r = /\\DIFdelbegin\s\%DIFDELCMD\s\<\s*\%DIFDELCMD\s\<\s\%\%\%\s*\\DIFdelend/
puts File.read(ARGV[0]).gsub(r, " ")
