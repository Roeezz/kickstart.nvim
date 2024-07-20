-- Shell options

-- Set the default shell used by nvim to be powershell
vim.opt.shell = 'pwsh'

vim.opt.shellcmdflag =
  '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;Remove-Alias -Force -ErrorAction SilentlyContinue tee;$PSStyle.OutputRendering = [System.Management.Automation.OutputRendering]::PlainText;'

vim.opt.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'

vim.opt.shellpipe = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'

vim.opt.shellquote = ''

vim.opt.shellxquote = ''
