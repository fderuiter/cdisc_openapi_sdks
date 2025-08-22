(ns cdisc-library-api.specs.qrs-responsegroups
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-responsegroups-links :refer :all]
            )
  (:import (java.io File)))


(def qrs-responsegroups-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :untilDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :qrsType) string?
   (ds/opt :_links) qrs-responsegroups-links-spec
   })

(def qrs-responsegroups-spec
  (ds/spec
    {:name ::qrs-responsegroups
     :spec qrs-responsegroups-data}))
