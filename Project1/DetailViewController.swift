//
//  DetailViewController.swift
//  Project1
//
//  Created by Donald McAllister on 10/28/19.
//  Copyright © 2019 Donald McAllister. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedIndex = 0
    var pictureCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(selectedIndex) of \(pictureCount)"   //title is ? and selectedImage is ? here.. so don't need to unwrap
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true 
    }
}
