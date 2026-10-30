import termui
import std/[os, strutils, random]

randomize()

let asciiArt = """
██████╗ ██████╗ ███████╗
██╔══██╗██╔══██╗██╔════╝
██████╔╝██████╔╝███████╗
██╔══██╗██╔═══╝ ╚════██║
██║  ██║██║     ███████║
╚═╝  ╚═╝╚═╝     ╚══════╝
"""

echo asciiArt

let mode = termuiSelect("Which mode do you want?", options = @["Normal Mode", "Really Hard Mode"])

proc gameplay(m: int) =
  if m == 1:
    let select = termuiSelectMultiple("Choose wisely...", options = @["Rock", "Paper", "Scissors"])

    if "Rock" in select:
      sleep(500)
      echo " "
      echo "Rock..."
      sleep(500)
      let botSelect = rand(2)
      echo "Paper..."
      sleep(500)
      echo "Scissors!"
  
      if botSelect == 1:
        echo "Oh nah, you win."
        quit(0)
      if botSelect == 0:
        echo "YES, I WIN"
        quit(0)
      if botSelect == 2:
        echo "Nah, a draw"
        quit(0)
    if "Paper" in select:
      sleep(500)
      echo " "
      echo "Rock..."
      sleep(500)
      let botSelect = rand(2)
      echo "Paper..."
      sleep(500)
      echo "Scissors!"
  
      if botSelect == 1:
        echo "Oh nah, you win."
        quit(0)
      if botSelect == 0:
        echo "YES, I WIN"
        quit(0)
      if botSelect == 2:
        echo "Nah, a draw"
        quit(0)
    if "Scissors" in select:
      sleep(500)
      echo " "
      echo "Rock..."
      sleep(500)
      let botSelect = rand(2)
      echo "Paper..."
      sleep(500)
      echo "Scissors!"
  
      if botSelect == 1:
        echo "Oh nah, you win."
        quit(0)
      if botSelect == 0:
        echo "YES, I WIN"
        quit(0)
      if botSelect == 2:
        echo "Nah, a draw"
        quit(0)
    else:
      echo " "
      echo "Press space to select..."
      sleep(250)
      gameplay(1)
  else:
    let select = termuiSelectMultiple("Choose wisely...", options = @["Rock", "Paper", "Scissors"])
    sleep(500)
    echo " "
    echo "Rock..."
    sleep(500)
    let botSelect = rand(1)
    echo "Paper..."
    sleep(500)
    echo "Scissors!"

    if botSelect == 0:
      echo "YES, I WIN"
      quit(0)
    else:
      echo "Nah, a draw"
      quit(0)

if "Normal Mode" in mode:
  gameplay(1)
else:
  gameplay(0)