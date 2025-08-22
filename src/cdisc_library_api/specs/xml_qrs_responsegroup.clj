(ns cdisc-library-api.specs.xml-qrs-responsegroup
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-responsegroup :refer :all]
            )
  (:import (java.io File)))


(def xml-qrs-responsegroup-data
  {
   (ds/opt :self) qrs-responsegroup-spec
   })

(def xml-qrs-responsegroup-spec
  (ds/spec
    {:name ::xml-qrs-responsegroup
     :spec xml-qrs-responsegroup-data}))
