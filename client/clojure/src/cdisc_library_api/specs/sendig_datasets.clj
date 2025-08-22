(ns cdisc-library-api.specs.sendig-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-datasets-links :refer :all]
            )
  (:import (java.io File)))


(def sendig-datasets-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sendig-datasets-links-spec
   })

(def sendig-datasets-spec
  (ds/spec
    {:name ::sendig-datasets
     :spec sendig-datasets-data}))
