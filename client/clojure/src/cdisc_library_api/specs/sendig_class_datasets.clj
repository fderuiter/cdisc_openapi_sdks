(ns cdisc-library-api.specs.sendig-class-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-class-datasets-links :refer :all]
            )
  (:import (java.io File)))


(def sendig-class-datasets-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) sendig-class-datasets-links-spec
   })

(def sendig-class-datasets-spec
  (ds/spec
    {:name ::sendig-class-datasets
     :spec sendig-class-datasets-data}))
