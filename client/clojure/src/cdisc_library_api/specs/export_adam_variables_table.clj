(ns cdisc-library-api.specs.export-adam-variables-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-adam-variables-row :refer :all]
            )
  (:import (java.io File)))


(def export-adam-variables-table-data
  {
   (ds/opt :variables) (s/coll-of export-adam-variables-row-spec)
   })

(def export-adam-variables-table-spec
  (ds/spec
    {:name ::export-adam-variables-table
     :spec export-adam-variables-table-data}))
