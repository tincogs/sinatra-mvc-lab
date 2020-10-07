class PigLatinizer
    attr_reader :user_phrase

    def piglatinize(input)
        split_phrase = input.split(" ")
        pigged = split_phrase.map do |word|
            split_word = word.split(/([aAeEiIoOuU].*)/)
            if split_word[0] == ""
                "#{split_word[1]}way"

            else
                "#{split_word[1]}#{split_word[0]}ay"
            end
        end
        pigged.join(" ")
    end

end