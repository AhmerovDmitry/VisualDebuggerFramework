//
//  ContentView.swift
//  VisualDebuggerFramework
//
//  Created by Ахмеров Дмитрий Николаевич on 05.05.2024.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			MainView()
		}
	}
}

#Preview {
	ContentView()
}
