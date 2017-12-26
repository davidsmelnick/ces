Organization.create!([
  {sp_organization_id:145, name:"Pacific Garden Mission"},
  {sp_organization_id:1, name:"All Chicago"},
  {sp_organization_id:89, name:"AIDS Foundation"}
])

User.create!([
  {email:"d@d.com", password:"abcdef", admin: true, sp_organization_id:1},
  {email:"a@a.com", password:"abcdef", admin: nil, sp_organization_id:145}
])

Perm.create!([
  {description:"HIV"},
  {description:"DV"}
])

ProjType.create!([
  {description:"PSH"},
  {description:"RRH"},
  {description:"PHwSS"}
])

Provider.create!([
  {sp_provider_id: 1300, name: "PGM", sp_organization_id: 145},
  {sp_provider_id: 947, name: "AFC", sp_organization_id: 89}
])