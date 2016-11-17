# 1
def string_shuffle(s)
  s.split('').shuffle.join
end
puts string_shuffle("foobar")

# 2
class String
  def string_shuffle
    self.split('').shuffle.join
  end
end
puts "string".string_shuffle
