//
//  HomeModuleBuilder.swift
//  ViperModule
//
//  Created by Guilherme Martins Dalosto de Oliveira on 28/02/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

class HomeModuleBuilder{
    
    static func build() -> UIViewController{
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        let interactor = HomeInteractor()
        let router = HomeRouter(view: view)
        let presenter = HomePresenter(view: view,interactor: interactor,router: router)
        view.presenter = presenter
        return view
    }
    
}
