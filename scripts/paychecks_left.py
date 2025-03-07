#!/usr/bin/env python3
import math
from datetime import date, datetime, timedelta


def main() -> None:
    today = datetime.today().date()
    print("Today:", today)

    next_friday = _next_friday(today)
    print("Next Friday:", next_friday)

    fridays_left = 0

    while next_friday < _first_day_of_next_year():
        fridays_left += 1
        next_friday += timedelta(7)

    print()
    print("Fridays left in the year:", fridays_left)
    print("Paychecks left in the year:", math.ceil(fridays_left / 2))


def _next_friday(today: date) -> date:
    return today + timedelta((4 - today.weekday()) % 7)


def _first_day_of_next_year() -> date:
    return datetime(datetime.today().year + 1, 1, 1).date()


if __name__ == "__main__":
    main()
