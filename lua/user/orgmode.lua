-- require('orgmode').setup({
--   org_agenda_files = '~/orgfiles/**/*',
--   org_default_notes_file = '~/orgfiles/refile.org',
-- })

local NotesWorkspace = "~/Personal/Notes"
local TasksWorkspace = "~/Personal/Tasks"
local JournalWorkspace = "~/Personal/Journal"
local Index = "~/Personal/index.norg"

require("neorg").setup({
  load = {
    ["core.defaults"] = {},
    ["core.concealer"] = {
      config = {
        icon_preset = "varied",
        icons = { code_block = { spell_check = false } },
        init_open_folds = "always"
      },
    },
    ["core.esupports.metagen"] = {
      config = {
        type = "auto",
        update_date = true,
        author = "trividha"
      }
    },
    ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
    ["core.journal"] = {
      config = {
        strategy = "nested",
        workspace = "journal", 
      },
    },
    ["core.dirman.utils"] = {},

    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = NotesWorkspace,
          tasks = TasksWorkspace,
          journal = JournalWorkspace,
        },
        index = Index,
        default_workspace = "notes",
      },
    },

    ["core.integrations.telescope"] = {}
  },
})

keybindings = {
  
}
