# context: server
# inputs: {text}

$data modify storage ww:memory GameBarCarousel set value {original: '$(text)', pointer: 0, end: 0, buffer: '', slide_length: 10}
execute store result storage ww:memory GameBarCarousel.length int 1 run data get storage ww:memory GameBarCarousel.original

# if slide length > orignal text length, set to text length
execute store result score %originalLength ww.var run data get storage ww:memory GameBarCarousel.length
execute store result score %slideLength ww.var run data get storage ww:memory GameBarCarousel.slide_length
execute if score %slideLength ww.var > %originalLength ww.var run \
  data modify storage ww:memory GameBarCarousel.slide_length set from storage ww:memory GameBarCarousel.length

data modify storage ww:memory GameBarCarousel.end set from storage ww:memory GameBarCarousel.slide_length

function ww:game/bar/carousel/_create_buffer with storage ww:memory GameBarCarousel