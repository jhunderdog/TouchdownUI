//
//  TitleView.swift
//  Touchdown
//
//  Created by jhunderdog on 2022/02/01.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
        } // HSTACk
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Hemlmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
