import Core
import Foundation

public struct GlTFPbrMetallicRoughness: Codable {
    
    public let baseColorFactor: [Float]?
    public let baseColorTexture: GlTFTextureInfo?
    public let metallicFactor: Float?
    public let roughnessFactor: Float?
    public let metallicRoughnessTexture: GlTFTextureInfo?
}

public struct GlTFMaterial: Codable {

    public let alphaCutoff: Float?
    public let alphaMode: GlTFAlphaMode?
    public let doubleSided: Bool?
    public let emissiveFactor: [Float]?
    public let emissiveTexture: GlTFTextureInfo?
    public let name: String?
    public let pbrMetallicRoughness: GlTFPbrMetallicRoughness?
    public let normalTexture: GlTFNormalTextureInfo?
    public let occlusionTexture: GlTFOcclusionTextureInfo?
}