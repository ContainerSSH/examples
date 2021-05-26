package containerssh.config

image(user) = i {
    record := data.users[_]
    record.name == user
    i := record.image
} else = data.defaultImage

config = {
  "kubernetes": {
    "pod": {
      "podSpec": {
        "containers": [
          {"name": "shell", "image": image(input.username)}
        ]
      }
    }
  }
}
