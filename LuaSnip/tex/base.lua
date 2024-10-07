local ls = require 'luasnip'
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep

return {
  -- Examples of Greek letter snippets, autotriggered for efficiency
  s({ trig = ';a' }, {
    t '\\alpha',
    snippetType = 'autosnippet',
  }),
  s({ trig = ';b', snippetType = 'autosnippet' }, {
    t '\\beta',
  }),
  s({ trig = ';g', snippetType = 'autosnippet' }, {
    t '\\gamma',
  }),
  s({ trig = ',bm', wordTrig = true }, {
    t '\\bm{',
    i(1),
    t '}',
  }),
  s({ trig = ',bth', snippetType = 'autosnippet' }, { t '\\bm{\\theta}' }),
  s({ trig = ',bx', wordTrig = true, snippetType = 'autosnippet' }, {
    t '\\bm{x}',
  }),
  s({ trig = ',by', wordTrig = true, snippetType = 'autosnippet' }, {
    t '\\bm{y}',
  }),
  s({ trig = ',pthx', wordTrig = true }, {
    t 'p_{\\bm{\\Theta \\vert X}}(',
    i(1),
    t '\\vert',
    i(2),
    t ')',
  }),
  s({ trig = ',pthy', wordTrig = true }, {
    t 'p_{\\bm{\\Theta \\vert Y}}(',
    i(1),
    t '\\vert',
    i(2),
    t ')',
  }),
  s({ trig = ',pxth', wordTrig = true }, {
    t 'p_{X \\vert \\bm{\\Theta}}(',
    i(1),
    t '\\vert',
    i(2),
    t ')',
  }),
  s({ trig = ',pyth', wordTrig = true }, {
    t 'p_{Y \\vert \\bm{\\Theta}}(',
    i(1),
    t '\\vert',
    i(2),
    t ')',
  }),
  s({ trig = ',pth', wordTrig = true }, {
    t 'p_{\\bm{\\Theta}}(',
    i(1),
    t ')',
  }),
  s({ trig = ',pxy', wordTrig = true }, {
    t 'p_{X,Y}(',
    i(1),
    t ')',
  }),
}
