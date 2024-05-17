fun isPrime(num: Int): Boolean {
    if (num <= 1) return false
    var i = 2
    while (i * i <= num) {
        if (num % i == 0) return false
        i++
    }
    return true
}

fun main() {
    val start = 10
    val end = 50
    var current = start

    println("Prime numbers between $start and $end are:")
    while (current <= end) {
        if (isPrime(current)) {
            println(current)
        }
        current++
    }
}
