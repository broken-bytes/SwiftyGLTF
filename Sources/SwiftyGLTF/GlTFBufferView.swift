public struct GlTFBufferView: Codable {

    public let buffer: Int
    public let byteLength: Int
    public let byteOffset: Int?
    public let byteStride: Int?
    public let name: String?
    public let target: GlTFBufferType?
}