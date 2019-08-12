//
//  ViewController.swift
//  ImageView
//
//  Created by B.Cheolu on 12/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    let imgList: [String] = [
        "mixed rice-1",
        "nudle",
        "roast meat",
        "sashimi",
        "steak",
        "sushi"
    ]
    var currentIdx: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentIdx = 0
        setImage(dir: 0)
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        setImage(dir: -1)
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        setImage(dir: 1)
    }
    
    func setImage(dir: Int) -> Void {
        currentIdx += dir
        if(currentIdx < 0) {
            currentIdx = imgList.count + currentIdx
        } else if(currentIdx > imgList.count - 1) {
            currentIdx -= imgList.count
        }
        imgView.image = UIImage(named: imgList[currentIdx])
    }
}

