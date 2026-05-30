# Dracula Powerline for Oh My Bash

Custom [Oh My Bash](https://github.com/ohmybash/oh-my-bash) themes based on the built-in [powerline](https://github.com/ohmybash/oh-my-bash/tree/master/themes/powerline) theme. Nine variants apply the official [Dracula color palette](https://draculatheme.com/) to the user/session segment; the remaining prompt segments use harmonious Dracula colors with automatic light/dark text contrast.

## About

**This project** — Nine Dracula-themed powerline variants. Each folder contains a single `powerline.theme.sh`.

**Oh My Bash** — A community framework for managing Bash configuration, plugins, and themes. See the [repository](https://github.com/ohmybash/oh-my-bash) and [wiki](https://github.com/ohmybash/oh-my-bash/wiki).

**Dracula** — A dark color scheme used across hundreds of apps. Palette and contribution guidelines: [draculatheme.com/contribute](https://draculatheme.com/contribute).

## Install Oh My Bash

If Oh My Bash is not installed yet, follow the [Getting Started](https://github.com/ohmybash/oh-my-bash/tree/master#getting-started) guide:

Default install location: `~/.oh-my-bash`. Custom directory: set `OSH` before running the install script (see [Advanced Installation](https://github.com/ohmybash/oh-my-bash/tree/master#advanced-installation)).

## Install custom themes (Oh My Bash)

To customize the bundled **powerline** theme, copy it into the custom themes directory so Oh My Bash loads your copy instead of the original. This follows the [Customization of Plugins and Themes](https://github.com/ohmybash/oh-my-bash/tree/master#customization-of--plugins-and-themes) workflow:

```bash
mkdir -p "$OSH_CUSTOM/themes"
cp -r {"$OSH","$OSH_CUSTOM"}/themes/powerline
```

Set the theme in `~/.bashrc` and reload:

```bash
OSH_THEME="powerline"
source ~/.bashrc
```

### Apply a Dracula variant

Pick a color folder under `themes/` (for example `powerline-dracula-purple`) and replace the powerline theme file in your custom copy:

```bash
cp themes/powerline-dracula-purple/powerline.theme.sh \
   "$OSH_CUSTOM/themes/powerline/powerline.theme.sh"
```

Keep `OSH_THEME="powerline"` — only `powerline.theme.sh` inside `custom/themes/powerline/` changes; no extra theme name is required.

Available colors: `powerline-dracula-blue`, `powerline-dracula-red`, `powerline-dracula-purple`, `powerline-dracula-cyan`, `powerline-dracula-green`, `powerline-dracula-yellow`, `powerline-dracula-orange`, `powerline-dracula-pink`, `powerline-dracula-gray`.

## Variants


| Theme name                 | User segment BG |
| -------------------------- | --------------- |
| `powerline-dracula-blue`   | `#6272A4`       |
| `powerline-dracula-red`    | `#FF5555`       |
| `powerline-dracula-purple` | `#BD93F9`       |
| `powerline-dracula-cyan`   | `#8BE9FD`       |
| `powerline-dracula-green`  | `#50FA7B`       |
| `powerline-dracula-yellow` | `#F1FA8C`       |
| `powerline-dracula-orange` | `#FFB86C`       |
| `powerline-dracula-pink`   | `#FF79C6`       |
| `powerline-dracula-gray`   | `#F8F8F2`       |


Source: [draculatheme.com/contribute](https://draculatheme.com/contribute)

## License

See [LICENSE](LICENSE) . Dracula Powerline for Oh My Bash is derived from [Oh My Bash](https://github.com/ohmybash/oh-my-bash). 

