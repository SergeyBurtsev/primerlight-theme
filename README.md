# primerlight-theme

A light Emacs theme based on GitHub's syntax colors.

Requires Emacs 29.1 or later.

## Installation

### Emacs 30+ (use-package with :vc)

```elisp
(use-package primerlight-theme
  :vc (:url "https://github.com/SergeyBurtsev/primerlight-theme" :rev :newest)
  :config
  (load-theme 'primerlight t))
```

### Emacs 29

```elisp
(unless (package-installed-p 'primerlight-theme)
  (package-vc-install "https://github.com/SergeyBurtsev/primerlight-theme"))
(load-theme 'primerlight t)
```

### Manual

Clone the repository and add it to the theme path:

```elisp
(add-to-list 'custom-theme-load-path "~/path/to/primerlight-theme/")
(load-theme 'primerlight t)
```

## Updating

Run `M-x package-vc-upgrade RET primerlight-theme`, or `M-x package-vc-upgrade-all`.

## License

GPL-3.0-or-later. See `LICENSE`.
