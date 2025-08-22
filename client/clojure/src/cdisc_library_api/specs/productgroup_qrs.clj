(ns cdisc-library-api.specs.productgroup-qrs
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-qrs-links :refer :all]
            )
  (:import (java.io File)))


(def productgroup-qrs-data
  {
   (ds/opt :_links) productgroup-qrs-links-spec
   })

(def productgroup-qrs-spec
  (ds/spec
    {:name ::productgroup-qrs
     :spec productgroup-qrs-data}))
