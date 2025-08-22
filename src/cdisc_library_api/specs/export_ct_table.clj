(ns cdisc-library-api.specs.export-ct-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-ct-codelist :refer :all]
            )
  (:import (java.io File)))


(def export-ct-table-data
  {
   (ds/opt :ct) (s/coll-of export-ct-codelist-spec)
   })

(def export-ct-table-spec
  (ds/spec
    {:name ::export-ct-table
     :spec export-ct-table-data}))
