public struct GlTFNode: Codable {

    public let camera: Int?
    public let children: [Int]?
    public let matrix: [Float]?
    public let mesh: Int?
    public let name: String?
    public let rotation: [Float]?
    public let skin: Int?
    public let translation: [Float]?
    public let weights: [Float]?
}