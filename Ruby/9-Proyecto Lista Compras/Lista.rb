require "./Item.rb"

class Lista

    attr_accessor :items

    def initialize()
      @items = Array.new()
    end

    def add_item(text)
        item = Item.new(text)
        @items.push(item)
    end

    def remove_item(index)
        @items.delete_at(index)
    end

    def check_item(index)
        @items[index].checked = true
    end

    def remove_all()
        @items.clear
    end

    def show_all()
        
        if @items.length == 0
            puts "No hay articulos en la lista de compras"
        else
            @items.each_index do |index|
                puts "Articulo: " + index.to_s + " - " + items[index].to_s
            end
        end
        
    end
end

#TEST:
# lista1 = Lista.new
# lista1.add_item("Carne")
# lista1.add_item("Huevos")
# lista1.check_item(1)

# lista1.show_all