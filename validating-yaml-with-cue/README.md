# validating-yaml-with-cue

Example of using Cue to validate yaml files.

Each yaml file must independently satisfy the schema.

## Example Commands

```bash { background=false category=validation closeTerminalOnSuccess=true excludeFromRunAll=true interactive=true interpreter=bash name=validate-one-file-broken promptEnv=true terminalRows=10 }
cue vet pets.cue charlie-broken.yml || true
```

```bash { background=false category=validation closeTerminalOnSuccess=true excludeFromRunAll=true interactive=true interpreter=bash name=validate-two-files-broken promptEnv=true terminalRows=10 }
cue vet pets.cue charlie-broken.yml toby-broken.yml || true
```

```bash { background=false category=validation closeTerminalOnSuccess=true excludeFromRunAll=true interactive=true interpreter=bash name=validate-one-file promptEnv=true terminalRows=10 }
cue vet pets.cue charlie.yml
```

```bash { background=false category=validation closeTerminalOnSuccess=true excludeFromRunAll=true interactive=true interpreter=bash name=validate-two-files promptEnv=true terminalRows=10 }
cue vet pets.cue charlie.yml toby.yml
```
