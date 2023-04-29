return {
    'numToStr/Comment.nvim',
    lazy = true,
	event = { "BufReadPost", "BufNewFile" },
    config = function()
        require('Comment').setup()
    end
}
