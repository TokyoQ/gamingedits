# gamingedits

This little bot will watch Wikipedia for edits from an IP address from companies in the gaming industry and will [tweet](https://twitter.com/gamingeditsbot) when it notices one.

You can find the list of companies under watch listed below.

Inspired and powered by [anon](https://github.com/edsu/anon).

## Pull Requests

Feel free to raise a pull request to add additional companies. Use the below format in [ranges.yaml](ranges.yaml).

    companyname:
    # ASN num
    - 143.231.0.0/22

These will be converted into [ranges.json](ranges.json) once deployed to the bot.

## Finding / Confirming IP Ranges

You can search for banks to find their ASNs and IP ranges using [this tool from Hurricane Electric](https://bgp.he.net/). You can also cross reference with this [ASN Lookup Tool](https://www.ultratools.com/tools/asnInfoResult). 

The ASN used to discover IP ranges are listed in [ranges.yaml](ranges.yaml) as comments. 

## Deploying gamingedits

Gamingedits runs from a [Docker image](https://hub.docker.com/repository/docker/tokyoq/bankedits).

To run, you need to mount the config.json and ranges.json files

## List of Companies

* Activision
* Blizzard
* Gamestop
* IGN Entertainment
* Konami
* Nintendo
* Sega
* Sony Interactive Entertainment
* Square Enix
* Twitch
* Ubisoft
* Valve
* Zynga
