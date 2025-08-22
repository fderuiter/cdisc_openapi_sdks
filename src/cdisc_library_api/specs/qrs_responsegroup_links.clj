(ns cdisc-library-api.specs.qrs-responsegroup-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-responsegroup-ref :refer :all]
            [cdisc-library-api.specs.qrs-responses :refer :all]
            )
  (:import (java.io File)))


(def qrs-responsegroup-links-data
  {
   (ds/opt :self) qrs-responsegroup-ref-spec
   (ds/opt :responses) (s/coll-of qrs-responses-spec)
   })

(def qrs-responsegroup-links-spec
  (ds/spec
    {:name ::qrs-responsegroup-links
     :spec qrs-responsegroup-links-data}))
