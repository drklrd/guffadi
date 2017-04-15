defmodule Slackbot.Slack do
	use Slack

	def handle_connect(slack) do
	    IO.puts "Connected as #{slack.me.name}"
	end

	def handle_message(message = %{type: "message"},slack ) do
		if Regex.run ~r/<@#{slack.me.id}>:?\sनमस्कार/, message.text do
		      send_message("<@#{message.user}> नमस्कार ! सन्चै हुनु हुन्छ ?",
		        message.channel, slack)
		end
		{:ok}
	end

	def handle_message(_message,_slack) do
		{:ok}
	end
end