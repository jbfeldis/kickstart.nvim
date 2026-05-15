-- Override kickstart's LuaSnip spec: pin to HEAD of master instead of
-- `version = '2.*'`. The 2.x tag (c9b9a22, Jan 2025) ships a broken
-- Makefile that references deps/jsregexp006 — an empty path that isn't
-- a real submodule — making `make install_jsregexp` fail every install.
-- HEAD master has the fix (verified 2026-05-15).
return {
  'L3MON4D3/LuaSnip',
  branch = 'master',
  version = false, -- explicitly drop version pin
}
