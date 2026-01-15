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

1. Update version in `charts/godon/Chart.yaml`
2. Commit and push changes
3. Create GitHub Release (tag: `v0.2.11`)
4. Workflow publishes to OCI + GitHub Pages automatically
