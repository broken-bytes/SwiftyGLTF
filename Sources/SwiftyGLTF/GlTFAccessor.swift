public struct GlTFAccessor: Codable {

    public let bufferView: Int?
    public let byteOffset: Int?
    public let componentType: GlTFComponentType
    public let count: Int
    public let max: [Float]?
    public let min: [Float]?
    public let name: String?
    public let normalized: Bool?
    public let type: GlTFAccessorType
}