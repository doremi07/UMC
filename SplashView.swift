//
//  SplashView.swift
//  MegaBox
//
//  Created by doremi on 3/22/26.
//
import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.white

            Image(.meboxLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 249, height: 84)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SplashView()
}
