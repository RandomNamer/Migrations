package regex

interface IRegexTest {
    fun run() {
        match(defaultInput())
    }
    fun match(raw: String)
    fun defaultInput(): String
}