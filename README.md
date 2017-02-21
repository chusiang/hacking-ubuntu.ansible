# Ansible Playbook: Ubuntu Desktop

An Ansible playbook of setup Ubuntu Desktop GNU/Linux.

Applications:

1. [Franz](http://meetfranz.com/) - a free messaging application for [HipChat](https://www.hipchat.com/), Messenger, Slack, [Telegram](https://telegram.org/).
1. [GVim](http://www.vim.org/)
1. [Gcin](http://hyperrate.com/dir.php?eid=67)
1. [NixNote2](https://github.com/baumgarr/nixnote2) - An unofficial Evernote client for Linux.
1. [Terminator](https://gnometerminator.blogspot.tw/)
1. [VLC](http://www.videolan.org/)
1. [WineHQ](https://wiki.winehq.org/Ubuntu)
1. [Zeal](https://zealdocs.org/)

## Requirements

1. Manual download the `boshiamy-gcin.tar.gz` to `files/` from [boshiamy.com](https://boshiamy.com).

## Variables

```
apt_console_packages:
  - ack-grep
  - apt-transport-https
  - aptitude
  - aptsh
  ...

apt_desktop_packages:
  - chromium-browser
  - compizconfig-settings-manager
  - gcin
  ...

vimrc_reversion: "feature/21_YCM_n_YltiSnips"

gcin_liu_table_path: "files/boshiamy-gcin.tar.gz"
```

## Dependencies

- chusiang.switch-apt-mirror
- chusiang.vim-and-vi-mode

## Example Playbook

- Full setup.

  ```
  $ ansible-playbook setup.yml
  ```

- Only the console.

  ```
  $ ansible-playbook setup.yml --tags="console"
  ```

## License

Copyright (c) chusiang from 2016-2017 under the MIT license.

