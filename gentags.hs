import Data.Monoid
import Control.Monad

tags :: [String]
tags =
  [ "a", "abbr", "address", "area", "article", "aside", "audio", "b"
  , "base", "bdi", "bdo", "blockquote", "body", "br", "button", "canvas"
  , "caption", "cite", "code", "col", "colgroup", "data", "datalist"
  , "dd", "del", "details", "dfn", "dialog", "div", "dl", "dt", "em", "embed"
  , "fieldset", "figcaption", "figure", "footer", "form", "h1", "h2", "h3"
  , "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "i", "iframe"
  , "img", "input", "ins", "kbd", "keygen", "label", "legend", "li", "link"
  , "main", "map", "mark", "menu", "menuitem", "meta", "meter", "nav"
  , "noscript", "object", "ol", "optgroup", "option", "output", "p", "param"
  , "pre", "progress", "q", "rb", "rp", "rt", "rtc", "ruby", "s", "samp"
  , "script", "section", "select", "small", "source", "span", "strong"
  , "style", "sub", "summary", "sup", "table", "tbody", "td", "template"
  , "textarea", "tfoot", "th", "thead", "time", "title", "tr", "track", "u"
  , "ul", "var", "video", "wbr"
  ]

main :: IO ()
main = forM_ tags $ putStrLn . tagCode

tagCode :: String -> String
tagCode tag = mconcat
  [ tag, " :: forall m. Array (Prop m) -> Array (HTML m) -> HTML m\n"
  , tag, " = Element Nothing \"", tag, "\"\n"
  ]