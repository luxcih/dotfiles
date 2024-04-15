# My .dotfiles

Here you'll find configurations for various tools and applications that I use daily. These dotfiles are managed using GNU Stow, making it easy to symlink configuration files into the appropriate locations.

## Installation

> You need to have GNU Stow installed on your system first, I use Arch BTW, so I'll have it installed using pacman:
> ```bash
> $ sudo pacman -S stow
> ```

To use my dotfiles, clone this repository into your home directory:

```bash
git clone https://github.com/luxcih/dotfiles ~/.dotfiles
```

Navigate to the `.dotfiles` directory

```bash
cd ~/.dotfiles
```

Use GNU Stow to symlink the configurations:

```bash
stow .
```

## Usage

After symlinking the configurations, you can customize them further or start using them immediately. Any changes made to the files within the repository will be reflected in your home directory.

## Contributions

Feel free to fork this repository, make changes, and submit pull requests. I'm open to suggestions for improvements or new configurations.

## License

This project is dedicated to the public domain under the [Unlicense](LICENSE.txt).
