//
//  ViewController.swift
//  Tapit
//
//  Created by DCS on 01/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timeleft = 30
    var score = 0
    var name:String = ""
    private var timer = Timer()
    
    private let view1 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 40, y: view.safeAreaInsets.top + 100, width: 80, height: 80)
        return view
    }()
    private let view2 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 150, y: view.safeAreaInsets.top + 100, width: 80, height: 80)
        return view
    }()
    private let view3 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 260, y: view.safeAreaInsets.top + 100, width: 80, height: 80)
        return view
    }()
    private let view4 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 40, y:210, width: 80, height: 80)
        return view
    }()
    private let view5 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 150, y: 210, width: 80, height: 80)
        return view
    }()
    private let view6 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 260, y: 210, width: 80, height: 80)
        return view
    }()
    private let view7 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 40, y: 320, width: 80, height: 80)
        return view
    }()
    private let view8 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 150, y: 320, width: 80, height: 80)
        return view
    }()
    private let view9 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 5
        view.frame = CGRect(x: 260, y: 320, width: 80, height: 80)
        return view
    }()
    
    private let timerlabel : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.frame = CGRect(x: 270, y: 450, width: 80, height: 50)
        return label
    }()
    
    private let timertxt : UILabel = {
        let label = UILabel()
        label.text = "Remaining Time :"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.frame = CGRect(x: 100, y: 450, width: 160, height: 50)
        return label
    }()
    
    
    private let Scorelabel : UILabel = {
        let label = UILabel()
        label.text = "Your Score"
        label.isHidden = true
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        label.frame = CGRect(x: 130, y: 500, width: 160, height: 50)
        return label
    }()
    
    private let Score : UILabel = {
        let label = UILabel()
        label.text = "0"
        label.isHidden = true
        label.textAlignment = .center
        label.textColor = .orange
        label.font = .boldSystemFont(ofSize: 25)
        label.frame = CGRect(x: 160, y: 600, width: 80, height: 50)
        return label
    }()
    
    private let btn : UIButton = {
        let btn = UIButton()
        btn.setTitle("Start", for: .normal)
        btn.layer.cornerRadius = 25
        btn.backgroundColor = .orange
        btn.titleLabel!.font = .boldSystemFont(ofSize: 25)
        btn.addTarget(self, action: #selector(starttimer), for: .touchUpInside)
        btn.frame = CGRect(x: 120, y: 520, width: 150, height: 60)
        return btn
    }()
    
    @objc private func starttimer()
    {
        print("Click..")
        btn.isHidden = true
        Scorelabel.isHidden = false
        Score.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Timerstart), userInfo: .none, repeats: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tap It!"
        self.view.backgroundColor = .white
        view.addSubview(Scorelabel)
        view.addSubview(Score)
        view.addSubview(timerlabel)
        view.addSubview(timertxt)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        view.addSubview(view7)
        view.addSubview(view8)
        view.addSubview(view9)
        view.addSubview(btn)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didtapview))
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(didtapview2))
        tap2.numberOfTapsRequired = 1
        tap2.numberOfTouchesRequired = 1
        
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(didtapview3))
        tap3.numberOfTapsRequired = 1
        tap3.numberOfTouchesRequired = 1
        
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(didtapview4))
        tap4.numberOfTapsRequired = 1
        tap4.numberOfTouchesRequired = 1
        
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(didtapview5))
        tap5.numberOfTapsRequired = 1
        tap5.numberOfTouchesRequired = 1
        
        let tap6 = UITapGestureRecognizer(target: self, action: #selector(didtapview6))
        tap6.numberOfTapsRequired = 1
        tap6.numberOfTouchesRequired = 1
        
        let tap7 = UITapGestureRecognizer(target: self, action: #selector(didtapview7))
        tap7.numberOfTapsRequired = 1
        tap7.numberOfTouchesRequired = 1
        
        let tap8 = UITapGestureRecognizer(target: self, action: #selector(didtapview8))
        tap8.numberOfTapsRequired = 1
        tap8.numberOfTouchesRequired = 1
        
        let tap9 = UITapGestureRecognizer(target: self, action: #selector(didtapview9))
        tap9.numberOfTapsRequired = 1
        tap9.numberOfTouchesRequired = 1
        view1.addGestureRecognizer(tap)
        view2.addGestureRecognizer(tap2)
        view3.addGestureRecognizer(tap3)
        view4.addGestureRecognizer(tap4)
        view5.addGestureRecognizer(tap5)
        view6.addGestureRecognizer(tap6)
        view7.addGestureRecognizer(tap7)
        view8.addGestureRecognizer(tap8)
        view9.addGestureRecognizer(tap9)
    }
}
extension ViewController{
    
    @objc private func didtapview(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view1.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else
        {
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    
    @objc private func didtapview2(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view2.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview3(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view3.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    @objc private func didtapview4(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view4.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview5(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view5.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview6(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view6.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview7(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view7.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview8(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view8.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview9(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.view9.backgroundColor!.isEqual(UIColor.black))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    
    
    
    @objc private func Timerstart(){
        self.timeleft -= 1
        self.timerlabel.text = String(self.timeleft)
        
        let randomInt = Int.random(in: 1..<10)
        if( randomInt == 1)
        {
            view1.backgroundColor = .black
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
            
        }
        else if(randomInt == 2)
        {
            view2.backgroundColor = .black
            view1.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
        }
        else if(randomInt == 3)
        {
            view3.backgroundColor = .black
            view2.backgroundColor = .clear
            view1.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
        }
        else if(randomInt == 4)
        {
            view4.backgroundColor = .black
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view1.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
        }
        else if(randomInt == 5)
        {
            view5.backgroundColor = .black
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view1.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
        }
        else if(randomInt == 6)
        {
            view6.backgroundColor = .black
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view1.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
        }
        else if(randomInt == 7)
        {
            view7.backgroundColor = .black
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view1.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
        }
        else if(randomInt == 8)
        {
            view8.backgroundColor = .black
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view1.backgroundColor = .clear
            view9.backgroundColor = .clear
        }
        else if(randomInt == 9)
        {
            view9.backgroundColor = .black
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view1.backgroundColor = .clear
        }
        
        if(self.timeleft==0){
            timer.invalidate()
            view1.backgroundColor = .clear
            view2.backgroundColor = .clear
            view3.backgroundColor = .clear
            view4.backgroundColor = .clear
            view5.backgroundColor = .clear
            view6.backgroundColor = .clear
            view7.backgroundColor = .clear
            view8.backgroundColor = .clear
            view9.backgroundColor = .clear
            
            let alert = UIAlertController(title: "Congralutions!\n Your Score :  \(score) \n", message: "Please Enter Your Name", preferredStyle: .alert)
            alert.addTextField { (tf) in tf.placeholder = "Enter Your Name"}
            
            let action = UIAlertAction(title: "submit", style: .default) { (_) in
                self.name = (alert.textFields?.first?.text)!
                UserDefaults.standard.setValue("applePhone123", forKey: "UserToken")
                UserDefaults.standard.setValue(self.name, forKey: "Name")
                UserDefaults.standard.setValue(self.score, forKey: "Score")
                let vc = ScoreBoardVC()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            alert.addAction(action)
            present(alert , animated: true , completion: nil)
        }
    }
}

