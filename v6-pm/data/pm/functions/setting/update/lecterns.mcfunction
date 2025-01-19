# data modify storage pm:map book set value {id:"minecraft:written_book",Count:1b,tag:{title:"",author:"",resolved:1b,pages:[]}}

function ww:book/intro/init

data modify block 6 70 19 Book.tag set from block 0 0 0 Items[0].tag
data modify block -1 70 19 Book.tag set from block 0 0 0 Items[0].tag
data modify block 6 62 19 Book.tag set from block 0 0 0 Items[0].tag
data modify block -1 62 19 Book.tag set from block 0 0 0 Items[0].tag

data modify block -17 70 36 Book.tag set from block 0 0 0 Items[0].tag
data modify block -17 70 43 Book.tag set from block 0 0 0 Items[0].tag
data modify block -17 62 36 Book.tag set from block 0 0 0 Items[0].tag
data modify block -17 62 43 Book.tag set from block 0 0 0 Items[0].tag

data modify block -1 70 59 Book.tag set from block 0 0 0 Items[0].tag
data modify block 6 70 59 Book.tag set from block 0 0 0 Items[0].tag
data modify block -1 62 59 Book.tag set from block 0 0 0 Items[0].tag
data modify block 6 62 59 Book.tag set from block 0 0 0 Items[0].tag

data modify block 22 70 36 Book.tag set from block 0 0 0 Items[0].tag
data modify block 22 70 43 Book.tag set from block 0 0 0 Items[0].tag
data modify block 22 62 36 Book.tag set from block 0 0 0 Items[0].tag
data modify block 22 62 43 Book.tag set from block 0 0 0 Items[0].tag


data modify block 6 70 19 Page set value 0 
data modify block -1 70 19 Page set value 0
data modify block 6 62 19 Page set value 0
data modify block -1 62 19 Page set value 0

data modify block -17 70 36 Page set value 0
data modify block -17 70 43 Page set value 0
data modify block -17 62 36 Page set value 0
data modify block -17 62 43 Page set value 0

data modify block -1 70 59 Page set value 0
data modify block 6 70 59 Page set value 0
data modify block -1 62 59 Page set value 0
data modify block 6 62 59 Page set value 0

data modify block 22 70 36 Page set value 0
data modify block 22 70 43 Page set value 0
data modify block 22 62 36 Page set value 0
data modify block 22 62 43 Page set value 0