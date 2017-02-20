# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-swapcase

"zom".insert(1, 'o')
"zom".gsub(/[o]/, 'oo')
# => “zoom”
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-insert
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-gsub

"enhance".center(15)
# => "    enhance    "
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-center

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-upcase

"the usual".insert(9," suspects")
#=> "the usual suspects"
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-insert

" suspects".insert(0, "the usual")
# => "the usual suspects"
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-insert


"The case of the disappearing last letter".chop 
"The case of the disappearing last letter".slice(0..38)
# => "The case of the disappearing last lette"
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-chop 
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-slice

"The mystery of the missing first letter".slice(1..39)
# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-slice


"Elementary,    my   dear        Watson!".squeeze 
# => "Elementary, my dear Watson!"
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-squeeze


"z".each_byte {|c| print c, ' ' }
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# 122 is "z" ascii value 
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-each_byte

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
# via http://ruby-doc.org/core-2.4.0/String.html#method-i-count

