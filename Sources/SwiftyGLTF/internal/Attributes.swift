/// Helper wrapper struct for [GlTFAttribute]
struct Attributes: Codable {
    
    enum CodingKeys : String, CodingKey {
        case position = "POSITION"
        case normal = "NORMAL"
        case tangent = "TANGENT"
        case texcoord0 = "TEXCOORD_0"
    }

    let normal: Int?
    let position: Int?
    let tangent: Int?
    let texcoord0: Int?
}