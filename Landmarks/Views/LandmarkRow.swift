//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Maria del Rosario León on 28/09/20.
//

import SwiftUI

// Draw one row from the list.
struct LandmarkRow: View {
//    Properties need to be initialized for the preview to work.
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

// Xcode’s canvas automatically recognizes and displays any type in the current editor that conforms to the PreviewProvider protocol. A preview provider returns one or more views, with options to configure the size and device.
// You can customize the returned content from a preview provider to render exactly the previews that are most helpful to you.
//The code you write in a preview provider only changes what Xcode displays in the canvas.
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
