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

**Chart version is the source of truth.** The git tag MUST match the chart version.

1. **Update chart version** in `charts/godon/Chart.yaml`:
   ```yaml
   version: 0.2.11  # Bump this
   appVersion: 0.0.7  # Bump if app changed
   ```

2. **Commit and push**:
   ```bash
   git add charts/godon/Chart.yaml
   git commit -m "Bump chart to 0.2.11"
   git push
   ```

3. **Create matching git tag**:
   ```bash
   git tag v0.2.11  # Must match Chart.yaml version!
   git push origin v0.2.11
   ```

4. **Create GitHub Release**:
   ```bash
   gh release create v0.2.11
   # Or via GitHub UI
   ```

5. **Workflow automatically**:
   - ✅ Validates tag matches chart version
   - ✅ Publishes to OCI: `oci://ghcr.io/godon-dev/charts/godon`
   - ✅ Publishes to GitHub Pages: `https://godon-dev.github.io/godon-charts/charts`
   - ✅ Updates `index.yaml`
   - ✅ Attaches chart `.tgz` to release

**If tag doesn't match chart version**, the workflow will fail with a clear error message.
