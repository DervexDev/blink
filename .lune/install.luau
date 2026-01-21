local fs = require("@lune/fs")
local process = require("@lune/process")

local result = process.exec("lune", { "run", ".lune/build.luau", "macos", "aarch64" })
assert(result.ok, result.stderr)

local path = process.env.HOME .. "/bin/blink"

if fs.isFile(path) then
	fs.removeFile(path)
end

fs.copy("release/blink", process.env.HOME .. "/bin/blink")
print("Successfully built and installed blink to `~/bin/blink`")
