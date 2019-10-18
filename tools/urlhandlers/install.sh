#!/bin/bash
sudo cp idea-url-handler /usr/bin/idea-url-handler
sudo cp phpstorm-url-handler /usr/bin/phpstorm-url-handler
sudo chmod +x /usr/bin/idea-url-handler
sudo desktop-file-install idea-url-handler.desktop
sudo desktop-file-install phpstorm-url-handler.desktop
sudo update-desktop-database