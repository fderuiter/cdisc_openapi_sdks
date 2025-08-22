(ns cdisc-library-api.specs.sendig-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-classes-links :refer :all]
            )
  (:import (java.io File)))


(def sendig-classes-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sendig-classes-links-spec
   })

(def sendig-classes-spec
  (ds/spec
    {:name ::sendig-classes
     :spec sendig-classes-data}))
