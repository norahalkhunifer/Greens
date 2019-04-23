# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Category.destroy_all


fruite = Category.create(name: 'fruite')


apple = Product.create(name: 'apple', image: 'https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Pixie-Crunch-Apple-Tree-450w_large.jpg?v=1549664583', quantity: "10", category_id: fruite.id)
# ProductInfo.create(product_id: apple.id, price: 5.0,stack: 5 , seller_id:1)
orange = Product.create(name: 'orange', image: 'https://www.rd.com/wp-content/uploads/2017/12/01_oranges_Finally%E2%80%94Here%E2%80%99s-Which-%E2%80%9COrange%E2%80%9D-Came-First-the-Color-or-the-Fruit_691064353_Lucky-Business-1024x683.jpg', quantity: 7, category_id: fruite.id)
# ProductInfo.create(product_id: orange.id, price: 3.0,stack: 2 , seller_id:2)
banana = Product.create(name: 'banana', image: 'https://www.organicfacts.net/wp-content/uploads/banana.jpg', quantity: 7, category_id: fruite.id)
# ProductInfo.create(product_id: banana.id, price: 3.0,stack: 2 , seller_id:2)
blueberry = Product.create(name: 'blueberry', image: 'https://enchantedmountains.com/files/places/blueberries-2.jpg', quantity: 7, category_id: fruite.id)




Vegetables = Category.create(name: 'Vegetables')
carrot = Product.create(name: 'carrot', image: 'https://www.organicfacts.net/wp-content/uploads/storecarrots.jpg', quantity: 6, category_id: Vegetables.id)
# ProductInfo.create(product_id: carrot.id, price: 3.0,stack: 2 , seller_id:2)
lettuce = Product.create(name: 'lettuce', image: 'https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzEwMy8wMDkvb3JpZ2luYWwvcm9tYWluZS1sZXR0dWNlLU5PLVJFVVNFLmpwZw==', quantity: 4, category_id: Vegetables.id)
# ProductInfo.create(product_id: lettuce.id, price: 3.0,stack: 2 , seller_id:2)
tomato = Product.create(name: 'tomato', image: 'https://cdn-images-1.medium.com/max/1600/1*utOmkc67LDksWHdUZhrMrw.jpeg', quantity: 4, category_id: Vegetables.id)
# ProductInfo.create(product_id: tomato.id, price: 3.0,stack: 2 , seller_id:2)


dairyـproduct = Category.create(name: 'dairyـproduct')
Yogurt = Product.create(name: 'Yogurt', image: 'https://healthfirstnetwork.ca/wp-content/uploads/2016/05/5a_blog_prime_genuinehealth.jpg', quantity: 4, category_id: dairyـproduct.id)
# ProductInfo.create(product_id: Yogurt.id, price: 3.0,stack: 2 , seller_id:2)
milk = Product.create(name: 'milk', image: 'https://img.taste.com.au/5VamxIAS/taste/2016/11/almond-milk-109280-1.jpeg', quantity: 4, category_id: dairyـproduct.id)
# ProductInfo.create(product_id: milk.id, price: 3.0,stack: 2 , seller_id:2)
laban = Product.create(name: 'laban', image: 'https://i1.wp.com/www.akitcheninistanbul.com/wp-content/uploads/2017/01/Ayran-2-of-3.jpg?resize=1000,1333', quantity: 4, category_id: dairyـproduct.id)
# ProductInfo.create(product_id: laban.id, price: 3.0,stack: 2 , seller_id:2)


seed = Category.create(name: 'seed')
Wheat = Product.create(name: 'Wheat', image: 'https://1.bp.blogspot.com/-swVY1zLmOtY/W20Xynh07iI/AAAAAAAAEns/0a4Kv8XSE3E-Jd4P2e1C8s-VJJXkEFfuQCLcBGAs/s1600/%25D8%25AA%25D9%2581%25D8%25B3%25D9%258A%25D8%25B1%2B%25D8%25AD%25D9%2584%25D9%2585%2B%25D8%25B1%25D8%25A4%25D9%258A%25D8%25A9%2B%25D8%25B3%25D9%2586%25D8%25A7%25D8%25A8%25D9%2584%2B%25D9%2588%25D8%25AD%25D8%25A8%25D9%2588%25D8%25A8%2B%25D8%25A7%25D9%2584%25D9%2582%25D9%2585%25D8%25AD%2B%25D9%2581%25D9%2589%2B%25D8%25A7%25D9%2584%25D9%2585%25D9%2586%25D8%25A7%25D9%2585%2B%25D9%2584%25D8%25A7%25D8%25A8%25D9%2586%2B%25D8%25B3%25D9%258A%25D8%25B1%25D9%258A%25D9%2586.jpg', quantity: 4, category_id: seed.id)
# ProductInfo.create(product_id: Wheat.id, price: 3.0,stack: 2 , seller_id:2)
Oats = Product.create(name: 'Oats', image: 'https://i.fatafeat.com/storage/attachments/21/27_nov_art2_196203_large.png', quantity: 4, category_id: seed.id)
# ProductInfo.create(product_id: Oats.id, price: 3.0,stack: 2 , seller_id:3)


shipping_add = ShippingInfo.create(user_id: 1, zip: 11543, adress:" najah al izz - Al Olaya " ,city: "Riyadh", phone_num: "0550585468" )

order =Order.create(user_id: 1, total: 23 , quantity: 4 , shipping_id: shipping_add.id )
OrderDetail.create(order_id: order.id , product_id: vigi.id , price:12.5 , amount: 1 )
OrderDetail.create(order_id: order.id , product_id: apple.id, price:0.5 , amount: 1 )
