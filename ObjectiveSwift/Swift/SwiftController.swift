//
//  SwiftController.swift
//  ObjectiveSwift
//
//  Created by HanYong on 2019/3/15.
//  Copyright © 2019 HanYong. All rights reserved.
//

import UIKit

class SwiftController : UIViewController{

    //前面添加 @objc 表示可以被OC类引用
    @objc public var name : String!
    static var age : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.purple
        
        let btn = UIButton(type: .custom)
        btn.setTitle("back OC", for: .normal)
        btn.setTitleColor(UIColor.orange, for: .normal)
        btn.frame = CGRect(x: 20, y: 100, width: 80, height: 30)
        btn.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        self.view.addSubview(btn)
        
        print("\(name ?? "name为空")")
    }
    
    @objc var work : String! {
        didSet{
            
            print("\(work ?? "空值")")
        }
    }
    
    @objc func start() {
         print("112244")
    }
    
    @objc func goBack ()  {
        let viewC = OCViewController()
        viewC.name = "回去"
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
