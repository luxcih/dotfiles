# My Dotfiles

My personal configuration files for the tools and applications I use daily.

These dotfiles are managed with [chezmoi](https://www.chezmoi.io/).

## Installation

Install chezmoi first, then initialize and apply this repository:

```sh
chezmoi init --apply https://github.com/luxcih/dotfiles.git
```

## Usage

### Update your dotfiles

Edit a managed file:

```sh
chezmoi edit ~/.config/fish/config.fish
```

Preview pending changes:

```sh
chezmoi diff
```

Apply changes:

```sh
chezmoi apply
```

### Update the repository

Enter the chezmoi source directory:

```sh
chezmoi cd
```

Then commit and push your changes:

```sh
git add .
git commit -m "Update dotfiles"
git push
```

## License

This project is dedicated to the public domain under the [Unlicense](LICENSE.txt).
