import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the length of side 1:")
    val side1 = scanner.nextDouble()

    println("Enter the length of side 2:")
    val side2 = scanner.nextDouble()

    println("Enter the length of side 3:")
    val side3 = scanner.nextDouble()

    when {
        side1 == side2 && side2 == side3 -> {
            println("The triangle is equilateral.")
        }
        side1 == side2 || side2 == side3 || side1 == side3 -> {
            println("The triangle is isosceles.")
        }
        else -> {
            println("The triangle is scalene.")
        }
    }
}
