-- plugins/coc.lua

-- CoC.nvim installation
return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        -- CoC configuration setup
        -- Install necessary extensions
        -- vim.cmd [[
        --   autocmd VimEnter * :CocInstall coc-tsserver coc-html coc-css coc-json coc-prettier
        -- ]]

        -- Set up CoC extensions globally
        vim.g.coc_global_extensions = {
          "coc-tsserver", -- TypeScript/JavaScript and React support
          "coc-html",     -- HTML support
          "coc-css",      -- CSS support
          "coc-json",     -- JSON support
          "coc-prettier", -- Prettier integration
        }

        -- Emmet configuration for JSX and HTML
        vim.g.emmet_include_languages = {
          javascript = "javascriptreact",
          javascriptreact = "html",
          typescriptreact = "html",
        }

        -- Additional CoC settings
        vim.cmd [[
          let g:coc_user_config = {
          \   'suggest.autoTrigger': 'always',
          \   'tsserver.formatOnType': v:true,
          \   'coc.preferences.formatOnSaveFiletypes': ['javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'html'],
          \   'html.autoClosingTags': v:true,
          \   'typescript.suggest.autoImports': v:true,
          \   'javascript.suggest.autoImports': v:true,
          \   'javascript.validate.enable': v:true,
          \   'typescript.validate.enable': v:true,
          \ }
        ]]

        -- Emmet for JSX/React files
        vim.g.emmet_trigger_expand_on_tab = true
        vim.g.emmet_include_languages = {
          javascript = "javascriptreact",
          javascriptreact = "html",
          typescriptreact = "html"
        }

        -- CoC keybindings for completion
        vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', { expr = true, noremap = true })
        vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', { noremap = true, silent = true })
    end
}

