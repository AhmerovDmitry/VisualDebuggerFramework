//
//  CustomSceneView.swift
//  VisualDebuggerFramework
//
//  Created by Ахмеров Дмитрий Николаевич on 05.05.2024.
//

import SwiftUI
import SceneKit

struct CustomSceneView: UIViewRepresentable {

	@Binding var scene: SCNScene?

	func makeUIView(context: Context) -> SCNView {
		let material = SCNMaterial()
		material.diffuse.contents = UIImage(named: "AMG_maps/AMG_Diff.jpg")
		material.normal.contents = UIImage(named: "AMG_maps/AMG_Norm.jpg")
		material.emission.contents = UIImage(named: "AMG_maps/AMG_Diff.jpg")

		let view = SCNView()
		view.allowsCameraControl = false
		view.autoenablesDefaultLighting = true
		view.antialiasingMode = .multisampling4X
		view.backgroundColor = .clear
		view.scene = scene
		view.scene?.rootNode.scale = .init(0.4, 0.4, 0.4)
		view.scene?.rootNode.geometry?.firstMaterial = material

		return view
	}

	func updateUIView(_ uiView: SCNView, context: Context) {}
}

#Preview {
	ContentView()
}
