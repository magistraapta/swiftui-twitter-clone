//
//  TextArea.swift
//  Mutuals+
//
//  Created by magistra aptam on 13/07/23.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placehoder: String
    
    init(_ text: Binding<String>, placehoder: String) {
        self._text = text
        self.placehoder = placehoder
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack{
            if text.isEmpty {
                Text(placehoder)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
                    .border(.blue)
            }
            TextEditor(text: $text)
                .padding(4)
            
        }
        .font(.body)
    }
}


