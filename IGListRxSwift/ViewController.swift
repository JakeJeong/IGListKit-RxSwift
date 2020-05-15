//
//  ViewController.swift
//  IGListRxSwift
//
//  Created by ikjeong.MCC on 2020/05/15.
//  Copyright © 2020 ikjeong.MCC. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController {

    // 1
    let collectionView: UICollectionView = {
      // 2
      let view = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout())
      // 3
      view.backgroundColor = .black
      return view
    }()
    
    lazy var adapter: ListAdapter = {
      return ListAdapter(
      updater: ListAdapterUpdater(),
      viewController: self,
      workingRangeSize: 0)
    }()
    
    let loader = JournalEntryLoader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}

extension ViewController : ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
         return loa
     }
     
     func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
         <#code#>
     }
     
     func emptyView(for listAdapter: ListAdapter) -> UIView? {
         <#code#>
     }
     
}

