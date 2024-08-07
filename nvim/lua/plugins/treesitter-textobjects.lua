return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    config = function ()
        require("nvim-treesitter.configs").setup({
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["a="] = {
                            query = "@assignment.outer",
                            desc = "Select outer part"
                        },
                        ["i="] = {
                            query = "@assignment.inner",
                            desc = "Select inner part"
                        },
                        ["if"] = {
                            query = "@function.inner",
                            desc = "Select inside func"
                        },
                        ["af"] = {
                            query = "@function.outer",
                            desc = "Select outside func"
                        },
                        ["aa"] = {
                            query = "@parameter.outer",
                            desc = "Select outside argument"
                        },
                        ["ia"] = {
                            query = "@parameter.inner",
                            desc = "Select inside argument"
                        },
                        ["ai"] = {
                            query = "@conditional.outer",
                            desc = "Select outside conditional"
                        },
                        ["ii"] = {
                            query = "@conditional.inner",
                            desc = "Select inside conditional"
                        },
                        ["ic"] = {
                            query = "@class.inner",
                            desc = "Select inside class"
                        },
                        ["ac"] = {
                            query = "@class.outer",
                            desc = "Select outside class"
                        },
                    }

                },
                move = {
                    enable = true,
                    set_jumps = true,
                    goto_next_start = {
                        -- Go to start of next method
                        [']]'] = "@function.outer",
                    },
                    goto_previous_start = {
                        -- Go to start of previous method
                        ['[['] = "@function.outer",
                    },
                },
                lsp_interop = {
                    enable = true,
                    border = 'rounded',
                    floating_preview_opts = {},
                    peek_definition_code = {
                        ["gk"] = "@function.outer"
                    }
                }
            }
        })
    end
}
