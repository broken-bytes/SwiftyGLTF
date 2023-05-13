import Foundation

public struct GlTFPerspectiveCamera: Codable {

    enum CodingKeys: String, CodingKey {
        case aspectRatio = "aspectRatio"
        case zFov = "ymag"
        case zFar = "zfar"
        case zNear = "znear"
    }

    public let aspectRatio: Float?
    public let zFov: Float
    public let zFar: Float?
    public let zNear: Float?
}