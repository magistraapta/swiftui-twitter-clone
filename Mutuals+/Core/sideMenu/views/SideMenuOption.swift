//
//  SideMenuOption.swift
//  Mutuals+
//
//  Created by magistra aptam on 12/07/23.
//

import SwiftUI

struct SideMenuOption: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imagName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(viewModel.title)
                .font(.subheadline)
                .foregroundColor(.black)
            Spacer()
        }
        .padding(.vertical, 4)
    }
}

struct SideMenuOption_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOption(viewModel: .Profile)
    }
}
