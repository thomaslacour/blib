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
git remote set-url origin git@github.com:thomaslacour/blib.git
git config core.sshCommand "ssh -i ~/.ssh/github_blib"
```

Do not forget to configure your ssh agent

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/<key-private>
```

You can also add an alias host

```bash
cat >> EOF > ~/.ssh/config
Host github.com
    HostName ssh.github.com
    User git
    Port 443
EOF
```

Add the key (public) on GitHub

* Go to Settings (from your profile menu, top right)
* Click SSH and GPG keys in the sidebar
* Click New SSH key
* Give it a title (e.g. "My laptop"), paste the key into the Key field, leave the type as "Authentication Key"
* Click Add SSH key

### IONOS and github site

See https://melissahie.com/blog/github-pages-custom-domain-ionos.

### Indexation google

See https://search.google.com/search-console?resource_id=sc-domain%3Afestivalbieresbordeaux.fr
