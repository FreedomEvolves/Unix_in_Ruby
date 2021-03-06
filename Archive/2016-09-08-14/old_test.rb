require 'csv'
require 'byebug'
require 'sqlite3'

trap("INT") { puts "\nfine. i'm done"; abort }

tm=Time.new.strftime("%Y-%m-%d-%H")

# Archive PRC hospice data and re-map values
# `grep -i -v -h scandate #{hd}PRC_HOSPICE_CAHPS_ENG_SVY_DATA.txt >> #{hd}Master/PRC_HOSPICE_CAHPS_ENG_SVY_MASTER_DATA.txt`
# `mkdir -p #{hd}Archive/#{tm}`
# `cp #{hd}PRC_HOSPICE_CAHPS_ENG_SVY_DATA.txt #{hd}Archive/#{tm}/`
# `mv #{hd}PRC_HOSPICE_CAHPS_ENG_SVY_DATA.txt /tmp/PRC_HOSPICE_#{tm}`
# `head -1 /tmp/PRC_HOSPICE_#{tm} > #{hd}PRC_HOSPICE_CAHPS_ENG_SVY_DATA.txt`
# `csvfix read_dsv /tmp/PRC_HOSPICE_#{tm} | csvfix map -f 5 -fv 1,2,3,4,5,6,7,8,9 -tv 3,4,5,6,7,8,9,10,11 | csvfix write_dsv > #{hd}/PRC_HOSPICE_CAHPS_ENG_SVY_DATA.txt`

# On desktop, create folder "Archive" with subfolder "date", both inside folder "Unix_in_Ruby".
# Copy this file into the "date" folder.
# In same Unix_in_Ruby folder, create "Book" folder with files of five chapters.  Import text info each of the files.
# Search for XX files via grep or locate and copy files into the Archive folder.
# Print list of the Archive files into Terminal and into new file on desktop labelled "FileList".

path = "~/Desktop/Unix_in_Ruby/"
`mkdir -p #{path}Archive/#{tm}`
`cp test.rb #{path}Archive/#{tm}`
`mv  #{path}Archive/#{tm}/test.rb #{path}Archive/#{tm}/old_test.rb`

`mkdir -p #{path}Book`
(1..5).each do |n|
  `touch 'Book/Chapter_#{n}.txt'`
  `cat txt.txt > 'Book/Chapter_#{n}.txt'`
end

`mkdir -p spy/ch_{01,02,03,intro,toc,index,bio}`
`cp -R spy ~/Desktop/spy2`

# Links, hard and symbolic
`ln -s spy/ch_01/Chapter_1.txt ~/Desktop/cheat_sym.txt`  #this creates an invalid alias or symlink
`ln spy/ch_01/Chapter_1.txt ~/Desktop/cheat_hard.txt`
`ln -s spy/ch_01/Chapter_1.txt ~/Desktop/spy2/cheat_sym.txt`  #but this one works!
