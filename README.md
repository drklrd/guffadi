# Guffadi

**A ridiculously simple slack-bot in elixir.  Just trying to make the learning process interesting**

![Bot Image](https://raw.githubusercontent.com/drklrd/guffadi/master/bot.png)

## Usage

You will need to add a bot in Slack from https://{your-slack-page-name}.slack.com/services/new/bot. There you will get an API token.

Create a file .env in the project root and similar line :

```
	export SLACK_TOKEN = your-slack-API-token
```

and source it in your shell

```
	source .env
```

Finally run, 

```
	iex -S mix
```

This will make your bot online and now you should be able to send message to it as shown in the picture. You need to refer the bot with @


