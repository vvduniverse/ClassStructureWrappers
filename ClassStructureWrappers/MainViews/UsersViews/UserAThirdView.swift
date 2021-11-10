//
//  UserAThirdView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 10.11.2021.
//

import SwiftUI

struct UserAThirdView: View {
    
    @Binding var nextViewIsPresented: Bool
//var nextViewIsPresented: Bool
    
    var body: some View {
//        Color.orange
//            .ignoresSafeArea()
        VStack {
            HStack {
                Spacer()
                Button("Done") {
                    nextViewIsPresented.toggle()
                }
            }
            .padding(/*@START_MENU_TOKEN@*/[.top, .trailing]/*@END_MENU_TOKEN@*/)
           
            
            Spacer()
            Text(" A-line ")
            Divider()
            Spacer()
        }
        .background(.orange)
    }
}

struct UserAThirdView_Previews: PreviewProvider {
    static var previews: some View {
        UserAThirdView(nextViewIsPresented: .constant(true))
    }
}
