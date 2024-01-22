local options = {
  filters = {
    dotfiles = false
  },
  disable_netrw = true,
  sort = {
    sorter = 'case_sensitive'
  },
  view = {
    side = 'left',
    width = 30
  },
  filesystem_watchers = {
    enable = true
  },
  renderer = {
    root_folder_label = false
  }
}

return options
