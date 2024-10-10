return {
    "nvim-neo-tree/neo-tree.nvim",

    branch = "v3.x",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    keys = {
        {
            "<leader>e",
            "<cmd>Neotree toggle<cr>",
            desc = "neotree toggle: left",
        },

        {
            "<leader>tj",
            "<cmd>Neotree filesystem reveal left<cr>",
            desc = "neotree: left",
        },

        {
            "<leader>tl",
            "<cmd>Neotree filesystem reveal right<cr>",
            desc = "neotree: right",
        },

        {
            "<leader>tk",
            "<cmd>Neotree filesystem reveal float<cr>",
            desc = "neotree: float",
        },

        {
            "<leader>tb",
            function()
                require("neo-tree.command").execute({ source = "buffers", toggle = true })
            end,
            desc = "neotree: Buffer Explorer",
        },

        {
            "<leader>tg",
            function()
                require("neo-tree.command").execute({ source = "git_status", toggle = true })
            end,
            desc = "neotree: Git Explorer",
        },
    },

}
