(ns cdisc-library-api.specs.productgroup-data-collection
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-data-collection-links :refer :all]
            )
  (:import (java.io File)))


(def productgroup-data-collection-data
  {
   (ds/opt :_links) productgroup-data-collection-links-spec
   })

(def productgroup-data-collection-spec
  (ds/spec
    {:name ::productgroup-data-collection
     :spec productgroup-data-collection-data}))
