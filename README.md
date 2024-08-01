[vem-dark](https://github.com/pacha/vem-dark) with lua

## Using 

```
return {
  'bstaint/vem-dark',
  opts = {
    group_overrides = {
      DiagnosticUnderlineInfo = {},
    }
  },
  config = function(_, opts)
    require('vem-dark').setup(opts)

    vim.cmd.colorscheme 'vem-dark'
  end,
}
```
