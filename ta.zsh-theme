function _virtualenv_prompt_info {
    [[ -n $(whence virtualenv_prompt_info) ]] && virtualenv_prompt_info
}

function _git_prompt_info {
    [[ -n $(whence git_prompt_info) ]] && git_prompt_info
}

function _hg_prompt_info {
    [[ -n $(whence hg_prompt_info) ]] && hg_prompt_info
}

function _docker_prompt_info {
    if [[ -z "${DOCKER_PROMPT_INFO}" ]] && [[ -n "${DOCKER_HOST}" ]]; then
        DOCKER_PROMPT_INFO=${DOCKER_HOST/tcp:\/\//}
    fi
    [[ -n "${DOCKER_PROMPT_INFO}" ]] && \
        echo "${ZSH_THEME_DOCKER_PROMPT_PREFIX}${DOCKER_PROMPT_INFO}${ZSH_THEME_DOCKER_PROMPT_SUFFIX}"
}

PROMPT='%{$fg_bold[green]%}%~%{$fg_bold[blue]%}$(_virtualenv_prompt_info)$(_docker_prompt_info)$(_git_prompt_info)$(_hg_prompt_info)%{$fg_bold[red]%}$%{$reset_color%} '

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[magenta]%}("
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY=" *)"
ZSH_THEME_HG_PROMPT_CLEAN=")"

ZSH_THEME_GIT_PROMPT_PREFIX=$ZSH_THEME_HG_PROMPT_PREFIX
ZSH_THEME_GIT_PROMPT_SUFFIX=$ZSH_THEME_HG_PROMPT_SUFFIX
ZSH_THEME_GIT_PROMPT_DIRTY=$ZSH_THEME_HG_PROMPT_DIRTY
ZSH_THEME_GIT_PROMPT_CLEAN=$ZSH_THEME_HG_PROMPT_CLEAN

ZSH_THEME_DOCKER_PROMPT_PREFIX="docker:‹%{$fg[red]%}"
ZSH_THEME_DOCKER_PROMPT_SUFFIX="%{$fg[blue]%}›"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg_bold[yellow]%}["
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="]%{$reset_color%}"
