(module dotfiles.plugin.gitsigns
  {require {{: nnoremap} dotfiles.util
            gs gitsigns}
   autoload {core aniseed.core
             telescope telescope}})

(gs.setup {})

