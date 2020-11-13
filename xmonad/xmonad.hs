import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

import XMonad.Layout.Spacing

main = do
    --xmonad defaultConfig
    xmonad $ docks def
            { modMask = mod4Mask -- Use Super instead of Alt
            , terminal = "terminator"
            , layoutHook = avoidStruts $ meuLayout
            -- more changes
            }

meuLayout = spacingRaw True (Border 0 5 5 5) True (Border 5 5 5 5) True $
             layoutHook def
