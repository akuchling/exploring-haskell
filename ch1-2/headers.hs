
{-
 E-mail header parsing (simplified version of RFC-822 headers)
 -}

import Data.List
import Data.Maybe

message = ["Subject: [Python-checkins] cpython (merge 3.3 -> default): Null merge",
           "From: Angus Developer <angus@example.com>",
           "",
           "http://hg.python.org/cpython/rev/ab3b58f21fe7",
           "changeset:   86855:ab3b58f21fe7"
           ];

-- Divide a header into a (name, value) pair
splitHeader hdr = let pair = break (== ':') hdr
                  in (fst pair, tail $ snd pair)

-- Return a list of (header-name, header-value) pairs
getHeaders msg = map splitHeader (fst $ break (== "") msg)

-- Get the value of a single header
getHeader msg hdr = let headers = getHeaders msg
                        match = find (\pair -> (fst pair) == hdr) headers
                    in
                      if match == Nothing
                      then Nothing
                      else match

-- Return a list of the lines from the body
-- Alternate notations: using $ and using parens
--getBody msg = tail $ snd $ break (=="") msg
getBody msg = tail (snd (break (== "") msg))
