# Description:
#   Game changer
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   "game changer" - Game changer
#
# Author:
#   wsc


module.exports = (robot) ->
  robot.hear /game changer/i, (msg) ->
    msg.send 'game'
    gc = () ->
      msg.send 'changer'

    setTimeout gc, 1000
