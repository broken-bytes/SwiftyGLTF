public class GlTFBuffer: Codable {

    public enum GlTFBufferType: String, Codable {
        case arrayBuffer = "arraybuffer"
    }

    public let byteLength: Int
    public let name: String?
    public let uri: String?
}