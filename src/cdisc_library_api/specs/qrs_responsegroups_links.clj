(ns cdisc-library-api.specs.qrs-responsegroups-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-responsegroups-ref :refer :all]
            [cdisc-library-api.specs.qrs-responsegroup-ref-element :refer :all]
            )
  (:import (java.io File)))


(def qrs-responsegroups-links-data
  {
   (ds/opt :self) qrs-responsegroups-ref-spec
   (ds/opt :responsegroups) (s/coll-of qrs-responsegroup-ref-element-spec)
   })

(def qrs-responsegroups-links-spec
  (ds/spec
    {:name ::qrs-responsegroups-links
     :spec qrs-responsegroups-links-data}))
