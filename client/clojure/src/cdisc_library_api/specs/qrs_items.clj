(ns cdisc-library-api.specs.qrs-items
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-items-links :refer :all]
            )
  (:import (java.io File)))


(def qrs-items-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :untilDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :qrsType) string?
   (ds/opt :_links) qrs-items-links-spec
   })

(def qrs-items-spec
  (ds/spec
    {:name ::qrs-items
     :spec qrs-items-data}))
