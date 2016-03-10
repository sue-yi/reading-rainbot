module.exports = (robot) ->
  robot.hear /YO/i, (msg) ->
    msg.send "Yo Yo"
    
   robot.hear /I am reading a (.*) book/i, (res) ->
     bookType = res.match[1]
     if bookType is "science fiction"
      res.reply "Cthulhu approves."
     else
       res.reply "Cthulhu will drag you into the depths of the seas."

     