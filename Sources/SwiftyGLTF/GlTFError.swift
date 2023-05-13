public enum GlTFError: Error {
    
    case fileNotFound(path: String)
    case glTFBinaryInvalid(value: String)
    case glTFJSONInvalid(value: String)
}