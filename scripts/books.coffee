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
    
    #the grouping for the name will change 
    robot.hear /what is (sue) reading/i, (res) ->
        res.send "They aren't reading anything"
