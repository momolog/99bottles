class Bottles
  def song
    verses 99, 0
  end

  def verses nr1, nr2
    nr1.downto(nr2).map{|nr| verse(nr) }.join("\n")
  end

  def verse nr
    <<~V
      #{bottle_words(nr).capitalize} of beer on the wall, #{bottle_words(nr)} of beer.
      #{action(nr)}
    V
  end

  def bottle_words nr
    case nr
      when 0 then  'no more bottles'
      else         "#{nr} bottle#{nr>1 ? 's' : ''}"
    end
  end

  def take_word nr
    case nr
      when 1 then 'it'
      else        'one'
    end
  end

  def action(nr)
    case nr
      when 0 then 'Go to the store and buy some more, 99 bottles of beer on the wall.'
      else        "Take #{take_word(nr)} down and pass it around, #{bottle_words(nr-1)} of beer on the wall."
    end
  end
end
