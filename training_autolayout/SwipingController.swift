//
//  SwipingPages.swift
//  training_autolayout
//
//  Created by Айганым Оспан on 03.06.2022.
//

import UIKit



class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let pages = [
        Page (imageName: "ios_pict1", headerText: "IOS Academy", descriptionText: "Have you ever wanted to build working application on IOS? If yes, don't lose a chance to become one of us. Our company is looking for enthusiastic candidates who are eager to grow with us! Press next button to see the requirements"),
        
        Page(imageName: "ios_pict2", headerText: "What do we expect from you? ", descriptionText:  "Understanding how memory management and multithreading work; \nBasic decomposition and problem solving skills; \nThe desire to write understandable and working code; \nWorking in a team and understanding that cool things are created only by teams." )
    ]
    
    private let prevButton : UIButton = {
        let btn  = UIButton(type: .system)
        btn.setTitle("PREV", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        btn.setTitleColor(.gray, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(handlePrevBtn), for: .touchUpInside)

        return btn
    }()
    
    @objc private func handlePrevBtn (){
        let nextIndex = max(pageScroller.currentPage - 1, 0)
        pageScroller.currentPage =  nextIndex
        let indexPath = IndexPath(item: nextIndex, section: 0)
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
    }

    private let nextButton : UIButton = {
        let btn  = UIButton(type: .system)
        btn.setTitle("NEXT", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        btn.setTitleColor(.red, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(handleNextBtn), for: .touchUpInside)
        return btn
    }()
    
    @objc private func handleNextBtn (){
        let nextIndex = min(pageScroller.currentPage + 1, pages.count - 1)
        pageScroller.currentPage =  nextIndex
        let indexPath = IndexPath(item: nextIndex, section: 0)
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
    }

    private let pageScroller : UIPageControl = {
        let pg = UIPageControl()
        pg.currentPage = 0
        pg.numberOfPages = 2
        pg.currentPageIndicatorTintColor = .red
        pg.pageIndicatorTintColor = .gray
        return pg
    }()
    
    private func setupBottomStack(){

        let stack = UIStackView(arrangedSubviews: [prevButton, pageScroller, nextButton])
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stack)

        NSLayoutConstraint.activate([
            stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stack.heightAnchor.constraint(equalToConstant: 50)

        ])

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBottomStack()
        collectionView!.register(PageCell.self, forCellWithReuseIdentifier: "Cell")

    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PageCell
        
        let page = pages[indexPath.item] 
        cell.page = page
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    

}
