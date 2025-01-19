# context: server
# storage: ww:temp createBookInput.rows
# inputs: {index}

$data modify storage ww:book contents.'BOOK$(index)' set from storage ww:temp createBookInput.rows