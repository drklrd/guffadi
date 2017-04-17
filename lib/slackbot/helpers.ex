defmodule Slackbot.Helpers do

	def scrape do
		body = HTTPoison.get!("http://nepalipatro.com.np/").body
		year = 	Floki.find(body,".today-year")
				|> Floki.raw_html
				|> Floki.find(".today-year")
				|> Floki.text
		month = Floki.find(body,".today-month")
				|> Floki.raw_html
				|> Floki.find(".today-month")
				|> Floki.text
		date = 	Floki.find(body,".today-date")
				|> Floki.raw_html
				|> Floki.find(".today-date")
				|> Floki.text
		tithi = Floki.find(body,".today-tithi")
				|> Floki.raw_html
				|> Floki.find(".today-tithi")
				|> Floki.text
		event = Floki.find(body,".today-event")
				|> Floki.raw_html
				|> Floki.find(".today-event")
				|> Floki.text
		year <> " " <> month <> " " <> date <> ", "  <> tithi <> ", " <> event
	end

end