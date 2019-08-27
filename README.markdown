# Win-Commands - windows commands api

## Usage
```common-lisp

;; To use 'date' command.
(win-commands:date)
;=> "Fri Aug 23 09:20:20     2019"

;; To use 'cal -h' command.
(win-commands:cal "-h")
; =>
"
Usage:
 cal [options] [[[day] month] year]
 cal [options] <timestamp|monthname>

Display a calendar, or some part of it.
Without any arguments, display the current month.

Options:
 -1, --one             show only a single month (default)
 -3, --three           show three months spanning the date
 -n, --months <num>    show num months starting with date's month
 -S, --span            span the date when displaying multiple months
 -s, --sunday          Sunday as first day of week
 -m, --monday          Monday as first day of week
 -j, --julian          use day-of-year for all calendars
     --reform <val>    Gregorian reform date (1752|gregorian|iso|julian)
     --iso             alias for --reform=iso
 -y, --year            show the whole year
 -Y, --twelve          show the next twelve months
 -w, --week[=<num>]    show US or ISO-8601 week numbers
     --color[=<when>]  colorize messages (auto, always or never)
                         colors are enabled by default

 -h, --help            display this help
 -V, --version         display version

For more details see cal(1).
"

;; To use `date -n 3` command.
(win-commands:cal "-n 3")
;=> 
"     August 2019         September 2019         October 2019    
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
             1  2  3   1  2  3  4  5  6  7         1  2  3  4  5
 4  5  6  7  8  9 10   8  9 10 11 12 13 14   6  7  8  9 10 11 12
11 12 13 14 15 16 17  15 16 17 18 19 20 21  13 14 15 16 17 18 19
18 19 20 21 22 23 24  22 23 24 25 26 27 28  20 21 22 23 24 25 26
25 26 27 28 29 30 31  29 30                 27 28 29 30 31      
                                                                
"

```

## Installation
1. Clone to your local-projects.
```common-lisp
cd $HOME/quicklisp/local-projects
git clone https://github.com/a-nano/win-commands.git
```

2. Start your lisp. Then, just:
```common-lisp
(ql:quickload :win-commands)
```

## ToDo
Improved reading speed.

## Author

* Akihide Nano (an74abc@gmail.com)

## Copyright

Copyright (c) 2019 Akihide Nano (an74abc@gmail.com)

## License

Licensed under the LLGPL License.
