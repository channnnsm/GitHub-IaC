module "product_global" {  
  source = "../.."  
}

# GitHubチームの作成  
resource "github_team" "team" {  
  name        = local.team_name  
  description = "Team for ${local.team_name}"  
  privacy     = "closed"  
}

# GitHubチームメンバーの追加  
resource "github_team_membership" "admins" {  
  for_each = toset(local.admins)  
  team_id  = github_team.team.id  
  username = each.value  
  role     = "maintainer"  
}

resource "github_team_membership" "members" {  
  for_each = toset(local.members)  
  team_id  = github_team.team.id  
  username = each.value  
  role     = "member"  
}

resource "github_team_membership" "guests" {  
  for_each = toset(local.guests)  
  team_id  = github_team.team.id  
  username = each.value  
  role     = "member"  
}  
