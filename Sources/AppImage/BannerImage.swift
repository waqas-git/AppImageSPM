//
//  BannerImage.swift
//  AppImage
//
//  Created by waqas ahmed on 26/11/2024.
//
import Foundation
import SwiftUI

public struct BannerImage {
    public var image: String
    public var height: CGFloat = 200
    public var width: CGFloat = 0
    public var paddingTop: CGFloat = 10
    public var cornerRadius: CGFloat = 25
    public var padding: CGFloat = 0

    // Add this public initializer
    public init(image: String, height: CGFloat = 200, width: CGFloat = 0, paddingTop: CGFloat = 10, cornerRadius: CGFloat = 25, padding: CGFloat = 0) {
        self.image = image
        self.height = height
        self.width = width
        self.paddingTop = paddingTop
        self.cornerRadius = cornerRadius
        self.padding = padding
    }

    public var body: some View {
        Image(image)
            .resizable()
            .frame(width: width, height: height)
            .cornerRadius(cornerRadius)
            .padding(.horizontal, padding)
            .padding(.top, paddingTop)
            .clipped()
    }
}
