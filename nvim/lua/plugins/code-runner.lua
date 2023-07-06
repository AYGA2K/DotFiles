return {
  {
    "CRAG666/code_runner.nvim",
    requires = "nvim-lua/plenary.nvim",
    opts = {
      mode = "toggle",
      focus = true,
      float = {
        close_key = "<ESC>",
      },
      -- term = {
      --   --  Position to open the terminal, this option is ignored if mode ~= term
      --   position = "left",
      --   -- window size, this option is ignored if mode == tab
      --   size = 12,
      -- },
      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        go = {
          "cd $dir &&",
          "go run $fileName",
        },
        c = {
          "cd $dir &&",
          "gcc $fileName",
          "-o $fileNameWithoutExt &&",
          "$dir/$fileNameWithoutExt",
        },
        cpp = {
          "cd $dir &&",
          "g++ $fileName",
          "-o $fileNameWithoutExt &&",
          "$dir/$fileNameWithoutExt",
        },
        python = "python3 -u",
        typescript = "deno run",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir$fileNameWithoutExt",
        },
      },
    },
  },
}
