//
//  Personal.swift
//  finalapp
//
//  Created by User15 on 2020/1/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct Personal: View {
    var body: some View{
        VStack{
            Text("開發者Profile")
            .font(.system(size: 60))
            .fontWeight(.black)
            .background(Color.yellow)
            .foregroundColor(.white)
            .cornerRadius(10)
            HStack{
                Text(" ")
                .font(.system(size: 50))
            }
            HStack{
                Text(" 姓名 ")
                .font(.system(size: 30))
                .fontWeight(.black)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                Text("                        TinaFu")
                .font(.system(size: 30))
                .bold()
            }
            HStack{
                Text(" 學校 ")
                .font(.system(size: 30))
                .fontWeight(.black)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                Text("                          NTOU")
                .font(.system(size: 30))
                .bold()
            }
            HStack{
                Text(" 指導老師 ")
                .font(.system(size: 30))
                .fontWeight(.black)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                Text("      強者彼得潘")
                .font(.system(size: 30))
                .bold()
            }
        }
    }
}

struct Personal_Previews: PreviewProvider {
    static var previews: some View {
        Personal()
    }
}

