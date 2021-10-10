//
//  VideoPlayerView.swift
//  Animals
//
//  Created by Orhan Erbas on 10.10.2021.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected : String
    var videTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected , fileFormat: "mp4")) {
//                Text(videTitle)
            }
            .overlay (
                Image("logo")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationTitle(videTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videTitle: "Lion")
        }
    }
}
