(ns cdisc-library-api.specs.sendig-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-class-links :refer :all]
            [cdisc-library-api.specs.sendig-dataset :refer :all]
            )
  (:import (java.io File)))


(def sendig-class-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) sendig-class-links-spec
   (ds/opt :datasets) (s/coll-of sendig-dataset-spec)
   })

(def sendig-class-spec
  (ds/spec
    {:name ::sendig-class
     :spec sendig-class-data}))
