import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the number of hours worked:")
    val hoursWorked = scanner.nextDouble()

    println("Enter the hourly rate:")
    val hourlyRate = scanner.nextDouble()

    val regularHours = 40.0
    val overtimeMultiplier = 1.5

    val totalSalary = if (hoursWorked <= regularHours) {
        hoursWorked * hourlyRate
    } else {
        val overtimeHours = hoursWorked - regularHours
        (regularHours * hourlyRate) + (overtimeHours * hourlyRate * overtimeMultiplier)
    }
    println("The total salary is: $$totalSalary")
}
