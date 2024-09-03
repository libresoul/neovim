local function shuffle(tbl)
  local len = #tbl
  for i = len, 2, -1 do
    local j = math.random(i)
    tbl[i], tbl[j] = tbl[j], tbl[i]
  end
end

local function generate_lorem(paragraphs, words)
  paragraphs = paragraphs or 1
  words = words or 30

  local lorem_words = {
    "Lorem", "ipsum", "dolor", "sit", "amet,", "consectetur", "adipiscing", "elit.",
    "Sed", "do", "eiusmod", "tempor", "incididunt", "ut", "labore", "et", "dolore", "magna", "aliqua.",
    "Ut", "enim", "ad", "minim", "veniam,", "quis", "nostrud", "exercitation", "ullamco", "laboris",
    "nisi", "ut", "aliquip", "ex", "ea", "commodo", "consequat."
  }

  local result = {}

  for i = 1, paragraphs do
    local paragraph = {}

    -- Loop until we have enough words
    while #paragraph < words do
      shuffle(lorem_words)
      local remaining_words = words - #paragraph
      local words_to_add = math.min(#lorem_words, remaining_words)
      vim.list_extend(paragraph, vim.list_slice(lorem_words, 1, words_to_add))
    end

    table.insert(result, table.concat(paragraph, " "))

    -- Add a blank line after each paragraph except the last one
    if i < paragraphs then
      table.insert(result, "")
    end
  end

  return result
end

vim.api.nvim_create_user_command("Lorem", function(opts)
  local args = vim.split(opts.args, " ")
  local paragraphs = tonumber(args[1]) or 1
  local words = tonumber(args[2]) or 30

  local lorem_text = generate_lorem(paragraphs, words)
  vim.api.nvim_put(lorem_text, "l", true, true)
end, { nargs = "*" })

