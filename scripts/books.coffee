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
#   reading-rainbot what should I read?
#   reading-rainbot what should I be reading?
#   reading-rainbot what is (any hudlie's name) reading?
#   reading-rainbot hit me up with a quote
#

quotes = [
    "You're never too old, too wacky, too wild, to pick up a book and read to a child. - Dr. Suess",
    "So it goes. - Kurt Vonnegut",
    "You want a good quote? Open up a book and start reading.",
    "It was a bright cold day in April, and the clocks were striking thirteen. 1984  - George Orwell",
    "Reading is the sole means by which we slip, involuntarily, often helplessly, into another's skin, another's voice, another's soul. - Joyce Carol Oates",
    "As a woman I have no country. As a woman I want no country. As a woman, my country is the whole world. ― Virginia Woolf"
]

module.exports = (robot) ->

    robot.hear /what should (i be|i) (reading|read)/i, (res) ->
        res.send "I'm not sure. Why do you ask?"
    
    robot.hear /what is (.*) reading/i, (res) ->
        name = res.match[1]
        res.send "#{name} isn't reading anything"

    robot.hear /hit me up with a quote/i, (res) ->
        res.send res.random quotes
