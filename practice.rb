puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

# the <<END is a "heredoc". See the Student Questions.
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end


start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)


breaker = <<END
\nHere we will jump into more functions.
END
			
puts "___________________________________"			
puts breaker


module practice

  # This function will break up words for us.
  def practice.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sorts the words.
  def practice.sort_words(words)
    return words.sort
  end

  # Prints the first word after shifting it off.
  def practice.print_first_word(words)
    word = words.shift
    puts word
  end

  # Prints the last word after popping it off.
  def practice.print_last_word(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def practice.sort_sentence(sentence)
    words = practice.break_words(sentence)
    return practice.sort_words(words)
  end

  # Prints the first and last words of the sentence.
  def practice.print_first_and_last(sentence)
    words = practice.break_words(sentence)
    practice.print_first_word(words)
    practice.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def practice.print_first_and_last_sorted(sentence)
    words = practice.sort_sentence(sentence)
    practice.print_first_word(words)
    practice.print_last_word(words)
  end

end

require "./practice.rb"

sentence = "All good things come to those who wait."
words = practice.break_words(sentence)
words
sorted_words = practice.sort_words(words)
sorted_words
practice.print_first_word(words)
practice.print_last_word(words)
words
practice.print_first_word(sorted_words)
practice.print_last_word(sorted_words)
sorted_words
sorted_words = practice.sort_sentence(sentence)
sorted_words
practice.print_first_and_last(sentence)
practice.print_first_and_last_sorted(sentence)


