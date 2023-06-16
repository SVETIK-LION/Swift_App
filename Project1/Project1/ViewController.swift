import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonTarget()
        view.backgroundColor = .white
        view.addSubview(logoView)
        view.addSubview(authView)
        view.addSubview(userView)
        view.addSubview(passwordView)
        view.addSubview(welcomeButton)
        setupConstraints()
        
    }
    
    var logoView: UIImageView = {
        let logoView = UIImageView()
        logoView.image = UIImage(named: "Uni.jpeg")
        return logoView
    }()
    
    var authView: UILabel = {
        let authView = UILabel()
        authView.backgroundColor = .purple
        authView.text = "authorization".uppercased()
        authView.font = .systemFont(ofSize: 24)
        authView.textAlignment = .center
        authView.textColor = .white
        return authView
    }()

    var userView: UITextField = {
        let loginView = UITextField()
        loginView.borderStyle = .roundedRect
        loginView.backgroundColor = .systemPink
        loginView.placeholder = "Username"
        loginView.textColor = .white
        loginView.textAlignment = .center
        loginView.font = .systemFont(ofSize: 24)
        
        return loginView
    }()
    
    var passwordView: UITextField = {
        let passwordView = UITextField()
        passwordView.borderStyle = .roundedRect
        passwordView.backgroundColor = .systemPink
        passwordView.placeholder = "password"
        passwordView.textColor = .white
        passwordView.textAlignment = .center
        passwordView.font = .systemFont(ofSize: 24)
        passwordView.isSecureTextEntry = true
        return passwordView
    }()
    
    var welcomeButton: UIButton = {
        let welcomeButton = UIButton()
        welcomeButton.backgroundColor = .purple
        welcomeButton.setTitle("log in".uppercased(), for: .normal)
        welcomeButton.setTitleColor(.white, for: .normal)
        welcomeButton.setTitleColor(.systemPink, for: .highlighted)
        return welcomeButton
    }()
    
    private func setupConstraints() {
        logoView.translatesAutoresizingMaskIntoConstraints = false
        authView.translatesAutoresizingMaskIntoConstraints = false
        userView.translatesAutoresizingMaskIntoConstraints = false
        passwordView.translatesAutoresizingMaskIntoConstraints = false
        welcomeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.5),
            logoView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 2.7),
            
            authView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 40),
            authView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            authView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            authView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 5),
            
            userView.topAnchor.constraint(equalTo: authView.bottomAnchor, constant: 60),
            userView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.5),
            userView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 7),
            
            passwordView.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 30),
            passwordView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.5),
            passwordView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 7),
            
            welcomeButton.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 60),
            welcomeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeButton.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            welcomeButton.heightAnchor.constraint(equalToConstant: view.frame.size.width / 5),
            
        ])
    }
    
    private func addButtonTarget() {
        welcomeButton.addTarget(self, action: #selector(tapWelcomeButton), for: .touchUpInside)
    }
    
    @objc func tapWelcomeButton() {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
    

}

