module Block where

import Foreign.C.Types
import Linear(V2(..))


data BlockType
    = Air
    | Stone

data Block = Block (V2 CInt) BlockType

chunkHeight :: CInt
chunkHeight = 256

chunkWidth :: CInt
chunkWidth = 64

blockSize :: CInt
blockSize = 32

blockSizeV :: V2 CInt
blockSizeV = V2 blockSize blockSize

isSolidBlock :: BlockType -> Bool
isSolidBlock Air = False
isSolidBlock _ = True