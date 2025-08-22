(ns cdisc-library-api.specs.export-sendig-datasets-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sendig-datasets-row :refer :all]
            )
  (:import (java.io File)))


(def export-sendig-datasets-table-data
  {
   (ds/opt :datasets) (s/coll-of export-sendig-datasets-row-spec)
   })

(def export-sendig-datasets-table-spec
  (ds/spec
    {:name ::export-sendig-datasets-table
     :spec export-sendig-datasets-table-data}))
