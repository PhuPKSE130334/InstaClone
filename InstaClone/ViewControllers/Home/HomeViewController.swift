//
//  HomeViewController.swift
//  InstaClone
//
//  Created by Phu Phan on 18/11/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    lazy var posts: [Post] = {
        
        let model = Model()
        
        return model.postList
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorStyle = .none
        
        tableView.estimatedRowHeight = CGFloat(88)
        
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
        
        tableView.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
        tableView.tableFooterView = UIView()
        
        var rightBarItemImage = UIImage(named: "send_nav_icon")
        
        rightBarItemImage = rightBarItemImage?.withRenderingMode(.alwaysOriginal)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightBarItemImage, style: .plain, target: nil, action: nil)
        
        let profileImageView = UIImageView(image: UIImage(named: "logo_nav_icon"))
        
        self.navigationItem.titleView = profileImageView
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count + 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell") as! StoriesTableViewCell
            
            return cell
            
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell") as! FeedTableViewCell
        
        
        let postData = posts[indexPath.row - 1]
        
        cell.profileImage.image = postData.user.profileImage
        
        cell.dateLabel.text = postData.datePosted
        
        cell.postedImage.image = postData.postImage
        
        cell.likeCount.text = "\(postData.likesCount) likes"
        
        cell.commentLabel.text = postData.postComment
        
        cell.viewCommentLabel.text = "View all \(postData.commentCount) comments"
        
        cell.usernameTitleButton.setTitle(postData.user.name, for: .normal)
        
        
        
        return cell
    }
    
    
}
