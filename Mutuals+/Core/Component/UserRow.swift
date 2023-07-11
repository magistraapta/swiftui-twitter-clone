//
//  UserRow.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

struct UserRow: View {
    var body: some View {
        HStack(alignment: .center){
            Circle()
                .frame(width:56)
            VStack(alignment: .leading, spacing: 8){
                Text("Magistra")
                Text("@magistraapta")
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow()
    }
}
