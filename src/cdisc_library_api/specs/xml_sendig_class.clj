(ns cdisc-library-api.specs.xml-sendig-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-class :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-class-data
  {
   (ds/opt :self) sendig-class-spec
   })

(def xml-sendig-class-spec
  (ds/spec
    {:name ::xml-sendig-class
     :spec xml-sendig-class-data}))
