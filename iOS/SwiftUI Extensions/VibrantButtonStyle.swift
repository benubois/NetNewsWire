//
//  VibrantButtonStyle.swift
//  NetNewsWire-iOS
//
//  Created by Maurice Parker on 9/16/19.
//  Copyright © 2019 Ranchero Software. All rights reserved.
//

import SwiftUI

struct VibrantButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
		GeometryReader { geometry in
			configuration.label
				.frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
		}
		.foregroundColor(configuration.isPressed ? Color(AppAssets.tableViewCellHighlightedTextColor) : .primary)
		.listRowBackground(configuration.isPressed ? Color(AppAssets.tableViewCellSelectionColor) : Color(.secondarySystemGroupedBackground))
		.background(configuration.isPressed ? Color(AppAssets.tableViewCellSelectionColor) : Color(.secondarySystemGroupedBackground))
    }
	
}
