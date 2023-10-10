website
=======
[![Netlify Status](https://api.netlify.com/api/v1/badges/e2bc046a-5b27-4933-ae1c-21b648cae30a/deploy-status)](https://app.netlify.com/sites/felipe-keiler-nom-br/deploys)

Source code for [my website](https://felipe.keiler.nom.br), built with the static site generator [Zola](https://www.getzola.org/) and [Nix](https://nixos.org/). Currently a bit empty, but might become less empty later. Can be previewed at [Netlify](https://felipe-keiler-nom-br.netlify.app/).

## 1. Project Structure

```
📁 content (Markdown files containing the pages content)
📁 sass (Website styles, writen in SCSS)
📁 static
> 📄 favicon.ico (The website's favicon)
📁 templates
> 📄 base.html (The default template, inherited by all pages)
> 📄 index.html (The homepage template)
> 📄 section.html (Template for the homepage and other sections, denoted by "folder/_index.md".)
⚙️ config.toml (Zola config)
🔒 flake.lock (Lockfile for ✨reproducibility✨)
❄️ flake.nix (Nix flake)
```

## 2. Building

### 1.1. Using Nix

If you have the [nix package manager](https://nixos.org/download) installed with the `nix-command` and `flakes` [experimental features](https://nixos.org/manual/nix/unstable/command-ref/conf-file#conf-experimental-features) enabled, then you can simply run

```sh
nix build
```

And Nix should automatically download Zola and run it to build your website. By default the output will be in a folder called `output`.

### 1.2. Using Zola

Alternatively you can use Zola directly after [installing it](https://www.getzola.org/documentation/getting-started/installation/). Once installed, simply run

```sh
zola build
```

Zola outputs to `public` by default.
