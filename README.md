# Custom Powerline for Oh My Bash

Custom [Oh My Bash](https://github.com/ohmybash/oh-my-bash) themes based on the built-in [powerline](https://github.com/ohmybash/oh-my-bash/tree/master/themes/powerline) theme. Eighteen variants across two palettes — nine [Dracula](https://draculatheme.com/) and nine [Nord](https://www.nordtheme.com/) — apply a palette accent to the user/session segment; the remaining prompt segments use harmonious colors with automatic light/dark text contrast.

## About

**This project** — Eighteen powerline variants spanning the Dracula and Nord palettes. Each folder contains a single `powerline.theme.sh`.

**Oh My Bash** — A community framework for managing Bash configuration, plugins, and themes. See the [repository](https://github.com/ohmybash/oh-my-bash) and [wiki](https://github.com/ohmybash/oh-my-bash/wiki).

**Dracula** — A dark color scheme used across hundreds of apps. Palette and contribution guidelines: [draculatheme.com/contribute](https://draculatheme.com/contribute).

**Nord** — An arctic, north-bluish color palette. Colors and palettes: [nordtheme.com/docs/colors-and-palettes](https://www.nordtheme.com/docs/colors-and-palettes).

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

### Apply a Nord variant

Pick a color folder under `themes/` (for example `powerline-nord-green`) and replace the powerline theme file in your custom copy:

```bash
cp themes/powerline-nord-green/powerline.theme.sh \
   "$OSH_CUSTOM/themes/powerline/powerline.theme.sh"
```

Keep `OSH_THEME="powerline"` — only `powerline.theme.sh` inside `custom/themes/powerline/` changes; no extra theme name is required.

Available colors: `powerline-nord-green`, `powerline-nord-red`, `powerline-nord-orange`, `powerline-nord-yellow`, `powerline-nord-purple`, `powerline-nord-blue`, `powerline-nord-teal`, `powerline-nord-pink`, `powerline-nord-gray`.

### Restore original colors

To go back to the default Oh My Bash powerline colors, replace `powerline.theme.sh` in your custom copy with the bundled theme from your local installation:

```bash
cp "$OSH/themes/powerline/powerline.theme.sh" \
   "$OSH_CUSTOM/themes/powerline/powerline.theme.sh"
source ~/.bashrc
```

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
| `powerline-nord-green`     | `#a3be8c`       |
| `powerline-nord-red`       | `#bf616a`       |
| `powerline-nord-orange`    | `#d08770`       |
| `powerline-nord-yellow`    | `#ebcb8b`       |
| `powerline-nord-purple`    | `#b48ead`       |
| `powerline-nord-blue`      | `#5e81ac`       |
| `powerline-nord-teal`      | `#8fbcbb`       |
| `powerline-nord-pink`      | `#88c0d0`       |
| `powerline-nord-gray`      | `#4c566a`       |


Source: [draculatheme.com/contribute](https://draculatheme.com/contribute) (Dracula), [nordtheme.com/docs/colors-and-palettes](https://www.nordtheme.com/docs/colors-and-palettes) (Nord)

## License

See [LICENSE](LICENSE) . Custom Powerline for Oh My Bash is derived from [Oh My Bash](https://github.com/ohmybash/oh-my-bash). 

