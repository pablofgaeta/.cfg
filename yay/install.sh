#!/bin/env bash

set -e

sudo pacman -S --needed git base-devel

mkdir -p ~/workspace/aur
git clone https://aur.archlinux.org/yay.git ~/workspace/aur/yay

cd yay && makepkg -si
