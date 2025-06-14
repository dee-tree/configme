return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',

    config = function()
      require 'nvim-treesitter'.setup {
        -- Directory to install parsers and queries to
        install_dir = vim.fn.stdpath('data') .. '/site'
      }
      require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
      require 'nvim-treesitter'.install {
        'rust',
        'javascript'
      }
    end
}
