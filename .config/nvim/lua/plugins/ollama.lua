return {
--   "David-Kunz/gen.nvim",
--   opts = {
--     model = "codellama", -- The default model to use.
--     host = "localhost", -- The host running the Ollama service.
--     port = "11434", -- The port on which the Ollama service is listening.
--     display_mode = "split", -- The display mode. Can be "float" or "split".
--     show_prompt = true, -- Shows the Prompt submitted to Ollama.
--     show_model = true, -- Displays which model you are using at the beginning of your chat session.
--   },
--   config = function(_, opts)
--     local gen = require("gen")
--     gen.setup(opts)
--
--     gen.prompts["FOO"] = {
--       prompt = "Regarding the following code, $input, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
--       replace = false,
--       extract = "```$filetype\n(.-)```",
--     }
--   end,
}
