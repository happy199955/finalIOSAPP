//
//  BikeView.swift
//  finalapp
//
//  Created by User15 on 2020/1/13.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation
import SwiftUI
import CryptoKit

struct BikeView: View {
    @State private var bikes = [BikeInfo]()
    @State private var likeScale: CGFloat = 1
    var body: some View {
        NavigationView {
            List(bikes.indices, id: \.self) { (index)  in
                NavigationLink(destination: BikeDetail(bike: self.bikes[index])) {
                    BikeRow(bike: self.bikes[index])
                }
            }
            .onAppear {
                self.fetchBike()
            }
           .navigationBarTitle("桃園市Bike站")
        }
    }
    
    func getTimeString() -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEE, dd MMM yyyy HH:mm:ww zzz"
        dateFormater.locale = Locale(identifier: "en_US")
        dateFormater.timeZone = TimeZone(secondsFromGMT: 0)
        let time = dateFormater.string(from: Date())
        return time
    }
    func fetchBike(){
        let appId = "314e27e089294f5d8bce70bbc72284de"
        let appKey = "H1WzftOFwZo-BeWuR0h7-pWUjPg"
        let xdate = getTimeString()
        let signDate = "x-date: \(xdate)"
        let key = SymmetricKey(data: Data(appKey.utf8))
        let hmac = HMAC<SHA256>.authenticationCode(for: Data(signDate.utf8), using: key)
        let base64HmacString = Data(hmac).base64EncodedString()
        let authorization = """
        hmac username="\(appId)", algorithm="hmac-sha256", headers="x-date", signature="\(base64HmacString)"
        """
        let url = URL(string: "https://ptx.transportdata.tw/MOTC/v2/Bike/Station/Taoyuan?$top=30&$format=JSON")!
        var request = URLRequest(url: url)
        request.setValue(xdate, forHTTPHeaderField: "x-date")
        request.setValue(authorization, forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            let decoder = JSONDecoder()
            if let data = data, let cResults = try?
                decoder.decode([BikeInfo].self, from: data) {
                self.bikes.append(contentsOf: cResults)
            }
        }.resume()
    }
}
struct BikeView_Previews: PreviewProvider {
    static var previews: some View {
        BikeView()
    }
}
