# Ansible Playbook: Ubuntu Desktop

An Ansible playbook of setup Ubuntu Desktop GNU/Linux.

- Ubuntu 16.04
- Lightdm
- Unity

Applications:

1. [Calibre](https://calibre-ebook.com/) - A e-book converter and library management.
1. [Dropbox](https://www.dropbox.com/)
1. [FBReader](https://fbreader.org/) - A e-book reader.
1. [Franz](http://meetfranz.com/) (tarball) - A free messaging application for [HipChat](https://www.hipchat.com/), Messenger, Slack, [Telegram](https://telegram.org/).
1. [FreeMind](http://freemind.sourceforge.net/wiki/index.php/Main_Page) (tarball) - A free mind mapping tool.
1. [GVim](http://www.vim.org/) - Vi IMproved - enhanced vi editor - with GNOME2 GUI.
1. [Gcin](http://hyperrate.com/dir.php?eid=67) - GTK+ based input method for Chinese users.
1. ~~[NixNote2](https://github.com/baumgarr/nixnote2)~~ - An unofficial Evernote client for Linux.
1. [Shutter](http://shutter-project.org/) - A feature-rich screenshot program.
1. [Sound Juicer](https://github.com/GNOME/sound-juicer) - GNOME CD Ripper.
1. [Terminator](https://gnometerminator.blogspot.tw/)
1. [VLC](http://www.videolan.org/) - Multimedia player and streamer.
1. [WineHQ](https://wiki.winehq.org/Ubuntu) - official WineHQ build of the popular Wine software.
1. [Workrave](http://www.workrave.org/) - Repetitive Strain Injury prevention tool.
1. [Zeal](https://zealdocs.org/) - Simple offline API documentation browser.

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

