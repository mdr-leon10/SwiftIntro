//
//  ContentView.swift
//  Landmarks
//
//  Created by Maria del Rosario León on 28/09/20.
//

import SwiftUI

// By default SwiftUi declares 2 structures.

// Conforms the view protocol, describes the view content, behavior and layout.
//It only returns a single view
struct  LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
// Stacks combines and embed multiple views
// There are vertical stacks
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
// To allow the map content to extend to the top edge of the screen
                .edgesIgnoringSafeArea(.top)
// When you specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the available space.
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
// There are two ways to customize elements. Programatically or with the inspector cmd + click
// Modifiers are methods that wrap up a view and return a new one. It is normal to chain several modifiers vertically.
                Text(landmark.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
// There are horizontal stacks
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
// A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}
// declares the preview of the view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
         LandmarkDetail(landmark: landmarkData[0])
    }
}
