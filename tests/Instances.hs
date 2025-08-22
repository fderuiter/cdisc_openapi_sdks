{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import CDISCLibrary.Model
import CDISCLibrary.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary About where
  arbitrary = sized genAbout

genAbout :: Int -> Gen About
genAbout n =
  About
    <$> arbitraryReducedMaybe n -- aboutLinks :: Maybe AboutLinks
    <*> arbitraryReducedMaybe n -- aboutReleaseNotes :: Maybe Text
    <*> arbitraryReducedMaybe n -- aboutApiDocumentation :: Maybe Text
  
instance Arbitrary AboutLinks where
  arbitrary = sized genAboutLinks

genAboutLinks :: Int -> Gen AboutLinks
genAboutLinks n =
  AboutLinks
    <$> arbitraryReducedMaybe n -- aboutLinksSelf :: Maybe AboutRef
    <*> arbitraryReducedMaybe n -- aboutLinksLastupdated :: Maybe LastupdatedRef
  
instance Arbitrary AboutRef where
  arbitrary = sized genAboutRef

genAboutRef :: Int -> Gen AboutRef
genAboutRef n =
  AboutRef
    <$> arbitraryReducedMaybe n -- aboutRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- aboutRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- aboutRefType :: Maybe Text
  
instance Arbitrary AdamDatastructure where
  arbitrary = sized genAdamDatastructure

genAdamDatastructure :: Int -> Gen AdamDatastructure
genAdamDatastructure n =
  AdamDatastructure
    <$> arbitraryReducedMaybe n -- adamDatastructureOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureName :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureLinks :: Maybe AdamDatastructureLinks
    <*> arbitraryReducedMaybe n -- adamDatastructureAnalysisVariableSets :: Maybe [AdamVarset]
  
instance Arbitrary AdamDatastructureLinks where
  arbitrary = sized genAdamDatastructureLinks

genAdamDatastructureLinks :: Int -> Gen AdamDatastructureLinks
genAdamDatastructureLinks n =
  AdamDatastructureLinks
    <$> arbitraryReducedMaybe n -- adamDatastructureLinksSelf :: Maybe AdamDatastructureRef
    <*> arbitraryReducedMaybe n -- adamDatastructureLinksParentProduct :: Maybe AdamProductRef
    <*> arbitraryReducedMaybe n -- adamDatastructureLinksPriorVersion :: Maybe AdamDatastructureRef
  
instance Arbitrary AdamDatastructureRef where
  arbitrary = sized genAdamDatastructureRef

genAdamDatastructureRef :: Int -> Gen AdamDatastructureRef
genAdamDatastructureRef n =
  AdamDatastructureRef
    <$> arbitraryReducedMaybe n -- adamDatastructureRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureRefType :: Maybe Text
  
instance Arbitrary AdamDatastructureRefElement where
  arbitrary = sized genAdamDatastructureRefElement

genAdamDatastructureRefElement :: Int -> Gen AdamDatastructureRefElement
genAdamDatastructureRefElement n =
  AdamDatastructureRefElement
    <$> arbitraryReducedMaybe n -- adamDatastructureRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureRefElementType :: Maybe Text
  
instance Arbitrary AdamDatastructureVariables where
  arbitrary = sized genAdamDatastructureVariables

genAdamDatastructureVariables :: Int -> Gen AdamDatastructureVariables
genAdamDatastructureVariables n =
  AdamDatastructureVariables
    <$> arbitraryReducedMaybe n -- adamDatastructureVariablesOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesLinks :: Maybe AdamDatastructureVariablesLinks
  
instance Arbitrary AdamDatastructureVariablesLinks where
  arbitrary = sized genAdamDatastructureVariablesLinks

genAdamDatastructureVariablesLinks :: Int -> Gen AdamDatastructureVariablesLinks
genAdamDatastructureVariablesLinks n =
  AdamDatastructureVariablesLinks
    <$> arbitraryReducedMaybe n -- adamDatastructureVariablesLinksSelf :: Maybe AdamDatastructureVariablesRef
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesLinksParentProduct :: Maybe AdamProductRef
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesLinksPriorVersion :: Maybe AdamDatastructureVariablesRef
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesLinksAnalysisVariables :: Maybe [AdamVariableRefElement]
  
instance Arbitrary AdamDatastructureVariablesRef where
  arbitrary = sized genAdamDatastructureVariablesRef

genAdamDatastructureVariablesRef :: Int -> Gen AdamDatastructureVariablesRef
genAdamDatastructureVariablesRef n =
  AdamDatastructureVariablesRef
    <$> arbitraryReducedMaybe n -- adamDatastructureVariablesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVariablesRefType :: Maybe Text
  
instance Arbitrary AdamDatastructureVarsets where
  arbitrary = sized genAdamDatastructureVarsets

genAdamDatastructureVarsets :: Int -> Gen AdamDatastructureVarsets
genAdamDatastructureVarsets n =
  AdamDatastructureVarsets
    <$> arbitraryReducedMaybe n -- adamDatastructureVarsetsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsLinks :: Maybe AdamDatastructureVarsetsLinks
  
instance Arbitrary AdamDatastructureVarsetsLinks where
  arbitrary = sized genAdamDatastructureVarsetsLinks

genAdamDatastructureVarsetsLinks :: Int -> Gen AdamDatastructureVarsetsLinks
genAdamDatastructureVarsetsLinks n =
  AdamDatastructureVarsetsLinks
    <$> arbitraryReducedMaybe n -- adamDatastructureVarsetsLinksSelf :: Maybe AdamDatastructureVarsetsRef
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsLinksParentProduct :: Maybe AdamProductRef
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsLinksPriorVersion :: Maybe AdamDatastructureVarsetsRef
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsLinksAnalysisVariableSets :: Maybe [AdamVarsetRefElement]
  
instance Arbitrary AdamDatastructureVarsetsRef where
  arbitrary = sized genAdamDatastructureVarsetsRef

genAdamDatastructureVarsetsRef :: Int -> Gen AdamDatastructureVarsetsRef
genAdamDatastructureVarsetsRef n =
  AdamDatastructureVarsetsRef
    <$> arbitraryReducedMaybe n -- adamDatastructureVarsetsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamDatastructureVarsetsRefType :: Maybe Text
  
instance Arbitrary AdamProduct where
  arbitrary = sized genAdamProduct

genAdamProduct :: Int -> Gen AdamProduct
genAdamProduct n =
  AdamProduct
    <$> arbitraryReducedMaybe n -- adamProductName :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductLinks :: Maybe AdamProductLinks
    <*> arbitraryReducedMaybe n -- adamProductDataStructures :: Maybe [AdamDatastructure]
  
instance Arbitrary AdamProductDatastructures where
  arbitrary = sized genAdamProductDatastructures

genAdamProductDatastructures :: Int -> Gen AdamProductDatastructures
genAdamProductDatastructures n =
  AdamProductDatastructures
    <$> arbitraryReducedMaybe n -- adamProductDatastructuresName :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresLinks :: Maybe AdamProductDatastructuresLinks
  
instance Arbitrary AdamProductDatastructuresLinks where
  arbitrary = sized genAdamProductDatastructuresLinks

genAdamProductDatastructuresLinks :: Int -> Gen AdamProductDatastructuresLinks
genAdamProductDatastructuresLinks n =
  AdamProductDatastructuresLinks
    <$> arbitraryReducedMaybe n -- adamProductDatastructuresLinksSelf :: Maybe AdamProductDatastructuresRef
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresLinksPriorVersion :: Maybe AdamProductDatastructuresRef
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresLinksDataStructures :: Maybe [AdamDatastructureRefElement]
  
instance Arbitrary AdamProductDatastructuresRef where
  arbitrary = sized genAdamProductDatastructuresRef

genAdamProductDatastructuresRef :: Int -> Gen AdamProductDatastructuresRef
genAdamProductDatastructuresRef n =
  AdamProductDatastructuresRef
    <$> arbitraryReducedMaybe n -- adamProductDatastructuresRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductDatastructuresRefType :: Maybe Text
  
instance Arbitrary AdamProductLinks where
  arbitrary = sized genAdamProductLinks

genAdamProductLinks :: Int -> Gen AdamProductLinks
genAdamProductLinks n =
  AdamProductLinks
    <$> arbitraryReducedMaybe n -- adamProductLinksSelf :: Maybe AdamProductRef
    <*> arbitraryReducedMaybe n -- adamProductLinksModel :: Maybe AdamProductRef
    <*> arbitraryReducedMaybe n -- adamProductLinksPriorVersion :: Maybe AdamProductRef
  
instance Arbitrary AdamProductRef where
  arbitrary = sized genAdamProductRef

genAdamProductRef :: Int -> Gen AdamProductRef
genAdamProductRef n =
  AdamProductRef
    <$> arbitraryReducedMaybe n -- adamProductRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductRefType :: Maybe Text
  
instance Arbitrary AdamProductRefElement where
  arbitrary = sized genAdamProductRefElement

genAdamProductRefElement :: Int -> Gen AdamProductRefElement
genAdamProductRefElement n =
  AdamProductRefElement
    <$> arbitraryReducedMaybe n -- adamProductRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamProductRefElementType :: Maybe Text
  
instance Arbitrary AdamVariable where
  arbitrary = sized genAdamVariable

genAdamVariable :: Int -> Gen AdamVariable
genAdamVariable n =
  AdamVariable
    <$> arbitraryReducedMaybe n -- adamVariableOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableDescribedValueDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableValueList :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- adamVariableLinks :: Maybe AdamVariableLinks
  
instance Arbitrary AdamVariableLinks where
  arbitrary = sized genAdamVariableLinks

genAdamVariableLinks :: Int -> Gen AdamVariableLinks
genAdamVariableLinks n =
  AdamVariableLinks
    <$> arbitraryReducedMaybe n -- adamVariableLinksSelf :: Maybe AdamVariableRef
    <*> arbitraryReducedMaybe n -- adamVariableLinksCodelist :: Maybe RootCtCodelistRef
    <*> arbitraryReducedMaybe n -- adamVariableLinksParentProduct :: Maybe AdamProductRef
    <*> arbitraryReducedMaybe n -- adamVariableLinksParentDatastructure :: Maybe AdamDatastructureRef
    <*> arbitraryReducedMaybe n -- adamVariableLinksParentVariableSet :: Maybe AdamVarsetRef
    <*> arbitraryReducedMaybe n -- adamVariableLinksPriorVersion :: Maybe AdamVariableRef
  
instance Arbitrary AdamVariableRef where
  arbitrary = sized genAdamVariableRef

genAdamVariableRef :: Int -> Gen AdamVariableRef
genAdamVariableRef n =
  AdamVariableRef
    <$> arbitraryReducedMaybe n -- adamVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableRefType :: Maybe Text
  
instance Arbitrary AdamVariableRefElement where
  arbitrary = sized genAdamVariableRefElement

genAdamVariableRefElement :: Int -> Gen AdamVariableRefElement
genAdamVariableRefElement n =
  AdamVariableRefElement
    <$> arbitraryReducedMaybe n -- adamVariableRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVariableRefElementType :: Maybe Text
  
instance Arbitrary AdamVarset where
  arbitrary = sized genAdamVarset

genAdamVarset :: Int -> Gen AdamVarset
genAdamVarset n =
  AdamVarset
    <$> arbitraryReducedMaybe n -- adamVarsetOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetLinks :: Maybe AdamVarsetLinks
    <*> arbitraryReducedMaybe n -- adamVarsetAnalysisVariables :: Maybe [AdamVariable]
  
instance Arbitrary AdamVarsetLinks where
  arbitrary = sized genAdamVarsetLinks

genAdamVarsetLinks :: Int -> Gen AdamVarsetLinks
genAdamVarsetLinks n =
  AdamVarsetLinks
    <$> arbitraryReducedMaybe n -- adamVarsetLinksSelf :: Maybe AdamVarsetRef
    <*> arbitraryReducedMaybe n -- adamVarsetLinksParentProduct :: Maybe AdamProductRef
    <*> arbitraryReducedMaybe n -- adamVarsetLinksParentDatastructure :: Maybe AdamDatastructureRef
    <*> arbitraryReducedMaybe n -- adamVarsetLinksPriorVersion :: Maybe AdamVarsetRef
  
instance Arbitrary AdamVarsetRef where
  arbitrary = sized genAdamVarsetRef

genAdamVarsetRef :: Int -> Gen AdamVarsetRef
genAdamVarsetRef n =
  AdamVarsetRef
    <$> arbitraryReducedMaybe n -- adamVarsetRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetRefType :: Maybe Text
  
instance Arbitrary AdamVarsetRefElement where
  arbitrary = sized genAdamVarsetRefElement

genAdamVarsetRefElement :: Int -> Gen AdamVarsetRefElement
genAdamVarsetRefElement n =
  AdamVarsetRefElement
    <$> arbitraryReducedMaybe n -- adamVarsetRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- adamVarsetRefElementType :: Maybe Text
  
instance Arbitrary CdashClass where
  arbitrary = sized genCdashClass

genCdashClass :: Int -> Gen CdashClass
genCdashClass n =
  CdashClass
    <$> arbitraryReducedMaybe n -- cdashClassOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassLinks :: Maybe CdashClassLinks
    <*> arbitraryReducedMaybe n -- cdashClassCdashModelFields :: Maybe [CdashClassField]
  
instance Arbitrary CdashClassDomains where
  arbitrary = sized genCdashClassDomains

genCdashClassDomains :: Int -> Gen CdashClassDomains
genCdashClassDomains n =
  CdashClassDomains
    <$> arbitraryReducedMaybe n -- cdashClassDomainsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassDomainsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassDomainsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassDomainsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassDomainsLinks :: Maybe CdashClassDomainsLinks
  
instance Arbitrary CdashClassDomainsLinks where
  arbitrary = sized genCdashClassDomainsLinks

genCdashClassDomainsLinks :: Int -> Gen CdashClassDomainsLinks
genCdashClassDomainsLinks n =
  CdashClassDomainsLinks
    <$> arbitraryReducedMaybe n -- cdashClassDomainsLinksSelf :: Maybe CdashClassDomainsRef
    <*> arbitraryReducedMaybe n -- cdashClassDomainsLinksDomains :: Maybe [CdashDomainRefElement]
  
instance Arbitrary CdashClassDomainsRef where
  arbitrary = sized genCdashClassDomainsRef

genCdashClassDomainsRef :: Int -> Gen CdashClassDomainsRef
genCdashClassDomainsRef n =
  CdashClassDomainsRef
    <$> arbitraryReducedMaybe n -- cdashClassDomainsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassDomainsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassDomainsRefType :: Maybe Text
  
instance Arbitrary CdashClassField where
  arbitrary = sized genCdashClassField

genCdashClassField :: Int -> Gen CdashClassField
genCdashClassField n =
  CdashClassField
    <$> arbitraryReducedMaybe n -- cdashClassFieldOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldImplementationNotes :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinks :: Maybe CdashClassFieldLinks
  
instance Arbitrary CdashClassFieldLinks where
  arbitrary = sized genCdashClassFieldLinks

genCdashClassFieldLinks :: Int -> Gen CdashClassFieldLinks
genCdashClassFieldLinks n =
  CdashClassFieldLinks
    <$> arbitraryReducedMaybe n -- cdashClassFieldLinksSelf :: Maybe CdashClassFieldRef
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinksCodelist :: Maybe [RootCtCodelistRefElement]
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinksParentProduct :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinksParentClass :: Maybe CdashClassRef
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinksRootItem :: Maybe RootCdashClassFieldRef
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinksPriorVersion :: Maybe CdashClassFieldRef
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinksSdtmClassMappingTargets :: Maybe [SdtmClassVariableRefTarget]
    <*> arbitraryReducedMaybe n -- cdashClassFieldLinksSdtmDatasetMappingTargets :: Maybe [SdtmDatasetVariableRefTarget]
  
instance Arbitrary CdashClassFieldRef where
  arbitrary = sized genCdashClassFieldRef

genCdashClassFieldRef :: Int -> Gen CdashClassFieldRef
genCdashClassFieldRef n =
  CdashClassFieldRef
    <$> arbitraryReducedMaybe n -- cdashClassFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldRefType :: Maybe Text
  
instance Arbitrary CdashClassFieldRefVersion where
  arbitrary = sized genCdashClassFieldRefVersion

genCdashClassFieldRefVersion :: Int -> Gen CdashClassFieldRefVersion
genCdashClassFieldRefVersion n =
  CdashClassFieldRefVersion
    <$> arbitraryReducedMaybe n -- cdashClassFieldRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassFieldRefVersionType :: Maybe Text
  
instance Arbitrary CdashClassLinks where
  arbitrary = sized genCdashClassLinks

genCdashClassLinks :: Int -> Gen CdashClassLinks
genCdashClassLinks n =
  CdashClassLinks
    <$> arbitraryReducedMaybe n -- cdashClassLinksSelf :: Maybe CdashClassRef
    <*> arbitraryReducedMaybe n -- cdashClassLinksParentProduct :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashClassLinksPriorVersion :: Maybe CdashClassRef
  
instance Arbitrary CdashClassRef where
  arbitrary = sized genCdashClassRef

genCdashClassRef :: Int -> Gen CdashClassRef
genCdashClassRef n =
  CdashClassRef
    <$> arbitraryReducedMaybe n -- cdashClassRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassRefType :: Maybe Text
  
instance Arbitrary CdashClassRefElement where
  arbitrary = sized genCdashClassRefElement

genCdashClassRefElement :: Int -> Gen CdashClassRefElement
genCdashClassRefElement n =
  CdashClassRefElement
    <$> arbitraryReducedMaybe n -- cdashClassRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashClassRefElementType :: Maybe Text
  
instance Arbitrary CdashDomain where
  arbitrary = sized genCdashDomain

genCdashDomain :: Int -> Gen CdashDomain
genCdashDomain n =
  CdashDomain
    <$> arbitraryReducedMaybe n -- cdashDomainOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainLinks :: Maybe CdashDomainLinks
    <*> arbitraryReducedMaybe n -- cdashDomainFields :: Maybe [CdashDomainField]
  
instance Arbitrary CdashDomainField where
  arbitrary = sized genCdashDomainField

genCdashDomainField :: Int -> Gen CdashDomainField
genCdashDomainField n =
  CdashDomainField
    <$> arbitraryReducedMaybe n -- cdashDomainFieldOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldDomainSpecific :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldImplementationNotes :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinks :: Maybe CdashDomainFieldLinks
  
instance Arbitrary CdashDomainFieldLinks where
  arbitrary = sized genCdashDomainFieldLinks

genCdashDomainFieldLinks :: Int -> Gen CdashDomainFieldLinks
genCdashDomainFieldLinks n =
  CdashDomainFieldLinks
    <$> arbitraryReducedMaybe n -- cdashDomainFieldLinksSelf :: Maybe CdashDomainFieldRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksCodelist :: Maybe [RootCtCodelistRefElement]
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksParentProduct :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksParentClass :: Maybe CdashClassRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksParentDomain :: Maybe CdashDomainRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksRootItem :: Maybe RootCdashDomainFieldRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksPriorVersion :: Maybe CdashDomainFieldRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksSdtmDatasetMappingTargets :: Maybe [SdtmDatasetVariableRefTarget]
    <*> arbitraryReducedMaybe n -- cdashDomainFieldLinksSdtmigDatasetMappingTargets :: Maybe [SdtmigDatasetVariableRefTarget]
  
instance Arbitrary CdashDomainFieldRef where
  arbitrary = sized genCdashDomainFieldRef

genCdashDomainFieldRef :: Int -> Gen CdashDomainFieldRef
genCdashDomainFieldRef n =
  CdashDomainFieldRef
    <$> arbitraryReducedMaybe n -- cdashDomainFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldRefType :: Maybe Text
  
instance Arbitrary CdashDomainFieldRefElement where
  arbitrary = sized genCdashDomainFieldRefElement

genCdashDomainFieldRefElement :: Int -> Gen CdashDomainFieldRefElement
genCdashDomainFieldRefElement n =
  CdashDomainFieldRefElement
    <$> arbitraryReducedMaybe n -- cdashDomainFieldRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldRefElementType :: Maybe Text
  
instance Arbitrary CdashDomainFieldRefVersion where
  arbitrary = sized genCdashDomainFieldRefVersion

genCdashDomainFieldRefVersion :: Int -> Gen CdashDomainFieldRefVersion
genCdashDomainFieldRefVersion n =
  CdashDomainFieldRefVersion
    <$> arbitraryReducedMaybe n -- cdashDomainFieldRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldRefVersionType :: Maybe Text
  
instance Arbitrary CdashDomainFields where
  arbitrary = sized genCdashDomainFields

genCdashDomainFields :: Int -> Gen CdashDomainFields
genCdashDomainFields n =
  CdashDomainFields
    <$> arbitraryReducedMaybe n -- cdashDomainFieldsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsLinks :: Maybe CdashDomainFieldsLinks
  
instance Arbitrary CdashDomainFieldsLinks where
  arbitrary = sized genCdashDomainFieldsLinks

genCdashDomainFieldsLinks :: Int -> Gen CdashDomainFieldsLinks
genCdashDomainFieldsLinks n =
  CdashDomainFieldsLinks
    <$> arbitraryReducedMaybe n -- cdashDomainFieldsLinksSelf :: Maybe CdashDomainFieldsRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsLinksParentProduct :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsLinksParentClass :: Maybe CdashClassRef
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsLinksFields :: Maybe [CdashDomainFieldRefElement]
  
instance Arbitrary CdashDomainFieldsRef where
  arbitrary = sized genCdashDomainFieldsRef

genCdashDomainFieldsRef :: Int -> Gen CdashDomainFieldsRef
genCdashDomainFieldsRef n =
  CdashDomainFieldsRef
    <$> arbitraryReducedMaybe n -- cdashDomainFieldsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainFieldsRefType :: Maybe Text
  
instance Arbitrary CdashDomainLinks where
  arbitrary = sized genCdashDomainLinks

genCdashDomainLinks :: Int -> Gen CdashDomainLinks
genCdashDomainLinks n =
  CdashDomainLinks
    <$> arbitraryReducedMaybe n -- cdashDomainLinksSelf :: Maybe CdashDomainRef
    <*> arbitraryReducedMaybe n -- cdashDomainLinksParentProduct :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashDomainLinksParentClass :: Maybe CdashClassRef
    <*> arbitraryReducedMaybe n -- cdashDomainLinksPriorVersion :: Maybe CdashDomainRef
  
instance Arbitrary CdashDomainRef where
  arbitrary = sized genCdashDomainRef

genCdashDomainRef :: Int -> Gen CdashDomainRef
genCdashDomainRef n =
  CdashDomainRef
    <$> arbitraryReducedMaybe n -- cdashDomainRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainRefType :: Maybe Text
  
instance Arbitrary CdashDomainRefElement where
  arbitrary = sized genCdashDomainRefElement

genCdashDomainRefElement :: Int -> Gen CdashDomainRefElement
genCdashDomainRefElement n =
  CdashDomainRefElement
    <$> arbitraryReducedMaybe n -- cdashDomainRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashDomainRefElementType :: Maybe Text
  
instance Arbitrary CdashProduct where
  arbitrary = sized genCdashProduct

genCdashProduct :: Int -> Gen CdashProduct
genCdashProduct n =
  CdashProduct
    <$> arbitraryReducedMaybe n -- cdashProductName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductLinks :: Maybe CdashProductLinks
    <*> arbitraryReducedMaybe n -- cdashProductClasses :: Maybe [CdashClass]
    <*> arbitraryReducedMaybe n -- cdashProductDomains :: Maybe [CdashDomain]
  
instance Arbitrary CdashProductClasses where
  arbitrary = sized genCdashProductClasses

genCdashProductClasses :: Int -> Gen CdashProductClasses
genCdashProductClasses n =
  CdashProductClasses
    <$> arbitraryReducedMaybe n -- cdashProductClassesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesLinks :: Maybe CdashProductClassesLinks
  
instance Arbitrary CdashProductClassesLinks where
  arbitrary = sized genCdashProductClassesLinks

genCdashProductClassesLinks :: Int -> Gen CdashProductClassesLinks
genCdashProductClassesLinks n =
  CdashProductClassesLinks
    <$> arbitraryReducedMaybe n -- cdashProductClassesLinksSelf :: Maybe CdashProductClassesRef
    <*> arbitraryReducedMaybe n -- cdashProductClassesLinksParentProduct :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashProductClassesLinksClasses :: Maybe [CdashClassRefElement]
  
instance Arbitrary CdashProductClassesRef where
  arbitrary = sized genCdashProductClassesRef

genCdashProductClassesRef :: Int -> Gen CdashProductClassesRef
genCdashProductClassesRef n =
  CdashProductClassesRef
    <$> arbitraryReducedMaybe n -- cdashProductClassesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductClassesRefType :: Maybe Text
  
instance Arbitrary CdashProductDomains where
  arbitrary = sized genCdashProductDomains

genCdashProductDomains :: Int -> Gen CdashProductDomains
genCdashProductDomains n =
  CdashProductDomains
    <$> arbitraryReducedMaybe n -- cdashProductDomainsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsLinks :: Maybe CdashProductDomainsLinks
  
instance Arbitrary CdashProductDomainsLinks where
  arbitrary = sized genCdashProductDomainsLinks

genCdashProductDomainsLinks :: Int -> Gen CdashProductDomainsLinks
genCdashProductDomainsLinks n =
  CdashProductDomainsLinks
    <$> arbitraryReducedMaybe n -- cdashProductDomainsLinksSelf :: Maybe CdashProductDomainsRef
    <*> arbitraryReducedMaybe n -- cdashProductDomainsLinksParentProduct :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashProductDomainsLinksDomains :: Maybe [CdashDomainRefElement]
  
instance Arbitrary CdashProductDomainsRef where
  arbitrary = sized genCdashProductDomainsRef

genCdashProductDomainsRef :: Int -> Gen CdashProductDomainsRef
genCdashProductDomainsRef n =
  CdashProductDomainsRef
    <$> arbitraryReducedMaybe n -- cdashProductDomainsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductDomainsRefType :: Maybe Text
  
instance Arbitrary CdashProductLinks where
  arbitrary = sized genCdashProductLinks

genCdashProductLinks :: Int -> Gen CdashProductLinks
genCdashProductLinks n =
  CdashProductLinks
    <$> arbitraryReducedMaybe n -- cdashProductLinksSelf :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashProductLinksPriorVersion :: Maybe CdashProductRef
  
instance Arbitrary CdashProductRef where
  arbitrary = sized genCdashProductRef

genCdashProductRef :: Int -> Gen CdashProductRef
genCdashProductRef n =
  CdashProductRef
    <$> arbitraryReducedMaybe n -- cdashProductRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductRefType :: Maybe Text
  
instance Arbitrary CdashProductRefElement where
  arbitrary = sized genCdashProductRefElement

genCdashProductRefElement :: Int -> Gen CdashProductRefElement
genCdashProductRefElement n =
  CdashProductRefElement
    <$> arbitraryReducedMaybe n -- cdashProductRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashProductRefElementType :: Maybe Text
  
instance Arbitrary CdashigClass where
  arbitrary = sized genCdashigClass

genCdashigClass :: Int -> Gen CdashigClass
genCdashigClass n =
  CdashigClass
    <$> arbitraryReducedMaybe n -- cdashigClassOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassLinks :: Maybe CdashigClassLinks
    <*> arbitraryReducedMaybe n -- cdashigClassDomains :: Maybe [CdashigDomain]
    <*> arbitraryReducedMaybe n -- cdashigClassScenarios :: Maybe [CdashigScenario]
  
instance Arbitrary CdashigClassDomains where
  arbitrary = sized genCdashigClassDomains

genCdashigClassDomains :: Int -> Gen CdashigClassDomains
genCdashigClassDomains n =
  CdashigClassDomains
    <$> arbitraryReducedMaybe n -- cdashigClassDomainsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassDomainsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassDomainsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassDomainsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassDomainsLinks :: Maybe CdashigClassDomainsLinks
  
instance Arbitrary CdashigClassDomainsLinks where
  arbitrary = sized genCdashigClassDomainsLinks

genCdashigClassDomainsLinks :: Int -> Gen CdashigClassDomainsLinks
genCdashigClassDomainsLinks n =
  CdashigClassDomainsLinks
    <$> arbitraryReducedMaybe n -- cdashigClassDomainsLinksSelf :: Maybe CdashigClassDomainsRef
    <*> arbitraryReducedMaybe n -- cdashigClassDomainsLinksDomains :: Maybe [CdashigDomainRefElement]
  
instance Arbitrary CdashigClassDomainsRef where
  arbitrary = sized genCdashigClassDomainsRef

genCdashigClassDomainsRef :: Int -> Gen CdashigClassDomainsRef
genCdashigClassDomainsRef n =
  CdashigClassDomainsRef
    <$> arbitraryReducedMaybe n -- cdashigClassDomainsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassDomainsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassDomainsRefType :: Maybe Text
  
instance Arbitrary CdashigClassLinks where
  arbitrary = sized genCdashigClassLinks

genCdashigClassLinks :: Int -> Gen CdashigClassLinks
genCdashigClassLinks n =
  CdashigClassLinks
    <$> arbitraryReducedMaybe n -- cdashigClassLinksSelf :: Maybe CdashigClassRef
    <*> arbitraryReducedMaybe n -- cdashigClassLinksModelClass :: Maybe CdashClassRef
    <*> arbitraryReducedMaybe n -- cdashigClassLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigClassLinksParentClass :: Maybe CdashigClassRef
    <*> arbitraryReducedMaybe n -- cdashigClassLinksSubclasses :: Maybe [CdashigClassRefSubclass]
    <*> arbitraryReducedMaybe n -- cdashigClassLinksPriorVersion :: Maybe CdashigClassRef
  
instance Arbitrary CdashigClassRef where
  arbitrary = sized genCdashigClassRef

genCdashigClassRef :: Int -> Gen CdashigClassRef
genCdashigClassRef n =
  CdashigClassRef
    <$> arbitraryReducedMaybe n -- cdashigClassRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassRefType :: Maybe Text
  
instance Arbitrary CdashigClassRefElement where
  arbitrary = sized genCdashigClassRefElement

genCdashigClassRefElement :: Int -> Gen CdashigClassRefElement
genCdashigClassRefElement n =
  CdashigClassRefElement
    <$> arbitraryReducedMaybe n -- cdashigClassRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassRefElementType :: Maybe Text
  
instance Arbitrary CdashigClassRefSubclass where
  arbitrary = sized genCdashigClassRefSubclass

genCdashigClassRefSubclass :: Int -> Gen CdashigClassRefSubclass
genCdashigClassRefSubclass n =
  CdashigClassRefSubclass
    <$> arbitraryReducedMaybe n -- cdashigClassRefSubclassHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassRefSubclassTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassRefSubclassType :: Maybe Text
  
instance Arbitrary CdashigClassScenarios where
  arbitrary = sized genCdashigClassScenarios

genCdashigClassScenarios :: Int -> Gen CdashigClassScenarios
genCdashigClassScenarios n =
  CdashigClassScenarios
    <$> arbitraryReducedMaybe n -- cdashigClassScenariosOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassScenariosName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassScenariosLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassScenariosDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassScenariosLinks :: Maybe CdashigClassScenariosLinks
  
instance Arbitrary CdashigClassScenariosLinks where
  arbitrary = sized genCdashigClassScenariosLinks

genCdashigClassScenariosLinks :: Int -> Gen CdashigClassScenariosLinks
genCdashigClassScenariosLinks n =
  CdashigClassScenariosLinks
    <$> arbitraryReducedMaybe n -- cdashigClassScenariosLinksSelf :: Maybe CdashigClassScenariosRef
    <*> arbitraryReducedMaybe n -- cdashigClassScenariosLinksScenarios :: Maybe [CdashigScenarioRefElement]
  
instance Arbitrary CdashigClassScenariosRef where
  arbitrary = sized genCdashigClassScenariosRef

genCdashigClassScenariosRef :: Int -> Gen CdashigClassScenariosRef
genCdashigClassScenariosRef n =
  CdashigClassScenariosRef
    <$> arbitraryReducedMaybe n -- cdashigClassScenariosRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassScenariosRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigClassScenariosRefType :: Maybe Text
  
instance Arbitrary CdashigDomain where
  arbitrary = sized genCdashigDomain

genCdashigDomain :: Int -> Gen CdashigDomain
genCdashigDomain n =
  CdashigDomain
    <$> arbitraryReducedMaybe n -- cdashigDomainOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainLinks :: Maybe CdashigDomainLinks
    <*> arbitraryReducedMaybe n -- cdashigDomainFields :: Maybe [CdashigDomainField]
  
instance Arbitrary CdashigDomainField where
  arbitrary = sized genCdashigDomainField

genCdashigDomainField :: Int -> Gen CdashigDomainField
genCdashigDomainField n =
  CdashigDomainField
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldCompletionInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldImplementationNotes :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinks :: Maybe CdashigDomainFieldLinks
  
instance Arbitrary CdashigDomainFieldLinks where
  arbitrary = sized genCdashigDomainFieldLinks

genCdashigDomainFieldLinks :: Int -> Gen CdashigDomainFieldLinks
genCdashigDomainFieldLinks n =
  CdashigDomainFieldLinks
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldLinksSelf :: Maybe CdashigDomainFieldRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinksCodelist :: Maybe [RootCtCodelistRefElement]
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinksParentDomain :: Maybe CdashigDomainRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinksRootItem :: Maybe RootCdashigDomainFieldRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinksPriorVersion :: Maybe CdashigDomainFieldRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinksSdtmClassMappingTargets :: Maybe [SdtmClassVariableRefTarget]
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldLinksSdtmigDatasetMappingTargets :: Maybe [SdtmigDatasetVariableRefTarget]
  
instance Arbitrary CdashigDomainFieldRef where
  arbitrary = sized genCdashigDomainFieldRef

genCdashigDomainFieldRef :: Int -> Gen CdashigDomainFieldRef
genCdashigDomainFieldRef n =
  CdashigDomainFieldRef
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldRefType :: Maybe Text
  
instance Arbitrary CdashigDomainFieldRefElement where
  arbitrary = sized genCdashigDomainFieldRefElement

genCdashigDomainFieldRefElement :: Int -> Gen CdashigDomainFieldRefElement
genCdashigDomainFieldRefElement n =
  CdashigDomainFieldRefElement
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldRefElementType :: Maybe Text
  
instance Arbitrary CdashigDomainFieldRefVersion where
  arbitrary = sized genCdashigDomainFieldRefVersion

genCdashigDomainFieldRefVersion :: Int -> Gen CdashigDomainFieldRefVersion
genCdashigDomainFieldRefVersion n =
  CdashigDomainFieldRefVersion
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldRefVersionType :: Maybe Text
  
instance Arbitrary CdashigDomainFields where
  arbitrary = sized genCdashigDomainFields

genCdashigDomainFields :: Int -> Gen CdashigDomainFields
genCdashigDomainFields n =
  CdashigDomainFields
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsLinks :: Maybe CdashigDomainFieldsLinks
  
instance Arbitrary CdashigDomainFieldsLinks where
  arbitrary = sized genCdashigDomainFieldsLinks

genCdashigDomainFieldsLinks :: Int -> Gen CdashigDomainFieldsLinks
genCdashigDomainFieldsLinks n =
  CdashigDomainFieldsLinks
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldsLinksSelf :: Maybe CdashigDomainFieldsRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsLinksParentClass :: Maybe CdashigClassRef
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsLinksFields :: Maybe [CdashigDomainFieldRefElement]
  
instance Arbitrary CdashigDomainFieldsRef where
  arbitrary = sized genCdashigDomainFieldsRef

genCdashigDomainFieldsRef :: Int -> Gen CdashigDomainFieldsRef
genCdashigDomainFieldsRef n =
  CdashigDomainFieldsRef
    <$> arbitraryReducedMaybe n -- cdashigDomainFieldsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainFieldsRefType :: Maybe Text
  
instance Arbitrary CdashigDomainLinks where
  arbitrary = sized genCdashigDomainLinks

genCdashigDomainLinks :: Int -> Gen CdashigDomainLinks
genCdashigDomainLinks n =
  CdashigDomainLinks
    <$> arbitraryReducedMaybe n -- cdashigDomainLinksSelf :: Maybe CdashigDomainRef
    <*> arbitraryReducedMaybe n -- cdashigDomainLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigDomainLinksParentClass :: Maybe CdashigClassRef
    <*> arbitraryReducedMaybe n -- cdashigDomainLinksPriorVersion :: Maybe CdashigDomainRef
    <*> arbitraryReducedMaybe n -- cdashigDomainLinksScenarios :: Maybe [CdashigScenarioRefElement]
  
instance Arbitrary CdashigDomainRef where
  arbitrary = sized genCdashigDomainRef

genCdashigDomainRef :: Int -> Gen CdashigDomainRef
genCdashigDomainRef n =
  CdashigDomainRef
    <$> arbitraryReducedMaybe n -- cdashigDomainRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainRefType :: Maybe Text
  
instance Arbitrary CdashigDomainRefElement where
  arbitrary = sized genCdashigDomainRefElement

genCdashigDomainRefElement :: Int -> Gen CdashigDomainRefElement
genCdashigDomainRefElement n =
  CdashigDomainRefElement
    <$> arbitraryReducedMaybe n -- cdashigDomainRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigDomainRefElementType :: Maybe Text
  
instance Arbitrary CdashigProduct where
  arbitrary = sized genCdashigProduct

genCdashigProduct :: Int -> Gen CdashigProduct
genCdashigProduct n =
  CdashigProduct
    <$> arbitraryReducedMaybe n -- cdashigProductName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductLinks :: Maybe CdashigProductLinks
    <*> arbitraryReducedMaybe n -- cdashigProductClasses :: Maybe [CdashigClass]
  
instance Arbitrary CdashigProductClasses where
  arbitrary = sized genCdashigProductClasses

genCdashigProductClasses :: Int -> Gen CdashigProductClasses
genCdashigProductClasses n =
  CdashigProductClasses
    <$> arbitraryReducedMaybe n -- cdashigProductClassesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesLinks :: Maybe CdashigProductClassesLinks
  
instance Arbitrary CdashigProductClassesLinks where
  arbitrary = sized genCdashigProductClassesLinks

genCdashigProductClassesLinks :: Int -> Gen CdashigProductClassesLinks
genCdashigProductClassesLinks n =
  CdashigProductClassesLinks
    <$> arbitraryReducedMaybe n -- cdashigProductClassesLinksSelf :: Maybe CdashigProductClassesRef
    <*> arbitraryReducedMaybe n -- cdashigProductClassesLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigProductClassesLinksClasses :: Maybe [CdashigClassRefElement]
  
instance Arbitrary CdashigProductClassesRef where
  arbitrary = sized genCdashigProductClassesRef

genCdashigProductClassesRef :: Int -> Gen CdashigProductClassesRef
genCdashigProductClassesRef n =
  CdashigProductClassesRef
    <$> arbitraryReducedMaybe n -- cdashigProductClassesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductClassesRefType :: Maybe Text
  
instance Arbitrary CdashigProductDomains where
  arbitrary = sized genCdashigProductDomains

genCdashigProductDomains :: Int -> Gen CdashigProductDomains
genCdashigProductDomains n =
  CdashigProductDomains
    <$> arbitraryReducedMaybe n -- cdashigProductDomainsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsLinks :: Maybe CdashigProductDomainsLinks
  
instance Arbitrary CdashigProductDomainsLinks where
  arbitrary = sized genCdashigProductDomainsLinks

genCdashigProductDomainsLinks :: Int -> Gen CdashigProductDomainsLinks
genCdashigProductDomainsLinks n =
  CdashigProductDomainsLinks
    <$> arbitraryReducedMaybe n -- cdashigProductDomainsLinksSelf :: Maybe CdashigProductDomainsRef
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsLinksDomains :: Maybe [CdashigDomainRefElement]
  
instance Arbitrary CdashigProductDomainsRef where
  arbitrary = sized genCdashigProductDomainsRef

genCdashigProductDomainsRef :: Int -> Gen CdashigProductDomainsRef
genCdashigProductDomainsRef n =
  CdashigProductDomainsRef
    <$> arbitraryReducedMaybe n -- cdashigProductDomainsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductDomainsRefType :: Maybe Text
  
instance Arbitrary CdashigProductLinks where
  arbitrary = sized genCdashigProductLinks

genCdashigProductLinks :: Int -> Gen CdashigProductLinks
genCdashigProductLinks n =
  CdashigProductLinks
    <$> arbitraryReducedMaybe n -- cdashigProductLinksSelf :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigProductLinksModel :: Maybe CdashProductRef
    <*> arbitraryReducedMaybe n -- cdashigProductLinksPriorVersion :: Maybe CdashigProductRef
  
instance Arbitrary CdashigProductRef where
  arbitrary = sized genCdashigProductRef

genCdashigProductRef :: Int -> Gen CdashigProductRef
genCdashigProductRef n =
  CdashigProductRef
    <$> arbitraryReducedMaybe n -- cdashigProductRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductRefType :: Maybe Text
  
instance Arbitrary CdashigProductRefElement where
  arbitrary = sized genCdashigProductRefElement

genCdashigProductRefElement :: Int -> Gen CdashigProductRefElement
genCdashigProductRefElement n =
  CdashigProductRefElement
    <$> arbitraryReducedMaybe n -- cdashigProductRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductRefElementType :: Maybe Text
  
instance Arbitrary CdashigProductScenarios where
  arbitrary = sized genCdashigProductScenarios

genCdashigProductScenarios :: Int -> Gen CdashigProductScenarios
genCdashigProductScenarios n =
  CdashigProductScenarios
    <$> arbitraryReducedMaybe n -- cdashigProductScenariosName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosLinks :: Maybe CdashigProductScenariosLinks
  
instance Arbitrary CdashigProductScenariosLinks where
  arbitrary = sized genCdashigProductScenariosLinks

genCdashigProductScenariosLinks :: Int -> Gen CdashigProductScenariosLinks
genCdashigProductScenariosLinks n =
  CdashigProductScenariosLinks
    <$> arbitraryReducedMaybe n -- cdashigProductScenariosLinksSelf :: Maybe CdashigProductScenariosRef
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosLinksScenarios :: Maybe [CdashigScenarioRefElement]
  
instance Arbitrary CdashigProductScenariosRef where
  arbitrary = sized genCdashigProductScenariosRef

genCdashigProductScenariosRef :: Int -> Gen CdashigProductScenariosRef
genCdashigProductScenariosRef n =
  CdashigProductScenariosRef
    <$> arbitraryReducedMaybe n -- cdashigProductScenariosRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigProductScenariosRefType :: Maybe Text
  
instance Arbitrary CdashigScenario where
  arbitrary = sized genCdashigScenario

genCdashigScenario :: Int -> Gen CdashigScenario
genCdashigScenario n =
  CdashigScenario
    <$> arbitraryReducedMaybe n -- cdashigScenarioOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioScenario :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioLinks :: Maybe CdashigScenarioLinks
    <*> arbitraryReducedMaybe n -- cdashigScenarioFields :: Maybe [CdashigScenarioField]
  
instance Arbitrary CdashigScenarioField where
  arbitrary = sized genCdashigScenarioField

genCdashigScenarioField :: Int -> Gen CdashigScenarioField
genCdashigScenarioField n =
  CdashigScenarioField
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldCompletionInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldImplementationNotes :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinks :: Maybe CdashigScenarioFieldLinks
  
instance Arbitrary CdashigScenarioFieldLinks where
  arbitrary = sized genCdashigScenarioFieldLinks

genCdashigScenarioFieldLinks :: Int -> Gen CdashigScenarioFieldLinks
genCdashigScenarioFieldLinks n =
  CdashigScenarioFieldLinks
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksSelf :: Maybe CdashigScenarioFieldRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksCodelist :: Maybe [RootCtCodelistRefElement]
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksParentDomain :: Maybe CdashigDomainRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksParentScenario :: Maybe CdashigScenarioRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksRootItem :: Maybe RootCdashigScenarioFieldRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksPriorVersion :: Maybe CdashigScenarioFieldRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldLinksSdtmigDatasetMappingTargets :: Maybe [SdtmigDatasetVariableRefTarget]
  
instance Arbitrary CdashigScenarioFieldRef where
  arbitrary = sized genCdashigScenarioFieldRef

genCdashigScenarioFieldRef :: Int -> Gen CdashigScenarioFieldRef
genCdashigScenarioFieldRef n =
  CdashigScenarioFieldRef
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldRefType :: Maybe Text
  
instance Arbitrary CdashigScenarioFieldRefElement where
  arbitrary = sized genCdashigScenarioFieldRefElement

genCdashigScenarioFieldRefElement :: Int -> Gen CdashigScenarioFieldRefElement
genCdashigScenarioFieldRefElement n =
  CdashigScenarioFieldRefElement
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldRefElementType :: Maybe Text
  
instance Arbitrary CdashigScenarioFieldRefVersion where
  arbitrary = sized genCdashigScenarioFieldRefVersion

genCdashigScenarioFieldRefVersion :: Int -> Gen CdashigScenarioFieldRefVersion
genCdashigScenarioFieldRefVersion n =
  CdashigScenarioFieldRefVersion
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldRefVersionType :: Maybe Text
  
instance Arbitrary CdashigScenarioFields where
  arbitrary = sized genCdashigScenarioFields

genCdashigScenarioFields :: Int -> Gen CdashigScenarioFields
genCdashigScenarioFields n =
  CdashigScenarioFields
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsScenario :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsLinks :: Maybe CdashigScenarioFieldsLinks
  
instance Arbitrary CdashigScenarioFieldsLinks where
  arbitrary = sized genCdashigScenarioFieldsLinks

genCdashigScenarioFieldsLinks :: Int -> Gen CdashigScenarioFieldsLinks
genCdashigScenarioFieldsLinks n =
  CdashigScenarioFieldsLinks
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldsLinksSelf :: Maybe CdashigScenarioFieldsRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsLinksParentClass :: Maybe CdashigClassRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsLinksParentDomain :: Maybe CdashigDomainRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsLinksFields :: Maybe [CdashigScenarioFieldRefElement]
  
instance Arbitrary CdashigScenarioFieldsRef where
  arbitrary = sized genCdashigScenarioFieldsRef

genCdashigScenarioFieldsRef :: Int -> Gen CdashigScenarioFieldsRef
genCdashigScenarioFieldsRef n =
  CdashigScenarioFieldsRef
    <$> arbitraryReducedMaybe n -- cdashigScenarioFieldsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioFieldsRefType :: Maybe Text
  
instance Arbitrary CdashigScenarioLinks where
  arbitrary = sized genCdashigScenarioLinks

genCdashigScenarioLinks :: Int -> Gen CdashigScenarioLinks
genCdashigScenarioLinks n =
  CdashigScenarioLinks
    <$> arbitraryReducedMaybe n -- cdashigScenarioLinksSelf :: Maybe CdashigScenarioRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioLinksParentProduct :: Maybe CdashigProductRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioLinksParentClass :: Maybe CdashigClassRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioLinksParentDomain :: Maybe CdashigDomainRef
    <*> arbitraryReducedMaybe n -- cdashigScenarioLinksPriorVersion :: Maybe CdashigScenarioRef
  
instance Arbitrary CdashigScenarioRef where
  arbitrary = sized genCdashigScenarioRef

genCdashigScenarioRef :: Int -> Gen CdashigScenarioRef
genCdashigScenarioRef n =
  CdashigScenarioRef
    <$> arbitraryReducedMaybe n -- cdashigScenarioRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioRefType :: Maybe Text
  
instance Arbitrary CdashigScenarioRefElement where
  arbitrary = sized genCdashigScenarioRefElement

genCdashigScenarioRefElement :: Int -> Gen CdashigScenarioRefElement
genCdashigScenarioRefElement n =
  CdashigScenarioRefElement
    <$> arbitraryReducedMaybe n -- cdashigScenarioRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- cdashigScenarioRefElementType :: Maybe Text
  
instance Arbitrary CtCodelist where
  arbitrary = sized genCtCodelist

genCtCodelist :: Int -> Gen CtCodelist
genCtCodelist n =
  CtCodelist
    <$> arbitraryReducedMaybe n -- ctCodelistConceptId :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistExtensible :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistName :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistSubmissionValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistPreferredTerm :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistSynonyms :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- ctCodelistLinks :: Maybe CtCodelistLinks
    <*> arbitraryReducedMaybe n -- ctCodelistTerms :: Maybe [CtPackageTerm]
  
instance Arbitrary CtCodelistLinks where
  arbitrary = sized genCtCodelistLinks

genCtCodelistLinks :: Int -> Gen CtCodelistLinks
genCtCodelistLinks n =
  CtCodelistLinks
    <$> arbitraryReducedMaybe n -- ctCodelistLinksSelf :: Maybe CtCodelistRef
    <*> arbitraryReducedMaybe n -- ctCodelistLinksParentPackage :: Maybe CtPackageRef
    <*> arbitraryReducedMaybe n -- ctCodelistLinksRootItem :: Maybe RootCtCodelistRef
    <*> arbitraryReducedMaybe n -- ctCodelistLinksPriorVersion :: Maybe CtCodelistRef
  
instance Arbitrary CtCodelistRef where
  arbitrary = sized genCtCodelistRef

genCtCodelistRef :: Int -> Gen CtCodelistRef
genCtCodelistRef n =
  CtCodelistRef
    <$> arbitraryReducedMaybe n -- ctCodelistRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistRefType :: Maybe Text
  
instance Arbitrary CtCodelistRefElement where
  arbitrary = sized genCtCodelistRefElement

genCtCodelistRefElement :: Int -> Gen CtCodelistRefElement
genCtCodelistRefElement n =
  CtCodelistRefElement
    <$> arbitraryReducedMaybe n -- ctCodelistRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistRefElementType :: Maybe Text
  
instance Arbitrary CtCodelistRefVersion where
  arbitrary = sized genCtCodelistRefVersion

genCtCodelistRefVersion :: Int -> Gen CtCodelistRefVersion
genCtCodelistRefVersion n =
  CtCodelistRefVersion
    <$> arbitraryReducedMaybe n -- ctCodelistRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistRefVersionType :: Maybe Text
  
instance Arbitrary CtCodelistTerms where
  arbitrary = sized genCtCodelistTerms

genCtCodelistTerms :: Int -> Gen CtCodelistTerms
genCtCodelistTerms n =
  CtCodelistTerms
    <$> arbitraryReducedMaybe n -- ctCodelistTermsConceptId :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsExtensible :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsSubmissionValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsPreferredTerm :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsSynonyms :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- ctCodelistTermsLinks :: Maybe CtCodelistTermsLinks
  
instance Arbitrary CtCodelistTermsLinks where
  arbitrary = sized genCtCodelistTermsLinks

genCtCodelistTermsLinks :: Int -> Gen CtCodelistTermsLinks
genCtCodelistTermsLinks n =
  CtCodelistTermsLinks
    <$> arbitraryReducedMaybe n -- ctCodelistTermsLinksSelf :: Maybe CtCodelistTermsRef
    <*> arbitraryReducedMaybe n -- ctCodelistTermsLinksParentPackage :: Maybe CtPackageRef
    <*> arbitraryReducedMaybe n -- ctCodelistTermsLinksRootItem :: Maybe RootCtCodelistRef
    <*> arbitraryReducedMaybe n -- ctCodelistTermsLinksPriorVersion :: Maybe CtCodelistTermsRef
    <*> arbitraryReducedMaybe n -- ctCodelistTermsLinksTerms :: Maybe [CtTermRefElement]
  
instance Arbitrary CtCodelistTermsRef where
  arbitrary = sized genCtCodelistTermsRef

genCtCodelistTermsRef :: Int -> Gen CtCodelistTermsRef
genCtCodelistTermsRef n =
  CtCodelistTermsRef
    <$> arbitraryReducedMaybe n -- ctCodelistTermsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctCodelistTermsRefType :: Maybe Text
  
instance Arbitrary CtPackage where
  arbitrary = sized genCtPackage

genCtPackage :: Int -> Gen CtPackage
genCtPackage n =
  CtPackage
    <$> arbitraryReducedMaybe n -- ctPackageName :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageLinks :: Maybe CtPackageLinks
    <*> arbitraryReducedMaybe n -- ctPackageCodelists :: Maybe [CtPackageCodelists]
  
instance Arbitrary CtPackageCodelists where
  arbitrary = sized genCtPackageCodelists

genCtPackageCodelists :: Int -> Gen CtPackageCodelists
genCtPackageCodelists n =
  CtPackageCodelists
    <$> arbitraryReducedMaybe n -- ctPackageCodelistsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsLinks :: Maybe CtPackageCodelistsLinks
  
instance Arbitrary CtPackageCodelistsLinks where
  arbitrary = sized genCtPackageCodelistsLinks

genCtPackageCodelistsLinks :: Int -> Gen CtPackageCodelistsLinks
genCtPackageCodelistsLinks n =
  CtPackageCodelistsLinks
    <$> arbitraryReducedMaybe n -- ctPackageCodelistsLinksSelf :: Maybe CtPackageCodelistsRef
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsLinksPriorVersion :: Maybe CtPackageCodelistsRef
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsLinksCodelists :: Maybe [CtCodelistRefElement]
  
instance Arbitrary CtPackageCodelistsRef where
  arbitrary = sized genCtPackageCodelistsRef

genCtPackageCodelistsRef :: Int -> Gen CtPackageCodelistsRef
genCtPackageCodelistsRef n =
  CtPackageCodelistsRef
    <$> arbitraryReducedMaybe n -- ctPackageCodelistsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageCodelistsRefType :: Maybe Text
  
instance Arbitrary CtPackageLinks where
  arbitrary = sized genCtPackageLinks

genCtPackageLinks :: Int -> Gen CtPackageLinks
genCtPackageLinks n =
  CtPackageLinks
    <$> arbitraryReducedMaybe n -- ctPackageLinksSelf :: Maybe CtPackageRef
    <*> arbitraryReducedMaybe n -- ctPackageLinksPriorVersion :: Maybe CtPackageRef
  
instance Arbitrary CtPackageRef where
  arbitrary = sized genCtPackageRef

genCtPackageRef :: Int -> Gen CtPackageRef
genCtPackageRef n =
  CtPackageRef
    <$> arbitraryReducedMaybe n -- ctPackageRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageRefType :: Maybe Text
  
instance Arbitrary CtPackageRefElement where
  arbitrary = sized genCtPackageRefElement

genCtPackageRefElement :: Int -> Gen CtPackageRefElement
genCtPackageRefElement n =
  CtPackageRefElement
    <$> arbitraryReducedMaybe n -- ctPackageRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageRefElementType :: Maybe Text
  
instance Arbitrary CtPackageTerm where
  arbitrary = sized genCtPackageTerm

genCtPackageTerm :: Int -> Gen CtPackageTerm
genCtPackageTerm n =
  CtPackageTerm
    <$> arbitraryReducedMaybe n -- ctPackageTermConceptId :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageTermSubmissionValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageTermDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageTermPreferredTerm :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackageTermSynonyms :: Maybe [Text]
  
instance Arbitrary CtPackages where
  arbitrary = sized genCtPackages

genCtPackages :: Int -> Gen CtPackages
genCtPackages n =
  CtPackages
    <$> arbitraryReducedMaybe n -- ctPackagesLinks :: Maybe CtPackagesLinks
  
instance Arbitrary CtPackagesLinks where
  arbitrary = sized genCtPackagesLinks

genCtPackagesLinks :: Int -> Gen CtPackagesLinks
genCtPackagesLinks n =
  CtPackagesLinks
    <$> arbitraryReducedMaybe n -- ctPackagesLinksSelf :: Maybe CtPackagesRef
    <*> arbitraryReducedMaybe n -- ctPackagesLinksPackages :: Maybe [CtPackageRefElement]
  
instance Arbitrary CtPackagesRef where
  arbitrary = sized genCtPackagesRef

genCtPackagesRef :: Int -> Gen CtPackagesRef
genCtPackagesRef n =
  CtPackagesRef
    <$> arbitraryReducedMaybe n -- ctPackagesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackagesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctPackagesRefType :: Maybe Text
  
instance Arbitrary CtTerm where
  arbitrary = sized genCtTerm

genCtTerm :: Int -> Gen CtTerm
genCtTerm n =
  CtTerm
    <$> arbitraryReducedMaybe n -- ctTermConceptId :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermSubmissionValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermPreferredTerm :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermSynonyms :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- ctTermLinks :: Maybe CtTermLinks
  
instance Arbitrary CtTermLinks where
  arbitrary = sized genCtTermLinks

genCtTermLinks :: Int -> Gen CtTermLinks
genCtTermLinks n =
  CtTermLinks
    <$> arbitraryReducedMaybe n -- ctTermLinksSelf :: Maybe CtTermRef
    <*> arbitraryReducedMaybe n -- ctTermLinksParentPackage :: Maybe CtPackageRef
    <*> arbitraryReducedMaybe n -- ctTermLinksParentCodelist :: Maybe CtCodelistRef
    <*> arbitraryReducedMaybe n -- ctTermLinksRootItem :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- ctTermLinksPriorVersion :: Maybe CtTermRef
  
instance Arbitrary CtTermRef where
  arbitrary = sized genCtTermRef

genCtTermRef :: Int -> Gen CtTermRef
genCtTermRef n =
  CtTermRef
    <$> arbitraryReducedMaybe n -- ctTermRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermRefType :: Maybe Text
  
instance Arbitrary CtTermRefElement where
  arbitrary = sized genCtTermRefElement

genCtTermRefElement :: Int -> Gen CtTermRefElement
genCtTermRefElement n =
  CtTermRefElement
    <$> arbitraryReducedMaybe n -- ctTermRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermRefElementType :: Maybe Text
  
instance Arbitrary CtTermRefVersion where
  arbitrary = sized genCtTermRefVersion

genCtTermRefVersion :: Int -> Gen CtTermRefVersion
genCtTermRefVersion n =
  CtTermRefVersion
    <$> arbitraryReducedMaybe n -- ctTermRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- ctTermRefVersionType :: Maybe Text
  
instance Arbitrary DefaultErrorResponse where
  arbitrary = sized genDefaultErrorResponse

genDefaultErrorResponse :: Int -> Gen DefaultErrorResponse
genDefaultErrorResponse n =
  DefaultErrorResponse
    <$> arbitraryReducedMaybe n -- defaultErrorResponseStatusCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- defaultErrorResponseReasonPhrase :: Maybe Text
    <*> arbitraryReducedMaybe n -- defaultErrorResponseUserMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- defaultErrorResponseAdminMessage :: Maybe Text
  
instance Arbitrary DefaultSearchResponse where
  arbitrary = sized genDefaultSearchResponse

genDefaultSearchResponse :: Int -> Gen DefaultSearchResponse
genDefaultSearchResponse n =
  DefaultSearchResponse
    <$> arbitraryReducedMaybe n -- defaultSearchResponseHits :: Maybe [DefaultSearchResponseHitsInner]
    <*> arbitraryReducedMaybe n -- defaultSearchResponseTotalHits :: Maybe Double
  
instance Arbitrary DefaultSearchResponseHitsInner where
  arbitrary = sized genDefaultSearchResponseHitsInner

genDefaultSearchResponseHitsInner :: Int -> Gen DefaultSearchResponseHitsInner
genDefaultSearchResponseHitsInner n =
  DefaultSearchResponseHitsInner
    <$> arbitrary -- defaultSearchResponseHitsInnerHref :: Text
    <*> arbitrary -- defaultSearchResponseHitsInnerType :: Text
  
instance Arbitrary ExportAdamDatastructuresRow where
  arbitrary = sized genExportAdamDatastructuresRow

genExportAdamDatastructuresRow :: Int -> Gen ExportAdamDatastructuresRow
genExportAdamDatastructuresRow n =
  ExportAdamDatastructuresRow
    <$> arbitraryReducedMaybe n -- exportAdamDatastructuresRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamDatastructuresRowDataStructureName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamDatastructuresRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamDatastructuresRowDatasetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamDatastructuresRowDatasetDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamDatastructuresRowClass :: Maybe Text
  
instance Arbitrary ExportAdamDatastructuresTable where
  arbitrary = sized genExportAdamDatastructuresTable

genExportAdamDatastructuresTable :: Int -> Gen ExportAdamDatastructuresTable
genExportAdamDatastructuresTable n =
  ExportAdamDatastructuresTable
    <$> arbitraryReducedMaybe n -- exportAdamDatastructuresTableDatastructures :: Maybe [ExportAdamDatastructuresRow]
  
instance Arbitrary ExportAdamVariablesRow where
  arbitrary = sized genExportAdamVariablesRow

genExportAdamVariablesRow :: Int -> Gen ExportAdamVariablesRow
genExportAdamVariablesRow n =
  ExportAdamVariablesRow
    <$> arbitraryReducedMaybe n -- exportAdamVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowDataStructureName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowVariableGroup :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowCodelistControlledTerms :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportAdamVariablesRowCdiscNotes :: Maybe Text
  
instance Arbitrary ExportAdamVariablesTable where
  arbitrary = sized genExportAdamVariablesTable

genExportAdamVariablesTable :: Int -> Gen ExportAdamVariablesTable
genExportAdamVariablesTable n =
  ExportAdamVariablesTable
    <$> arbitraryReducedMaybe n -- exportAdamVariablesTableVariables :: Maybe [ExportAdamVariablesRow]
  
instance Arbitrary ExportAdamWorkbook where
  arbitrary = sized genExportAdamWorkbook

genExportAdamWorkbook :: Int -> Gen ExportAdamWorkbook
genExportAdamWorkbook n =
  ExportAdamWorkbook
    <$> arbitraryReducedMaybe n -- exportAdamWorkbookVariables :: Maybe [ExportAdamVariablesRow]
    <*> arbitraryReducedMaybe n -- exportAdamWorkbookDatastructures :: Maybe [ExportAdamDatastructuresRow]
  
instance Arbitrary ExportCdashClassVariablesRow where
  arbitrary = sized genExportCdashClassVariablesRow

genExportCdashClassVariablesRow :: Int -> Gen ExportCdashClassVariablesRow
genExportCdashClassVariablesRow n =
  ExportCdashClassVariablesRow
    <$> arbitraryReducedMaybe n -- exportCdashClassVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowCdashVariable :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowCdashVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowDraftCdashDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowDomainSpecific :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowSdtmTarget :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowControlledTerminologyCodelistName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashClassVariablesRowImplementationNotes :: Maybe Text
  
instance Arbitrary ExportCdashDomainVariablesRow where
  arbitrary = sized genExportCdashDomainVariablesRow

genExportCdashDomainVariablesRow :: Int -> Gen ExportCdashDomainVariablesRow
genExportCdashDomainVariablesRow n =
  ExportCdashDomainVariablesRow
    <$> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowCdashVariable :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowCdashVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowDraftCdashDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowDomainSpecific :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowSdtmTarget :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowControlledTerminologyCodelistName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashDomainVariablesRowImplementationNotes :: Maybe Text
  
instance Arbitrary ExportCdashTable where
  arbitrary = sized genExportCdashTable

genExportCdashTable :: Int -> Gen ExportCdashTable
genExportCdashTable n =
  ExportCdashTable
    <$> arbitraryReducedMaybe n -- exportCdashTableClassVariables :: Maybe [ExportCdashClassVariablesRow]
    <*> arbitraryReducedMaybe n -- exportCdashTableDomainVariables :: Maybe [ExportCdashDomainVariablesRow]
  
instance Arbitrary ExportCdashigDomainVariablesRow where
  arbitrary = sized genExportCdashigDomainVariablesRow

genExportCdashigDomainVariablesRow :: Int -> Gen ExportCdashigDomainVariablesRow
genExportCdashigDomainVariablesRow n =
  ExportCdashigDomainVariablesRow
    <$> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowDataCollectionScenario :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowCdashigVariable :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowCdashigVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowDraftCdashigDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowCdashigCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowCaseReportFormCompletionInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowSdtmigTarget :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowControlledTerminologyCodelistName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigDomainVariablesRowImplementationNotes :: Maybe Text
  
instance Arbitrary ExportCdashigScenarioVariablesRow where
  arbitrary = sized genExportCdashigScenarioVariablesRow

genExportCdashigScenarioVariablesRow :: Int -> Gen ExportCdashigScenarioVariablesRow
genExportCdashigScenarioVariablesRow n =
  ExportCdashigScenarioVariablesRow
    <$> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowDataCollectionScenario :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowCdashigVariable :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowCdashigVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowDraftCdashigDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowPrompt :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowCdashigCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowCaseReportFormCompletionInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowSdtmigTarget :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowMappingInstructions :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowControlledTerminologyCodelistName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCdashigScenarioVariablesRowImplementationNotes :: Maybe Text
  
instance Arbitrary ExportCdashigTable where
  arbitrary = sized genExportCdashigTable

genExportCdashigTable :: Int -> Gen ExportCdashigTable
genExportCdashigTable n =
  ExportCdashigTable
    <$> arbitraryReducedMaybe n -- exportCdashigTableDomainVariables :: Maybe [ExportCdashigDomainVariablesRow]
    <*> arbitraryReducedMaybe n -- exportCdashigTableScenarioVariables :: Maybe [ExportCdashigScenarioVariablesRow]
  
instance Arbitrary ExportCtCodelist where
  arbitrary = sized genExportCtCodelist

genExportCtCodelist :: Int -> Gen ExportCtCodelist
genExportCtCodelist n =
  ExportCtCodelist
    <$> arbitraryReducedMaybe n -- exportCtCodelistCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelistCodelistCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelistCodelistExtensibleYesNo :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelistCodelistName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelistCdiscSubmissionValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelistCdiscSynonymS :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- exportCtCodelistCdiscDefinition :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelistNciPreferredTerm :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelistStandardAndDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtCodelist :: Maybe [ExportCtTerm]
  
instance Arbitrary ExportCtTable where
  arbitrary = sized genExportCtTable

genExportCtTable :: Int -> Gen ExportCtTable
genExportCtTable n =
  ExportCtTable
    <$> arbitraryReducedMaybe n -- exportCtTableCt :: Maybe [ExportCtCodelist]
  
instance Arbitrary ExportCtTerm where
  arbitrary = sized genExportCtTerm

genExportCtTerm :: Int -> Gen ExportCtTerm
genExportCtTerm n =
  ExportCtTerm
    <$> arbitraryReducedMaybe n -- exportCtTermBundle1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportCtTermCdiscSynonymS :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- exportCtTermBundle2 :: Maybe Text
  
instance Arbitrary ExportQrsCsvItemsRow where
  arbitrary = sized genExportQrsCsvItemsRow

genExportQrsCsvItemsRow :: Int -> Gen ExportQrsCsvItemsRow
genExportQrsCsvItemsRow n =
  ExportQrsCsvItemsRow
    <$> arbitraryReducedMaybe n -- exportQrsCsvItemsRowQrsMeasureName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowQrsMeasureLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowQrsMeasureType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowItemSequence :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowTestName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowItemText :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowTestsCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowTestsTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowTestCodesCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowTestCodesTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowSubcategorysCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowSubcategorysTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowEvaluatorsCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowEvaluatorsTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowFreeFormResponsesDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsCsvItemsRowResponseGroup :: Maybe Text
  
instance Arbitrary ExportQrsGeneral where
  arbitrary = sized genExportQrsGeneral

genExportQrsGeneral :: Int -> Gen ExportQrsGeneral
genExportQrsGeneral n =
  ExportQrsGeneral
    <$> arbitraryReducedMaybe n -- exportQrsGeneralName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsGeneralLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsGeneralEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsGeneralDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsGeneralType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsGeneralCategorysCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsGeneralCategorysTermCCode :: Maybe Text
  
instance Arbitrary ExportQrsItemsTable where
  arbitrary = sized genExportQrsItemsTable

genExportQrsItemsTable :: Int -> Gen ExportQrsItemsTable
genExportQrsItemsTable n =
  ExportQrsItemsTable
    <$> arbitraryReducedMaybe n -- exportQrsItemsTableItems :: Maybe [ExportQrsCsvItemsRow]
  
instance Arbitrary ExportQrsResponses where
  arbitrary = sized genExportQrsResponses

genExportQrsResponses :: Int -> Gen ExportQrsResponses
genExportQrsResponses n =
  ExportQrsResponses
    <$> arbitraryReducedMaybe n -- exportQrsResponsesResponseGroup :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesSequence :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesOriginalResultCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesOriginalResultTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesOriginalResultUnitCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesOriginalResultUnitTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesStandardizedResultCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesStandardizedResultTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesStandardizedResultUnitCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsResponsesResponsesStandardizedResultUnitTermCCode :: Maybe Text
  
instance Arbitrary ExportQrsWorkbook where
  arbitrary = sized genExportQrsWorkbook

genExportQrsWorkbook :: Int -> Gen ExportQrsWorkbook
genExportQrsWorkbook n =
  ExportQrsWorkbook
    <$> arbitraryReducedMaybe n -- exportQrsWorkbookSelf :: Maybe ExportQrsGeneral
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItems :: Maybe [ExportQrsWorkbookItemsRow]
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookResponses :: Maybe [ExportQrsResponses]
  
instance Arbitrary ExportQrsWorkbookItemsRow where
  arbitrary = sized genExportQrsWorkbookItemsRow

genExportQrsWorkbookItemsRow :: Int -> Gen ExportQrsWorkbookItemsRow
genExportQrsWorkbookItemsRow n =
  ExportQrsWorkbookItemsRow
    <$> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowItemSequence :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowTestName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowItemText :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowTestsCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowTestsTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowTestCodesCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowTestCodesTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowSubcategorysCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowSubcategorysTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowEvaluatorsCodelistCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowEvaluatorsTermCCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowFreeFormResponsesDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportQrsWorkbookItemsRowResponseGroup :: Maybe Text
  
instance Arbitrary ExportSdtmClassVariablesRow where
  arbitrary = sized genExportSdtmClassVariablesRow

genExportSdtmClassVariablesRow :: Int -> Gen ExportSdtmClassVariablesRow
genExportSdtmClassVariablesRow n =
  ExportSdtmClassVariablesRow
    <$> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowControlledTermsCodelistOrFormat :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowRoleDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmClassVariablesRowDescription :: Maybe Text
  
instance Arbitrary ExportSdtmDatasetVariablesRow where
  arbitrary = sized genExportSdtmDatasetVariablesRow

genExportSdtmDatasetVariablesRow :: Int -> Gen ExportSdtmDatasetVariablesRow
genExportSdtmDatasetVariablesRow n =
  ExportSdtmDatasetVariablesRow
    <$> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowControlledTermsCodelistOrFormat :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowRoleDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetVariablesRowDescription :: Maybe Text
  
instance Arbitrary ExportSdtmDatasetsRow where
  arbitrary = sized genExportSdtmDatasetsRow

genExportSdtmDatasetsRow :: Int -> Gen ExportSdtmDatasetsRow
genExportSdtmDatasetsRow n =
  ExportSdtmDatasetsRow
    <$> arbitraryReducedMaybe n -- exportSdtmDatasetsRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetsRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetsRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetsRowDatasetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmDatasetsRowStructure :: Maybe Text
  
instance Arbitrary ExportSdtmDatasetsTable where
  arbitrary = sized genExportSdtmDatasetsTable

genExportSdtmDatasetsTable :: Int -> Gen ExportSdtmDatasetsTable
genExportSdtmDatasetsTable n =
  ExportSdtmDatasetsTable
    <$> arbitraryReducedMaybe n -- exportSdtmDatasetsTableDatasets :: Maybe [ExportSdtmDatasetsRow]
  
instance Arbitrary ExportSdtmVariablesTable where
  arbitrary = sized genExportSdtmVariablesTable

genExportSdtmVariablesTable :: Int -> Gen ExportSdtmVariablesTable
genExportSdtmVariablesTable n =
  ExportSdtmVariablesTable
    <$> arbitraryReducedMaybe n -- exportSdtmVariablesTableClassVariables :: Maybe [ExportSdtmClassVariablesRow]
    <*> arbitraryReducedMaybe n -- exportSdtmVariablesTableDatasetVariables :: Maybe [ExportSdtmDatasetVariablesRow]
  
instance Arbitrary ExportSdtmWorkbook where
  arbitrary = sized genExportSdtmWorkbook

genExportSdtmWorkbook :: Int -> Gen ExportSdtmWorkbook
genExportSdtmWorkbook n =
  ExportSdtmWorkbook
    <$> arbitraryReducedMaybe n -- exportSdtmWorkbookClassVariables :: Maybe [ExportSdtmClassVariablesRow]
    <*> arbitraryReducedMaybe n -- exportSdtmWorkbookDatasetVariables :: Maybe [ExportSdtmDatasetVariablesRow]
    <*> arbitraryReducedMaybe n -- exportSdtmWorkbookDatasets :: Maybe [ExportSdtmDatasetsRow]
  
instance Arbitrary ExportSdtmigDatasetsRow where
  arbitrary = sized genExportSdtmigDatasetsRow

genExportSdtmigDatasetsRow :: Int -> Gen ExportSdtmigDatasetsRow
genExportSdtmigDatasetsRow n =
  ExportSdtmigDatasetsRow
    <$> arbitraryReducedMaybe n -- exportSdtmigDatasetsRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigDatasetsRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigDatasetsRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigDatasetsRowDatasetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigDatasetsRowStructure :: Maybe Text
  
instance Arbitrary ExportSdtmigDatasetsTable where
  arbitrary = sized genExportSdtmigDatasetsTable

genExportSdtmigDatasetsTable :: Int -> Gen ExportSdtmigDatasetsTable
genExportSdtmigDatasetsTable n =
  ExportSdtmigDatasetsTable
    <$> arbitraryReducedMaybe n -- exportSdtmigDatasetsTableDatasets :: Maybe [ExportSdtmigDatasetsRow]
  
instance Arbitrary ExportSdtmigVariablesRow where
  arbitrary = sized genExportSdtmigVariablesRow

genExportSdtmigVariablesRow :: Int -> Gen ExportSdtmigVariablesRow
genExportSdtmigVariablesRow n =
  ExportSdtmigVariablesRow
    <$> arbitraryReducedMaybe n -- exportSdtmigVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowControlledTermsCodelistOrFormat :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowCdiscNotes :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSdtmigVariablesRowCore :: Maybe Text
  
instance Arbitrary ExportSdtmigVariablesTable where
  arbitrary = sized genExportSdtmigVariablesTable

genExportSdtmigVariablesTable :: Int -> Gen ExportSdtmigVariablesTable
genExportSdtmigVariablesTable n =
  ExportSdtmigVariablesTable
    <$> arbitraryReducedMaybe n -- exportSdtmigVariablesTableVariables :: Maybe [ExportSdtmigVariablesRow]
  
instance Arbitrary ExportSdtmigWorkbook where
  arbitrary = sized genExportSdtmigWorkbook

genExportSdtmigWorkbook :: Int -> Gen ExportSdtmigWorkbook
genExportSdtmigWorkbook n =
  ExportSdtmigWorkbook
    <$> arbitraryReducedMaybe n -- exportSdtmigWorkbookVariables :: Maybe [ExportSdtmigVariablesRow]
    <*> arbitraryReducedMaybe n -- exportSdtmigWorkbookDatasets :: Maybe [ExportSdtmigDatasetsRow]
  
instance Arbitrary ExportSendigDatasetsRow where
  arbitrary = sized genExportSendigDatasetsRow

genExportSendigDatasetsRow :: Int -> Gen ExportSendigDatasetsRow
genExportSendigDatasetsRow n =
  ExportSendigDatasetsRow
    <$> arbitraryReducedMaybe n -- exportSendigDatasetsRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigDatasetsRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigDatasetsRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigDatasetsRowDatasetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigDatasetsRowStructure :: Maybe Text
  
instance Arbitrary ExportSendigDatasetsTable where
  arbitrary = sized genExportSendigDatasetsTable

genExportSendigDatasetsTable :: Int -> Gen ExportSendigDatasetsTable
genExportSendigDatasetsTable n =
  ExportSendigDatasetsTable
    <$> arbitraryReducedMaybe n -- exportSendigDatasetsTableDatasets :: Maybe [ExportSendigDatasetsRow]
  
instance Arbitrary ExportSendigVariablesRow where
  arbitrary = sized genExportSendigVariablesRow

genExportSendigVariablesRow :: Int -> Gen ExportSendigVariablesRow
genExportSendigVariablesRow n =
  ExportSendigVariablesRow
    <$> arbitraryReducedMaybe n -- exportSendigVariablesRowVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowVariableOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowType :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowControlledTermsCodelistOrFormat :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowCdiscNotes :: Maybe Text
    <*> arbitraryReducedMaybe n -- exportSendigVariablesRowCore :: Maybe Text
  
instance Arbitrary ExportSendigVariablesTable where
  arbitrary = sized genExportSendigVariablesTable

genExportSendigVariablesTable :: Int -> Gen ExportSendigVariablesTable
genExportSendigVariablesTable n =
  ExportSendigVariablesTable
    <$> arbitraryReducedMaybe n -- exportSendigVariablesTableVariables :: Maybe [ExportSendigVariablesRow]
  
instance Arbitrary ExportSendigWorkbook where
  arbitrary = sized genExportSendigWorkbook

genExportSendigWorkbook :: Int -> Gen ExportSendigWorkbook
genExportSendigWorkbook n =
  ExportSendigWorkbook
    <$> arbitraryReducedMaybe n -- exportSendigWorkbookVariables :: Maybe [ExportSendigVariablesRow]
    <*> arbitraryReducedMaybe n -- exportSendigWorkbookDatasets :: Maybe [ExportSendigDatasetsRow]
  
instance Arbitrary Health where
  arbitrary = sized genHealth

genHealth :: Int -> Gen Health
genHealth n =
  Health
    <$> arbitraryReducedMaybe n -- healthHealthy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- healthLdapAuthenticationHealthy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- healthLdapAuthorizationHealthy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- healthDatabaseHealthy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- healthEsHealthy :: Maybe Bool
  
instance Arbitrary Lastupdated where
  arbitrary = sized genLastupdated

genLastupdated :: Int -> Gen Lastupdated
genLastupdated n =
  Lastupdated
    <$> arbitraryReducedMaybe n -- lastupdatedLinks :: Maybe LastupdatedLinks
    <*> arbitraryReducedMaybe n -- lastupdatedOverall :: Maybe Text
    <*> arbitraryReducedMaybe n -- lastupdatedDataAnalysis :: Maybe Text
    <*> arbitraryReducedMaybe n -- lastupdatedDataCollection :: Maybe Text
    <*> arbitraryReducedMaybe n -- lastupdatedDataTabulation :: Maybe Text
    <*> arbitraryReducedMaybe n -- lastupdatedMeasure :: Maybe Text
    <*> arbitraryReducedMaybe n -- lastupdatedTerminology :: Maybe Text
  
instance Arbitrary LastupdatedLinks where
  arbitrary = sized genLastupdatedLinks

genLastupdatedLinks :: Int -> Gen LastupdatedLinks
genLastupdatedLinks n =
  LastupdatedLinks
    <$> arbitraryReducedMaybe n -- lastupdatedLinksSelf :: Maybe LastupdatedRef
  
instance Arbitrary LastupdatedRef where
  arbitrary = sized genLastupdatedRef

genLastupdatedRef :: Int -> Gen LastupdatedRef
genLastupdatedRef n =
  LastupdatedRef
    <$> arbitraryReducedMaybe n -- lastupdatedRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- lastupdatedRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- lastupdatedRefType :: Maybe Text
  
instance Arbitrary MaintenanceBody where
  arbitrary = sized genMaintenanceBody

genMaintenanceBody :: Int -> Gen MaintenanceBody
genMaintenanceBody n =
  MaintenanceBody
    <$> arbitraryReducedMaybe n -- maintenanceBodyMaintenanceMode :: Maybe Bool
    <*> arbitraryReducedMaybe n -- maintenanceBodyMaintenanceMessage :: Maybe Text
  
instance Arbitrary MdrSearchScopesGet200Response where
  arbitrary = sized genMdrSearchScopesGet200Response

genMdrSearchScopesGet200Response :: Int -> Gen MdrSearchScopesGet200Response
genMdrSearchScopesGet200Response n =
  MdrSearchScopesGet200Response
    <$> arbitraryReducedMaybe n -- mdrSearchScopesGet200ResponseScopes :: Maybe [DefaultSearchScopes]
  
instance Arbitrary ProductgroupDataAnalysis where
  arbitrary = sized genProductgroupDataAnalysis

genProductgroupDataAnalysis :: Int -> Gen ProductgroupDataAnalysis
genProductgroupDataAnalysis n =
  ProductgroupDataAnalysis
    <$> arbitraryReducedMaybe n -- productgroupDataAnalysisLinks :: Maybe ProductgroupDataAnalysisLinks
  
instance Arbitrary ProductgroupDataAnalysisLinks where
  arbitrary = sized genProductgroupDataAnalysisLinks

genProductgroupDataAnalysisLinks :: Int -> Gen ProductgroupDataAnalysisLinks
genProductgroupDataAnalysisLinks n =
  ProductgroupDataAnalysisLinks
    <$> arbitraryReducedMaybe n -- productgroupDataAnalysisLinksSelf :: Maybe ProductgroupRef
    <*> arbitraryReducedMaybe n -- productgroupDataAnalysisLinksAdam :: Maybe [AdamProductRefElement]
  
instance Arbitrary ProductgroupDataCollection where
  arbitrary = sized genProductgroupDataCollection

genProductgroupDataCollection :: Int -> Gen ProductgroupDataCollection
genProductgroupDataCollection n =
  ProductgroupDataCollection
    <$> arbitraryReducedMaybe n -- productgroupDataCollectionLinks :: Maybe ProductgroupDataCollectionLinks
  
instance Arbitrary ProductgroupDataCollectionLinks where
  arbitrary = sized genProductgroupDataCollectionLinks

genProductgroupDataCollectionLinks :: Int -> Gen ProductgroupDataCollectionLinks
genProductgroupDataCollectionLinks n =
  ProductgroupDataCollectionLinks
    <$> arbitraryReducedMaybe n -- productgroupDataCollectionLinksSelf :: Maybe ProductgroupRef
    <*> arbitraryReducedMaybe n -- productgroupDataCollectionLinksCdash :: Maybe [CdashProductRefElement]
    <*> arbitraryReducedMaybe n -- productgroupDataCollectionLinksCdashig :: Maybe [CdashigProductRefElement]
  
instance Arbitrary ProductgroupDataTabulation where
  arbitrary = sized genProductgroupDataTabulation

genProductgroupDataTabulation :: Int -> Gen ProductgroupDataTabulation
genProductgroupDataTabulation n =
  ProductgroupDataTabulation
    <$> arbitraryReducedMaybe n -- productgroupDataTabulationLinks :: Maybe ProductgroupDataTabulationLinks
  
instance Arbitrary ProductgroupDataTabulationLinks where
  arbitrary = sized genProductgroupDataTabulationLinks

genProductgroupDataTabulationLinks :: Int -> Gen ProductgroupDataTabulationLinks
genProductgroupDataTabulationLinks n =
  ProductgroupDataTabulationLinks
    <$> arbitraryReducedMaybe n -- productgroupDataTabulationLinksSelf :: Maybe ProductgroupRef
    <*> arbitraryReducedMaybe n -- productgroupDataTabulationLinksSdtm :: Maybe [SdtmProductRefElement]
    <*> arbitraryReducedMaybe n -- productgroupDataTabulationLinksSdtmig :: Maybe [SdtmigProductRefElement]
    <*> arbitraryReducedMaybe n -- productgroupDataTabulationLinksSendig :: Maybe [SendigProductRefElement]
  
instance Arbitrary ProductgroupQrs where
  arbitrary = sized genProductgroupQrs

genProductgroupQrs :: Int -> Gen ProductgroupQrs
genProductgroupQrs n =
  ProductgroupQrs
    <$> arbitraryReducedMaybe n -- productgroupQrsLinks :: Maybe ProductgroupQrsLinks
  
instance Arbitrary ProductgroupQrsLinks where
  arbitrary = sized genProductgroupQrsLinks

genProductgroupQrsLinks :: Int -> Gen ProductgroupQrsLinks
genProductgroupQrsLinks n =
  ProductgroupQrsLinks
    <$> arbitraryReducedMaybe n -- productgroupQrsLinksSelf :: Maybe ProductgroupRef
    <*> arbitraryReducedMaybe n -- productgroupQrsLinksQrs :: Maybe [QrsRefElement]
  
instance Arbitrary ProductgroupRef where
  arbitrary = sized genProductgroupRef

genProductgroupRef :: Int -> Gen ProductgroupRef
genProductgroupRef n =
  ProductgroupRef
    <$> arbitraryReducedMaybe n -- productgroupRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- productgroupRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- productgroupRefType :: Maybe Text
  
instance Arbitrary ProductgroupTerminology where
  arbitrary = sized genProductgroupTerminology

genProductgroupTerminology :: Int -> Gen ProductgroupTerminology
genProductgroupTerminology n =
  ProductgroupTerminology
    <$> arbitraryReducedMaybe n -- productgroupTerminologyLinks :: Maybe ProductgroupTerminologyLinks
  
instance Arbitrary ProductgroupTerminologyLinks where
  arbitrary = sized genProductgroupTerminologyLinks

genProductgroupTerminologyLinks :: Int -> Gen ProductgroupTerminologyLinks
genProductgroupTerminologyLinks n =
  ProductgroupTerminologyLinks
    <$> arbitraryReducedMaybe n -- productgroupTerminologyLinksSelf :: Maybe ProductgroupRef
    <*> arbitraryReducedMaybe n -- productgroupTerminologyLinksPackages :: Maybe [CtPackageRefElement]
  
instance Arbitrary Products where
  arbitrary = sized genProducts

genProducts :: Int -> Gen Products
genProducts n =
  Products
    <$> arbitraryReducedMaybe n -- productsLinks :: Maybe ProductsLinks
  
instance Arbitrary ProductsLinks where
  arbitrary = sized genProductsLinks

genProductsLinks :: Int -> Gen ProductsLinks
genProductsLinks n =
  ProductsLinks
    <$> arbitraryReducedMaybe n -- productsLinksSelf :: Maybe ProductsRef
    <*> arbitraryReducedMaybe n -- productsLinksDataCollection :: Maybe ProductgroupDataCollection
    <*> arbitraryReducedMaybe n -- productsLinksDataTabulation :: Maybe ProductgroupDataTabulation
    <*> arbitraryReducedMaybe n -- productsLinksDataAnalysis :: Maybe ProductgroupDataAnalysis
    <*> arbitraryReducedMaybe n -- productsLinksTerminology :: Maybe ProductgroupTerminology
    <*> arbitraryReducedMaybe n -- productsLinksMeasure :: Maybe ProductgroupQrs
  
instance Arbitrary ProductsRef where
  arbitrary = sized genProductsRef

genProductsRef :: Int -> Gen ProductsRef
genProductsRef n =
  ProductsRef
    <$> arbitraryReducedMaybe n -- productsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- productsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- productsRefType :: Maybe Text
  
instance Arbitrary QrsItem where
  arbitrary = sized genQrsItem

genQrsItem :: Int -> Gen QrsItem
genQrsItem n =
  QrsItem
    <$> arbitraryReducedMaybe n -- qrsItemOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemQuestionText :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemLinks :: Maybe QrsItemLinks
  
instance Arbitrary QrsItemLinks where
  arbitrary = sized genQrsItemLinks

genQrsItemLinks :: Int -> Gen QrsItemLinks
genQrsItemLinks n =
  QrsItemLinks
    <$> arbitraryReducedMaybe n -- qrsItemLinksQrsItemTest :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsItemLinksQrsItemTestcd :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsItemLinksQrsItemEval :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsItemLinksQrsItemScat :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsItemLinksResponsegroup :: Maybe QrsResponsegroup
  
instance Arbitrary QrsItemRefElement where
  arbitrary = sized genQrsItemRefElement

genQrsItemRefElement :: Int -> Gen QrsItemRefElement
genQrsItemRefElement n =
  QrsItemRefElement
    <$> arbitraryReducedMaybe n -- qrsItemRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemRefElementType :: Maybe Text
  
instance Arbitrary QrsItems where
  arbitrary = sized genQrsItems

genQrsItems :: Int -> Gen QrsItems
genQrsItems n =
  QrsItems
    <$> arbitraryReducedMaybe n -- qrsItemsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsUntilDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsQrsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsLinks :: Maybe QrsItemsLinks
  
instance Arbitrary QrsItemsLinks where
  arbitrary = sized genQrsItemsLinks

genQrsItemsLinks :: Int -> Gen QrsItemsLinks
genQrsItemsLinks n =
  QrsItemsLinks
    <$> arbitraryReducedMaybe n -- qrsItemsLinksSelf :: Maybe QrsItemsRef
    <*> arbitraryReducedMaybe n -- qrsItemsLinksParentProduct :: Maybe QrsProductRef
    <*> arbitraryReducedMaybe n -- qrsItemsLinksItems :: Maybe [QrsItemRefElement]
  
instance Arbitrary QrsItemsRef where
  arbitrary = sized genQrsItemsRef

genQrsItemsRef :: Int -> Gen QrsItemsRef
genQrsItemsRef n =
  QrsItemsRef
    <$> arbitraryReducedMaybe n -- qrsItemsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsItemsRefType :: Maybe Text
  
instance Arbitrary QrsProduct where
  arbitrary = sized genQrsProduct

genQrsProduct :: Int -> Gen QrsProduct
genQrsProduct n =
  QrsProduct
    <$> arbitraryReducedMaybe n -- qrsProductName :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductUntilDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductQrsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductLinks :: Maybe QrsProductLinks
    <*> arbitraryReducedMaybe n -- qrsProductItems :: Maybe [QrsItem]
  
instance Arbitrary QrsProductLinks where
  arbitrary = sized genQrsProductLinks

genQrsProductLinks :: Int -> Gen QrsProductLinks
genQrsProductLinks n =
  QrsProductLinks
    <$> arbitraryReducedMaybe n -- qrsProductLinksSelf :: Maybe QrsProductRef
    <*> arbitraryReducedMaybe n -- qrsProductLinksPriorVersion :: Maybe QrsProductRef
    <*> arbitraryReducedMaybe n -- qrsProductLinksQrsTermCat :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsProductLinksQrsItems :: Maybe QrsItemsRef
  
instance Arbitrary QrsProductRef where
  arbitrary = sized genQrsProductRef

genQrsProductRef :: Int -> Gen QrsProductRef
genQrsProductRef n =
  QrsProductRef
    <$> arbitraryReducedMaybe n -- qrsProductRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsProductRefType :: Maybe Text
  
instance Arbitrary QrsRefElement where
  arbitrary = sized genQrsRefElement

genQrsRefElement :: Int -> Gen QrsRefElement
genQrsRefElement n =
  QrsRefElement
    <$> arbitraryReducedMaybe n -- qrsRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsRefElementType :: Maybe Text
  
instance Arbitrary QrsResponseLinks where
  arbitrary = sized genQrsResponseLinks

genQrsResponseLinks :: Int -> Gen QrsResponseLinks
genQrsResponseLinks n =
  QrsResponseLinks
    <$> arbitraryReducedMaybe n -- qrsResponseLinksQrsResponseOrres :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsResponseLinksQrsResponseOrresu :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsResponseLinksQrsResponseStresc :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- qrsResponseLinksQrsResponseStrescu :: Maybe RootCtTermRef
  
instance Arbitrary QrsResponsegroup where
  arbitrary = sized genQrsResponsegroup

genQrsResponsegroup :: Int -> Gen QrsResponsegroup
genQrsResponsegroup n =
  QrsResponsegroup
    <$> arbitraryReducedMaybe n -- qrsResponsegroupLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupLinks :: Maybe QrsResponsegroupLinks
  
instance Arbitrary QrsResponsegroupLinks where
  arbitrary = sized genQrsResponsegroupLinks

genQrsResponsegroupLinks :: Int -> Gen QrsResponsegroupLinks
genQrsResponsegroupLinks n =
  QrsResponsegroupLinks
    <$> arbitraryReducedMaybe n -- qrsResponsegroupLinksSelf :: Maybe QrsResponsegroupRef
    <*> arbitraryReducedMaybe n -- qrsResponsegroupLinksResponses :: Maybe [QrsResponses]
  
instance Arbitrary QrsResponsegroupRef where
  arbitrary = sized genQrsResponsegroupRef

genQrsResponsegroupRef :: Int -> Gen QrsResponsegroupRef
genQrsResponsegroupRef n =
  QrsResponsegroupRef
    <$> arbitraryReducedMaybe n -- qrsResponsegroupRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupRefType :: Maybe Text
  
instance Arbitrary QrsResponsegroupRefElement where
  arbitrary = sized genQrsResponsegroupRefElement

genQrsResponsegroupRefElement :: Int -> Gen QrsResponsegroupRefElement
genQrsResponsegroupRefElement n =
  QrsResponsegroupRefElement
    <$> arbitraryReducedMaybe n -- qrsResponsegroupRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupRefElementType :: Maybe Text
  
instance Arbitrary QrsResponsegroups where
  arbitrary = sized genQrsResponsegroups

genQrsResponsegroups :: Int -> Gen QrsResponsegroups
genQrsResponsegroups n =
  QrsResponsegroups
    <$> arbitraryReducedMaybe n -- qrsResponsegroupsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsUntilDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsQrsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsLinks :: Maybe QrsResponsegroupsLinks
  
instance Arbitrary QrsResponsegroupsLinks where
  arbitrary = sized genQrsResponsegroupsLinks

genQrsResponsegroupsLinks :: Int -> Gen QrsResponsegroupsLinks
genQrsResponsegroupsLinks n =
  QrsResponsegroupsLinks
    <$> arbitraryReducedMaybe n -- qrsResponsegroupsLinksSelf :: Maybe QrsResponsegroupsRef
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsLinksResponsegroups :: Maybe [QrsResponsegroupRefElement]
  
instance Arbitrary QrsResponsegroupsRef where
  arbitrary = sized genQrsResponsegroupsRef

genQrsResponsegroupsRef :: Int -> Gen QrsResponsegroupsRef
genQrsResponsegroupsRef n =
  QrsResponsegroupsRef
    <$> arbitraryReducedMaybe n -- qrsResponsegroupsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsegroupsRefType :: Maybe Text
  
instance Arbitrary QrsResponses where
  arbitrary = sized genQrsResponses

genQrsResponses :: Int -> Gen QrsResponses
genQrsResponses n =
  QrsResponses
    <$> arbitraryReducedMaybe n -- qrsResponsesOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- qrsResponsesLinks :: Maybe QrsResponseLinks
  
instance Arbitrary RootCdashClassField where
  arbitrary = sized genRootCdashClassField

genRootCdashClassField :: Int -> Gen RootCdashClassField
genRootCdashClassField n =
  RootCdashClassField
    <$> arbitraryReducedMaybe n -- rootCdashClassFieldLinks :: Maybe RootCdashClassFieldLinks
  
instance Arbitrary RootCdashClassFieldLinks where
  arbitrary = sized genRootCdashClassFieldLinks

genRootCdashClassFieldLinks :: Int -> Gen RootCdashClassFieldLinks
genRootCdashClassFieldLinks n =
  RootCdashClassFieldLinks
    <$> arbitraryReducedMaybe n -- rootCdashClassFieldLinksSelf :: Maybe RootCdashClassFieldRef
    <*> arbitraryReducedMaybe n -- rootCdashClassFieldLinksVersions :: Maybe [CdashClassFieldRefVersion]
  
instance Arbitrary RootCdashClassFieldRef where
  arbitrary = sized genRootCdashClassFieldRef

genRootCdashClassFieldRef :: Int -> Gen RootCdashClassFieldRef
genRootCdashClassFieldRef n =
  RootCdashClassFieldRef
    <$> arbitraryReducedMaybe n -- rootCdashClassFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashClassFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashClassFieldRefType :: Maybe Text
  
instance Arbitrary RootCdashDomainField where
  arbitrary = sized genRootCdashDomainField

genRootCdashDomainField :: Int -> Gen RootCdashDomainField
genRootCdashDomainField n =
  RootCdashDomainField
    <$> arbitraryReducedMaybe n -- rootCdashDomainFieldLinks :: Maybe RootCdashDomainFieldLinks
  
instance Arbitrary RootCdashDomainFieldLinks where
  arbitrary = sized genRootCdashDomainFieldLinks

genRootCdashDomainFieldLinks :: Int -> Gen RootCdashDomainFieldLinks
genRootCdashDomainFieldLinks n =
  RootCdashDomainFieldLinks
    <$> arbitraryReducedMaybe n -- rootCdashDomainFieldLinksSelf :: Maybe RootCdashDomainFieldRef
    <*> arbitraryReducedMaybe n -- rootCdashDomainFieldLinksVersions :: Maybe [CdashDomainFieldRefVersion]
  
instance Arbitrary RootCdashDomainFieldRef where
  arbitrary = sized genRootCdashDomainFieldRef

genRootCdashDomainFieldRef :: Int -> Gen RootCdashDomainFieldRef
genRootCdashDomainFieldRef n =
  RootCdashDomainFieldRef
    <$> arbitraryReducedMaybe n -- rootCdashDomainFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashDomainFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashDomainFieldRefType :: Maybe Text
  
instance Arbitrary RootCdashigDomainField where
  arbitrary = sized genRootCdashigDomainField

genRootCdashigDomainField :: Int -> Gen RootCdashigDomainField
genRootCdashigDomainField n =
  RootCdashigDomainField
    <$> arbitraryReducedMaybe n -- rootCdashigDomainFieldLinks :: Maybe RootCdashigDomainFieldLinks
  
instance Arbitrary RootCdashigDomainFieldLinks where
  arbitrary = sized genRootCdashigDomainFieldLinks

genRootCdashigDomainFieldLinks :: Int -> Gen RootCdashigDomainFieldLinks
genRootCdashigDomainFieldLinks n =
  RootCdashigDomainFieldLinks
    <$> arbitraryReducedMaybe n -- rootCdashigDomainFieldLinksSelf :: Maybe RootCdashigDomainFieldRef
    <*> arbitraryReducedMaybe n -- rootCdashigDomainFieldLinksVersions :: Maybe [CdashigDomainFieldRefVersion]
  
instance Arbitrary RootCdashigDomainFieldRef where
  arbitrary = sized genRootCdashigDomainFieldRef

genRootCdashigDomainFieldRef :: Int -> Gen RootCdashigDomainFieldRef
genRootCdashigDomainFieldRef n =
  RootCdashigDomainFieldRef
    <$> arbitraryReducedMaybe n -- rootCdashigDomainFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashigDomainFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashigDomainFieldRefType :: Maybe Text
  
instance Arbitrary RootCdashigScenarioField where
  arbitrary = sized genRootCdashigScenarioField

genRootCdashigScenarioField :: Int -> Gen RootCdashigScenarioField
genRootCdashigScenarioField n =
  RootCdashigScenarioField
    <$> arbitraryReducedMaybe n -- rootCdashigScenarioFieldLinks :: Maybe RootCdashigScenarioFieldLinks
  
instance Arbitrary RootCdashigScenarioFieldLinks where
  arbitrary = sized genRootCdashigScenarioFieldLinks

genRootCdashigScenarioFieldLinks :: Int -> Gen RootCdashigScenarioFieldLinks
genRootCdashigScenarioFieldLinks n =
  RootCdashigScenarioFieldLinks
    <$> arbitraryReducedMaybe n -- rootCdashigScenarioFieldLinksSelf :: Maybe RootCdashigScenarioFieldRef
    <*> arbitraryReducedMaybe n -- rootCdashigScenarioFieldLinksVersions :: Maybe [CdashigScenarioFieldRefVersion]
  
instance Arbitrary RootCdashigScenarioFieldRef where
  arbitrary = sized genRootCdashigScenarioFieldRef

genRootCdashigScenarioFieldRef :: Int -> Gen RootCdashigScenarioFieldRef
genRootCdashigScenarioFieldRef n =
  RootCdashigScenarioFieldRef
    <$> arbitraryReducedMaybe n -- rootCdashigScenarioFieldRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashigScenarioFieldRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCdashigScenarioFieldRefType :: Maybe Text
  
instance Arbitrary RootCtCodelist where
  arbitrary = sized genRootCtCodelist

genRootCtCodelist :: Int -> Gen RootCtCodelist
genRootCtCodelist n =
  RootCtCodelist
    <$> arbitraryReducedMaybe n -- rootCtCodelistLinks :: Maybe RootCtCodelistLinks
  
instance Arbitrary RootCtCodelistLinks where
  arbitrary = sized genRootCtCodelistLinks

genRootCtCodelistLinks :: Int -> Gen RootCtCodelistLinks
genRootCtCodelistLinks n =
  RootCtCodelistLinks
    <$> arbitraryReducedMaybe n -- rootCtCodelistLinksSelf :: Maybe RootCtCodelistRef
    <*> arbitraryReducedMaybe n -- rootCtCodelistLinksVersions :: Maybe [CtCodelistRefVersion]
  
instance Arbitrary RootCtCodelistRef where
  arbitrary = sized genRootCtCodelistRef

genRootCtCodelistRef :: Int -> Gen RootCtCodelistRef
genRootCtCodelistRef n =
  RootCtCodelistRef
    <$> arbitraryReducedMaybe n -- rootCtCodelistRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCtCodelistRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCtCodelistRefType :: Maybe Text
  
instance Arbitrary RootCtCodelistRefElement where
  arbitrary = sized genRootCtCodelistRefElement

genRootCtCodelistRefElement :: Int -> Gen RootCtCodelistRefElement
genRootCtCodelistRefElement n =
  RootCtCodelistRefElement
    <$> arbitraryReducedMaybe n -- rootCtCodelistRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCtCodelistRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCtCodelistRefElementType :: Maybe Text
  
instance Arbitrary RootCtTerm where
  arbitrary = sized genRootCtTerm

genRootCtTerm :: Int -> Gen RootCtTerm
genRootCtTerm n =
  RootCtTerm
    <$> arbitraryReducedMaybe n -- rootCtTermLinks :: Maybe RootCtTermLinks
  
instance Arbitrary RootCtTermLinks where
  arbitrary = sized genRootCtTermLinks

genRootCtTermLinks :: Int -> Gen RootCtTermLinks
genRootCtTermLinks n =
  RootCtTermLinks
    <$> arbitraryReducedMaybe n -- rootCtTermLinksSelf :: Maybe RootCtTermRef
    <*> arbitraryReducedMaybe n -- rootCtTermLinksVersions :: Maybe [CtTermRefVersion]
  
instance Arbitrary RootCtTermRef where
  arbitrary = sized genRootCtTermRef

genRootCtTermRef :: Int -> Gen RootCtTermRef
genRootCtTermRef n =
  RootCtTermRef
    <$> arbitraryReducedMaybe n -- rootCtTermRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCtTermRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootCtTermRefType :: Maybe Text
  
instance Arbitrary RootSdtmClassVariable where
  arbitrary = sized genRootSdtmClassVariable

genRootSdtmClassVariable :: Int -> Gen RootSdtmClassVariable
genRootSdtmClassVariable n =
  RootSdtmClassVariable
    <$> arbitraryReducedMaybe n -- rootSdtmClassVariableLinks :: Maybe RootSdtmClassVariableLinks
  
instance Arbitrary RootSdtmClassVariableLinks where
  arbitrary = sized genRootSdtmClassVariableLinks

genRootSdtmClassVariableLinks :: Int -> Gen RootSdtmClassVariableLinks
genRootSdtmClassVariableLinks n =
  RootSdtmClassVariableLinks
    <$> arbitraryReducedMaybe n -- rootSdtmClassVariableLinksSelf :: Maybe RootSdtmClassVariableRef
    <*> arbitraryReducedMaybe n -- rootSdtmClassVariableLinksVersions :: Maybe [SdtmClassVariableRefVersion]
  
instance Arbitrary RootSdtmClassVariableRef where
  arbitrary = sized genRootSdtmClassVariableRef

genRootSdtmClassVariableRef :: Int -> Gen RootSdtmClassVariableRef
genRootSdtmClassVariableRef n =
  RootSdtmClassVariableRef
    <$> arbitraryReducedMaybe n -- rootSdtmClassVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSdtmClassVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSdtmClassVariableRefType :: Maybe Text
  
instance Arbitrary RootSdtmDatasetVariable where
  arbitrary = sized genRootSdtmDatasetVariable

genRootSdtmDatasetVariable :: Int -> Gen RootSdtmDatasetVariable
genRootSdtmDatasetVariable n =
  RootSdtmDatasetVariable
    <$> arbitraryReducedMaybe n -- rootSdtmDatasetVariableLinks :: Maybe RootSdtmDatasetVariableLinks
  
instance Arbitrary RootSdtmDatasetVariableLinks where
  arbitrary = sized genRootSdtmDatasetVariableLinks

genRootSdtmDatasetVariableLinks :: Int -> Gen RootSdtmDatasetVariableLinks
genRootSdtmDatasetVariableLinks n =
  RootSdtmDatasetVariableLinks
    <$> arbitraryReducedMaybe n -- rootSdtmDatasetVariableLinksSelf :: Maybe RootSdtmDatasetVariableRef
    <*> arbitraryReducedMaybe n -- rootSdtmDatasetVariableLinksVersions :: Maybe [SdtmDatasetVariableRefVersion]
  
instance Arbitrary RootSdtmDatasetVariableRef where
  arbitrary = sized genRootSdtmDatasetVariableRef

genRootSdtmDatasetVariableRef :: Int -> Gen RootSdtmDatasetVariableRef
genRootSdtmDatasetVariableRef n =
  RootSdtmDatasetVariableRef
    <$> arbitraryReducedMaybe n -- rootSdtmDatasetVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSdtmDatasetVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSdtmDatasetVariableRefType :: Maybe Text
  
instance Arbitrary RootSdtmigDatasetVariable where
  arbitrary = sized genRootSdtmigDatasetVariable

genRootSdtmigDatasetVariable :: Int -> Gen RootSdtmigDatasetVariable
genRootSdtmigDatasetVariable n =
  RootSdtmigDatasetVariable
    <$> arbitraryReducedMaybe n -- rootSdtmigDatasetVariableLinks :: Maybe RootSdtmigDatasetVariableLinks
  
instance Arbitrary RootSdtmigDatasetVariableLinks where
  arbitrary = sized genRootSdtmigDatasetVariableLinks

genRootSdtmigDatasetVariableLinks :: Int -> Gen RootSdtmigDatasetVariableLinks
genRootSdtmigDatasetVariableLinks n =
  RootSdtmigDatasetVariableLinks
    <$> arbitraryReducedMaybe n -- rootSdtmigDatasetVariableLinksSelf :: Maybe RootSdtmigDatasetVariableRef
    <*> arbitraryReducedMaybe n -- rootSdtmigDatasetVariableLinksVersions :: Maybe [SdtmigDatasetVariableRefVersion]
  
instance Arbitrary RootSdtmigDatasetVariableRef where
  arbitrary = sized genRootSdtmigDatasetVariableRef

genRootSdtmigDatasetVariableRef :: Int -> Gen RootSdtmigDatasetVariableRef
genRootSdtmigDatasetVariableRef n =
  RootSdtmigDatasetVariableRef
    <$> arbitraryReducedMaybe n -- rootSdtmigDatasetVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSdtmigDatasetVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSdtmigDatasetVariableRefType :: Maybe Text
  
instance Arbitrary RootSendigDatasetVariable where
  arbitrary = sized genRootSendigDatasetVariable

genRootSendigDatasetVariable :: Int -> Gen RootSendigDatasetVariable
genRootSendigDatasetVariable n =
  RootSendigDatasetVariable
    <$> arbitraryReducedMaybe n -- rootSendigDatasetVariableLinks :: Maybe RootSendigDatasetVariableLinks
  
instance Arbitrary RootSendigDatasetVariableLinks where
  arbitrary = sized genRootSendigDatasetVariableLinks

genRootSendigDatasetVariableLinks :: Int -> Gen RootSendigDatasetVariableLinks
genRootSendigDatasetVariableLinks n =
  RootSendigDatasetVariableLinks
    <$> arbitraryReducedMaybe n -- rootSendigDatasetVariableLinksSelf :: Maybe RootSendigDatasetVariableRef
    <*> arbitraryReducedMaybe n -- rootSendigDatasetVariableLinksVersions :: Maybe [SendigDatasetVariableRefVersion]
  
instance Arbitrary RootSendigDatasetVariableRef where
  arbitrary = sized genRootSendigDatasetVariableRef

genRootSendigDatasetVariableRef :: Int -> Gen RootSendigDatasetVariableRef
genRootSendigDatasetVariableRef n =
  RootSendigDatasetVariableRef
    <$> arbitraryReducedMaybe n -- rootSendigDatasetVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSendigDatasetVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- rootSendigDatasetVariableRefType :: Maybe Text
  
instance Arbitrary ScopeValues where
  arbitrary = sized genScopeValues

genScopeValues :: Int -> Gen ScopeValues
genScopeValues n =
  ScopeValues
    <$> arbitraryReducedMaybe n -- scopeValuesTotal :: Maybe Double
    <*> arbitraryReducedMaybe n -- scopeValuesHasMore :: Maybe Bool
    <*> arbitraryReducedMaybe n -- scopeValuesValues :: Maybe [Text]
  
instance Arbitrary SdtmClass where
  arbitrary = sized genSdtmClass

genSdtmClass :: Int -> Gen SdtmClass
genSdtmClass n =
  SdtmClass
    <$> arbitraryReducedMaybe n -- sdtmClassOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassLinks :: Maybe SdtmClassLinks
    <*> arbitraryReducedMaybe n -- sdtmClassClassVariables :: Maybe [SdtmClassVariable]
    <*> arbitraryReducedMaybe n -- sdtmClassDatasets :: Maybe [SdtmDataset]
  
instance Arbitrary SdtmClassDatasets where
  arbitrary = sized genSdtmClassDatasets

genSdtmClassDatasets :: Int -> Gen SdtmClassDatasets
genSdtmClassDatasets n =
  SdtmClassDatasets
    <$> arbitraryReducedMaybe n -- sdtmClassDatasetsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsLinks :: Maybe SdtmClassDatasetsLinks
  
instance Arbitrary SdtmClassDatasetsLinks where
  arbitrary = sized genSdtmClassDatasetsLinks

genSdtmClassDatasetsLinks :: Int -> Gen SdtmClassDatasetsLinks
genSdtmClassDatasetsLinks n =
  SdtmClassDatasetsLinks
    <$> arbitraryReducedMaybe n -- sdtmClassDatasetsLinksSelf :: Maybe SdtmClassDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsLinksPriorVersion :: Maybe SdtmClassDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsLinksDatasets :: Maybe [SdtmDatasetRefElement]
  
instance Arbitrary SdtmClassDatasetsRef where
  arbitrary = sized genSdtmClassDatasetsRef

genSdtmClassDatasetsRef :: Int -> Gen SdtmClassDatasetsRef
genSdtmClassDatasetsRef n =
  SdtmClassDatasetsRef
    <$> arbitraryReducedMaybe n -- sdtmClassDatasetsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassDatasetsRefType :: Maybe Text
  
instance Arbitrary SdtmClassLinks where
  arbitrary = sized genSdtmClassLinks

genSdtmClassLinks :: Int -> Gen SdtmClassLinks
genSdtmClassLinks n =
  SdtmClassLinks
    <$> arbitraryReducedMaybe n -- sdtmClassLinksSelf :: Maybe SdtmClassRef
    <*> arbitraryReducedMaybe n -- sdtmClassLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmClassLinksParentClass :: Maybe SdtmClassRef
    <*> arbitraryReducedMaybe n -- sdtmClassLinksSubclasses :: Maybe [SdtmClassRefSubclass]
    <*> arbitraryReducedMaybe n -- sdtmClassLinksPriorVersion :: Maybe SdtmClassRef
  
instance Arbitrary SdtmClassRef where
  arbitrary = sized genSdtmClassRef

genSdtmClassRef :: Int -> Gen SdtmClassRef
genSdtmClassRef n =
  SdtmClassRef
    <$> arbitraryReducedMaybe n -- sdtmClassRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassRefType :: Maybe Text
  
instance Arbitrary SdtmClassRefElement where
  arbitrary = sized genSdtmClassRefElement

genSdtmClassRefElement :: Int -> Gen SdtmClassRefElement
genSdtmClassRefElement n =
  SdtmClassRefElement
    <$> arbitraryReducedMaybe n -- sdtmClassRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassRefElementType :: Maybe Text
  
instance Arbitrary SdtmClassRefSubclass where
  arbitrary = sized genSdtmClassRefSubclass

genSdtmClassRefSubclass :: Int -> Gen SdtmClassRefSubclass
genSdtmClassRefSubclass n =
  SdtmClassRefSubclass
    <$> arbitraryReducedMaybe n -- sdtmClassRefSubclassHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassRefSubclassTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassRefSubclassType :: Maybe Text
  
instance Arbitrary SdtmClassVariable where
  arbitrary = sized genSdtmClassVariable

genSdtmClassVariable :: Int -> Gen SdtmClassVariable
genSdtmClassVariable n =
  SdtmClassVariable
    <$> arbitraryReducedMaybe n -- sdtmClassVariableOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRoleDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableDescribedValueDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableLinks :: Maybe SdtmClassVariableLinks
  
instance Arbitrary SdtmClassVariableLinks where
  arbitrary = sized genSdtmClassVariableLinks

genSdtmClassVariableLinks :: Int -> Gen SdtmClassVariableLinks
genSdtmClassVariableLinks n =
  SdtmClassVariableLinks
    <$> arbitraryReducedMaybe n -- sdtmClassVariableLinksSelf :: Maybe SdtmClassVariableRef
    <*> arbitraryReducedMaybe n -- sdtmClassVariableLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmClassVariableLinksParentClass :: Maybe SdtmClassRef
    <*> arbitraryReducedMaybe n -- sdtmClassVariableLinksQualifiesVariables :: Maybe [SdtmClassVariableRefQualifies]
    <*> arbitraryReducedMaybe n -- sdtmClassVariableLinksRootItem :: Maybe RootSdtmClassVariableRef
    <*> arbitraryReducedMaybe n -- sdtmClassVariableLinksPriorVersion :: Maybe SdtmClassVariableRef
  
instance Arbitrary SdtmClassVariableRef where
  arbitrary = sized genSdtmClassVariableRef

genSdtmClassVariableRef :: Int -> Gen SdtmClassVariableRef
genSdtmClassVariableRef n =
  SdtmClassVariableRef
    <$> arbitraryReducedMaybe n -- sdtmClassVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefType :: Maybe Text
  
instance Arbitrary SdtmClassVariableRefElement where
  arbitrary = sized genSdtmClassVariableRefElement

genSdtmClassVariableRefElement :: Int -> Gen SdtmClassVariableRefElement
genSdtmClassVariableRefElement n =
  SdtmClassVariableRefElement
    <$> arbitraryReducedMaybe n -- sdtmClassVariableRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefElementType :: Maybe Text
  
instance Arbitrary SdtmClassVariableRefQualifies where
  arbitrary = sized genSdtmClassVariableRefQualifies

genSdtmClassVariableRefQualifies :: Int -> Gen SdtmClassVariableRefQualifies
genSdtmClassVariableRefQualifies n =
  SdtmClassVariableRefQualifies
    <$> arbitraryReducedMaybe n -- sdtmClassVariableRefQualifiesHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefQualifiesTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefQualifiesType :: Maybe Text
  
instance Arbitrary SdtmClassVariableRefTarget where
  arbitrary = sized genSdtmClassVariableRefTarget

genSdtmClassVariableRefTarget :: Int -> Gen SdtmClassVariableRefTarget
genSdtmClassVariableRefTarget n =
  SdtmClassVariableRefTarget
    <$> arbitraryReducedMaybe n -- sdtmClassVariableRefTargetHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefTargetTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefTargetType :: Maybe Text
  
instance Arbitrary SdtmClassVariableRefVersion where
  arbitrary = sized genSdtmClassVariableRefVersion

genSdtmClassVariableRefVersion :: Int -> Gen SdtmClassVariableRefVersion
genSdtmClassVariableRefVersion n =
  SdtmClassVariableRefVersion
    <$> arbitraryReducedMaybe n -- sdtmClassVariableRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariableRefVersionType :: Maybe Text
  
instance Arbitrary SdtmClassVariables where
  arbitrary = sized genSdtmClassVariables

genSdtmClassVariables :: Int -> Gen SdtmClassVariables
genSdtmClassVariables n =
  SdtmClassVariables
    <$> arbitraryReducedMaybe n -- sdtmClassVariablesOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesLinks :: Maybe SdtmClassVariablesLinks
  
instance Arbitrary SdtmClassVariablesLinks where
  arbitrary = sized genSdtmClassVariablesLinks

genSdtmClassVariablesLinks :: Int -> Gen SdtmClassVariablesLinks
genSdtmClassVariablesLinks n =
  SdtmClassVariablesLinks
    <$> arbitraryReducedMaybe n -- sdtmClassVariablesLinksSelf :: Maybe SdtmClassVariablesRef
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesLinksPriorVersion :: Maybe SdtmClassVariablesRef
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesLinksClassVariables :: Maybe [SdtmClassVariableRefElement]
  
instance Arbitrary SdtmClassVariablesRef where
  arbitrary = sized genSdtmClassVariablesRef

genSdtmClassVariablesRef :: Int -> Gen SdtmClassVariablesRef
genSdtmClassVariablesRef n =
  SdtmClassVariablesRef
    <$> arbitraryReducedMaybe n -- sdtmClassVariablesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassVariablesRefType :: Maybe Text
  
instance Arbitrary SdtmClasses where
  arbitrary = sized genSdtmClasses

genSdtmClasses :: Int -> Gen SdtmClasses
genSdtmClasses n =
  SdtmClasses
    <$> arbitraryReducedMaybe n -- sdtmClassesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesLinks :: Maybe SdtmClassesLinks
  
instance Arbitrary SdtmClassesLinks where
  arbitrary = sized genSdtmClassesLinks

genSdtmClassesLinks :: Int -> Gen SdtmClassesLinks
genSdtmClassesLinks n =
  SdtmClassesLinks
    <$> arbitraryReducedMaybe n -- sdtmClassesLinksSelf :: Maybe SdtmClassesRef
    <*> arbitraryReducedMaybe n -- sdtmClassesLinksPriorVersion :: Maybe SdtmClassesRef
    <*> arbitraryReducedMaybe n -- sdtmClassesLinksClasses :: Maybe [SdtmClassRefElement]
  
instance Arbitrary SdtmClassesRef where
  arbitrary = sized genSdtmClassesRef

genSdtmClassesRef :: Int -> Gen SdtmClassesRef
genSdtmClassesRef n =
  SdtmClassesRef
    <$> arbitraryReducedMaybe n -- sdtmClassesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmClassesRefType :: Maybe Text
  
instance Arbitrary SdtmDataset where
  arbitrary = sized genSdtmDataset

genSdtmDataset :: Int -> Gen SdtmDataset
genSdtmDataset n =
  SdtmDataset
    <$> arbitraryReducedMaybe n -- sdtmDatasetOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetDatasetStructure :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetLinks :: Maybe SdtmDatasetLinks
    <*> arbitraryReducedMaybe n -- sdtmDatasetDatasetVariables :: Maybe [SdtmDatasetVariable]
  
instance Arbitrary SdtmDatasetLinks where
  arbitrary = sized genSdtmDatasetLinks

genSdtmDatasetLinks :: Int -> Gen SdtmDatasetLinks
genSdtmDatasetLinks n =
  SdtmDatasetLinks
    <$> arbitraryReducedMaybe n -- sdtmDatasetLinksSelf :: Maybe SdtmDatasetRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetLinksParentClass :: Maybe SdtmClassRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetLinksPriorVersion :: Maybe SdtmDatasetRef
  
instance Arbitrary SdtmDatasetRef where
  arbitrary = sized genSdtmDatasetRef

genSdtmDatasetRef :: Int -> Gen SdtmDatasetRef
genSdtmDatasetRef n =
  SdtmDatasetRef
    <$> arbitraryReducedMaybe n -- sdtmDatasetRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetRefType :: Maybe Text
  
instance Arbitrary SdtmDatasetRefElement where
  arbitrary = sized genSdtmDatasetRefElement

genSdtmDatasetRefElement :: Int -> Gen SdtmDatasetRefElement
genSdtmDatasetRefElement n =
  SdtmDatasetRefElement
    <$> arbitraryReducedMaybe n -- sdtmDatasetRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetRefElementType :: Maybe Text
  
instance Arbitrary SdtmDatasetVariable where
  arbitrary = sized genSdtmDatasetVariable

genSdtmDatasetVariable :: Int -> Gen SdtmDatasetVariable
genSdtmDatasetVariable n =
  SdtmDatasetVariable
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariableOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRoleDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableDescribedValueDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableLinks :: Maybe SdtmDatasetVariableLinks
  
instance Arbitrary SdtmDatasetVariableLinks where
  arbitrary = sized genSdtmDatasetVariableLinks

genSdtmDatasetVariableLinks :: Int -> Gen SdtmDatasetVariableLinks
genSdtmDatasetVariableLinks n =
  SdtmDatasetVariableLinks
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariableLinksSelf :: Maybe SdtmDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableLinksParentDataset :: Maybe SdtmDatasetRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableLinksRootItem :: Maybe RootSdtmDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableLinksPriorVersion :: Maybe SdtmDatasetVariableRef
  
instance Arbitrary SdtmDatasetVariableRef where
  arbitrary = sized genSdtmDatasetVariableRef

genSdtmDatasetVariableRef :: Int -> Gen SdtmDatasetVariableRef
genSdtmDatasetVariableRef n =
  SdtmDatasetVariableRef
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefType :: Maybe Text
  
instance Arbitrary SdtmDatasetVariableRefElement where
  arbitrary = sized genSdtmDatasetVariableRefElement

genSdtmDatasetVariableRefElement :: Int -> Gen SdtmDatasetVariableRefElement
genSdtmDatasetVariableRefElement n =
  SdtmDatasetVariableRefElement
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariableRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefElementType :: Maybe Text
  
instance Arbitrary SdtmDatasetVariableRefTarget where
  arbitrary = sized genSdtmDatasetVariableRefTarget

genSdtmDatasetVariableRefTarget :: Int -> Gen SdtmDatasetVariableRefTarget
genSdtmDatasetVariableRefTarget n =
  SdtmDatasetVariableRefTarget
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariableRefTargetHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefTargetTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefTargetType :: Maybe Text
  
instance Arbitrary SdtmDatasetVariableRefVersion where
  arbitrary = sized genSdtmDatasetVariableRefVersion

genSdtmDatasetVariableRefVersion :: Int -> Gen SdtmDatasetVariableRefVersion
genSdtmDatasetVariableRefVersion n =
  SdtmDatasetVariableRefVersion
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariableRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariableRefVersionType :: Maybe Text
  
instance Arbitrary SdtmDatasetVariables where
  arbitrary = sized genSdtmDatasetVariables

genSdtmDatasetVariables :: Int -> Gen SdtmDatasetVariables
genSdtmDatasetVariables n =
  SdtmDatasetVariables
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariablesOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesDatasetStructure :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesLinks :: Maybe SdtmDatasetVariablesLinks
  
instance Arbitrary SdtmDatasetVariablesLinks where
  arbitrary = sized genSdtmDatasetVariablesLinks

genSdtmDatasetVariablesLinks :: Int -> Gen SdtmDatasetVariablesLinks
genSdtmDatasetVariablesLinks n =
  SdtmDatasetVariablesLinks
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariablesLinksSelf :: Maybe SdtmDatasetVariablesRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesLinksParentClass :: Maybe SdtmClassRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesLinksPriorVersion :: Maybe SdtmDatasetVariablesRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesLinksDatasetVariables :: Maybe [SdtmDatasetVariableRefElement]
  
instance Arbitrary SdtmDatasetVariablesRef where
  arbitrary = sized genSdtmDatasetVariablesRef

genSdtmDatasetVariablesRef :: Int -> Gen SdtmDatasetVariablesRef
genSdtmDatasetVariablesRef n =
  SdtmDatasetVariablesRef
    <$> arbitraryReducedMaybe n -- sdtmDatasetVariablesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetVariablesRefType :: Maybe Text
  
instance Arbitrary SdtmDatasets where
  arbitrary = sized genSdtmDatasets

genSdtmDatasets :: Int -> Gen SdtmDatasets
genSdtmDatasets n =
  SdtmDatasets
    <$> arbitraryReducedMaybe n -- sdtmDatasetsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsLinks :: Maybe SdtmDatasetsLinks
  
instance Arbitrary SdtmDatasetsLinks where
  arbitrary = sized genSdtmDatasetsLinks

genSdtmDatasetsLinks :: Int -> Gen SdtmDatasetsLinks
genSdtmDatasetsLinks n =
  SdtmDatasetsLinks
    <$> arbitraryReducedMaybe n -- sdtmDatasetsLinksSelf :: Maybe SdtmDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetsLinksParentProduct :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetsLinksPriorVersion :: Maybe SdtmDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmDatasetsLinksDatasets :: Maybe [SdtmDatasetRefElement]
  
instance Arbitrary SdtmDatasetsRef where
  arbitrary = sized genSdtmDatasetsRef

genSdtmDatasetsRef :: Int -> Gen SdtmDatasetsRef
genSdtmDatasetsRef n =
  SdtmDatasetsRef
    <$> arbitraryReducedMaybe n -- sdtmDatasetsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmDatasetsRefType :: Maybe Text
  
instance Arbitrary SdtmProduct where
  arbitrary = sized genSdtmProduct

genSdtmProduct :: Int -> Gen SdtmProduct
genSdtmProduct n =
  SdtmProduct
    <$> arbitraryReducedMaybe n -- sdtmProductName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductLinks :: Maybe SdtmProductLinks
    <*> arbitraryReducedMaybe n -- sdtmProductClasses :: Maybe [SdtmClass]
    <*> arbitraryReducedMaybe n -- sdtmProductDatasets :: Maybe [SdtmDataset]
  
instance Arbitrary SdtmProductLinks where
  arbitrary = sized genSdtmProductLinks

genSdtmProductLinks :: Int -> Gen SdtmProductLinks
genSdtmProductLinks n =
  SdtmProductLinks
    <$> arbitraryReducedMaybe n -- sdtmProductLinksSelf :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmProductLinksPriorVersion :: Maybe SdtmProductRef
  
instance Arbitrary SdtmProductRef where
  arbitrary = sized genSdtmProductRef

genSdtmProductRef :: Int -> Gen SdtmProductRef
genSdtmProductRef n =
  SdtmProductRef
    <$> arbitraryReducedMaybe n -- sdtmProductRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductRefType :: Maybe Text
  
instance Arbitrary SdtmProductRefElement where
  arbitrary = sized genSdtmProductRefElement

genSdtmProductRefElement :: Int -> Gen SdtmProductRefElement
genSdtmProductRefElement n =
  SdtmProductRefElement
    <$> arbitraryReducedMaybe n -- sdtmProductRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmProductRefElementType :: Maybe Text
  
instance Arbitrary SdtmigClass where
  arbitrary = sized genSdtmigClass

genSdtmigClass :: Int -> Gen SdtmigClass
genSdtmigClass n =
  SdtmigClass
    <$> arbitraryReducedMaybe n -- sdtmigClassOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassLinks :: Maybe SdtmigClassLinks
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasets :: Maybe [SdtmigDataset]
  
instance Arbitrary SdtmigClassDatasets where
  arbitrary = sized genSdtmigClassDatasets

genSdtmigClassDatasets :: Int -> Gen SdtmigClassDatasets
genSdtmigClassDatasets n =
  SdtmigClassDatasets
    <$> arbitraryReducedMaybe n -- sdtmigClassDatasetsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsLinks :: Maybe SdtmigClassDatasetsLinks
  
instance Arbitrary SdtmigClassDatasetsLinks where
  arbitrary = sized genSdtmigClassDatasetsLinks

genSdtmigClassDatasetsLinks :: Int -> Gen SdtmigClassDatasetsLinks
genSdtmigClassDatasetsLinks n =
  SdtmigClassDatasetsLinks
    <$> arbitraryReducedMaybe n -- sdtmigClassDatasetsLinksSelf :: Maybe SdtmigClassDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsLinksParentProduct :: Maybe SdtmigProductRef
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsLinksPriorVersion :: Maybe SdtmigClassDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsLinksDatasets :: Maybe [SdtmigDatasetRefElement]
  
instance Arbitrary SdtmigClassDatasetsRef where
  arbitrary = sized genSdtmigClassDatasetsRef

genSdtmigClassDatasetsRef :: Int -> Gen SdtmigClassDatasetsRef
genSdtmigClassDatasetsRef n =
  SdtmigClassDatasetsRef
    <$> arbitraryReducedMaybe n -- sdtmigClassDatasetsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassDatasetsRefType :: Maybe Text
  
instance Arbitrary SdtmigClassLinks where
  arbitrary = sized genSdtmigClassLinks

genSdtmigClassLinks :: Int -> Gen SdtmigClassLinks
genSdtmigClassLinks n =
  SdtmigClassLinks
    <$> arbitraryReducedMaybe n -- sdtmigClassLinksSelf :: Maybe SdtmigClassRef
    <*> arbitraryReducedMaybe n -- sdtmigClassLinksModelClass :: Maybe SdtmClassRef
    <*> arbitraryReducedMaybe n -- sdtmigClassLinksParentProduct :: Maybe SdtmigProductRef
    <*> arbitraryReducedMaybe n -- sdtmigClassLinksParentClass :: Maybe SdtmigClassRef
    <*> arbitraryReducedMaybe n -- sdtmigClassLinksSubclasses :: Maybe [SdtmigClassRefSubclass]
    <*> arbitraryReducedMaybe n -- sdtmigClassLinksPriorVersion :: Maybe SdtmigClassRef
  
instance Arbitrary SdtmigClassRef where
  arbitrary = sized genSdtmigClassRef

genSdtmigClassRef :: Int -> Gen SdtmigClassRef
genSdtmigClassRef n =
  SdtmigClassRef
    <$> arbitraryReducedMaybe n -- sdtmigClassRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassRefType :: Maybe Text
  
instance Arbitrary SdtmigClassRefElement where
  arbitrary = sized genSdtmigClassRefElement

genSdtmigClassRefElement :: Int -> Gen SdtmigClassRefElement
genSdtmigClassRefElement n =
  SdtmigClassRefElement
    <$> arbitraryReducedMaybe n -- sdtmigClassRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassRefElementType :: Maybe Text
  
instance Arbitrary SdtmigClassRefSubclass where
  arbitrary = sized genSdtmigClassRefSubclass

genSdtmigClassRefSubclass :: Int -> Gen SdtmigClassRefSubclass
genSdtmigClassRefSubclass n =
  SdtmigClassRefSubclass
    <$> arbitraryReducedMaybe n -- sdtmigClassRefSubclassHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassRefSubclassTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassRefSubclassType :: Maybe Text
  
instance Arbitrary SdtmigClasses where
  arbitrary = sized genSdtmigClasses

genSdtmigClasses :: Int -> Gen SdtmigClasses
genSdtmigClasses n =
  SdtmigClasses
    <$> arbitraryReducedMaybe n -- sdtmigClassesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesLinks :: Maybe SdtmigClassesLinks
  
instance Arbitrary SdtmigClassesLinks where
  arbitrary = sized genSdtmigClassesLinks

genSdtmigClassesLinks :: Int -> Gen SdtmigClassesLinks
genSdtmigClassesLinks n =
  SdtmigClassesLinks
    <$> arbitraryReducedMaybe n -- sdtmigClassesLinksSelf :: Maybe SdtmigClassesRef
    <*> arbitraryReducedMaybe n -- sdtmigClassesLinksPriorVersion :: Maybe SdtmigClassesRef
    <*> arbitraryReducedMaybe n -- sdtmigClassesLinksClasses :: Maybe [SdtmigClassRefElement]
  
instance Arbitrary SdtmigClassesRef where
  arbitrary = sized genSdtmigClassesRef

genSdtmigClassesRef :: Int -> Gen SdtmigClassesRef
genSdtmigClassesRef n =
  SdtmigClassesRef
    <$> arbitraryReducedMaybe n -- sdtmigClassesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigClassesRefType :: Maybe Text
  
instance Arbitrary SdtmigDataset where
  arbitrary = sized genSdtmigDataset

genSdtmigDataset :: Int -> Gen SdtmigDataset
genSdtmigDataset n =
  SdtmigDataset
    <$> arbitraryReducedMaybe n -- sdtmigDatasetOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetDatasetStructure :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetLinks :: Maybe SdtmigDatasetLinks
    <*> arbitraryReducedMaybe n -- sdtmigDatasetDatasetVariables :: Maybe [SdtmigDatasetVariable]
  
instance Arbitrary SdtmigDatasetLinks where
  arbitrary = sized genSdtmigDatasetLinks

genSdtmigDatasetLinks :: Int -> Gen SdtmigDatasetLinks
genSdtmigDatasetLinks n =
  SdtmigDatasetLinks
    <$> arbitraryReducedMaybe n -- sdtmigDatasetLinksSelf :: Maybe SdtmigDatasetRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetLinksModelDataset :: Maybe SdtmDatasetRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetLinksParentProduct :: Maybe SdtmigProductRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetLinksParentClass :: Maybe SdtmigClassRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetLinksPriorVersion :: Maybe SdtmigDatasetRef
  
instance Arbitrary SdtmigDatasetRef where
  arbitrary = sized genSdtmigDatasetRef

genSdtmigDatasetRef :: Int -> Gen SdtmigDatasetRef
genSdtmigDatasetRef n =
  SdtmigDatasetRef
    <$> arbitraryReducedMaybe n -- sdtmigDatasetRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetRefType :: Maybe Text
  
instance Arbitrary SdtmigDatasetRefElement where
  arbitrary = sized genSdtmigDatasetRefElement

genSdtmigDatasetRefElement :: Int -> Gen SdtmigDatasetRefElement
genSdtmigDatasetRefElement n =
  SdtmigDatasetRefElement
    <$> arbitraryReducedMaybe n -- sdtmigDatasetRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetRefElementType :: Maybe Text
  
instance Arbitrary SdtmigDatasetVariable where
  arbitrary = sized genSdtmigDatasetVariable

genSdtmigDatasetVariable :: Int -> Gen SdtmigDatasetVariable
genSdtmigDatasetVariable n =
  SdtmigDatasetVariable
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariableOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableDescribedValueDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableValueList :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinks :: Maybe SdtmigDatasetVariableLinks
  
instance Arbitrary SdtmigDatasetVariableLinks where
  arbitrary = sized genSdtmigDatasetVariableLinks

genSdtmigDatasetVariableLinks :: Int -> Gen SdtmigDatasetVariableLinks
genSdtmigDatasetVariableLinks n =
  SdtmigDatasetVariableLinks
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksSelf :: Maybe SdtmigDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksCodelist :: Maybe [RootCtCodelistRefElement]
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksModelClassVariable :: Maybe SdtmClassVariableRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksModelDatasetVariable :: Maybe SdtmDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksParentProduct :: Maybe SdtmigProductRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksParentDataset :: Maybe SdtmigDatasetRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksRootItem :: Maybe RootSdtmigDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableLinksPriorVersion :: Maybe SdtmigDatasetVariableRef
  
instance Arbitrary SdtmigDatasetVariableRef where
  arbitrary = sized genSdtmigDatasetVariableRef

genSdtmigDatasetVariableRef :: Int -> Gen SdtmigDatasetVariableRef
genSdtmigDatasetVariableRef n =
  SdtmigDatasetVariableRef
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefType :: Maybe Text
  
instance Arbitrary SdtmigDatasetVariableRefElement where
  arbitrary = sized genSdtmigDatasetVariableRefElement

genSdtmigDatasetVariableRefElement :: Int -> Gen SdtmigDatasetVariableRefElement
genSdtmigDatasetVariableRefElement n =
  SdtmigDatasetVariableRefElement
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefElementType :: Maybe Text
  
instance Arbitrary SdtmigDatasetVariableRefTarget where
  arbitrary = sized genSdtmigDatasetVariableRefTarget

genSdtmigDatasetVariableRefTarget :: Int -> Gen SdtmigDatasetVariableRefTarget
genSdtmigDatasetVariableRefTarget n =
  SdtmigDatasetVariableRefTarget
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefTargetHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefTargetTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefTargetType :: Maybe Text
  
instance Arbitrary SdtmigDatasetVariableRefVersion where
  arbitrary = sized genSdtmigDatasetVariableRefVersion

genSdtmigDatasetVariableRefVersion :: Int -> Gen SdtmigDatasetVariableRefVersion
genSdtmigDatasetVariableRefVersion n =
  SdtmigDatasetVariableRefVersion
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariableRefVersionType :: Maybe Text
  
instance Arbitrary SdtmigDatasetVariables where
  arbitrary = sized genSdtmigDatasetVariables

genSdtmigDatasetVariables :: Int -> Gen SdtmigDatasetVariables
genSdtmigDatasetVariables n =
  SdtmigDatasetVariables
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariablesOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesDatasetStructure :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLinks :: Maybe SdtmigDatasetVariablesLinks
  
instance Arbitrary SdtmigDatasetVariablesLinks where
  arbitrary = sized genSdtmigDatasetVariablesLinks

genSdtmigDatasetVariablesLinks :: Int -> Gen SdtmigDatasetVariablesLinks
genSdtmigDatasetVariablesLinks n =
  SdtmigDatasetVariablesLinks
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLinksSelf :: Maybe SdtmigDatasetVariablesRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLinksModelDataset :: Maybe SdtmDatasetRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLinksParentProduct :: Maybe SdtmigProductRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLinksParentClass :: Maybe SdtmigClassRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLinksPriorVersion :: Maybe SdtmigDatasetVariablesRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesLinksDatasetVariables :: Maybe [SdtmigDatasetVariableRefElement]
  
instance Arbitrary SdtmigDatasetVariablesRef where
  arbitrary = sized genSdtmigDatasetVariablesRef

genSdtmigDatasetVariablesRef :: Int -> Gen SdtmigDatasetVariablesRef
genSdtmigDatasetVariablesRef n =
  SdtmigDatasetVariablesRef
    <$> arbitraryReducedMaybe n -- sdtmigDatasetVariablesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetVariablesRefType :: Maybe Text
  
instance Arbitrary SdtmigDatasets where
  arbitrary = sized genSdtmigDatasets

genSdtmigDatasets :: Int -> Gen SdtmigDatasets
genSdtmigDatasets n =
  SdtmigDatasets
    <$> arbitraryReducedMaybe n -- sdtmigDatasetsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsLinks :: Maybe SdtmigDatasetsLinks
  
instance Arbitrary SdtmigDatasetsLinks where
  arbitrary = sized genSdtmigDatasetsLinks

genSdtmigDatasetsLinks :: Int -> Gen SdtmigDatasetsLinks
genSdtmigDatasetsLinks n =
  SdtmigDatasetsLinks
    <$> arbitraryReducedMaybe n -- sdtmigDatasetsLinksSelf :: Maybe SdtmigDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsLinksParentProduct :: Maybe SdtmigProductRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsLinksPriorVersion :: Maybe SdtmigDatasetsRef
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsLinksDatasets :: Maybe [SdtmigDatasetRefElement]
  
instance Arbitrary SdtmigDatasetsRef where
  arbitrary = sized genSdtmigDatasetsRef

genSdtmigDatasetsRef :: Int -> Gen SdtmigDatasetsRef
genSdtmigDatasetsRef n =
  SdtmigDatasetsRef
    <$> arbitraryReducedMaybe n -- sdtmigDatasetsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigDatasetsRefType :: Maybe Text
  
instance Arbitrary SdtmigProduct where
  arbitrary = sized genSdtmigProduct

genSdtmigProduct :: Int -> Gen SdtmigProduct
genSdtmigProduct n =
  SdtmigProduct
    <$> arbitraryReducedMaybe n -- sdtmigProductName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductLinks :: Maybe SdtmigProductLinks
    <*> arbitraryReducedMaybe n -- sdtmigProductClasses :: Maybe [SdtmigClass]
  
instance Arbitrary SdtmigProductLinks where
  arbitrary = sized genSdtmigProductLinks

genSdtmigProductLinks :: Int -> Gen SdtmigProductLinks
genSdtmigProductLinks n =
  SdtmigProductLinks
    <$> arbitraryReducedMaybe n -- sdtmigProductLinksSelf :: Maybe SdtmigProductRef
    <*> arbitraryReducedMaybe n -- sdtmigProductLinksModel :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sdtmigProductLinksPriorVersion :: Maybe SdtmigProductRef
  
instance Arbitrary SdtmigProductRef where
  arbitrary = sized genSdtmigProductRef

genSdtmigProductRef :: Int -> Gen SdtmigProductRef
genSdtmigProductRef n =
  SdtmigProductRef
    <$> arbitraryReducedMaybe n -- sdtmigProductRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductRefType :: Maybe Text
  
instance Arbitrary SdtmigProductRefElement where
  arbitrary = sized genSdtmigProductRefElement

genSdtmigProductRefElement :: Int -> Gen SdtmigProductRefElement
genSdtmigProductRefElement n =
  SdtmigProductRefElement
    <$> arbitraryReducedMaybe n -- sdtmigProductRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sdtmigProductRefElementType :: Maybe Text
  
instance Arbitrary SendigClass where
  arbitrary = sized genSendigClass

genSendigClass :: Int -> Gen SendigClass
genSendigClass n =
  SendigClass
    <$> arbitraryReducedMaybe n -- sendigClassOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassLinks :: Maybe SendigClassLinks
    <*> arbitraryReducedMaybe n -- sendigClassDatasets :: Maybe [SendigDataset]
  
instance Arbitrary SendigClassDatasets where
  arbitrary = sized genSendigClassDatasets

genSendigClassDatasets :: Int -> Gen SendigClassDatasets
genSendigClassDatasets n =
  SendigClassDatasets
    <$> arbitraryReducedMaybe n -- sendigClassDatasetsOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsLinks :: Maybe SendigClassDatasetsLinks
  
instance Arbitrary SendigClassDatasetsLinks where
  arbitrary = sized genSendigClassDatasetsLinks

genSendigClassDatasetsLinks :: Int -> Gen SendigClassDatasetsLinks
genSendigClassDatasetsLinks n =
  SendigClassDatasetsLinks
    <$> arbitraryReducedMaybe n -- sendigClassDatasetsLinksSelf :: Maybe SendigClassDatasetsRef
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsLinksParentProduct :: Maybe SendigProductRef
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsLinksDatasets :: Maybe [SendigDatasetRefElement]
  
instance Arbitrary SendigClassDatasetsRef where
  arbitrary = sized genSendigClassDatasetsRef

genSendigClassDatasetsRef :: Int -> Gen SendigClassDatasetsRef
genSendigClassDatasetsRef n =
  SendigClassDatasetsRef
    <$> arbitraryReducedMaybe n -- sendigClassDatasetsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassDatasetsRefType :: Maybe Text
  
instance Arbitrary SendigClassLinks where
  arbitrary = sized genSendigClassLinks

genSendigClassLinks :: Int -> Gen SendigClassLinks
genSendigClassLinks n =
  SendigClassLinks
    <$> arbitraryReducedMaybe n -- sendigClassLinksSelf :: Maybe SendigClassRef
    <*> arbitraryReducedMaybe n -- sendigClassLinksModelClass :: Maybe SdtmClassRef
    <*> arbitraryReducedMaybe n -- sendigClassLinksParentProduct :: Maybe SendigProductRef
    <*> arbitraryReducedMaybe n -- sendigClassLinksParentClass :: Maybe SendigClassRef
    <*> arbitraryReducedMaybe n -- sendigClassLinksSubclasses :: Maybe [SendigClassRefSubclass]
    <*> arbitraryReducedMaybe n -- sendigClassLinksPriorVersion :: Maybe SendigClassRef
  
instance Arbitrary SendigClassRef where
  arbitrary = sized genSendigClassRef

genSendigClassRef :: Int -> Gen SendigClassRef
genSendigClassRef n =
  SendigClassRef
    <$> arbitraryReducedMaybe n -- sendigClassRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassRefType :: Maybe Text
  
instance Arbitrary SendigClassRefElement where
  arbitrary = sized genSendigClassRefElement

genSendigClassRefElement :: Int -> Gen SendigClassRefElement
genSendigClassRefElement n =
  SendigClassRefElement
    <$> arbitraryReducedMaybe n -- sendigClassRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassRefElementType :: Maybe Text
  
instance Arbitrary SendigClassRefSubclass where
  arbitrary = sized genSendigClassRefSubclass

genSendigClassRefSubclass :: Int -> Gen SendigClassRefSubclass
genSendigClassRefSubclass n =
  SendigClassRefSubclass
    <$> arbitraryReducedMaybe n -- sendigClassRefSubclassHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassRefSubclassTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassRefSubclassType :: Maybe Text
  
instance Arbitrary SendigClasses where
  arbitrary = sized genSendigClasses

genSendigClasses :: Int -> Gen SendigClasses
genSendigClasses n =
  SendigClasses
    <$> arbitraryReducedMaybe n -- sendigClassesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesLinks :: Maybe SendigClassesLinks
  
instance Arbitrary SendigClassesLinks where
  arbitrary = sized genSendigClassesLinks

genSendigClassesLinks :: Int -> Gen SendigClassesLinks
genSendigClassesLinks n =
  SendigClassesLinks
    <$> arbitraryReducedMaybe n -- sendigClassesLinksSelf :: Maybe SendigClassesRef
    <*> arbitraryReducedMaybe n -- sendigClassesLinksPriorVersion :: Maybe SendigClassesRef
    <*> arbitraryReducedMaybe n -- sendigClassesLinksClasses :: Maybe [SendigClassRefElement]
  
instance Arbitrary SendigClassesRef where
  arbitrary = sized genSendigClassesRef

genSendigClassesRef :: Int -> Gen SendigClassesRef
genSendigClassesRef n =
  SendigClassesRef
    <$> arbitraryReducedMaybe n -- sendigClassesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigClassesRefType :: Maybe Text
  
instance Arbitrary SendigDataset where
  arbitrary = sized genSendigDataset

genSendigDataset :: Int -> Gen SendigDataset
genSendigDataset n =
  SendigDataset
    <$> arbitraryReducedMaybe n -- sendigDatasetOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetDatasetStructure :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetLinks :: Maybe SendigDatasetLinks
    <*> arbitraryReducedMaybe n -- sendigDatasetDatasetVariables :: Maybe [SendigDatasetVariable]
  
instance Arbitrary SendigDatasetLinks where
  arbitrary = sized genSendigDatasetLinks

genSendigDatasetLinks :: Int -> Gen SendigDatasetLinks
genSendigDatasetLinks n =
  SendigDatasetLinks
    <$> arbitraryReducedMaybe n -- sendigDatasetLinksSelf :: Maybe SendigDatasetRef
    <*> arbitraryReducedMaybe n -- sendigDatasetLinksModelDataset :: Maybe SdtmDatasetRef
    <*> arbitraryReducedMaybe n -- sendigDatasetLinksParentProduct :: Maybe SendigProductRef
    <*> arbitraryReducedMaybe n -- sendigDatasetLinksParentClass :: Maybe SendigClassRef
    <*> arbitraryReducedMaybe n -- sendigDatasetLinksPriorVersion :: Maybe SendigDatasetRef
  
instance Arbitrary SendigDatasetRef where
  arbitrary = sized genSendigDatasetRef

genSendigDatasetRef :: Int -> Gen SendigDatasetRef
genSendigDatasetRef n =
  SendigDatasetRef
    <$> arbitraryReducedMaybe n -- sendigDatasetRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetRefType :: Maybe Text
  
instance Arbitrary SendigDatasetRefElement where
  arbitrary = sized genSendigDatasetRefElement

genSendigDatasetRefElement :: Int -> Gen SendigDatasetRefElement
genSendigDatasetRefElement n =
  SendigDatasetRefElement
    <$> arbitraryReducedMaybe n -- sendigDatasetRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetRefElementType :: Maybe Text
  
instance Arbitrary SendigDatasetVariable where
  arbitrary = sized genSendigDatasetVariable

genSendigDatasetVariable :: Int -> Gen SendigDatasetVariable
genSendigDatasetVariable n =
  SendigDatasetVariable
    <$> arbitraryReducedMaybe n -- sendigDatasetVariableOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableSimpleDatatype :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableCore :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableDescribedValueDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableValueList :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinks :: Maybe SendigDatasetVariableLinks
  
instance Arbitrary SendigDatasetVariableLinks where
  arbitrary = sized genSendigDatasetVariableLinks

genSendigDatasetVariableLinks :: Int -> Gen SendigDatasetVariableLinks
genSendigDatasetVariableLinks n =
  SendigDatasetVariableLinks
    <$> arbitraryReducedMaybe n -- sendigDatasetVariableLinksSelf :: Maybe SendigDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinksCodelist :: Maybe [RootCtCodelistRefElement]
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinksModelClassVariable :: Maybe SdtmClassVariableRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinksModelDatasetVariable :: Maybe SdtmDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinksParentProduct :: Maybe SendigProductRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinksParentDataset :: Maybe SendigDatasetRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinksRootItem :: Maybe RootSendigDatasetVariableRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableLinksPriorVersion :: Maybe SendigDatasetVariableRef
  
instance Arbitrary SendigDatasetVariableRef where
  arbitrary = sized genSendigDatasetVariableRef

genSendigDatasetVariableRef :: Int -> Gen SendigDatasetVariableRef
genSendigDatasetVariableRef n =
  SendigDatasetVariableRef
    <$> arbitraryReducedMaybe n -- sendigDatasetVariableRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableRefType :: Maybe Text
  
instance Arbitrary SendigDatasetVariableRefElement where
  arbitrary = sized genSendigDatasetVariableRefElement

genSendigDatasetVariableRefElement :: Int -> Gen SendigDatasetVariableRefElement
genSendigDatasetVariableRefElement n =
  SendigDatasetVariableRefElement
    <$> arbitraryReducedMaybe n -- sendigDatasetVariableRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableRefElementType :: Maybe Text
  
instance Arbitrary SendigDatasetVariableRefVersion where
  arbitrary = sized genSendigDatasetVariableRefVersion

genSendigDatasetVariableRefVersion :: Int -> Gen SendigDatasetVariableRefVersion
genSendigDatasetVariableRefVersion n =
  SendigDatasetVariableRefVersion
    <$> arbitraryReducedMaybe n -- sendigDatasetVariableRefVersionHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableRefVersionTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariableRefVersionType :: Maybe Text
  
instance Arbitrary SendigDatasetVariables where
  arbitrary = sized genSendigDatasetVariables

genSendigDatasetVariables :: Int -> Gen SendigDatasetVariables
genSendigDatasetVariables n =
  SendigDatasetVariables
    <$> arbitraryReducedMaybe n -- sendigDatasetVariablesOrdinal :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesDatasetStructure :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesLinks :: Maybe SendigDatasetVariablesLinks
  
instance Arbitrary SendigDatasetVariablesLinks where
  arbitrary = sized genSendigDatasetVariablesLinks

genSendigDatasetVariablesLinks :: Int -> Gen SendigDatasetVariablesLinks
genSendigDatasetVariablesLinks n =
  SendigDatasetVariablesLinks
    <$> arbitraryReducedMaybe n -- sendigDatasetVariablesLinksSelf :: Maybe SendigDatasetVariablesRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesLinksModelDataset :: Maybe SdtmDatasetRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesLinksParentProduct :: Maybe SendigProductRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesLinksParentClass :: Maybe SendigClassRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesLinksPriorVersion :: Maybe SendigDatasetVariablesRef
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesLinksDatasetVariables :: Maybe [SendigDatasetVariableRefElement]
  
instance Arbitrary SendigDatasetVariablesRef where
  arbitrary = sized genSendigDatasetVariablesRef

genSendigDatasetVariablesRef :: Int -> Gen SendigDatasetVariablesRef
genSendigDatasetVariablesRef n =
  SendigDatasetVariablesRef
    <$> arbitraryReducedMaybe n -- sendigDatasetVariablesRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetVariablesRefType :: Maybe Text
  
instance Arbitrary SendigDatasets where
  arbitrary = sized genSendigDatasets

genSendigDatasets :: Int -> Gen SendigDatasets
genSendigDatasets n =
  SendigDatasets
    <$> arbitraryReducedMaybe n -- sendigDatasetsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsLinks :: Maybe SendigDatasetsLinks
  
instance Arbitrary SendigDatasetsLinks where
  arbitrary = sized genSendigDatasetsLinks

genSendigDatasetsLinks :: Int -> Gen SendigDatasetsLinks
genSendigDatasetsLinks n =
  SendigDatasetsLinks
    <$> arbitraryReducedMaybe n -- sendigDatasetsLinksSelf :: Maybe SendigDatasetsRef
    <*> arbitraryReducedMaybe n -- sendigDatasetsLinksParentProduct :: Maybe SendigProductRef
    <*> arbitraryReducedMaybe n -- sendigDatasetsLinksDatasets :: Maybe [SendigDatasetRefElement]
  
instance Arbitrary SendigDatasetsRef where
  arbitrary = sized genSendigDatasetsRef

genSendigDatasetsRef :: Int -> Gen SendigDatasetsRef
genSendigDatasetsRef n =
  SendigDatasetsRef
    <$> arbitraryReducedMaybe n -- sendigDatasetsRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigDatasetsRefType :: Maybe Text
  
instance Arbitrary SendigProduct where
  arbitrary = sized genSendigProduct

genSendigProduct :: Int -> Gen SendigProduct
genSendigProduct n =
  SendigProduct
    <$> arbitraryReducedMaybe n -- sendigProductName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductEffectiveDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductRegistrationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductLinks :: Maybe SendigProductLinks
    <*> arbitraryReducedMaybe n -- sendigProductClasses :: Maybe [SendigClass]
  
instance Arbitrary SendigProductLinks where
  arbitrary = sized genSendigProductLinks

genSendigProductLinks :: Int -> Gen SendigProductLinks
genSendigProductLinks n =
  SendigProductLinks
    <$> arbitraryReducedMaybe n -- sendigProductLinksSelf :: Maybe SendigProductRef
    <*> arbitraryReducedMaybe n -- sendigProductLinksModel :: Maybe SdtmProductRef
    <*> arbitraryReducedMaybe n -- sendigProductLinksPriorVersion :: Maybe SendigProductRef
  
instance Arbitrary SendigProductRef where
  arbitrary = sized genSendigProductRef

genSendigProductRef :: Int -> Gen SendigProductRef
genSendigProductRef n =
  SendigProductRef
    <$> arbitraryReducedMaybe n -- sendigProductRefHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductRefTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductRefType :: Maybe Text
  
instance Arbitrary SendigProductRefElement where
  arbitrary = sized genSendigProductRefElement

genSendigProductRefElement :: Int -> Gen SendigProductRefElement
genSendigProductRefElement n =
  SendigProductRefElement
    <$> arbitraryReducedMaybe n -- sendigProductRefElementHref :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductRefElementTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- sendigProductRefElementType :: Maybe Text
  
instance Arbitrary XmlAbout where
  arbitrary = sized genXmlAbout

genXmlAbout :: Int -> Gen XmlAbout
genXmlAbout n =
  XmlAbout
    <$> arbitraryReducedMaybe n -- xmlAboutSelf :: Maybe About
  
instance Arbitrary XmlAdamDatastructure where
  arbitrary = sized genXmlAdamDatastructure

genXmlAdamDatastructure :: Int -> Gen XmlAdamDatastructure
genXmlAdamDatastructure n =
  XmlAdamDatastructure
    <$> arbitraryReducedMaybe n -- xmlAdamDatastructureSelf :: Maybe AdamDatastructure
  
instance Arbitrary XmlAdamDatastructureVariables where
  arbitrary = sized genXmlAdamDatastructureVariables

genXmlAdamDatastructureVariables :: Int -> Gen XmlAdamDatastructureVariables
genXmlAdamDatastructureVariables n =
  XmlAdamDatastructureVariables
    <$> arbitraryReducedMaybe n -- xmlAdamDatastructureVariablesSelf :: Maybe AdamDatastructureVariables
  
instance Arbitrary XmlAdamDatastructureVarsets where
  arbitrary = sized genXmlAdamDatastructureVarsets

genXmlAdamDatastructureVarsets :: Int -> Gen XmlAdamDatastructureVarsets
genXmlAdamDatastructureVarsets n =
  XmlAdamDatastructureVarsets
    <$> arbitraryReducedMaybe n -- xmlAdamDatastructureVarsetsSelf :: Maybe AdamDatastructureVarsets
  
instance Arbitrary XmlAdamProduct where
  arbitrary = sized genXmlAdamProduct

genXmlAdamProduct :: Int -> Gen XmlAdamProduct
genXmlAdamProduct n =
  XmlAdamProduct
    <$> arbitraryReducedMaybe n -- xmlAdamProductSelf :: Maybe AdamProduct
  
instance Arbitrary XmlAdamProductDatastructures where
  arbitrary = sized genXmlAdamProductDatastructures

genXmlAdamProductDatastructures :: Int -> Gen XmlAdamProductDatastructures
genXmlAdamProductDatastructures n =
  XmlAdamProductDatastructures
    <$> arbitraryReducedMaybe n -- xmlAdamProductDatastructuresSelf :: Maybe AdamProductDatastructures
  
instance Arbitrary XmlAdamVariable where
  arbitrary = sized genXmlAdamVariable

genXmlAdamVariable :: Int -> Gen XmlAdamVariable
genXmlAdamVariable n =
  XmlAdamVariable
    <$> arbitraryReducedMaybe n -- xmlAdamVariableSelf :: Maybe AdamVariable
  
instance Arbitrary XmlAdamVarset where
  arbitrary = sized genXmlAdamVarset

genXmlAdamVarset :: Int -> Gen XmlAdamVarset
genXmlAdamVarset n =
  XmlAdamVarset
    <$> arbitraryReducedMaybe n -- xmlAdamVarsetSelf :: Maybe AdamVarset
  
instance Arbitrary XmlCdashClass where
  arbitrary = sized genXmlCdashClass

genXmlCdashClass :: Int -> Gen XmlCdashClass
genXmlCdashClass n =
  XmlCdashClass
    <$> arbitraryReducedMaybe n -- xmlCdashClassSelf :: Maybe CdashClass
  
instance Arbitrary XmlCdashClassDomains where
  arbitrary = sized genXmlCdashClassDomains

genXmlCdashClassDomains :: Int -> Gen XmlCdashClassDomains
genXmlCdashClassDomains n =
  XmlCdashClassDomains
    <$> arbitraryReducedMaybe n -- xmlCdashClassDomainsSelf :: Maybe CdashClassDomains
  
instance Arbitrary XmlCdashClassField where
  arbitrary = sized genXmlCdashClassField

genXmlCdashClassField :: Int -> Gen XmlCdashClassField
genXmlCdashClassField n =
  XmlCdashClassField
    <$> arbitraryReducedMaybe n -- xmlCdashClassFieldSelf :: Maybe CdashClassField
  
instance Arbitrary XmlCdashDomain where
  arbitrary = sized genXmlCdashDomain

genXmlCdashDomain :: Int -> Gen XmlCdashDomain
genXmlCdashDomain n =
  XmlCdashDomain
    <$> arbitraryReducedMaybe n -- xmlCdashDomainSelf :: Maybe CdashDomain
  
instance Arbitrary XmlCdashDomainField where
  arbitrary = sized genXmlCdashDomainField

genXmlCdashDomainField :: Int -> Gen XmlCdashDomainField
genXmlCdashDomainField n =
  XmlCdashDomainField
    <$> arbitraryReducedMaybe n -- xmlCdashDomainFieldSelf :: Maybe CdashDomainField
  
instance Arbitrary XmlCdashDomainFields where
  arbitrary = sized genXmlCdashDomainFields

genXmlCdashDomainFields :: Int -> Gen XmlCdashDomainFields
genXmlCdashDomainFields n =
  XmlCdashDomainFields
    <$> arbitraryReducedMaybe n -- xmlCdashDomainFieldsSelf :: Maybe CdashDomainFields
  
instance Arbitrary XmlCdashProduct where
  arbitrary = sized genXmlCdashProduct

genXmlCdashProduct :: Int -> Gen XmlCdashProduct
genXmlCdashProduct n =
  XmlCdashProduct
    <$> arbitraryReducedMaybe n -- xmlCdashProductSelf :: Maybe CdashProduct
  
instance Arbitrary XmlCdashProductClasses where
  arbitrary = sized genXmlCdashProductClasses

genXmlCdashProductClasses :: Int -> Gen XmlCdashProductClasses
genXmlCdashProductClasses n =
  XmlCdashProductClasses
    <$> arbitraryReducedMaybe n -- xmlCdashProductClassesSelf :: Maybe CdashProductClasses
  
instance Arbitrary XmlCdashProductDomains where
  arbitrary = sized genXmlCdashProductDomains

genXmlCdashProductDomains :: Int -> Gen XmlCdashProductDomains
genXmlCdashProductDomains n =
  XmlCdashProductDomains
    <$> arbitraryReducedMaybe n -- xmlCdashProductDomainsSelf :: Maybe CdashProductDomains
  
instance Arbitrary XmlCdashigClass where
  arbitrary = sized genXmlCdashigClass

genXmlCdashigClass :: Int -> Gen XmlCdashigClass
genXmlCdashigClass n =
  XmlCdashigClass
    <$> arbitraryReducedMaybe n -- xmlCdashigClassSelf :: Maybe CdashigClass
  
instance Arbitrary XmlCdashigClassDomains where
  arbitrary = sized genXmlCdashigClassDomains

genXmlCdashigClassDomains :: Int -> Gen XmlCdashigClassDomains
genXmlCdashigClassDomains n =
  XmlCdashigClassDomains
    <$> arbitraryReducedMaybe n -- xmlCdashigClassDomainsSelf :: Maybe CdashigClassDomains
  
instance Arbitrary XmlCdashigClassScenarios where
  arbitrary = sized genXmlCdashigClassScenarios

genXmlCdashigClassScenarios :: Int -> Gen XmlCdashigClassScenarios
genXmlCdashigClassScenarios n =
  XmlCdashigClassScenarios
    <$> arbitraryReducedMaybe n -- xmlCdashigClassScenariosSelf :: Maybe CdashigClassScenarios
  
instance Arbitrary XmlCdashigDomain where
  arbitrary = sized genXmlCdashigDomain

genXmlCdashigDomain :: Int -> Gen XmlCdashigDomain
genXmlCdashigDomain n =
  XmlCdashigDomain
    <$> arbitraryReducedMaybe n -- xmlCdashigDomainSelf :: Maybe CdashigDomain
  
instance Arbitrary XmlCdashigDomainField where
  arbitrary = sized genXmlCdashigDomainField

genXmlCdashigDomainField :: Int -> Gen XmlCdashigDomainField
genXmlCdashigDomainField n =
  XmlCdashigDomainField
    <$> arbitraryReducedMaybe n -- xmlCdashigDomainFieldSelf :: Maybe CdashigDomainField
  
instance Arbitrary XmlCdashigDomainFields where
  arbitrary = sized genXmlCdashigDomainFields

genXmlCdashigDomainFields :: Int -> Gen XmlCdashigDomainFields
genXmlCdashigDomainFields n =
  XmlCdashigDomainFields
    <$> arbitraryReducedMaybe n -- xmlCdashigDomainFieldsSelf :: Maybe CdashigDomainFields
  
instance Arbitrary XmlCdashigProduct where
  arbitrary = sized genXmlCdashigProduct

genXmlCdashigProduct :: Int -> Gen XmlCdashigProduct
genXmlCdashigProduct n =
  XmlCdashigProduct
    <$> arbitraryReducedMaybe n -- xmlCdashigProductSelf :: Maybe CdashigProduct
  
instance Arbitrary XmlCdashigProductClasses where
  arbitrary = sized genXmlCdashigProductClasses

genXmlCdashigProductClasses :: Int -> Gen XmlCdashigProductClasses
genXmlCdashigProductClasses n =
  XmlCdashigProductClasses
    <$> arbitraryReducedMaybe n -- xmlCdashigProductClassesSelf :: Maybe CdashigProductClasses
  
instance Arbitrary XmlCdashigProductDomains where
  arbitrary = sized genXmlCdashigProductDomains

genXmlCdashigProductDomains :: Int -> Gen XmlCdashigProductDomains
genXmlCdashigProductDomains n =
  XmlCdashigProductDomains
    <$> arbitraryReducedMaybe n -- xmlCdashigProductDomainsSelf :: Maybe CdashigProductDomains
  
instance Arbitrary XmlCdashigProductScenarios where
  arbitrary = sized genXmlCdashigProductScenarios

genXmlCdashigProductScenarios :: Int -> Gen XmlCdashigProductScenarios
genXmlCdashigProductScenarios n =
  XmlCdashigProductScenarios
    <$> arbitraryReducedMaybe n -- xmlCdashigProductScenariosSelf :: Maybe CdashigProductScenarios
  
instance Arbitrary XmlCdashigScenario where
  arbitrary = sized genXmlCdashigScenario

genXmlCdashigScenario :: Int -> Gen XmlCdashigScenario
genXmlCdashigScenario n =
  XmlCdashigScenario
    <$> arbitraryReducedMaybe n -- xmlCdashigScenarioSelf :: Maybe CdashigScenario
  
instance Arbitrary XmlCdashigScenarioField where
  arbitrary = sized genXmlCdashigScenarioField

genXmlCdashigScenarioField :: Int -> Gen XmlCdashigScenarioField
genXmlCdashigScenarioField n =
  XmlCdashigScenarioField
    <$> arbitraryReducedMaybe n -- xmlCdashigScenarioFieldSelf :: Maybe CdashigScenarioField
  
instance Arbitrary XmlCdashigScenarioFields where
  arbitrary = sized genXmlCdashigScenarioFields

genXmlCdashigScenarioFields :: Int -> Gen XmlCdashigScenarioFields
genXmlCdashigScenarioFields n =
  XmlCdashigScenarioFields
    <$> arbitraryReducedMaybe n -- xmlCdashigScenarioFieldsSelf :: Maybe CdashigScenarioFields
  
instance Arbitrary XmlCtCodelist where
  arbitrary = sized genXmlCtCodelist

genXmlCtCodelist :: Int -> Gen XmlCtCodelist
genXmlCtCodelist n =
  XmlCtCodelist
    <$> arbitraryReducedMaybe n -- xmlCtCodelistSelf :: Maybe CtCodelist
  
instance Arbitrary XmlCtCodelistTerms where
  arbitrary = sized genXmlCtCodelistTerms

genXmlCtCodelistTerms :: Int -> Gen XmlCtCodelistTerms
genXmlCtCodelistTerms n =
  XmlCtCodelistTerms
    <$> arbitraryReducedMaybe n -- xmlCtCodelistTermsSelf :: Maybe CtCodelistTerms
  
instance Arbitrary XmlCtPackage where
  arbitrary = sized genXmlCtPackage

genXmlCtPackage :: Int -> Gen XmlCtPackage
genXmlCtPackage n =
  XmlCtPackage
    <$> arbitraryReducedMaybe n -- xmlCtPackageSelf :: Maybe CtPackage
  
instance Arbitrary XmlCtPackageCodelists where
  arbitrary = sized genXmlCtPackageCodelists

genXmlCtPackageCodelists :: Int -> Gen XmlCtPackageCodelists
genXmlCtPackageCodelists n =
  XmlCtPackageCodelists
    <$> arbitraryReducedMaybe n -- xmlCtPackageCodelistsSelf :: Maybe CtPackageCodelists
  
instance Arbitrary XmlCtPackages where
  arbitrary = sized genXmlCtPackages

genXmlCtPackages :: Int -> Gen XmlCtPackages
genXmlCtPackages n =
  XmlCtPackages
    <$> arbitraryReducedMaybe n -- xmlCtPackagesSelf :: Maybe CtPackages
  
instance Arbitrary XmlCtTerm where
  arbitrary = sized genXmlCtTerm

genXmlCtTerm :: Int -> Gen XmlCtTerm
genXmlCtTerm n =
  XmlCtTerm
    <$> arbitraryReducedMaybe n -- xmlCtTermSelf :: Maybe CtTerm
  
instance Arbitrary XmlLastupdated where
  arbitrary = sized genXmlLastupdated

genXmlLastupdated :: Int -> Gen XmlLastupdated
genXmlLastupdated n =
  XmlLastupdated
    <$> arbitraryReducedMaybe n -- xmlLastupdatedSelf :: Maybe Lastupdated
  
instance Arbitrary XmlProductgroupDataAnalysis where
  arbitrary = sized genXmlProductgroupDataAnalysis

genXmlProductgroupDataAnalysis :: Int -> Gen XmlProductgroupDataAnalysis
genXmlProductgroupDataAnalysis n =
  XmlProductgroupDataAnalysis
    <$> arbitraryReducedMaybe n -- xmlProductgroupDataAnalysisSelf :: Maybe ProductgroupDataAnalysis
  
instance Arbitrary XmlProductgroupDataCollection where
  arbitrary = sized genXmlProductgroupDataCollection

genXmlProductgroupDataCollection :: Int -> Gen XmlProductgroupDataCollection
genXmlProductgroupDataCollection n =
  XmlProductgroupDataCollection
    <$> arbitraryReducedMaybe n -- xmlProductgroupDataCollectionSelf :: Maybe ProductgroupDataCollection
  
instance Arbitrary XmlProductgroupDataTabulation where
  arbitrary = sized genXmlProductgroupDataTabulation

genXmlProductgroupDataTabulation :: Int -> Gen XmlProductgroupDataTabulation
genXmlProductgroupDataTabulation n =
  XmlProductgroupDataTabulation
    <$> arbitraryReducedMaybe n -- xmlProductgroupDataTabulationSelf :: Maybe ProductgroupDataTabulation
  
instance Arbitrary XmlProductgroupTerminology where
  arbitrary = sized genXmlProductgroupTerminology

genXmlProductgroupTerminology :: Int -> Gen XmlProductgroupTerminology
genXmlProductgroupTerminology n =
  XmlProductgroupTerminology
    <$> arbitraryReducedMaybe n -- xmlProductgroupTerminologySelf :: Maybe ProductgroupTerminology
  
instance Arbitrary XmlProducts where
  arbitrary = sized genXmlProducts

genXmlProducts :: Int -> Gen XmlProducts
genXmlProducts n =
  XmlProducts
    <$> arbitraryReducedMaybe n -- xmlProductsSelf :: Maybe Products
  
instance Arbitrary XmlQrsItem where
  arbitrary = sized genXmlQrsItem

genXmlQrsItem :: Int -> Gen XmlQrsItem
genXmlQrsItem n =
  XmlQrsItem
    <$> arbitraryReducedMaybe n -- xmlQrsItemSelf :: Maybe QrsItem
  
instance Arbitrary XmlQrsItems where
  arbitrary = sized genXmlQrsItems

genXmlQrsItems :: Int -> Gen XmlQrsItems
genXmlQrsItems n =
  XmlQrsItems
    <$> arbitraryReducedMaybe n -- xmlQrsItemsSelf :: Maybe QrsItems
  
instance Arbitrary XmlQrsProduct where
  arbitrary = sized genXmlQrsProduct

genXmlQrsProduct :: Int -> Gen XmlQrsProduct
genXmlQrsProduct n =
  XmlQrsProduct
    <$> arbitraryReducedMaybe n -- xmlQrsProductSelf :: Maybe QrsProduct
  
instance Arbitrary XmlQrsResponsegroup where
  arbitrary = sized genXmlQrsResponsegroup

genXmlQrsResponsegroup :: Int -> Gen XmlQrsResponsegroup
genXmlQrsResponsegroup n =
  XmlQrsResponsegroup
    <$> arbitraryReducedMaybe n -- xmlQrsResponsegroupSelf :: Maybe QrsResponsegroup
  
instance Arbitrary XmlQrsResponsegroups where
  arbitrary = sized genXmlQrsResponsegroups

genXmlQrsResponsegroups :: Int -> Gen XmlQrsResponsegroups
genXmlQrsResponsegroups n =
  XmlQrsResponsegroups
    <$> arbitraryReducedMaybe n -- xmlQrsResponsegroupsSelf :: Maybe QrsResponsegroups
  
instance Arbitrary XmlRootCdashClassField where
  arbitrary = sized genXmlRootCdashClassField

genXmlRootCdashClassField :: Int -> Gen XmlRootCdashClassField
genXmlRootCdashClassField n =
  XmlRootCdashClassField
    <$> arbitraryReducedMaybe n -- xmlRootCdashClassFieldSelf :: Maybe RootCdashClassField
  
instance Arbitrary XmlRootCdashDomainField where
  arbitrary = sized genXmlRootCdashDomainField

genXmlRootCdashDomainField :: Int -> Gen XmlRootCdashDomainField
genXmlRootCdashDomainField n =
  XmlRootCdashDomainField
    <$> arbitraryReducedMaybe n -- xmlRootCdashDomainFieldSelf :: Maybe RootCdashDomainField
  
instance Arbitrary XmlRootCdashigDomainField where
  arbitrary = sized genXmlRootCdashigDomainField

genXmlRootCdashigDomainField :: Int -> Gen XmlRootCdashigDomainField
genXmlRootCdashigDomainField n =
  XmlRootCdashigDomainField
    <$> arbitraryReducedMaybe n -- xmlRootCdashigDomainFieldSelf :: Maybe RootCdashigDomainField
  
instance Arbitrary XmlRootCdashigScenarioField where
  arbitrary = sized genXmlRootCdashigScenarioField

genXmlRootCdashigScenarioField :: Int -> Gen XmlRootCdashigScenarioField
genXmlRootCdashigScenarioField n =
  XmlRootCdashigScenarioField
    <$> arbitraryReducedMaybe n -- xmlRootCdashigScenarioFieldSelf :: Maybe RootCdashigScenarioField
  
instance Arbitrary XmlRootCtCodelist where
  arbitrary = sized genXmlRootCtCodelist

genXmlRootCtCodelist :: Int -> Gen XmlRootCtCodelist
genXmlRootCtCodelist n =
  XmlRootCtCodelist
    <$> arbitraryReducedMaybe n -- xmlRootCtCodelistSelf :: Maybe RootCtCodelist
  
instance Arbitrary XmlRootCtTerm where
  arbitrary = sized genXmlRootCtTerm

genXmlRootCtTerm :: Int -> Gen XmlRootCtTerm
genXmlRootCtTerm n =
  XmlRootCtTerm
    <$> arbitraryReducedMaybe n -- xmlRootCtTermSelf :: Maybe RootCtTerm
  
instance Arbitrary XmlRootSdtmClassVariable where
  arbitrary = sized genXmlRootSdtmClassVariable

genXmlRootSdtmClassVariable :: Int -> Gen XmlRootSdtmClassVariable
genXmlRootSdtmClassVariable n =
  XmlRootSdtmClassVariable
    <$> arbitraryReducedMaybe n -- xmlRootSdtmClassVariableSelf :: Maybe RootSdtmClassVariable
  
instance Arbitrary XmlRootSdtmDatasetVariable where
  arbitrary = sized genXmlRootSdtmDatasetVariable

genXmlRootSdtmDatasetVariable :: Int -> Gen XmlRootSdtmDatasetVariable
genXmlRootSdtmDatasetVariable n =
  XmlRootSdtmDatasetVariable
    <$> arbitraryReducedMaybe n -- xmlRootSdtmDatasetVariableSelf :: Maybe RootSdtmDatasetVariable
  
instance Arbitrary XmlRootSdtmigDatasetVariable where
  arbitrary = sized genXmlRootSdtmigDatasetVariable

genXmlRootSdtmigDatasetVariable :: Int -> Gen XmlRootSdtmigDatasetVariable
genXmlRootSdtmigDatasetVariable n =
  XmlRootSdtmigDatasetVariable
    <$> arbitraryReducedMaybe n -- xmlRootSdtmigDatasetVariableSelf :: Maybe RootSdtmigDatasetVariable
  
instance Arbitrary XmlRootSendigDatasetVariable where
  arbitrary = sized genXmlRootSendigDatasetVariable

genXmlRootSendigDatasetVariable :: Int -> Gen XmlRootSendigDatasetVariable
genXmlRootSendigDatasetVariable n =
  XmlRootSendigDatasetVariable
    <$> arbitraryReducedMaybe n -- xmlRootSendigDatasetVariableSelf :: Maybe RootSendigDatasetVariable
  
instance Arbitrary XmlSdtmClass where
  arbitrary = sized genXmlSdtmClass

genXmlSdtmClass :: Int -> Gen XmlSdtmClass
genXmlSdtmClass n =
  XmlSdtmClass
    <$> arbitraryReducedMaybe n -- xmlSdtmClassSelf :: Maybe SdtmClass
  
instance Arbitrary XmlSdtmClassDatasets where
  arbitrary = sized genXmlSdtmClassDatasets

genXmlSdtmClassDatasets :: Int -> Gen XmlSdtmClassDatasets
genXmlSdtmClassDatasets n =
  XmlSdtmClassDatasets
    <$> arbitraryReducedMaybe n -- xmlSdtmClassDatasetsSelf :: Maybe SdtmClassDatasets
  
instance Arbitrary XmlSdtmClassVariable where
  arbitrary = sized genXmlSdtmClassVariable

genXmlSdtmClassVariable :: Int -> Gen XmlSdtmClassVariable
genXmlSdtmClassVariable n =
  XmlSdtmClassVariable
    <$> arbitraryReducedMaybe n -- xmlSdtmClassVariableSelf :: Maybe SdtmClassVariable
  
instance Arbitrary XmlSdtmClassVariables where
  arbitrary = sized genXmlSdtmClassVariables

genXmlSdtmClassVariables :: Int -> Gen XmlSdtmClassVariables
genXmlSdtmClassVariables n =
  XmlSdtmClassVariables
    <$> arbitraryReducedMaybe n -- xmlSdtmClassVariablesSelf :: Maybe SdtmClassVariables
  
instance Arbitrary XmlSdtmClasses where
  arbitrary = sized genXmlSdtmClasses

genXmlSdtmClasses :: Int -> Gen XmlSdtmClasses
genXmlSdtmClasses n =
  XmlSdtmClasses
    <$> arbitraryReducedMaybe n -- xmlSdtmClassesSelf :: Maybe SdtmClasses
  
instance Arbitrary XmlSdtmDataset where
  arbitrary = sized genXmlSdtmDataset

genXmlSdtmDataset :: Int -> Gen XmlSdtmDataset
genXmlSdtmDataset n =
  XmlSdtmDataset
    <$> arbitraryReducedMaybe n -- xmlSdtmDatasetSelf :: Maybe SdtmDataset
  
instance Arbitrary XmlSdtmDatasetVariable where
  arbitrary = sized genXmlSdtmDatasetVariable

genXmlSdtmDatasetVariable :: Int -> Gen XmlSdtmDatasetVariable
genXmlSdtmDatasetVariable n =
  XmlSdtmDatasetVariable
    <$> arbitraryReducedMaybe n -- xmlSdtmDatasetVariableSelf :: Maybe SdtmDatasetVariable
  
instance Arbitrary XmlSdtmDatasetVariables where
  arbitrary = sized genXmlSdtmDatasetVariables

genXmlSdtmDatasetVariables :: Int -> Gen XmlSdtmDatasetVariables
genXmlSdtmDatasetVariables n =
  XmlSdtmDatasetVariables
    <$> arbitraryReducedMaybe n -- xmlSdtmDatasetVariablesSelf :: Maybe SdtmDatasetVariables
  
instance Arbitrary XmlSdtmDatasets where
  arbitrary = sized genXmlSdtmDatasets

genXmlSdtmDatasets :: Int -> Gen XmlSdtmDatasets
genXmlSdtmDatasets n =
  XmlSdtmDatasets
    <$> arbitraryReducedMaybe n -- xmlSdtmDatasetsSelf :: Maybe SdtmDatasets
  
instance Arbitrary XmlSdtmProduct where
  arbitrary = sized genXmlSdtmProduct

genXmlSdtmProduct :: Int -> Gen XmlSdtmProduct
genXmlSdtmProduct n =
  XmlSdtmProduct
    <$> arbitraryReducedMaybe n -- xmlSdtmProductSelf :: Maybe SdtmProduct
  
instance Arbitrary XmlSdtmigClass where
  arbitrary = sized genXmlSdtmigClass

genXmlSdtmigClass :: Int -> Gen XmlSdtmigClass
genXmlSdtmigClass n =
  XmlSdtmigClass
    <$> arbitraryReducedMaybe n -- xmlSdtmigClassSelf :: Maybe SdtmigClass
  
instance Arbitrary XmlSdtmigClassDatasets where
  arbitrary = sized genXmlSdtmigClassDatasets

genXmlSdtmigClassDatasets :: Int -> Gen XmlSdtmigClassDatasets
genXmlSdtmigClassDatasets n =
  XmlSdtmigClassDatasets
    <$> arbitraryReducedMaybe n -- xmlSdtmigClassDatasetsSelf :: Maybe SdtmigClassDatasets
  
instance Arbitrary XmlSdtmigClasses where
  arbitrary = sized genXmlSdtmigClasses

genXmlSdtmigClasses :: Int -> Gen XmlSdtmigClasses
genXmlSdtmigClasses n =
  XmlSdtmigClasses
    <$> arbitraryReducedMaybe n -- xmlSdtmigClassesSelf :: Maybe SdtmigClasses
  
instance Arbitrary XmlSdtmigDataset where
  arbitrary = sized genXmlSdtmigDataset

genXmlSdtmigDataset :: Int -> Gen XmlSdtmigDataset
genXmlSdtmigDataset n =
  XmlSdtmigDataset
    <$> arbitraryReducedMaybe n -- xmlSdtmigDatasetSelf :: Maybe SdtmigDataset
  
instance Arbitrary XmlSdtmigDatasetVariable where
  arbitrary = sized genXmlSdtmigDatasetVariable

genXmlSdtmigDatasetVariable :: Int -> Gen XmlSdtmigDatasetVariable
genXmlSdtmigDatasetVariable n =
  XmlSdtmigDatasetVariable
    <$> arbitraryReducedMaybe n -- xmlSdtmigDatasetVariableSelf :: Maybe SdtmigDatasetVariable
  
instance Arbitrary XmlSdtmigDatasetVariables where
  arbitrary = sized genXmlSdtmigDatasetVariables

genXmlSdtmigDatasetVariables :: Int -> Gen XmlSdtmigDatasetVariables
genXmlSdtmigDatasetVariables n =
  XmlSdtmigDatasetVariables
    <$> arbitraryReducedMaybe n -- xmlSdtmigDatasetVariablesSelf :: Maybe SdtmigDatasetVariables
  
instance Arbitrary XmlSdtmigDatasets where
  arbitrary = sized genXmlSdtmigDatasets

genXmlSdtmigDatasets :: Int -> Gen XmlSdtmigDatasets
genXmlSdtmigDatasets n =
  XmlSdtmigDatasets
    <$> arbitraryReducedMaybe n -- xmlSdtmigDatasetsSelf :: Maybe SdtmigDatasets
  
instance Arbitrary XmlSdtmigProduct where
  arbitrary = sized genXmlSdtmigProduct

genXmlSdtmigProduct :: Int -> Gen XmlSdtmigProduct
genXmlSdtmigProduct n =
  XmlSdtmigProduct
    <$> arbitraryReducedMaybe n -- xmlSdtmigProductSelf :: Maybe SdtmigProduct
  
instance Arbitrary XmlSendigClass where
  arbitrary = sized genXmlSendigClass

genXmlSendigClass :: Int -> Gen XmlSendigClass
genXmlSendigClass n =
  XmlSendigClass
    <$> arbitraryReducedMaybe n -- xmlSendigClassSelf :: Maybe SendigClass
  
instance Arbitrary XmlSendigClassDatasets where
  arbitrary = sized genXmlSendigClassDatasets

genXmlSendigClassDatasets :: Int -> Gen XmlSendigClassDatasets
genXmlSendigClassDatasets n =
  XmlSendigClassDatasets
    <$> arbitraryReducedMaybe n -- xmlSendigClassDatasetsSelf :: Maybe SendigClassDatasets
  
instance Arbitrary XmlSendigClasses where
  arbitrary = sized genXmlSendigClasses

genXmlSendigClasses :: Int -> Gen XmlSendigClasses
genXmlSendigClasses n =
  XmlSendigClasses
    <$> arbitraryReducedMaybe n -- xmlSendigClassesSelf :: Maybe SendigClasses
  
instance Arbitrary XmlSendigDataset where
  arbitrary = sized genXmlSendigDataset

genXmlSendigDataset :: Int -> Gen XmlSendigDataset
genXmlSendigDataset n =
  XmlSendigDataset
    <$> arbitraryReducedMaybe n -- xmlSendigDatasetSelf :: Maybe SendigDataset
  
instance Arbitrary XmlSendigDatasetVariable where
  arbitrary = sized genXmlSendigDatasetVariable

genXmlSendigDatasetVariable :: Int -> Gen XmlSendigDatasetVariable
genXmlSendigDatasetVariable n =
  XmlSendigDatasetVariable
    <$> arbitraryReducedMaybe n -- xmlSendigDatasetVariableSelf :: Maybe SendigDatasetVariable
  
instance Arbitrary XmlSendigDatasetVariables where
  arbitrary = sized genXmlSendigDatasetVariables

genXmlSendigDatasetVariables :: Int -> Gen XmlSendigDatasetVariables
genXmlSendigDatasetVariables n =
  XmlSendigDatasetVariables
    <$> arbitraryReducedMaybe n -- xmlSendigDatasetVariablesSelf :: Maybe SendigDatasetVariables
  
instance Arbitrary XmlSendigDatasets where
  arbitrary = sized genXmlSendigDatasets

genXmlSendigDatasets :: Int -> Gen XmlSendigDatasets
genXmlSendigDatasets n =
  XmlSendigDatasets
    <$> arbitraryReducedMaybe n -- xmlSendigDatasetsSelf :: Maybe SendigDatasets
  
instance Arbitrary XmlSendigProduct where
  arbitrary = sized genXmlSendigProduct

genXmlSendigProduct :: Int -> Gen XmlSendigProduct
genXmlSendigProduct n =
  XmlSendigProduct
    <$> arbitraryReducedMaybe n -- xmlSendigProductSelf :: Maybe SendigProduct
  



instance Arbitrary DefaultSearchScopes where
  arbitrary = arbitraryBoundedEnum

