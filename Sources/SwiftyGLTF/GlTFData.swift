public struct GlTFData: Codable {

    public let accessors: [GlTFAccessor]?
    public let asset: GlTFAsset
    public let bufferViews: [GlTFBufferView]?
    public let buffers: [GlTFBuffer]?
    public let materials: [GlTFMaterial]?
    public let meshes: [GlTFMesh]?
    public let nodes: [GlTFNode]?
    public let samplers: [GlTFSampler]?
    public let scene: Int?
    public let scenes: [GlTFScene]? 
    public let skins: [GlTFSkin]?
    public let textures: [GlTFTexture]?
}