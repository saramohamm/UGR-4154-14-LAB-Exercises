data class Item(val name: String, val price: Double)

class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        return items.sumByDouble { it.price }
    }
}

fun main() {
    val cart = ShoppingCart()
    cart.addItem(Item("Apple", 1.5))
    cart.addItem(Item("Banana", 0.75))
    cart.addItem(Item("Orange", 2.0))

    println("Total price: ${cart.calculateTotalPrice()}")
}
