package containerssh.auth

default success = false

success if {
    u := input.username
    p := input.passwordBase64
    record := data.users[_]
    record.name == u
    record.pw == p
}

