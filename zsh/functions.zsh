# battery plugin

function battery_display {
	BAT_STATE=~/.oh-my-zsh/plugins/zsh-battery-state/battery_state.py
	echo `$BAT_STATE` 2>/dev/null
}

RPROMPT='$(battery_display)'
