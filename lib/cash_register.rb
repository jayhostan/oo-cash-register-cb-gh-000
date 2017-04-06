class CashRegister
    attr_accessor :total, :discount, :title, :last_sale
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times {self.items << title}
        self.last_sale = price * quantity
        self.total += price * quantity
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else
            self.total -= self.total * self.discount / 100
            return "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        return @items
    end

    def void_last_transaction
        self.total -= self.last_sale
    end
end
