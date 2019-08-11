//
//  ViewController.swift
//  BasicCalulator
//
//  Created by Meet Madhu on 2019-08-10.
//  Copyright © 2019 Meet Madhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "+", "-"]
    @IBOutlet weak var showResultTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//MARK: Collection View
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let number = numbers[indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NumberCell", for: indexPath) as? NumberCollectionViewCell {
            cell.displayNumberLabel.text = number
            return cell
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        showResultTextField.text = numbers[indexPath.row]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 108, height: 90)
    }
    
}

