//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/11.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
