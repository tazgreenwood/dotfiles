local dap = require('dap')

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/Users/tazgreenwood/github.com/xdebug/vscode-php-debug/out/phpDebug.js' }
}

vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🔶', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🔵', texthl='', linehl='', numhl=''})
