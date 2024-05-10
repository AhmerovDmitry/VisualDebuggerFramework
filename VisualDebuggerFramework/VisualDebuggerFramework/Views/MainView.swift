//
//  MainView.swift
//  VisualDebuggerFramework
//
//  Created by Ахмеров Дмитрий Николаевич on 05.05.2024.
//

import SwiftUI
import SceneKit

struct MainView: View {

	@State private var scene: SCNScene? = SCNScene(named: "AMG_Missile.scn")
	@State private var sliderValue = 0.0

	private let titleText = "Ракета «воздух — земля»"
	private let subtitleText = """
	Ракета класса «воздух — земля» предназначена для запуска с земли для поражения воздушных целей,
	таких, как самолёты, вертолёты и даже баллистические ракеты.
	Эти ракеты обычно называют системой ПВО, так как они отражают любой вид воздушной атаки.
	"""

	var body: some View {
		VStack {
			Text(titleText)
			CustomSceneView(scene: $scene)
				.frame(height: UIScreen.main.bounds.width)
				.onChange(of: sliderValue) { oldValue, newValue in
					rotateScene()
				}
			Slider(value: $sliderValue, in: 0...360, step: 1)
			Text(subtitleText)
		}
		.padding()
	}

	func rotateScene(animate: Bool = false) {
		let angle = Float(sliderValue) * .pi / 180
		scene?.rootNode.childNodes.first?.eulerAngles.y = angle
	}
}

#Preview {
	ContentView()
}
