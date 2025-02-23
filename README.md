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

### From Fedora Kinoite (Rebasing)

1. Install [Fedora Kinoite](https://fedoraproject.org/atomic-desktops/kinoite/).
   - Do not create root user!
2. Rebase to GrandOS (unverified image).

   ```shell
   rpm-ostree rebase ostree-unverified-image:ghcr.io/rshirohara/grand-os/<variant>:latest
   systemctl reboot
   ```

3. Rebase to GrandOS (signed image).

   ```shell
   rpm-ostree rebase ostree-image-signed:docker://ghcr.io/rshirohara/grand-os/<variant>:latest
   systemctl reboot
   ```
