class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product = Product('Desktop', 50000, 5);
  print('Total cost of ${product.name}: ${product.getTotalCost()}');
}
