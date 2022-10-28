package regex

import java.io.FileReader

object PutaoTitles: IRegexTest {

    override fun match(raw: String) {
        val pattern = "(<a title=\")(\\[[^\\w]+\\w+[\\s\\S]+?\")"
        val regex = Regex(pattern)
        val resultList = regex.findAll(raw).map{
            it.groups[2]?.value
        }.filterNotNull().toList()
        println(generateCodeFromResult(resultList))
    }

    private fun generateCodeFromResult(res: List<String>): String {
        val transformedResult = res.mapNotNull{
            val match = Regex("\\[[\\u4e00-\\u9fa5\\w]+\\]").find(it)
            match?.run {
                value.removeSurrounding("[", "]") to it.removeRange(range).removeSuffix("\"")
            }
        }.toMap()
        println("${transformedResult.size} eligible results:\nGenerated code:\n")
        return buildString {
            appendLine("mapOf(")
            transformedResult.forEach {
                appendLine("    \"${it.key}\" to \"${it.value}\",")
            }
            appendLine(")")
        }
    }

    override fun defaultInput(): String {
        return FileReader("~/Downloads/pt-raw.html".replace("~", System.getProperty("user.home"))).readText()
    }
}