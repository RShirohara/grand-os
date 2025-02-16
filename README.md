# GrandOS

A desktop Linux image based for Fedora Kinoite and customized for personal use.

## Variants

- `main`: Basic image.

## Installation

### From ISO

1. Install [`blue-build/cli`](https://github.com/blue-build/cli).
2. Generate ISO file.

   ```shell
   sudo bluebuild generate-iso --iso-name="grand-os.iso" image "ghcr.io/rshirohara/grand-os/main"
   ```

3. Write ISO file to installation device.
4. Reboot PC and run installation process.
