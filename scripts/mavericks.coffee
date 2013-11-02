# Description:
#   OS X 10.9 Mavericks
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   mavericks - Get a photo of Mark Cuban
#
# Author:
#   wsc


mark = [
  "http://public.willstclair.net/Mavericks/00.jpg",
  "http://public.willstclair.net/Mavericks/01.jpg",
  "http://public.willstclair.net/Mavericks/02.jpg",
  "http://public.willstclair.net/Mavericks/03.jpg",
  "http://public.willstclair.net/Mavericks/04.jpg",
  "http://public.willstclair.net/Mavericks/05.jpg",
  "http://public.willstclair.net/Mavericks/06.jpg",
  "http://public.willstclair.net/Mavericks/07.jpg",
  "http://public.willstclair.net/Mavericks/08.jpg",
  "http://public.willstclair.net/Mavericks/09.jpg",
  "http://public.willstclair.net/Mavericks/11.jpg",
  "http://public.willstclair.net/Mavericks/12.jpg",
  "http://public.willstclair.net/Mavericks/13.jpg",
  "http://public.willstclair.net/Mavericks/14.jpg",
  "http://public.willstclair.net/Mavericks/15.jpg",
  "http://public.willstclair.net/Mavericks/16.gif",
  "http://public.willstclair.net/Mavericks/17.gif",
  "http://public.willstclair.net/Mavericks/18.gif",
  "http://public.willstclair.net/Mavericks/19.gif",
  "http://public.willstclair.net/Mavericks/20.gif",
  "http://public.willstclair.net/Mavericks/21.gif",
  "http://public.willstclair.net/Mavericks/22.gif",
  "http://public.willstclair.net/Mavericks/23.gif"
]

module.exports = (robot) ->
  robot.hear /mavericks/i, (msg) ->
    msg.send msg.random mark
