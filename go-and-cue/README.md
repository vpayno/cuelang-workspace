# go-and-cue

Example of using Go and Cue.

## Commands

Setup Cue

- Use `cue mod init` to initialize a Cue project.

```bash { background=false category=setup closeTerminalOnSuccess=true excludeFromRunAll=true interactive=true interpreter=bash name=setup-cue promptEnv=true terminalRows=10 }
mkdir -v go-and-cue
cd go-and-cue

cue mod init github.com/vpayno/cuelang-workspace/go-and-cue
```

- Use `go mod init` to initialize a Go project.

```bash { background=false category=setup closeTerminalOnSuccess=true excludeFromRunAll=true interactive=true interpreter=bash name=setup-go promptEnv=true terminalRows=10 }
go mod init github.com/vpayno/cuelang-workspace/go-and-cue
go get cuelang.org/go
```
