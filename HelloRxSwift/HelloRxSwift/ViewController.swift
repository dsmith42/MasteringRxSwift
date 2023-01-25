//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by Dan Smith on 25/01/2023.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		_ = Observable.from(optional: [1, 2, 3, 4, 5])
	}

}

