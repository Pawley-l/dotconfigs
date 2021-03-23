# Pawleys qutebrowser config
config.load_autoconfig(False)

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

# video website bindings
config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('D', 'hint links spawn bash -c "echo {hint-url} >> ~/.youtube-dl-watchlist.txt"')
config.bind('V', 'spawn streamlink --player-no-close --player mpv {url} best')

# Matches

# Disable javascript on video pages, use ctrl+v for watching
with config.pattern('*.youtube.com/watch?v=*') as p:
    p.content.javascript.enabled = False

# Colours
c.colors.tabs.even.bg = 'grey'
c.colors.tabs.odd.bg = 'grey'

