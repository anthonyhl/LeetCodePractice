def find_substring(s, words)
  words.sort!

  wordLength = words.first.size
  arr = (0..s.size - wordLength).collect {|i| s.slice(i, wordLength) }

  result=[]
  countLength = wordLength * words.size
  (0..s.size - countLength).each do |i|
    used = words.size.times.collect{|j| arr[i + j * wordLength]}
    result << i if used.sort == words
  end
  result
end

s = "barfoothefoobarman"
words = ["foo", "bar"]
p find_substring(s, words) #==>[0,9]

