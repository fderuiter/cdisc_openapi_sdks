(ns cdisc-library-api.specs.xml-qrs-items
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-items :refer :all]
            )
  (:import (java.io File)))


(def xml-qrs-items-data
  {
   (ds/opt :self) qrs-items-spec
   })

(def xml-qrs-items-spec
  (ds/spec
    {:name ::xml-qrs-items
     :spec xml-qrs-items-data}))
