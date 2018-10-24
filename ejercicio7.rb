class Product
  attr_accessor :name, :medida, :l, :m, :sm, :xs
  def initialize(name, *medida)
    @name = name.to_s
    @medida = medida.to_a
    @l = @medida[0].to_i
    @m = @medida[1].to_i
    @sm = @medida[2].to_i
    @xs = @medida[3].to_i
  end

  def promedio
    puts (@l + @m + @sm + @xs) / medida.length.to_f
  end


end

def imprimir(array)
  nuevo = File.new('nuevo_catalogo.txt', 'w')
  array.each do |i|
    nuevo.puts "#{i.name}, #{i.l}, #{i.m}, #{i.sm}\n"
  end  
  nuevo.close

end


products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end


imprimir(products_list)