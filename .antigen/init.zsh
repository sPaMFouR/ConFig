#-- START ZCACHE GENERATED FILE
#-- GENERATED: Tue Sep 25 14:55:36 IST 2018
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/avinash/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux /home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/avinash/.antigen/bundles/ael-code/zsh-colored-man-pages /home/avinash/.antigen/bundles/zsh-users/zsh-syntax-highlighting) path+=(/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux /home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/avinash/.antigen/bundles/ael-code/zsh-colored-man-pages /home/avinash/.antigen/bundles/zsh-users/zsh-syntax-highlighting)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/avinash/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/avinash/.oh-my-zsh" ]]; then
  ZSH="/home/avinash/.oh-my-zsh"; ZSH_CACHE_DIR="/home/avinash/.oh-my-zsh/cache"
fi
#--- BUNDLES BEGIN
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux/tmux.plugin.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/home/avinash/.antigen/bundles/ael-code/zsh-colored-man-pages/colored-man-pages.plugin.zsh';
source '/home/avinash/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/themes/robbyrussell.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/tmux plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/ael-code/zsh-colored-man-pages.git / plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/robbyrussell.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux/tmux.plugin.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/home/avinash/.antigen/bundles/ael-code/zsh-colored-man-pages//' '/home/avinash/.antigen/bundles/ael-code/zsh-colored-man-pages///colored-man-pages.plugin.zsh' '/home/avinash/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/home/avinash/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/themes/robbyrussell.zsh-theme' '/home/avinash/.antigen/bundles/robbyrussell/oh-my-zsh/themes/robbyrussell.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
