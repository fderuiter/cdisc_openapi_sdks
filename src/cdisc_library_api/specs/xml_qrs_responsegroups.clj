(ns cdisc-library-api.specs.xml-qrs-responsegroups
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-responsegroups :refer :all]
            )
  (:import (java.io File)))


(def xml-qrs-responsegroups-data
  {
   (ds/opt :self) qrs-responsegroups-spec
   })

(def xml-qrs-responsegroups-spec
  (ds/spec
    {:name ::xml-qrs-responsegroups
     :spec xml-qrs-responsegroups-data}))
