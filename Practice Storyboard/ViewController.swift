//
//  ViewController.swift
//  Practice Storyboard
//
//  Created by Michael Hammond-Todd on 2017-11-21.
//  Copyright © 2017 MMEDesignStudio. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBAction func buttonIntro(_ sender: Any)
    {
        if let path = Bundle.main.path(forResource:"introduction",ofType: "mov")
        {
        let introduction = AVPlayer(url: URL(fileURLWithPath: path))
        let introductionPlayer = AVPlayerViewController()
        introductionPlayer.player = introduction
        
        present(introductionPlayer,animated: true, completion:
            {
                introduction.play()  //This button plays the introduction video to Design & Learn. 
    })
    }


    }}


