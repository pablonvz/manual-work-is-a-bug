# The Problem
`direnv` doesn't your `.envrc`

# The solution

Add the following to your `.bash_profile` before sourcing the `.iterm2_shell_integration.bash` script into your shell

```bash
# function copied from "$(direnv hook bash)"
_direnv_hook() {
  local previous_exit_status=$?;
  eval "$("/usr/local/bin/direnv" export bash)";
  return $previous_exit_status;
};

# used by iterm2_shell_integration
precmd_functions+=(_direnv_hook)
```

## The Explanation

_WORK IN PROGRESS_

Once `direnv` is installed, it should be hooked into bash by adding `eval "$(direnv hook bash)"` to your `.bash_profile`

By running `direnv hook bash` we get the following

```bash
_direnv_hook() {
  local previous_exit_status=$?;
  eval "$("/usr/local/bin/direnv" export bash)";
  return $previous_exit_status;
};
if ! [[ "${PROMPT_COMMAND:-}" =~ _direnv_hook ]]; then
  PROMPT_COMMAND="_direnv_hook${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
fi
```

We can see that all it does is to define a bash function that do the real work of hooking `direnv` into bash, and the prepend the function name to the `$PROMPT_COMMAND` environment variable.

The bash integration of `iterm2` overrides the `$PROMPT_COMMAND` with its own content, but in turn provides the variables `precmd_functions` and `precmd_functions` we can rely on.

## References

```
$PROMPT_COMMAND
```

https://iterm2.com/shell_integration/bash


```
direnv: error .envrc is blocked. Run `direnv allow` to approve its content.
```

https://rnorth.org/practical-direnv _(didn't read it all yet)_

https://spinscale.de/posts/2019-05-28-creating-a-productive-terminal-environment.html

