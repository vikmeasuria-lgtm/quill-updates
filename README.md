# Quill updates

The update feed for Quill, the on-device dictation app.

- `latest.json` describes the newest release: version, download address, SHA-256, size, release notes and an
  expiry date, all covered by a digital signature from the Quill update key.
- `Quill-<version>.msi` is that release's installer.

An installed Quill checks this feed when it opens (and every six hours while it runs). It installs an update only
if the signature is genuine, the entry has not expired, the version is newer than the one installed, and the
downloaded installer matches the signed hash and size. Anything else is ignored.
