import UIKit

class ViewController: UIViewController {
    
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
        
        return passwordView
    }()
    
    var welcomeView: UILabel = {
        let welcomeView = UILabel()
        welcomeView.backgroundColor = .purple
        welcomeView.text = "log in".uppercased()
        welcomeView.font = .systemFont(ofSize: 24)
        welcomeView.textAlignment = .center
        welcomeView.textColor = .white
        
        return welcomeView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(logoView)
        view.addSubview(authView)
        view.addSubview(userView)
        view.addSubview(passwordView)
        view.addSubview(welcomeView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        logoView.translatesAutoresizingMaskIntoConstraints = false
        authView.translatesAutoresizingMaskIntoConstraints = false
        userView.translatesAutoresizingMaskIntoConstraints = false
        passwordView.translatesAutoresizingMaskIntoConstraints = false
        welcomeView.translatesAutoresizingMaskIntoConstraints = false
        
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
            
            welcomeView.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 60),
            welcomeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            welcomeView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 5),
            
        ])
    }


}

