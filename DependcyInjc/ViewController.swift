//
//  ViewController.swift
//  DependcyInjc
//
//  Created by Vedat Dokuzkardeş on 8.12.2023.
//

import UIKit
import Swinject

class ViewController: UIViewController {
    
    
    //Swinject
    
    let container : Container = {
        let container = Container()
        
        container.register(BgProviding.self) { resolver in
            return BgProviding()
            
            let vc = AnotherVC(providerProtocol: resolver.resolve(BgProviding.self))
            
        }
        
        return container
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.backgroundColor = .systemBlue
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        button.setTitle("Another VC", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func btnClick(){
        
        if let VC = container.resolve(AnotherVC.self){
            present(VC, animated: true)
        }
        
    }


}

