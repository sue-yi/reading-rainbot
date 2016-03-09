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
    robot.respond /(what) (is|should) (sue|i be|i) (reading|read)/i, (res) ->
        if res.match[1] is /is/i
            if res.match[2] is /sue/i #this is temp to test
                if res.match[3] is /reading/i
                    res.reply "She is reading everything"
        else if res.match[1] is /should/i
            if res.match[2] is /i be/i or /i/i
                if res.match[3]
                    res.reply "Well, what genre do you like?"