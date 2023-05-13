import Foundation
import XCTest

@testable import SwiftyGLTF

public class GlTFLoaderTests: XCTestCase {

    public override func setUp() {

    }

    public override func tearDown() {

    }

    public func testAccessor() {
let json = """
{
    "bufferView": 0,
    "byteOffset": 4608,
    "componentType": 5123,
    "count": 42,
    "type": "VEC2"
}
"""
        do {
            let accessor = try JSONDecoder().decode(GlTFAccessor.self, from: json.data(using: .utf8)!)
            XCTAssertEqual(accessor.type, .vec2)
        } catch {
            XCTFail("Is kaputt")
        }
    }

    public func testMaterial() {
let json = """
{
      "doubleSided": true,
      "name": "russian_food_cans_01",
      "normalTexture": {
        "index": 0
      },
      "pbrMetallicRoughness": {
        "baseColorTexture": {
          "index": 1
        },
        "metallicRoughnessTexture": {
          "index": 2
        }
      }
    }
"""
        do {
            let material = try JSONDecoder().decode(GlTFMaterial.self, from: json.data(using: .utf8)!)
        } catch GlTFError.glTFJSONInvalid(let value) {
            XCTFail(value)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    public func testMesh() {
let json = """
{
    "primitives": [
        {
            "attributes": {
                "NORMAL": 23,
                "POSITION": 22,
                "TANGENT": 24,
                "TEXCOORD_0": 25
            },
            "indices": 21,
            "material": 3,
            "mode": 4
        }
    ]
}
"""
        do {
            let mesh = try JSONDecoder().decode(GlTFMesh.self, from: json.data(using: .utf8)!)
        } catch GlTFError.glTFJSONInvalid(let value) {
            XCTFail(value)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    public func testPrimitive() {
let json = """
{
"attributes": {
    "NORMAL": 23,
    "POSITION": 22,
    "TANGENT": 24,
    "TEXCOORD_0": 25
},
"indices": 21,
"material": 3,
"mode": 4
}
"""
        do {
            let primitive = try JSONDecoder().decode(GlTFPrimitive.self, from: json.data(using: .utf8)!)
        } catch GlTFError.glTFJSONInvalid(let value) {
            XCTFail(value)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    public func testGlTFLoader() {
        do {
            let loader = GlTFLoader()
            guard let fileURL = Bundle.module.path(forResource: "russian_food_cans_01_1k", ofType: "gltf") else {
                XCTFail("File missing")
                return
            }

            let data = try! loader.loadData(at: fileURL)
            XCTAssertNotEqual(0, data.buffers?.count)
            XCTAssert(data.buffers?[0].uri != nil)

        } catch GlTFError.glTFJSONInvalid(let value) {
            XCTFail(value)
        } catch GlTFError.fileNotFound(let path) {
            XCTFail(path)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}