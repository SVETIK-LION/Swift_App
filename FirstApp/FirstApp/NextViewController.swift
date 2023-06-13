import UIKit


class NextViewController: UIViewController {
    
    var view1: UIView = {
        let view1 = UIView()
        view1.backgroundColor = .black
        return view1
    }()
    
    var view2: UIView = {
        let view2 = UIView()
        view2.backgroundColor = .blue
        return view2
    }()
    
    var view3: UIView = {
        let view3 = UIView()
        view3.backgroundColor = .green
        return view3
    }()
    
    var view4: UIView = {
        let view4 = UIView()
        view4.backgroundColor = .yellow
        return view4
    }()
    
    var view5: UIView = {
        let view5 = UIView()
        view5.backgroundColor = .red
        return view5
    }()
    
    var view6: UIView = {
        let view6 = UIView()
        view6.backgroundColor = .systemPink
        return view6
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Next View Controller"
        setupView()
        setupConstrain()
    }
    
    private func setupView() {
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
    }
    
    
    private func setupConstrain() {
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        view4.translatesAutoresizingMaskIntoConstraints = false
        view5.translatesAutoresizingMaskIntoConstraints = false
        view6.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            view1.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            view1.heightAnchor.constraint(equalToConstant: view.frame.size.width / 3),
            
            view2.topAnchor.constraint(equalTo: view1.topAnchor),
            view2.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            view2.widthAnchor .constraint(equalTo: view1.widthAnchor),
            view2.heightAnchor.constraint(equalTo: view1.heightAnchor),
            
            view3.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 10),
            view3.leadingAnchor.constraint(equalTo: view1.leadingAnchor),
            view3.widthAnchor .constraint(equalTo: view1.widthAnchor),
            view3.heightAnchor.constraint(equalTo: view1.heightAnchor),
            
            view4.topAnchor.constraint(equalTo: view3.topAnchor),
            view4.leadingAnchor.constraint(equalTo: view3.trailingAnchor, constant: 10),
            view4.widthAnchor .constraint(equalTo: view1.widthAnchor),
            view4.heightAnchor.constraint(equalTo: view1.heightAnchor),
            
            view5.topAnchor.constraint(equalTo: view3.bottomAnchor, constant: 10),
            view5.leadingAnchor.constraint(equalTo: view1.leadingAnchor),
            view5.widthAnchor .constraint(equalTo: view1.widthAnchor),
            view5.heightAnchor.constraint(equalTo: view1.heightAnchor),
            
            view6.topAnchor.constraint(equalTo: view5.topAnchor),
            view6.leadingAnchor.constraint(equalTo: view5.trailingAnchor, constant: 10),
            view6.widthAnchor .constraint(equalTo: view1.widthAnchor),
            view6.heightAnchor.constraint(equalTo: view1.heightAnchor),
        ])
    }
}
