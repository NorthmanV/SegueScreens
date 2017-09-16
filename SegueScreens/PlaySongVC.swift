//
//  PlaySongVC.swift
//  SegueScreens
//
//  Created by Руслан Акберов on 17.09.17.
//  Copyright © 2017 Руслан Акберов. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        }
        
        set {
            _selectedSong = newValue
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        songTitleLabel.text = _selectedSong

    }

    @IBOutlet weak var songTitleLabel: UILabel!

}
