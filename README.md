# Ansible Playbook: Ubuntu Desktop

An Ansible playbook of setup Ubuntu Desktop GNU/Linux.

Applications:

1. [GVim](http://www.vim.org/)
1. [NixNote 2](https://github.com/baumgarr/nixnote2)
1. [VLC](http://www.videolan.org/)
1. [WineHQ](https://wiki.winehq.org/Ubuntu)
1. [Zeal](https://zealdocs.org/)
1. [terminator](https://gnometerminator.blogspot.tw/)

## Requirements

None.

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

