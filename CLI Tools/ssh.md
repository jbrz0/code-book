# SSH Auth and Generation

[Docs](https://linux.die.net/man/1/ssh)

[Cheatsheet](https://cheatsheet.dennyzhang.com/cheatsheet-ssh-a4)

### Securely log into linux distros via SSH

**Ubuntu**

`ssh -i "~/.ssh/key_name.pem" ubuntu@<URL>`

**centOS (Amazon EC2)**

`ssh -i "~/.ssh/key_name.pem" ec2-user@<URL>`

### Generate a Key Pair (Github, EC2)
`ssh-keygen -t rsa -b 4096 -C "email@email.com"`

### Copy a SSH Public Key (MacOS)
`pbcopy < ~/.ssh/id_rsa.pub`

### Output an SSH Public Key (Ubuntu)
`cat ~/.ssh/id_rsa.pub`
