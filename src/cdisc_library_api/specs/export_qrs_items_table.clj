(ns cdisc-library-api.specs.export-qrs-items-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-qrs-csv-items-row :refer :all]
            )
  (:import (java.io File)))


(def export-qrs-items-table-data
  {
   (ds/opt :items) (s/coll-of export-qrs-csv-items-row-spec)
   })

(def export-qrs-items-table-spec
  (ds/spec
    {:name ::export-qrs-items-table
     :spec export-qrs-items-table-data}))
