#!/usr/bin/env python3

import argparse


def calculate_percent_change(initial: float, final: float) -> None:
    percent_change = ((final - initial) / initial) * 100

    print(f"Initial value: {initial}")
    print(f"Final value:   {final}")
    print()
    print(f"Percent change: {percent_change:.2f}%")


def main() -> None:
    parser = argparse.ArgumentParser(description="Calculate percent change.")
    parser.add_argument("initial", type=float, help="Initial value")
    parser.add_argument("final", type=float, help="Final value")

    args = parser.parse_args()

    calculate_percent_change(args.initial, args.final)


if __name__ == "__main__":
    main()
