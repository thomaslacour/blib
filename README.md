# blib

## Help

### Setup git

Create a ssh key pair

```bash
ssh-keygen -t ed25519 -C "tmlacour@gmail.com"
```

Then copy the public key to `Settings>SSH and GPG Key`

Clone the repository, and configure ssh instead of http

```bash
git clone https://github.com/thomaslacour/blib.git
cd blib
git config core.sshCommand "ssh -i ~/.ssh/github_blib"
```

Do not forget to configure your ssh agent

```bash
cat >> EOF > ~/.ssh/config
Host github.com
    HostName ssh.github.com
    User git
    Port 443
EOF
```

### IONOS and github site

See https://melissahie.com/blog/github-pages-custom-domain-ionos.

### Indexation google

See https://search.google.com/search-console?resource_id=sc-domain%3Afestivalbieresbordeaux.fr
