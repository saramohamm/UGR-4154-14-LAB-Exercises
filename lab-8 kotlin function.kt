fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }
    return true
}

fun main() {
    
    val testString1 = "abcdef"
    val testString2 = "hello"
    
    println("Does '$testString1' have all unique characters? ${hasUniqueCharacters(testString1)}")
    println("Does '$testString2' have all unique characters? ${hasUniqueCharacters(testString2)}")
}
