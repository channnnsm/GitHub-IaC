locals {  
  # チーム名  
  team_name = "example-team"

  # チームが関わるリポジトリ  
  repositories = [  
    "example-repo-1",  
    "example-repo-2",  
  ]

  # リーダー（権限: admin）  
  admins = [  
    "examlpe-admin-user",  
  ]

  # 開発者メンバー（権限: maintain）  
  members = [  
    "example-developer-user",  
  ]

  # QA, PMなど（権限: pull）  
  guests = [  
    "example-guest-user",  
  ]  
}  
