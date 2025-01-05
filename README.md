# js-debug
A simple utility to `console.log` the current selection in a buffer in both normal and visual modes. The output is automatically replaced under the current line.

## Demo
![2025-01-04 17 20 10](https://github.com/user-attachments/assets/1e29a9d0-7163-4218-b089-230ecac36834)

## Installation
Using `lazy.nvim`:

```
require("lazy").setup({
  "matt-taggart/js-debug"
})
```

Using `packer.nvim`:

```
use({
  "matt-taggart/js-debug"
})
```

## Keymapping
Automatically maps the following keybindings:
- In normal mode: `<leader>ll`: logs the reference to the current word under the cursor
- In visual mode: `<leader>l`: logs the selected value to the console

## Roadmap
- Expose commands and allow users to specify their own keybindings
- Add additional languages
