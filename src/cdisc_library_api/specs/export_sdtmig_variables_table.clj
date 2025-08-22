(ns cdisc-library-api.specs.export-sdtmig-variables-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sdtmig-variables-row :refer :all]
            )
  (:import (java.io File)))


(def export-sdtmig-variables-table-data
  {
   (ds/opt :variables) (s/coll-of export-sdtmig-variables-row-spec)
   })

(def export-sdtmig-variables-table-spec
  (ds/spec
    {:name ::export-sdtmig-variables-table
     :spec export-sdtmig-variables-table-data}))
