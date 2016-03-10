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

    robot.hear /what should (i be|i) (reading|read)/i, (res) ->
        res.send "I'm not sure. Why do you ask?"
    
    robot.hear /what is (.*) reading/i, (res) ->
        name = res.match[1]
        res.send "#{name} isn't reading anything"
