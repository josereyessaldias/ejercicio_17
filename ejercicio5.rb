class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    @a = (0..9)
    @b = ['-----','.----','..---','...--','....-','.....','.....','-....','--...','---..','----.']
    @h = Hash[@a.zip(@b)] 
    @number = @h[number]

  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(8)
puts m.to_morse

