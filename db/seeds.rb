Organization.create!([
  {sp_organization_id:145, name:"Pacific Garden Mission"},
  {sp_organization_id:1, name:"All Chicago"},
  {sp_organization_id:89, name:"AIDS Foundation"}
]) #loaded erry day

User.create!([
  {email:"d@d.com", password:"abcdef", admin: true, sp_organization_id:1},
  {email:"a@a.com", password:"abcdef", admin: nil, sp_organization_id:145}
]) #loaded throughout the process. eventually, seed only needs the admins

Perm.create!([
  {description:"HIV"},
  {description:"DV"}
]) #this one gets loaded once and then never again. so these can be the real ones eventually

ProjType.create!([
  {description:"PSH"},
  {description:"RRH"},
  {description:"PHwSS"}
]) #this one gets loaded once and then never again. so these can be the real ones eventually

Provider.create!([
  {sp_provider_id: 1300, name: "PGM", sp_organization_id: 145, proj_type_id: 1},
  {sp_provider_id: 947, name: "AFC", sp_organization_id: 89, proj_type_id: 2}
]) #loaded erry day