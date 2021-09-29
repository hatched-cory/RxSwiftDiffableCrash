import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    lazy var tableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)


        let datasource = UITableViewDiffableDataSource<Int, Int>(tableView: self.tableView, cellProvider: { tbl, indexPath, _ in
            return tbl.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        })

        _ = tableView.rx.itemMoved.subscribe(onNext: { print($0) })
    }
}
