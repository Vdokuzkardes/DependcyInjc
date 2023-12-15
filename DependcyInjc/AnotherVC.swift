//
//  AnotherVC.swift
//  DependcyInjc
//
//  Created by Vedat Dokuzkardeş on 8.12.2023.
//

import UIKit

class AnotherVC: UIViewController {
    
    private let providerProtocol : BgProviderProtocol?
    
    init(providerProtocol : BgProviderProtocol?){
        self.providerProtocol = providerProtocol
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = providerProtocol?.bgcolor ?? .white
    }
    

}
