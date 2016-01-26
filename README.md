### Instructions

In terminal type
```
git clone git@github.com:jrose111284/Promotions.git
```
Then run
```
$ bundle
```
### To see a list of products
run
```
irb
```
```
require './lib/items'
item = Items.new
item.print
```
The results
```
2.2.3 :003 > item.print
 => "Lavender heart £9.25, Personalised cufflinks £45.00, Kids t-shirt £19.95"
 ```
### To Check Products are available
run
```
irb
```
```
require './lib/items'
item = Items.new
item.has_product?("playstation")
```
The results
```
2.2.3 :003 > item.has_product?("playstation")
 => false
 ```
### To check price on a item
```
item.price("Lavender heart")
```
The results
```
2.2.3 :003 > item.price("Lavender heart")
 => 9.25
 ```
