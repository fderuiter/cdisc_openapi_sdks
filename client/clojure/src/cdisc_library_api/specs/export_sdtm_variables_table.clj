(ns cdisc-library-api.specs.export-sdtm-variables-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sdtm-class-variables-row :refer :all]
            [cdisc-library-api.specs.export-sdtm-dataset-variables-row :refer :all]
            )
  (:import (java.io File)))


(def export-sdtm-variables-table-data
  {
   (ds/opt :class-variables) (s/coll-of export-sdtm-class-variables-row-spec)
   (ds/opt :dataset-variables) (s/coll-of export-sdtm-dataset-variables-row-spec)
   })

(def export-sdtm-variables-table-spec
  (ds/spec
    {:name ::export-sdtm-variables-table
     :spec export-sdtm-variables-table-data}))
