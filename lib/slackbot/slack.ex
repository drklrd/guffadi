defmodule Slackbot.Slack do
	@greetmessages [
		"नमस्कार ! सन्चै हुनु हुन्छ ?",
		"नमस्कार !"

	]

	use Slack

	def handle_connect(slack) do
	    IO.puts "Connected as #{slack.me.name}"
	end

	def handle_message(message = %{type: "message"},slack ) do
		if Regex.run ~r/<@#{slack.me.id}>:?\sनमस्कार/, message.text do
		      	send_message("<@#{message.user}> #{Enum.random(@greetmessages)} ",
		        message.channel, slack)
		end
		if Regex.run ~r/<@#{slack.me.id}>:?\sमिति/, message.text do
				send_message("<@#{message.user}> मिति पत्ता लाग्दै छ है ... "   ,
		        message.channel, slack)
		      	send_message("<@#{message.user}> #{Slackbot.Helpers.scrape} "   ,
		        message.channel, slack)
		end
		{:ok}
	end
	
	def handle_message(_message,_slack) do
		{:ok}
	end

end