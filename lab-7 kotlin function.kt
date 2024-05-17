fun factorial(n: Int): Long {
    return if (n <= 1) {
        1
    } else {
        n * factorial(n - 1)
    }
}

fun main() {
    val number = 5
    val result = factorial(number)
    println("The factorial of $number is $result")
}
