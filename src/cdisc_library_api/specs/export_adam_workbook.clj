(ns cdisc-library-api.specs.export-adam-workbook
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-adam-variables-row :refer :all]
            [cdisc-library-api.specs.export-adam-datastructures-row :refer :all]
            )
  (:import (java.io File)))


(def export-adam-workbook-data
  {
   (ds/opt :variables) (s/coll-of export-adam-variables-row-spec)
   (ds/opt :datastructures) (s/coll-of export-adam-datastructures-row-spec)
   })

(def export-adam-workbook-spec
  (ds/spec
    {:name ::export-adam-workbook
     :spec export-adam-workbook-data}))
