

   require'telescope'.load_extension('project')
    require'telescope'.setup {

        pickers = {
            find_files = {
                hidden = true
            }
        }
    }


    local switch_projects = function()
        require("telescope.builtin").find_files {
            prompt_title = "< Switch Project >",
            cwd = "$HOME/abhinav/documents",
        }
  end
   return { switch_projects = switch_projects }
