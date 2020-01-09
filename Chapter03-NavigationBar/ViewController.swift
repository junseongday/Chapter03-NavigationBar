//
//  ViewController.swift
//  Chapter03-NavigationBar
//
//  Created by JSMAC on 2020/01/09.
//  Copyright © 2020 JSPRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading
        self.initTitleInput()
    }
    
    // MARK: - 타이틀에 텍스트 필드 사용하기
    func initTitleInput() {
        let tf = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 35))
        tf.backgroundColor = UIColor.white
        tf.font = UIFont.systemFont(ofSize: 13)
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.keyboardType = .URL
        tf.keyboardAppearance = .dark
        tf.layer.borderWidth = 0.3
        tf.layer.borderColor = UIColor.init(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
        
        self.navigationItem.titleView = tf
        
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 37))
        v.backgroundColor = UIColor.brown
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: v)
        
        let rv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 37))
        rv.backgroundColor = UIColor.red
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rv)
    }
    
    
    // MARK: - 타이틀에 이미지 표현하기
    func initTitleImage() {
        let imageV = UIImageView(image: UIImage(named: "swift_logo"))
        self.navigationItem.titleView = imageV
    }
    
    // MARK: - 라벨두개사용
    func initTitleNew() {
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 36))
        
        let topTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 18))
        topTitle.numberOfLines = 1
        topTitle.textAlignment = .center
        topTitle.font = UIFont.systemFont(ofSize: 15)
        topTitle.textColor = UIColor.white
        topTitle.text = "58개 숙소"
        
        let subTitle = UILabel(frame: CGRect(x: 0, y: 18, width: 200, height: 18))
        subTitle.numberOfLines = 1
        subTitle.textAlignment = .center
        subTitle.font = UIFont.systemFont(ofSize: 12)
        subTitle.textColor = UIColor.white
        subTitle.text = "1박(1월 10일 ~ 1월 11일)"
        
        containerView.addSubview(topTitle)
        containerView.addSubview(subTitle)
        self.navigationItem.titleView = containerView

        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = color
        
    }
    
    // MARK: - 기본 사용법
    func initTitle() {
        let nTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        nTitle.numberOfLines = 2
        nTitle.textAlignment = .center
        nTitle.textColor = UIColor.white
        nTitle.font = UIFont.systemFont(ofSize: 15)
        nTitle.text = "58개 숙소 \n 1박(1월 10일 ~ 1월 11일)"
        self.navigationItem.titleView = nTitle
        
        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = color
    }

}

