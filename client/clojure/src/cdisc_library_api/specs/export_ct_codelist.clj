(ns cdisc-library-api.specs.export-ct-codelist
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-ct-term :refer :all]
            )
  (:import (java.io File)))


(def export-ct-codelist-data
  {
   (ds/opt :Code) string?
   (ds/opt :CodelistCode) string?
   (ds/opt :CodelistExtensibleYesNo) string?
   (ds/opt :CodelistName) string?
   (ds/opt :CDISCSubmissionValue) string?
   (ds/opt :CDISCSynonyms) (s/coll-of string?)
   (ds/opt :CDISCDefinition) string?
   (ds/opt :NCIPreferredTerm) string?
   (ds/opt :StandardandDate) string?
   (ds/opt :) (s/coll-of export-ct-term-spec)
   })

(def export-ct-codelist-spec
  (ds/spec
    {:name ::export-ct-codelist
     :spec export-ct-codelist-data}))
