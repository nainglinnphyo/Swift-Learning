//
//  XDimissButtom.swift
//  grid
//
//  Created by Defined Me on 01/06/2024.
//

import SwiftUI

struct XDimissButtom: View {
    @Binding var isShowing:Bool
    var body: some View {
        HStack {
            Spacer()
            Button{
                isShowing = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44,height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDimissButtom(isShowing: .constant(false))
}
