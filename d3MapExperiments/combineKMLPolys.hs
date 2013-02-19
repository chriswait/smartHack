import System.Directory
import System.FilePath.Posix
import Control.Monad

dataDir :: String
dataDir = "../datasets/wardBoundaries/"

main :: IO ()
main = do
    fileList <- getDirectoryContents dataDir
    mergeFiles fileList []


mergeFiles :: [FilePath] -> [String] -> IO ()
mergeFiles [] mergedString = writeFile "mergedData.kml" $ 
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?><kml xmlns=\"http://www.opengis.net/kml/2.2\"><Document><name>wards.kml</name><open>0</open>" 
    ++ (concat mergedString) 
    ++ "</Document></kml>"
mergeFiles (fName:fs) mergingString = do
    let ext = (takeExtension fName)
    case (ext == ".kml") of 
        True -> do
            currentKML <- readFile (dataDir ++ fName)
            mergeFiles fs $ (makeProperKML currentKML fName):mergingString
        False -> do
            mergeFiles fs mergingString

makeProperKML :: String -> String -> String
makeProperKML kmlFragment fName = "<Placemark><name>" ++ (dropExtension fName) ++ "</name> <visibility>0</visibility>" ++ kmlFragment ++ "</Placemark>" 
