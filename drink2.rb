puts #商品を選んでください#
puts "[0]コーラ110円\n[1]水100円\n[2]レッドブル200円"

class Drink
    @@pay_account = 0
    attr_accessor :money
    
    def initialize(money)
        puts "お金を投入してください"
        @money = money
       
    end
    
    def drink_item
        your_item = gets.to_i
        
        if your_item == 0
            your_item = "コーラ"
        elsif your_item == 1
            your_item = "水"
        elsif your_item == 2
            your_item = "レッドブル"
        end
        
        buy_item = {"コーラ" => 110,"水" => 80,"レッドブル" => 220}
        
        puts "あなたの買う飲み物 #{buy_item[your_item]}"
        @@pay_account = buy_item[your_item]
        puts buy_item[your_item]
    
        money = @money
        pay_account = @@pay_account
        
        change =money.to_i - pay_account.to_i
        puts money.to_f
        puts pay_account.to_f
        puts change
    end
end

drink = Drink.new(gets.to_i)
drink.drink_item


#Rubyは小数点の扱いに注意
#消費税の時は切り上げか/切り上げ時にFloat利用
