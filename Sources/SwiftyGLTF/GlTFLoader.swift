import Foundation

/// Base class for GlTF parsing.
public class GlTFLoader {

    /// Creates a new instance takes no parameters
    public init() {}


    /// Loads the glTF json file and parses it.
    /// Parameters:
    /// - path The path where the file is located
    /// - Returns The Parsed glTF structure
    /// - note Throws an error if parsing fails
    public func loadData(at path: String) throws -> GlTFData {
        guard let data = FileManager.default.contents(atPath: path) else {
            throw GlTFError.fileNotFound(path: path)
        }

        return try loadData(from: data)
    }

    /// Loads the glTF json file and parses it.
    /// Parameters:
    /// - url The path where the file is located s a file URL
    /// - Returns The Parsed glTF structure
    /// - note Throws an error if parsing fails
    public func loadData(at url: URL) throws -> GlTFData {
        guard let data = try? Data(contentsOf: url) else {
            throw GlTFError.fileNotFound(path: url.absoluteString)
        }

        return try loadData(from: data)
    }

    /// Loads the glTF json from memory and parses it
    /// Parameters:
    /// - data The JSON data
    /// - Returns The Parsed glTF structure
    /// - note Throws an error if parsing fails
    public func loadData(from data: Data) throws -> GlTFData {
        return try JSONDecoder().decode(GlTFData.self, from: data)
    }
}