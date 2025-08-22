(ns cdisc-library-api.specs.export-adam-datastructures-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-adam-datastructures-row :refer :all]
            )
  (:import (java.io File)))


(def export-adam-datastructures-table-data
  {
   (ds/opt :datastructures) (s/coll-of export-adam-datastructures-row-spec)
   })

(def export-adam-datastructures-table-spec
  (ds/spec
    {:name ::export-adam-datastructures-table
     :spec export-adam-datastructures-table-data}))
