# microproject-scripted-printing

```
SYNOPSIS
       lpr [ -E ] [ -H server[:port] ] [ -U username ] [ -P
       destination[/instance] ] [ -# num-copies [ -h ] [ -l ] [ -m ] [ -o
       option[=value] ] [ -p ] [ -q ] [ -r ] [ -C title ] [ -J title ] [ -T
       title ] [ file(s) ]

DESCRIPTION
       lpr submits files for printing.  Files named on the command line are sent
       to the named printer or the default destination if no destination is
       specified.  If no files are listed on the command-line, lpr reads the
       print file from the standard input.

   THE DEFAULT DESTINATION
       CUPS provides many ways to set the default destination. The LPDEST and
       PRINTER environment variables are consulted first.  If neither are set,
       the current default set using the lpoptions(1) command is used, followed
       by the default set using the lpadmin(8) command.

OPTIONS
       The following options are recognized by lpr:

       -E   Forces encryption when connecting to the server.

       -H server[:port]
            Specifies an alternate server.

       -C "name"

       -J "name"

       -T "name"
            Sets the job name/title.

       -P destination[/instance]
            Prints files to the named printer.

       -U username
            Specifies an alternate username.

       -# copies
            Sets the number of copies to print.

       -h   Disables banner printing. This option is equivalent to -o
            job-sheets=none.
       -l   Specifies that the print file is already formatted for the
            destination and should be sent without filtering.  This option is
            equivalent to -o raw.

       -m   Send an email on job completion.

       -o option[=value]
            Sets a job option.  See "COMMON JOB OPTIONS" below.

       -p   Specifies that the print file should be formatted with a shaded
            header with the date, time, job name, and page number.  This option
            is equivalent to -o prettyprint and is only useful when printing
            text files.

       -q   Hold job for printing.

       -r   Specifies that the named print files should be deleted after
            submitting them.

   COMMON JOB OPTIONS
       Aside from the printer-specific options reported by the lpoptions(1)
       command, the following generic options are available:

       -o job-sheets=name
            Prints a cover page (banner) with the document.  The "name" can be
            "classified", "confidential", "secret", "standard", "topsecret", or
            "unclassified".

       -o media=size
            Sets the page size to size. Most printers support at least the size
            names "a4", "letter", and "legal".

       -o number-up={2|4|6|9|16}
            Prints 2, 4, 6, 9, or 16 document (input) pages on each output page.

       -o orientation-requested=4
            Prints the job in landscape (rotated 90 degrees counter-clockwise).

       -o orientation-requested=5
            Prints the job in landscape (rotated 90 degrees clockwise).

       -o orientation-requested=6
            Prints the job in reverse portrait (rotated 180 degrees).

       -o print-quality=3

       -o print-quality=4

       -o print-quality=5
            Specifies the output quality - draft (3), normal (4), or best (5).

       -o sides=one-sided
            Prints on one side of the paper.

       -o sides=two-sided-long-edge
            Prints on both sides of the paper for portrait output.

       -o sides=two-sided-short-edge
            Prints on both sides of the paper for landscape output.
```