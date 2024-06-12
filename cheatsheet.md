# NVIM cheatsheet 

## Undo/Redo
Undo: `u`

Redo: `C-r`

## Search word in cursor
Search: `*`

Next: `n`

Previous: `S-n`

## Buffers
Show buffers: `:ls`

Next buffer: ~~`:bn`~~ or `Leader k`

Previous buffer: ~~`:bp`~~ or `Leader j`

Delete buffer: `:bd`

## Splits
Open horizontal split of current file: `C-w s`

Open vertical split of current file: `C-w v`

Open horizontal split of new file: `:sp`

Open vertical split of new file: `:vsp`

Resize horizontal: ~~`:res +5`~~ or drag with mouse

Resize vertical: ~~`:vertical resize +5`~~ or drag with mouse

## Tabs
Next tab: `gt`

Previous tab: `gT`

## Declarations navigation (native but overriden by tpope/vim-rails)
Move to global declaration: `gf`

Return to previous jump position: `C-o`

Go to newer jump position: `C-i`

Open new horizontal split of declaration: `C-w f`

Open new vertical split of declaration: `C-w vgf`

## Indentation
Indent current line: `>`

Indent multiple lines: `<visual> =`

## Vertical visual insert:
```
C-v
# select the column
I # capital i for enter insert mode
ESC # apply changes and exit insert mode
```

## Block code comment
Comment: `<visual>:norm i#`

Uncomment: `<visual>:norm x`

## Netrw
Open netrw: ~~`:Explore`~~ or `-`

Create file: `%`

Create directory: `d`

Remove file or directory: `D`

Rename file or directory: `R`

Open in external app: `x`

## Telescope (plugin)
Find file: `Leader ff`

Find grep: `Leader fg`

Find buffer: `Leader fb`

Find help tags: `Leader fh`

Horizontal split: `C-x`

Vertical split: `C-v`

New tab: `C-t`

## Autocomplete
Next suggestion: `C-n`

Previous suggestion: `C-p`

Select suggestion: `C-y`

## Hop (plugin)
Find forward: `Leader s <two chars>`

Find backward: `Leader S <two chars>`

## Markdown (plugin)
Preview: `Leader m`

Stop preview: `Leader mn`

## Plugin manager
Update: `:PackerSync`
