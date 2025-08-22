(ns cdisc-library-api.specs.export-sdtm-datasets-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sdtm-datasets-row :refer :all]
            )
  (:import (java.io File)))


(def export-sdtm-datasets-table-data
  {
   (ds/opt :datasets) (s/coll-of export-sdtm-datasets-row-spec)
   })

(def export-sdtm-datasets-table-spec
  (ds/spec
    {:name ::export-sdtm-datasets-table
     :spec export-sdtm-datasets-table-data}))
