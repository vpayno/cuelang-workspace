# python-and-cue

Example of using Python and Cue.

## Commands

Setup Cue

- Use `pycue` Python module.

```bash { closeTerminalOnSuccess=true interactive=true interpreter=bash name=setup-python-cue promptEnv=true terminalRows=10 }
pdm add pycue

pdm run python -c 'import cue; cue.check_install()'
```
