from i3pystatus import Status

#
# pex https://github.com/enkore/i3pystatus/archive/master.zip netifaces colour psutil -o i3pystatus.pex

status = Status()

status.register(
    'keyboard_locks',
    format='{caps}',
    caps_on='UPPER',
    caps_off='lower')

status.register(
    'xkblayout',
    hints = {'separator': False, 'separator_block_width': 4},    
    layouts=['us', 'ru'])


status.register(
    'pulseaudio',
    on_middleclick='switch_mute',
    format='♪{volume}',
    format_muted='🔇{volume}')

status.register(
    'clock', 
    format='%d/%m', 
    color='#4da6ff')
status.register(
    'clock', 
    hints = {'separator': False, 'separator_block_width': 4},
    format='⌚ %H:%M', 
    color='#99ccff')

status.register(
    'network', 
    interface='enp3s0', 
    format_up='{v4}', 
    color_up='#9fdf9f',
    format_down='check LAN',
    color_down='#ff9999')

status.register('disk',
    path='/home',
    color='#9292b9',
    format='ⓗ{avail:.0f}㎇')
status.register(
    'disk',
    hints = {'separator': False, 'separator_block_width': 4},
    path='/',
    color='#9292b9',
    format='ⓡ{avail:.0f}㎇')

status.register(
    'mem',
    hints = {'separator': False, 'separator_block_width': 8},
    format='mem {percent_used_mem}%',
    color='#9292b9',
    warn_color='#9292b9',
    alert_color='#ff9999')
status.register(
    'cpu_usage', 
    hints = {'separator': False, 'separator_block_width': 8},    
    format='cpu {usage:02}%',
    color='#9292b9')

status.register(
    'lastfm',
    playing_color='#ff661a',
    apikey='f352ee77209490e00c4c11d3cc122f9c',
    user='MiphAdler')

status.run()

