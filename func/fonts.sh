#!/bin/bash


nerd_fonts() {

    #Downloading the fonts
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/CascadiaCode.zip
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hermit.zip
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/SourceCodePro.zip
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/UbuntuMono.zip

    #unziping and deleteing windows fonts
    ls CascadiaCode.zip Hack.zip Hermit.zip SourceCodePro.zip UbuntuMono.zip | xargs -I x unzip x
    ls | grep 'Windows' | xargs -I x rm x

    #moving it to the fonts directory
    mkdir -pv $HOME/.fonts
    ls | grep "Font" | xargs -I x mv x $HOME/.fonts
    rm CascadiaCode.zip Hack.zip Hermit.zip SourceCodePro.zip UbuntuMono.zip \
        LICENSE LICENSE.md LICENSE.txt readme.md

    #installing the fonts
    fc-cache -f

}