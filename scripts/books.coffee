# Description:
#   
#
# Dependencies:
# 
#
# Configuration:
#
#
# Commands:
#

module.exports = (robot) ->
    # this can be along the lines of asking who is reading what, what should I read, etc.
    # we can regex it
    robot.respond /reading/i, (res) ->
        res.reply "" # finish