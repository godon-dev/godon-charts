# Godon Charts

## Installation

### Modern Helm (3.8+)
```bash
helm install godon oci://ghcr.io/godon-dev/charts/godon
```

### Older Helm (2.x, 3.0-3.7)
```bash
helm repo add godon https://godon-dev.github.io/godon-charts/charts
helm install godon godon/godon
```

## How to Release

**Git tag is the source of truth.** The chart version is automatically updated to match the tag.

1. **Commit any chart changes** (don't worry about version):
   ```bash
   # Make your changes...
   git add charts/
   git commit -m "Update chart"
   git push
   ```

2. **Create git tag** (this sets the version):
   ```bash
   git tag v0.2.11
   git push origin v0.2.11
   ```

3. **Create GitHub Release**:
   ```bash
   gh release create v0.2.11
   # Or via GitHub UI
   ```

4. **Workflow automatically**:
   - ✅ Updates Chart.yaml to match tag
   - ✅ Publishes to OCI: `oci://ghcr.io/godon-dev/charts/godon`
   - ✅ Publishes to GitHub Pages: `https://godon-dev.github.io/godon-charts/charts`
   - ✅ Updates `index.yaml`
   - ✅ Attaches chart `.tgz` to release

**Note:** Chart version in Chart.yaml will be overwritten by the tag version during release.
