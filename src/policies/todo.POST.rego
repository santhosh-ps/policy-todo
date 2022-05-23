package todoApp.POST.todo

import input.user
import future.keywords.in
import input.resource

default allowed = false

allowed {
  allowedRoles := { "editor", "admin" }
  some x in allowedRoles
  user.attributes.roles[_] == x
}
