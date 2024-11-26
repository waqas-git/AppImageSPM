//
//  BannerImage.swift
//  AppImage
//
//  Created by waqas ahmed on 26/11/2024.
//
import Foundation
import SwiftUI

public struct BannerImage{
    var image: String
    var height: CGFloat = 200
    var width: CGFloat = 0
    var paddingTop: CGFloat = 10
    var cornerRadius: CGFloat = 25
    var padding: CGFloat = 0
    public var body: some View {
        Image(image)
            .resizable()
            //.scaledToFit() // Ensures the image fills the specified frame
            .frame(width: width, height: height) // Specify only the height; width will adjust automatically
            .cornerRadius(cornerRadius) // Apply corner radius
            .padding(.horizontal, padding) // Apply horizontal padding to the image container
            .padding(.top, paddingTop)
            .clipped() // Clips any overflowing content to fit within the corner radius
    }
    
}
