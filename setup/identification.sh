#!/bin/bash

echo "Enter identification for git and autocomplete..."

export GIT_NAME=$(gum input --placeholder "Enter your full name for Git" --prompt "Name> ")
export GIT_EMAIL=$(gum input --placeholder "Enter your email for Git" --prompt "Email> ")
