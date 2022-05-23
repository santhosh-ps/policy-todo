package todoApp.DELETE.todo.__ownerID

import input.user
import input.resource
import future.keywords.in

default allowed = false

allowed {
  user.attributes.roles[_] == "editor"
  some id , _ in user.identities
  id == resource.ownerID
}

allowed {
  user.attributes.roles[_] == "admin"
}
