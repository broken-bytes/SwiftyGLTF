public enum GlTFCameraType: String, Codable {

    case perspective = "perspective"
    case orthagraphic = "orthographic"
}

public struct GlTFCamera: Codable {

    public let name: String?
    public let orthographic: GlTFOrthographicCamera?
    public let perspective: GlTFPerspectiveCamera?
    public let type: GlTFCameraType
}