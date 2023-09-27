# Re-write of cp in Nim.

# Internal imports.
import std/os
# External imports.
#

proc HelpMessage() =
  echo """
Usage: cp [options]
--recursive, -r  Copy files and/or folders recursively.
--help, -h       Show this help message.
--version, -v    Show the program version.

More information at: <https://github.com/Bean6754/Nim/tree/main/coreutils>
  """

proc VersionMessage() =
  echo """
cp (Nim rewrite) v0.1
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
  """

proc main() =
  # Command-line arguments.
  if paramCount() == 1 and (paramStr(1) == "--help" or paramStr(1) == "-h"):
    HelpMessage()
  elif paramcount() == 1 and (paramStr(1) == "--version" or paramStr(1) == "-v"):
    VersionMessage()
  else:
    # Continue.

    # Source to copy from.
    let src = $2
    # Desitnation to copy to.
    let dst = $3
    # Check if variable is empty or not.
    if dst != "":
      writeFile("dst", src)
    elif dst == "":
      echo usage
    else:
      quit(1)

main()
