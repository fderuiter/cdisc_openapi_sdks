(ns cdisc-library-api.specs.productgroup-terminology
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-terminology-links :refer :all]
            )
  (:import (java.io File)))


(def productgroup-terminology-data
  {
   (ds/opt :_links) productgroup-terminology-links-spec
   })

(def productgroup-terminology-spec
  (ds/spec
    {:name ::productgroup-terminology
     :spec productgroup-terminology-data}))
