def encoder(message)
    aplha_encoder = {"a" => "f", "b" => "g", "c" => "h", "d" => "i", "e" => "j", "f" => "k", "g" => "l", "h" => "m", "i" => "n", "j" => "o", "k" => "p", "l" => "q", "m" => "r", "n" => "s", "o" => "t", "p" => "u", "q" => "v", "r" => "w", "s" => "x", "t" => "y", "u" => "z", "v" => "a", "w" => "b", "x" => "c", "y" => "d", "z" => "e"}
    mess_arr = message.split("")
    holder = ""
    mess_arr.each_with_index do |x, index|
        if aplha_encoder.has_key?(x)
            holder = aplha_encoder.values_at(x)
            mess_arr[index] = holder
        end
    end
    mess_arr.join("")
end
