
# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()
c.content.default_encoding = 'utf-8'
c.content.geolocation = False
c.scrolling.bar = 'always'
c.tabs.background = True
c.zoom.default = '110%'
config.bind('<Ctrl-=>', 'zoom-in')
config.bind('<Ctrl-->', 'zoom-out')
c.url.start_pages = ["about:blank"]
c.url.default_page = "about:blank"
config.bind(',sm', 'set-cmd-text :download --mhtml')
c.downloads.location.suggestion = 'both'
config.bind(',ya', 'yank inline {url}[{title}]')
config.bind(',ym', 'yank inline [{title}]({url})')
from qutebrowser.api import interceptor

# Youtube adblock
def filter_yt(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    if (url.host() == 'www.youtube.com' and
        url.path() == '/get_video_info' and
            '&adformat=' in url.query()):
        info.block()


interceptor.register(filter_yt)
