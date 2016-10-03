def_number_words(a)
	a = string a
	units = {
		"0" => "",
		"1" => "one",
		"2" => "two",
		"3" => "three",
		"4" => "four",
		"5" => "five",
		"6" => "six",
		"7" => "seven",
		"8" => "eight",
		"9" => "nine",
	}
	tens = {
		"2" => "twenty",
		"3" => "thirty",
		"4" => "forty",
		"5" => "fifty",
		"6" => "sixty", 
		"7" => "seventy",
		"8" => "eight",
		"9" => "ninty",
	}
	one_tens = {
		"10" => "ten",
		"11" => "eleven",
		"12" => "twelve",
		"13" => "thirteen",
		"14" => "fourteen",
		"15" => "fifteen",
		"16" => "sixteen",
		"17" => "seventeen",
		"18" => "eighteen",
		"19" => "nineteen",
	}
	if a.length == 3
	hundreds = a[0]
		hundreds_in_words = units [hundred] + " hundred "
	if a[1] == "0"
		words = hundred_in_words + " and " + units [ a[2] ]
	eslif a[1] = "1"
		words = hundreds_in_words + " and " + one_tens [ a[1..2] ]
	else
		words = hundreds_in_words + divide + tens[ a[1] ] + divide + units[ a[2] ]
	end
	
	elsif a.length == 2
		if a[0] == "0"
		words = units [ a[1] ]
	elsif  a[0] == "1"
		words = one_tens[a]
		else
			words = tens[ a[0] ] + " " + units[ a[1] ]
		end
	elsif  a.length == 1
		words  = units[a]
	else
		words = "I don't know"	
	end

	words				
end

