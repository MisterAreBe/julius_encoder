def encoder(message, code)
    alpha_encoder = {"a" => "f", "b" => "g", "c" => "h", "d" => "i", "e" => "j", "f" => "k", "g" => "l", "h" => "m", "i" => "n", "j" => "o", "k" => "p", "l" => "q", "m" => "r", "n" => "s", "o" => "t", "p" => "u", "q" => "v", "r" => "w", "s" => "x", "t" => "y", "u" => "z", "v" => "a", "w" => "b", "x" => "c", "y" => "d", "z" => "e"}
    unless code == "encode"
        alpha_encoder = alpha_encoder.invert
    end
    mess_arr = message.split("")
    holder = ""
    mess_arr.each_with_index do |x, index|
        if alpha_encoder.has_key?(x)
            holder = alpha_encoder.values_at(x)
            mess_arr[index] = holder
        elsif alpha_encoder.has_key?(x.downcase)
            holder = alpha_encoder.values_at(x.downcase)
            holder = holder.join("")
            holder = holder.upcase
            holder = holder.split("")
            mess_arr[index] = holder
        end
    end
    secret = mess_arr.join("")
    secret
end

def decoder(message)
    message_decoder = alpha_encoder = {"a" => "f", "b" => "g", "c" => "h", "d" => "i", "e" => "j", "f" => "k", "g" => "l", "h" => "m", "i" => "n", "j" => "o", "k" => "p", "l" => "q", "m" => "r", "n" => "s", "o" => "t", "p" => "u", "q" => "v", "r" => "w", "s" => "x", "t" => "y", "u" => "z", "v" => "a", "w" => "b", "x" => "c", "y" => "d", "z" => "e"}.invert
    mess_arr = message.split("")
    holder = ""
    mess_arr.each_with_index do |x, index|
        if alpha_encoder.has_key?(x)
            holder = alpha_encoder.values_at(x)
            mess_arr[index] = holder
        elsif alpha_encoder.has_key?(x.downcase)
            holder = alpha_encoder.values_at(x.downcase)
            holder = holder.join("")
            holder = holder.upcase
            holder = holder.split("")
            mess_arr[index] = holder
        end
    end
    revealed = mess_arr.join("")
    revealed
end