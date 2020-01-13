//
//  BikeDetail.swift
//  finalapp
//
//  Created by User15 on 2020/1/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct BikeDetail: View {
    var bike: BikeInfo
    var body: some View {
        VStack {
            HStack() {
                Text(bike.StationName.Zh_tw)
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            HStack{
                Text(" ")
                .bold()
            }
            HStack{
                Text(bike.StationAddress.Zh_tw)
                .bold()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(5)
            }
            HStack{
                Text(" ")
                .bold()
            }
            HStack{
                Text("最多數量：")
                .font(.system(size: 40))
                .fontWeight(.black)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(10)
                Text("\(bike.BikesCapacity)")
                .bold()
                .foregroundColor(.orange)
                .font(.system(size: 60))
            }
        }
    }
}

struct BikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        BikeDetail(bike: BikeInfo(StationUID: "TAO2001",StationName:NameType(Zh_tw: "中央大學圖書館", En: "National Central University Library"), BikesCapacity: 60, StationAddress: NameType(Zh_tw: "中大路300號(中央大學校內圖書館前)", En: "No.300, Zhongda Rd.")))
    }
}
