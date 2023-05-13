import Foundation

public struct GlTFSkin: Codable {

    public let inverseBindMatrices: Int?
    public let joints: [Int]
    public let name: String?
    public let skeleton: Int?
}