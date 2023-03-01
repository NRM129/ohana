def register_item(registered_item)
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "販売価格を入力してください："
  item[:selling_price] = gets.to_i
  puts "仕入れ値を入力してください："
  item[:cost_price] = gets.to_i
  line = "---------------------------"

  puts "商品名 : #{item[:name]}\n#{line}"
  puts "販売価格 : #{item[:selling_price]}円\n#{line}"
  puts "仕入れ値 : #{item[:cost_price]}円\n#{line}"

  registered_item << item

  return registered_item
end

def calculate_profit(item)
  profit.to_f = item[:selling_price] - item[:cost_price]
  profit_rate.to_f = profit / item[:selling_price] *100

  profit_n = profit.round(2)
  profit_rate_n = profit_rate.round(2)
  # 保存された商品の情報を元に、利益と利益率を計算する

end

def check_items(registered_item)
  # 保存された全ての商品情報（商品名・販売価格・仕入れ値）と、それぞれの利益・利益率を計算し、商品ごとに表示する
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  registered_item.each do |item|
    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:selling_price]}円"
    puts "仕入れ値：#{item[:cost_price]}円"
    puts "利益：#{item[:profit_n]}円"
    puts "利益率：#{item[:profit_rate_n]}%\n#{line}"
  end

  # 全ての商品の合計（総売上・総利益・平均利益率）を表示する
  puts "【合計】\n#{line}"
  puts "総売上 : 円"
  puts "総利益 : 円"
  puts "平均利益率 : %\n#{line}"

end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []

while true do
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の利益一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = register_item(item_list)
  elsif input == 2 then
    check_items(item_list)
  elsif input == 3 then
    end_program
  else
    exception
  end
end