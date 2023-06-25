import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    private var session = URLSession.shared
    
    // 1) Добавила WKWebView
    private lazy var webView: WKWebView = {
        let webView = WKWebView()
        webView.navigationDelegate = self
        return webView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(webView) // Добавила webView на главное view
        
        let url: URL? = URL(string: "https://oauth.vk.com/authorize?client_id=1&redirect_uri=http://example.com/callback&scope=12&display=mobile")
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {return}
            do {
                let dialog = try JSONDecoder().decode([DialogModel].self, from: data)
                print(dialog)
            } catch {
                print(error)
            }
        }.resume()
        webView.load(URLRequest(url: url!)) // Метод загрузки
        
        setupConstraints()
    }
    
    // 1) Что за метод func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void)  ? Как его реализовывать и зачем?
    
    // 1) Приложение создала, что делать с ID приложения? 51685230.
    
    // 2) Вообще не поняла. Наверное логичнее будет авторизацию делать ещ едо перехода к сообщениям, то есть во ViewController.
    
    // 3) Возможно стоит использовать getConversations - Возвращает список бесед пользователя.
    
    // 4) ...
    
    private func setupConstraints() {
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor,  constant: 50),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
