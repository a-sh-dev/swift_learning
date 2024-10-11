//
//  DetailsView.swift
//  AboutMe
//
//  Created by Angie SH on 9/9/2024.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack {
                Image("ash_memoji_coder")
                    .resizable()
                    .scaledToFit()
                    .background(.yellow)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 8)
                    }
                    .padding(30)
                Text("About a-sh.")
                    .font(.largeTitle)
                    .bold()
                Text("Bacon ipsum dolor amet filet mignon kielbasa boudin, bresaola jowl salami swine pastrami. Short loin leberkas doner shankle sausage strip steak burgdoggen shoulder pork biltong tenderloin bacon buffalo rump boudin. Kielbasa meatball short loin ham. Pancetta rump leberkas drumstick ground round swine jowl pig bacon chicken spare ribs biltong. Jerky buffalo venison, bresaola brisket shoulder ball tip pancetta ribeye jowl kevin pork belly. Cupim chicken venison, tail boudin flank rump chislic leberkas pork loin burgdoggen tongue.")
                    .padding(20)
            }
        }
        
        
    }
}

#Preview {
    DetailsView()
}
