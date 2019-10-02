//
//  ProjectIntroductionViewController.swift
//  BelizeCityTour
//
//  Created by 辛忠翰 on 2018/12/30.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit

class ProjectIntroductionViewController: UIViewController {
    let projectIntroductionView = ProjectIntroductionView.init(projectIntroduction: ProjectIntroduction.getAllIntroductions()[0])
    
//    var goToICDFWebSiteObservation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectIntroductionView.delegate = self
        view.addSubview(projectIntroductionView)
        projectIntroductionView.fullAnchor(superView: view)
//        goToICDFWebSiteObservation = projectIntroductionView.observe(\ProjectIntroductionView.isGoToICDFWebsitePressed, options: [.new], changeHandler: { [weak self](_, _) in
//            guard let url = URL(string: "http://www.icdf.org.tw/mp.asp?mp=2") else {return}
//            let naviVC = UINavigationController(rootViewController: WebViewController.init(url: url))
//            self?.present(naviVC, animated: true, completion: nil)
//        })
    }
}

extension ProjectIntroductionViewController: ProjectIntroductionViewDelegate{
    func goToHOCVideo(sender: UIButton, url: URL) {
        let naviVC = UINavigationController.init(rootViewController: WebViewController.init(url: url))
        present(naviVC, animated: true)
    }
    
    func goToWebsite(sender: UIButton, destinationNavivc: UINavigationController) {
        present(destinationNavivc, animated: true, completion: nil)
    }
    
}
