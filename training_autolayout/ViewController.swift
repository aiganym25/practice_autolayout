////
////  ViewController.swift
////  training_autolayout
////
////  Created by Айганым Оспан on 03.06.2022.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    //store the image
//
//    let imageView: UIImageView = {
//        let img = UIImage(named: "anime.png")
//        let imageView = UIImageView(image: img)
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//
//    }()
//
//    let descriptionView : UITextView = {
//        
//        let txt = UITextView()
//
//        let attributedText = NSMutableAttributedString(string: "Let's go, enjoy our application! Enjoy the new features that we have added recently", attributes:
//                                                        [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
//
//        attributedText.append(NSAttributedString(string: "\n\n\nAre you ready to have lots of fun with your dream application? Don't wait any longer! Buy your seat and enjoy the online stream", attributes:           [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
//                                                                                                                                                                                                                         NSAttributedString.Key.foregroundColor : UIColor.darkGray]))
//
//        txt.attributedText = attributedText
//        txt.isEditable = false
//        txt.textAlignment = .center
//        txt.translatesAutoresizingMaskIntoConstraints = false
//        return txt
//
//    }()
//
//    let prevButton : UIButton = {
//        let btn  = UIButton(type: .system)
//        btn.setTitle("PREV", for: .normal)
//        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
//        btn.setTitleColor(.gray, for: .normal)
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        return btn
//    }()
//
//    let nextButton : UIButton = {
//        let btn  = UIButton(type: .system)
//        btn.setTitle("NEXT", for: .normal)
//        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
//        btn.setTitleColor(.red, for: .normal)
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        return btn
//    }()
//
//    let pageScroller : UIPageControl = {
//        let pg = UIPageControl()
//        pg.currentPage = 0
//        pg.numberOfPages = 2
//        pg.currentPageIndicatorTintColor = .red
//        pg.pageIndicatorTintColor = .gray
//        return pg
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.addSubview(imageView)
//        view.addSubview(descriptionView)
//
//
//        setupLayout()
//        setupBottomStack()
//    }
//
//    private func setupBottomStack(){
//
//        let stack = UIStackView(arrangedSubviews: [prevButton, pageScroller, nextButton])
//        stack.distribution = .fillEqually
//        stack.translatesAutoresizingMaskIntoConstraints = false
//
//        view.addSubview(stack)
//
//        NSLayoutConstraint.activate([
//            stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            stack.heightAnchor.constraint(equalToConstant: 50)
//
//        ])
//
//    }
//
//    private func setupLayout() {
//        NSLayoutConstraint.activate ([
//
//            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
//            imageView.widthAnchor.constraint(equalToConstant: 200),
//            imageView.heightAnchor.constraint(equalToConstant: 200),
//
//            descriptionView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 80),
//            descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
//            descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
//            descriptionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//
//
//        ])
//
//
//    }
//
//
//}
//
