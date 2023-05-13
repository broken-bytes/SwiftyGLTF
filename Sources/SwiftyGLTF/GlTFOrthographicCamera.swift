import Foundation

public struct GlTFOrthographicCamera: Codable {

    enum CodingKeys: String, CodingKey {
        case xMag = "xmag"
        case yMag = "ymag"
        case zFar = "zfar"
        case zNear = "znear"
    }

    public let xMag: Float
    public let yMag: Float
    public let zFar: Float
    public let zNear: Float
}