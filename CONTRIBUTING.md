# Contributing to homebrew-tap

Thank you for contributing to the `diaszano/homebrew-tap` repository!

## Workflow

1. Configure local git hooks to automatically enforce Conventional Commits:

   ```bash
   make hooks
   ```

2. Create a branch for your contribution:
   ```bash
   git checkout -b feat/add-new-formula
   ```

3. Keep each task in one focused Conventional Commit. You can check commits against the spec with:

   ```bash
   make check-commits
   ```

## Conventional Commits Specification

All commit messages and Pull Request titles must follow the [Conventional Commits v1.0.0](https://www.conventionalcommits.org/) specification:

```text
<type>(<optional scope>): <description>
```

### Allowed Types:
- `feat`: A new package or capability (e.g. adding a new formula or cask)
- `fix`: A bug fix in formula/cask definition or scripts
- `docs`: Documentation updates
- `style`: Formatting changes (white-space, indentation)
- `refactor`: Structural refactoring
- `perf`: Performance improvements
- `test`: Adding or correcting tests or audits
- `build`: Packaging or version bumps (e.g. updates to cask/formula versions)
- `ci`: Changes to CI/CD workflows and automated scripts
- `chore`: Other maintenance tasks that do not modify formulas or casks
- `revert`: Reverts a previous commit

### Common Scopes:
`cask`, `formula`, `ci`, `docs`, `deps`, or package name (e.g. `bearm`).

### Examples:
```text
build(cask): update bearm to v1.0.0
feat(formula): add bearm formula
docs: update tap installation guide in README
ci: add conventional commits workflow
```
