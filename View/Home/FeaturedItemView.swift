//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by jhunderdog on 2022/01/31.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            
        
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)

    }
}
