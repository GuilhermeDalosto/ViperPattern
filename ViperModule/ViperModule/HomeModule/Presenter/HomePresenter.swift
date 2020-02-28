//
//  HomePresenter.swift
//  ViperModule
//
//  Created by Guilherme Martins Dalosto de Oliveira on 28/02/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

class HomePresenter : HomePresentation {
    
    weak var view: HomeView?
    var interactor: HomeInteractorLogic
    var router: HomeRouting
    
    init(view: HomeView,interactor: HomeInteractor,router: HomeRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        let homeModel = self.interactor.getEntity()
        print("Home model value is \(homeModel)")
        DispatchQueue.main.async{ [weak self] in
            guard let `self` = self else {return}
            self.view?.updateTitle(title: homeModel.title)
        }
    }
    
}
