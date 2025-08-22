(ns cdisc-library-api.specs.productgroup-data-analysis
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-data-analysis-links :refer :all]
            )
  (:import (java.io File)))


(def productgroup-data-analysis-data
  {
   (ds/opt :_links) productgroup-data-analysis-links-spec
   })

(def productgroup-data-analysis-spec
  (ds/spec
    {:name ::productgroup-data-analysis
     :spec productgroup-data-analysis-data}))
