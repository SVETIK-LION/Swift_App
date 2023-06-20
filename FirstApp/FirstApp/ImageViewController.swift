import UIKit


class ImageViewController: UIViewController {
    var imageView = UIImageView()
    
    init(image: UIImage) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
        imageView.backgroundColor = .white
        view.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImage()
    }
    
    func setupImage(){
        view.addSubview(imageView)
        setupConstraints()
    }
    
    func setupConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width),
            imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 2.5),
            
        
        ])
    }
}
