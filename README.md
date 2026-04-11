# github-actions

Collection of my personal github-actions I frequently use.

## Repository Requirements

### mise.toml

If you wanna use the `actions/mise-install` you ought to have a `mise.toml`
in your repository.

**Example:**
```toml
[tools]
pre-commit = "latest"
```

If you want to separate your mise dependencies between local development and
CI, then you can do so by creating a separate `mise.ci.toml` and `mise.<environment>.toml`.
Make sure to pass the respective environment to the `mise-install` action.

### .releaserc.json

For repositories using the `tag-and-release` action, a `.releaserc.json` file is required in the repository root to configure semantic-release behavior.

**Example:**
```json
{
  "branches": ["main"],
  "plugins": [
    "@semantic-release/commit-analyzer",
    "@semantic-release/release-notes-generator",
    "@semantic-release/github"
  ]
}
```

## Actions

### tag-and-release

Analyzes commit history to automatically tag and create releases using semantic versioning.

**Prerequisites:**
- A `.releaserc.json` file must exist in your repository root

**Usage:**
```yaml
- uses: iwpnd/github-actions/actions/tag-and-release@v1
  with:
    # Your release configuration here
```

### mise-install

Installs CI dependencies defined in your `mise.toml` file.

**Usage:**
```yaml
- uses: iwpnd/github-actions/actions/mise-install@v1
```

**Note:** Replace `@v1` with a specific version tag (e.g., `@v1.0.0`) for production workflows to ensure stability.

## License

MIT

## Maintainer

Benjamin Ramser - [@iwpnd](https://github.com/iwpnd)

Project Link: [https://github.com/iwpnd/github-actions](https://github.com/iwpnd/github-actions)

