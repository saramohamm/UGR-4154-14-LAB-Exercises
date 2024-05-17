import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the first number:")
    val num1 = scanner.nextDouble()

    println("Enter the second number:")
    val num2 = scanner.nextDouble()

    println("Enter the third number:")
    val num3 = scanner.nextDouble()

    val largest = if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }

    println("The largest number is: $largest")
}
