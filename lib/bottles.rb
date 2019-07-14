class Bottles
  def song
    verses 99, 0
  end

  def verses nr1, nr2
    nr1.downto(nr2).map do |nr|
      verse(nr)
    end.join("\n")
  end

  def verse nr
    <<~V
      #{bottle_words(nr).capitalize} of beer on the wall, #{bottle_words(nr)} of beer.
      #{action_words(nr)}
    V
  end

  def bottle_words nr
    case nr
      when 0 then  "no more bottles"
      else         "#{nr} bottle#{nr>1 ? 's' : ''}"
    end
  end

  def take_word nr
    nr>1 ? "one" : "it"
  end

  def action_words(nr)
    case nr
      when 0 then "Go to the store and buy some more, 99 bottles of beer on the wall."
      else        "Take #{take_word(nr)} down and pass it around, #{bottle_words(nr-1)} of beer on the wall."
    end
  end
end
