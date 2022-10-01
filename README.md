# Zote

Zote, The Mighty was a Hollow Knight themed meme bot with some moderator utilities, all made using Rapptz' discord.py. The bot was run from around April (shortly after the game was released) for about two years.

Due to its dependency on the specific Hollow Knight server, the old discord.py, and an old version of Qoid which no longer exists, **this bot is no longer functional**. However, the code is provided to showcase how Python can be used to create a bot with some powerful automation. The data files are also included to show what logs looked like, and how Qoid was used in serialisation.

## cmd lib

### bot.py

As Zote was refactored, the construction of the bot's features was place within its own file. Functions were created to separately initialise events and commands.

Within `initialize_commands` lies the `logger` decorator, which managed permissions, rate limits, logging, and exception handling. If you are creating a discord bot of your own, then you should take a close look at how the `@logger` decorator was used to empower each command with more secure functionality.

### data.py

This module contains various text snippets as well as basic logging functionality.

### disco.py

This module contains a couple "happy little helpers", the most important of which is `sanitize`, which would automatically convert IDs into Server, Channel, Message, or User objects.

### img.py

This module contains the EmbedIndex class, an extension of the Index class in Qoid (which is now simply called a Qoid because the namespace of Index is already quite saturated). It was responsible for managing the contents of `data\img.cxr`.

### inf.py

I don't wanna talk about it.

### zutils.py

This module helped with management of meme submissions. The `check_message` command would also track certain words in the #meme and add appropriate reactions.

## data

### log

* `cmd.zote` contains an example of Zote's command logging
* `embed example.txt` contains a sample JSON for making an embed. This was used for tracking joins and leaves, which was important in helping the moderation team catch troll and spam accounts
* `error.zote` contains an example of Zote's error logging. As you might notice by the number of event loop errors and `!RUN_ZOTE.bat`, I hadn't figured out closing and restarting the bot in the event of a fatal error causing disconnection

### blacklist.zote

This file contains keywords which would be searched for in #general chat. Initially the plan was to automatically delete those messages and send the user info on why it was deleted, but the feature was never deployed.

### cache.cxr

For each server which Zote was present in (at its peak over 100) it would keep track of up to six messages which it had sent. Once more than six had been sent, it would delete whichever message had been sent the earliest.

### cog.cxr

Once ZDN (the Zote Delivery Network) was up and running, I started outsourcing the process of command creation to Qoid, in order to make it easier for mods to create new meme image commands. It never saw any public use, but it did set the stage for easily-crafted commands on my end. See `cog explanation.cxr` for details on each property tag.

### config.cxr

This is the first and foremost configuration file which Zote relied on. Zote's precepts are contained in here and I never changed it because I had bigger fish to fry.

### img.cxr

This file contains every image URL for memes presented by Zote. Each ~~Qoid~~ "Index" started with a `tagged` Property, which determined whether the image would be sought base on its tag, or whether it would simply be selected at random. The links all seem to still work.

___

# Legacy README

## Before we begin

### Requirements: 
* [Python 3.4.2+](https://www.python.org/downloads/)
* [aiohttp](https://github.com/aio-libs/aiohttp/releases/latest)
* [async_timeout](https://github.com/aio-libs/async-timeout/releases/latest)
* [chardet](https://github.com/chardet/chardet/releases/latest)
* [discord.py](https://github.com/Rapptz/discord.py/releases/tag/v0.16.12)
* [multidict](https://github.com/aio-libs/multidict/releases/latest)
* [qoid.py](https://github.com/jozborn/Qoid.py/releases/tag/1.0.0a)
* [websockets](https://github.com/Lawouach/WebSocket-for-Python/releases/tag/0.4.2)

### Background on this project

I discovered Hollow Knight about one month after its release through a series by youtuber Northernlion showcasing the game. I was skeptical at first, but drawn in by the size of the world, the range of music, and the tightness of its mechanics. I joined the [official discord server](http://discord.me/hollowknight) (though at the time it was just a budding community), played the game, and it was the first game I started speedrunning! During that time I was practicing Python, so I used discord.py to create my very first discord bot named **Zote, The Mighty**. He spoke his precepts in order, or you could specify a number to hear a specific one. Over time, I experimented with simple features like image reaction commands, channel and user permissions, and logging / error-reporting functions. Today he also provides resources like guides, spoiler alerts, and even hosted the 12 Days of Hollowmas Giveaway without major issues (no matter what pictures Verulean shows you).

Zote, like the in-game counterpart, is mediocre and self-assured, but with each commit gets closer to a functional open-source build. I'd like to continue developing this bot to help represent Team Cherry's amazing game to the Discord community, and contribute to Discord.py too.

## About the bot

`pending`
