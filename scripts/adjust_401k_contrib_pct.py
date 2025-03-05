#!/usr/bin/env python3
import argparse
import math

PAYCHECKS_PER_YEAR = 26


def calculate_contribution_pct(
    salary: float,
    contribution_limit: float,
    contributions_so_far: float,
    paychecks_remaining: float,
    current_contribution_pct: float | None,
) -> None:
    contributions_left = contribution_limit - contributions_so_far
    contributions_per_paycheck = contributions_left / paychecks_remaining

    biweekly_salary = salary / PAYCHECKS_PER_YEAR

    contribution_pct = contributions_per_paycheck / biweekly_salary

    extra_pad = 1 if len(f"{contributions_left:.2f}") > 7 else 0

    print(f"Salary:                   ${salary:.2f}")
    print(f"Contribution limit:        ${contribution_limit:.2f}")
    print(f"Contributions left:        ${contributions_left:.2f}")
    print(f"Paychecks remaining:          {extra_pad * ' ' }{paychecks_remaining:.2f}")
    print(f"Biweekly salary:           {extra_pad * ' ' }${biweekly_salary:.2f}")
    print(
        f"Contributions per paycheck: {extra_pad * ' ' }${contributions_per_paycheck:.2f}"
    )
    print(f"Precise contribution percent:  {contribution_pct * 100:.2f}%")

    print()
    print(
        f"Set your 401k contribution percent to: {math.ceil(contribution_pct * 100):.2f}%"
    )

    if current_contribution_pct:
        current_contributions_per_paycheck = (
            biweekly_salary * current_contribution_pct / 100
        )
        paychecks_til_limit = math.ceil(
            contributions_left / current_contributions_per_paycheck
        )

        print()
        print(f"Current contribution percent:  {current_contribution_pct:.2f}%")
        if paychecks_til_limit < paychecks_remaining:
            print(
                f"P.S. If you keep your current contribution percent, you'll be done in {paychecks_til_limit} paychecks."
            )
        else:
            print(
                "P.S. If you keep your current contribution percent, you won't reach the limit in the remaining paychecks."
            )


def main() -> None:
    parser = argparse.ArgumentParser(description="Set your 401k contribution percent.")
    parser.add_argument("salary", type=float, help="Your annual salary")
    parser.add_argument(
        "contribution_limit", type=float, help="Your 401k contribution limit"
    )
    parser.add_argument(
        "contributions_so_far", type=float, help="Your 401k contributions so far"
    )
    parser.add_argument(
        "paychecks_remaining", type=float, help="Your remaining paychecks"
    )
    parser.add_argument(
        "current_contribution_pct",
        type=float,
        help="Your current contribution percent",
        nargs="?",
        default=None,
    )

    args = parser.parse_args()

    calculate_contribution_pct(
        args.salary,
        args.contribution_limit,
        args.contributions_so_far,
        args.paychecks_remaining,
        args.current_contribution_pct,
    )


if __name__ == "__main__":
    main()
