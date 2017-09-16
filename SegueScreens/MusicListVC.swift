//
//  MusicListVC.swift
//  SegueScreens
//
//  Created by Руслан Акберов on 16.09.17.
//  Copyright © 2017 Руслан Акберов. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue

    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }

    @IBAction func load3rdSongPressed(_ sender: Any) {
        let songTitle = "Schools Out!"
        performSegue(withIdentifier: "SongVC", sender: songTitle)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song

            }
        }
    }
    
    
    



}
