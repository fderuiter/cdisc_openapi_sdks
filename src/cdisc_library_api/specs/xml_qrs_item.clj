(ns cdisc-library-api.specs.xml-qrs-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-item :refer :all]
            )
  (:import (java.io File)))


(def xml-qrs-item-data
  {
   (ds/opt :self) qrs-item-spec
   })

(def xml-qrs-item-spec
  (ds/spec
    {:name ::xml-qrs-item
     :spec xml-qrs-item-data}))
