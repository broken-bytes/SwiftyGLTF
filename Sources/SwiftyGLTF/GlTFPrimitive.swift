import Foundation

public struct GlTFPrimitive: Codable {

    public let attributes: [GlTFAttribute]
    public let indices: Int?
    public let material: Int?
    public let mode: GlTFMeshTopology?

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        indices = try container.decode(Int.self, forKey: .indices)
        material = try container.decode(Int.self, forKey: .material)
        mode = try? container.decode(GlTFMeshTopology.self, forKey: .mode)
        
        var attr: [GlTFAttribute] = []

        guard let attribute = try? container.decode(Attributes.self, forKey: .attributes) else {
            throw GlTFError.glTFJSONInvalid(value: "Attributes invalid")
        }

        if let pos = attribute.position {
            attr.append(.position(value: pos))
        } 
        if let nor = attribute.normal {
            attr.append(.normal(value: nor))
        } 
        if let tan = attribute.tangent {
            attr.append(.tangent(value: tan))
        } 
        if let tex = attribute.texcoord0 {
            attr.append(.texcoord0(value: tex))
        } 

        attributes = attr
    }
}