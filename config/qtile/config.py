#!/usr/bin/env python
# -*- coding: utf-8 -*-

from libqtile.config import Key, Screen, Group, Drag, Click
from libqtile.lazy import lazy
from libqtile import layout, bar, widget

from typing import List  # noqa: F401

mod = "mod4"

## Keyboard definitions
K_Alt = "mod1"


class Color():
	dark_grey = '#484349'
	dark_blue = '#0C2D48'

class Style():
	font_type = 'FiraMono Nerd Font'
	font_size = 12


keys = [
	# Switch between windows in current stack pane
	Key([mod], "h", lazy.layout.left()),
	Key([mod], "l", lazy.layout.right()),
	Key([mod], "j", lazy.layout.down()),
	Key([mod], "k", lazy.layout.up()),

	# Move windows up or down in current stack
	Key([mod, "shift"], "h", lazy.layout.swap_left()),
	Key([mod, "shift"], "l", lazy.layout.swap_right()),
	Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
	Key([mod, "shift"], "k", lazy.layout.shuffle_up()),

	# Resize windows
	Key([mod], "i", lazy.layout.grow()),
	Key([mod], "m", lazy.layout.shrink()),
	Key([mod], "n", lazy.layout.normalize()),
	Key([mod], "f", lazy.layout.maximize()),

	# Toggle Fullscreen
	Key([mod], "F12", lazy.window.toggle_fullscreen()),


	# Switching group screen
	Key([mod, "control"], "Left", lazy.screen.prev_group()),
	Key([mod, "control"], "Right", lazy.screen.next_group()),


	# Key(
	# 	[mod, "shift"], "Left",
	# 	lazy.layout.client_to_previous()
	# ),
	# Key(
	# 	[mod, "shift"], "Right",
	# 	lazy.layout.client_to_next()
	# ),


	# (super-shift-f) Toggle Floating
	# Key([mod, K_Alt], "f", lazy.window.floating()),

	# Switch window focus to other pane(s) of stack
	Key([K_Alt], "Tab", lazy.layout.next()),

	# Swap panes of split stack
	# Key([mod, "shift"], "space", lazy.layout.rotate()),

	# Toggle between split and unsplit sides of stack.
	# Split = all windows displayed
	# Unsplit = 1 window displayed, like Max layout, but still with
	# multiple stack panes
	# Key([mod, "shift"], "Return", lazy.layout.toggle_split()),

	# Open New Terminal
	# Key([mod], "Return", lazy.spawn("alacritty")),

	# Toggle between different layouts as defined below
	Key([mod], "Tab", lazy.next_layout()),

	# Quit/Kill Active Window
	Key([mod], "q", lazy.window.kill()),

	# Reload QTile Settings
	Key([mod, "control"], "r", lazy.restart()),

	# Logout
	Key([mod, "control"], "c", lazy.shutdown()),

	Key([mod], "r", lazy.spawncmd())
]

groups = [Group(i) for i in "123456789"]

for i in groups:
	keys.extend(
		[
			# mod1 + letter of group = switch to group
			Key([mod], i.name, lazy.group[i.name].toscreen()),
			# mod1 + shift + letter of group = switch to & move focused window to group
			Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True)),
			# Or, use below if you prefer not to switch to that group.
			# # mod1 + shift + letter of group = move focused window to group
			# Key([mod, "shift"], i.name, lazy.window.togroup(i.name)),
		]
	)


def config_layout():
	pass


layouts = [
	layout.MonadTall(
		# align=MonadTall._left,
		border_focus='#0d88a8',
		border_normal='#cdbdbe',
		border_width=1,
		margin=6
	),
	layout.Max()
	# layout.Stack(margin=4, border_width=1, num_stacks=2, autosplit=True, fair=True),
	# Try more layouts by unleashing below layouts.
	# layout.Bsp(),
	# layout.Columns(),
	# layout.Matrix(),
	# layout.MonadWide(),
	# layout.RatioTile(),
	# layout.Tile(),
	# layout.TreeTab(),
	# layout.VerticalTile(),
	# layout.Zoomy(),
]

widget_defaults = dict(
	font=Style.font_type,
	fontsize=Style.font_size,
	padding=4
)

extension_defaults = widget_defaults.copy()

def widget_arrow_left_dark_grey(background=Color.dark_blue):
	if background is None:
		return widget.TextBox(
			background=None,
			font=Style.font_type,
			fontsize=18,
			foreground=Color.dark_grey,
			padding=0,
			text='',
		)

	return widget.TextBox(
		background=background,
		font=Style.font_type,
		fontsize=18,
		foreground=Color.dark_grey,
		padding=0,
		text=''
	)

def widget_arrow_left_dark_blue(background=Color.dark_grey):
	if background is None:
		return widget.TextBox(
			background=None,
			font=Style.font_type,
			fontsize=18,
			foreground=Color.dark_blue,
			padding=0,
			text='',
		)

	return widget.TextBox(
		background=Color.dark_grey,
		font=Style.font_type,
		fontsize=18,
		foreground=Color.dark_blue,
		padding=0,
		text='',
	)


