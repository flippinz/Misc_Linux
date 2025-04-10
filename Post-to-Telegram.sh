# Send a message to Telegram bot already set up in Telegram with @BotFather app
# Change "telegram_chat_id" to your own Telegram Chat ID
# Change "telegram_token" to your own Telegram Token

#!/bin/bash

telegram_chat_id="1234567890"
telegram_token="1234567890:ABCDEFGHIJKLMNOPQRSTUVWXYZ"
message="Hello, this is a test message from my script!"

curl -s -X POST "https://api.telegram.org/bot$telegram_token/sendMessage" -d "chat_id=$telegram_chat_id" -d "text=$message"

# Add  >>/dev/null to the end will not display output to console
