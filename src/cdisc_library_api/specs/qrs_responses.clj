(ns cdisc-library-api.specs.qrs-responses
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-response-links :refer :all]
            )
  (:import (java.io File)))


(def qrs-responses-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :_links) qrs-response-links-spec
   })

(def qrs-responses-spec
  (ds/spec
    {:name ::qrs-responses
     :spec qrs-responses-data}))
