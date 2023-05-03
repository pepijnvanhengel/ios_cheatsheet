import FileProvider

enum FileError: Error {
    case fileNotFound
    case fileNotReadable
}

func readFile(atPath path: String) throws -> String {
    guard FileManager.default.fileExists(atPath: path) else {
        throw FileError.fileNotFound
    }
    
    guard FileManager.default.isReadableFile(atPath: path) else {
        throw FileError.fileNotReadable
    }
    
    let data = try String(contentsOfFile: path)
    return data
}

class ErrorHandling {
    init() {
        do {
            let data = try readFile(atPath: "/path/to/file.txt")
            print(data)
        } catch FileError.fileNotFound {
            print("Error: file not found")
        } catch FileError.fileNotReadable {
            print("Error: file not readable")
        } catch {
            print("Unknown error occurred: \(error)")
        }
    }
}
