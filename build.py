import sys, subprocess
import os

def run():
    buildProc = subprocess.Popen(
        f"cd EmberCoreRuntime && {sys.executable} build.py build_ext --inplace --generate-pyi",
        shell=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )

    buildProc.wait()

run()