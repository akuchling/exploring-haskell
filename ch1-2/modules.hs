
-- Import a specific name
import System.CPUTime (cpuTimePrecision)

-- Import all the names from a module
import Text.Printf

-- Qualified import
import qualified Data.Time.Calendar

{- Example usage:
  printf "Timer resolution = %i usec\n" (cpuTimePrecision `div` 1000000)
  Data.Time.Calendar.fromGregorian 2013 11 31

-}
