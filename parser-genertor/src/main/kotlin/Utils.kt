import java.nio.file.Files
import java.nio.file.Paths

fun read(path: String): String {
    return Files.readString(Paths.get(path))
}

fun write(path: String, value: String) {
    Files.writeString(Paths.get(path), value)
}