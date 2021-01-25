//
//  BannerView.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-24.
//

import SwiftUI

struct BannerView: View {
    func getDate()->String{
     let time = Date()
     let timeFormatter = DateFormatter()
     timeFormatter.dateFormat = "MMMM d"
     let stringDate = timeFormatter.string(from: time)
     return stringDate
    }
    
    var body: some View {

            Text(getDate())
                .underline()
                .font(.largeTitle)
                .fontWeight(.thin)
                .tracking(3)
                .padding(.top)
                .shadow(color: .secondary, radius: 3 )
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
            .previewLayout(.sizeThatFits)
    }
}
