import os
import sys
import argparse
import logging

class MyClass(object):
    def __init__(self):
        pass

    def __str__(self):
        return "MyClass"

    def __repr__(self):
        return "[MyClass]"

    def __enter__(self):
        return self

    def __exit__(self, type, value, traceback):
        return self

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Terminal Application'
    )
    parser.add_argument(
        '--verbose', '-v',
        action='store_true',
        help='Increase output verbosity'
    )

    args = vars(parser.parse_args())
