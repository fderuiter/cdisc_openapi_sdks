(ns cdisc-library-api.specs.productgroup-data-tabulation
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-data-tabulation-links :refer :all]
            )
  (:import (java.io File)))


(def productgroup-data-tabulation-data
  {
   (ds/opt :_links) productgroup-data-tabulation-links-spec
   })

(def productgroup-data-tabulation-spec
  (ds/spec
    {:name ::productgroup-data-tabulation
     :spec productgroup-data-tabulation-data}))
