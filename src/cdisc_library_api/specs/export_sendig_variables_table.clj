(ns cdisc-library-api.specs.export-sendig-variables-table
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.export-sendig-variables-row :refer :all]
            )
  (:import (java.io File)))


(def export-sendig-variables-table-data
  {
   (ds/opt :variables) (s/coll-of export-sendig-variables-row-spec)
   })

(def export-sendig-variables-table-spec
  (ds/spec
    {:name ::export-sendig-variables-table
     :spec export-sendig-variables-table-data}))
