module.exports = (robot) ->
	robot.respond /where is a farmers market in zip code (.*)/i, (msg) ->
		zipcode = escape(msg.match[1])
		console.log(zipcode)
		url = "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip=#{zipcode}"
		console.log(url)
		msg.http(url)
			.get() (err, res, body) ->
				try
					json = JSON.parse(body)
					msg.send "	id: #{json.results[0].id}\n
						marketname: #{json.results[0].marketname}\n"
				catch error
					msg.send "You fucked up."