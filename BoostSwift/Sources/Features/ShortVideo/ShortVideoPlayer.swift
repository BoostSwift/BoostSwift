//
//  ShortVideoPlayer.swift
//  BoostSwift
//
//  Created by Xin Wang on 2019/2/28.
//  Copyright © 2018-2019 Codingsoft. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ShortVideoPlayer: NSObject {
    var videoUrl : URL? = nil
    
    var player : AVPlayer? = nil
    var playerItem : AVPlayerItem? = nil
    var playerLayer : AVPlayerLayer? = nil
    
    func play() {
        
    }
    
    func pause() {
        
    }
    
    override init() {
        super.init()
        self.player = AVPlayer()
        self.playerLayer = AVPlayerLayer(player: self.player)
        
    }

}
