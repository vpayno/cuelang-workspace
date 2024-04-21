import os
from typing import Any

import cue
import yaml
from rich.traceback import install as rich_install

rich_install()  # setup rich


def main() -> None:
    print(f"pwd: {os.curdir}")
    print(f"contents: {os.listdir()}")

    print("\n")
    print("Validating good Yaml file:")
    print("\n")

    cue.vet.files("some.cue", "some.yaml")

    with open("some.yaml") as fp:
        obj: Any = yaml.safe_load(fp)

    v: cue.Validator = cue.Validator.from_file("some.cue")
    v.validate(obj)

    print("\n")
    print("Validating bad Yaml file:")
    print("\n")

    try:
        cue.vet.files("some.cue", "some-bad.yaml")

        with open("some-bad.yaml") as fp:
            obj = yaml.safe_load(fp)

        v = cue.Validator.from_file("some.cue")
        v.validate(obj)
    except ValueError as ve:
        # it does't throw a ValueError
        print(f"Validation Error: {ve}")
    except Exception as e:
        # it throws a generic Error
        print(f"Generic Error: {e}")


if __name__ == "main":
    main()
