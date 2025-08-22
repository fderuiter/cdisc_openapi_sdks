(ns cdisc-library-api.specs.qrs-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-item-links :refer :all]
            )
  (:import (java.io File)))


(def qrs-item-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :label) string?
   (ds/opt :questionText) string?
   (ds/opt :_links) qrs-item-links-spec
   })

(def qrs-item-spec
  (ds/spec
    {:name ::qrs-item
     :spec qrs-item-data}))