def widget_sep():
	return widget.Sep(
		padding=4,
		background="#000000",
		linewidth=0,
		foreground="#000000",
		height_percent=None,
	)


screens = [
	Screen(
		top=bar.Bar(
			[
				#########################################
				# Left Panel
				#########################################

				widget_sep(),
				widget.GroupBox(
					border='333333',
					borderwidth=1,
					font=Style.font_type,
					fontsize=Style.font_size,
					margin=2,
					padding_x=4,
					padding_y=4,
					padding=None,
				),
				widget_sep(),
				widget.Prompt(
					prompt='shell: '
				),
				widget_sep(),
				widget.WindowName(
					font=Style.font_type,
					fontsize=Style.font_size,
				),
				widget_sep(),


				#########################################
				# Right Panel
				#########################################

				# Volume
				# widget_arrow_left_dark_blue(
				# 	background=None
				# ),
				# widget.TextBox(
				# 	background=Color.dark_blue,
				# 	padding=6,
				# 	text='Vol',
				# ),
				# widget.Volume(
				# 	background=Color.dark_blue,
				# 	padding=6,
				# ),


				# Pacman Available Updates
				widget_arrow_left_dark_grey(
					background=None
				),
				widget.TextBox(
					background=Color.dark_grey,
					padding=6,
					text='📦'
				),
				widget.Pacman(
					background=Color.dark_grey,
					execute='alacritty',
					font=Style.font_type,
					fontsize=Style.font_size,
					padding=6,
					update_interval=300
				),

				# Network
				widget_arrow_left_dark_blue(),
				widget.TextBox(
					background=Color.dark_blue,
					padding=6,
					text='📡',
				),
				widget.NetGraph(
					background=Color.dark_blue,
					border_color='#000000',
					border_width=0,
					frequency=0.5,
					graph_color='#e3b132',
					line_width=1.75,
					type='line',
				),
				widget.Net(
					background=Color.dark_blue,
					font=Style.font_type,
					fontsize=Style.font_size,
					format='{down} ↓ {up} ↑ ',
					interface='wlp2s0',
					update_interval=0.5,
				),

				# CPU(s) Processing
				widget_arrow_left_dark_grey(),
				widget.TextBox(
					background=Color.dark_grey,
					padding=6,
					text='💗'
				),
				widget.CPUGraph(
					background=Color.dark_grey,
					border_color='#000000',
					border_width=0,
					frequency=0.5,
					graph_color='#00ff04',
					line_width=1.75,
					type='line'
				),
				widget.CPU(
					background=Color.dark_grey,
					font=Style.font_type,
					fontsize=Style.font_size,
					format='{load_percent}% ',
					update_interval=1
				),

				# Memory (RAM)
				widget_arrow_left_dark_blue(),
				widget.TextBox(
					background=Color.dark_blue,
					padding=6,
					text='🧠'
				),
				widget.Memory(
					background=Color.dark_blue,
					format='{MemUsed}M ',
					update_interval=1
				),

				# Battery
				widget_arrow_left_dark_grey(),
				widget.Battery(
					background=Color.dark_grey,
					charge_char='💉 ',
					discharge_char='🩸',
					empty_char='🩸',
					font=Style.font_type,
					fontsize=Style.font_size,
					format='{char}{percent:2.0%}',
					full_char='🌡 ️',
					# show_short_text=False,
					update_interval=5,
				),


				# Date and Time
				widget_arrow_left_dark_blue(),
				widget.TextBox(
					background=Color.dark_blue,
					padding=6,
					text='⏳',
				),
				widget.Clock(
					background=Color.dark_blue,
					font=Style.font_type,
					fontsize=Style.font_size,
					format="%A, %d %B %I:%M %p ",
				),

				## Application Tray
				widget_arrow_left_dark_grey(),
				widget.TextBox(
					background=Color.dark_grey,
					padding=4,
					text='🌀'
				),
				widget.Systray(
					background=Color.dark_grey,
					font=Style.font_type,
					fontsize=Style.font_size,
					padding=6
				),
				widget.TextBox(
					background=Color.dark_grey,
					padding=2,
					text=' '
				),
			],
			20,
		),
	),
]

# Drag floating layouts.
mouse = [
	Drag(
		[mod],
		"Button1",
		lazy.window.set_position_floating(),
		start=lazy.window.get_position(),
	),
	Drag(
		[mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()
	),
	Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
	float_rules=[
		# Run the utility of `xprop` to see the wm class and name of an X client.
		{"wmclass": "confirm"},
		{"wmclass": "dialog"},
		{"wmclass": "download"},
		{"wmclass": "error"},
		{"wmclass": "file_progress"},
		{"wmclass": "notification"},
		{"wmclass": "splash"},
		{"wmclass": "toolbar"},
		{"wmclass": "confirmreset"},  # gitk
		{"wmclass": "makebranch"},  # gitk
		{"wmclass": "maketag"},  # gitk
		{"wname": "branchdialog"},  # gitk
		{"wname": "pinentry"},  # GPG key password entry
		{"wmclass": "ssh-askpass"},  # ssh-askpass
	]
)

auto_fullscreen = True

focus_on_window_activation = "smart"


# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

