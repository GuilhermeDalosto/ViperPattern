//
//  ViewController.swift
//  ViperModule
//
//  Created by Guilherme Martins Dalosto de Oliveira on 28/02/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController, HomeView {
  
    

    var presenter: HomePresentation!
    
    @IBOutlet weak var helloLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter.viewDidLoad()
        
    }
    
    func updateTitle(title: String) {
        self.helloLabel.text = title
      }


}

