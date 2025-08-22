(ns cdisc-library-api.specs.xml-sendig-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-classes :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-classes-data
  {
   (ds/opt :self) sendig-classes-spec
   })

(def xml-sendig-classes-spec
  (ds/spec
    {:name ::xml-sendig-classes
     :spec xml-sendig-classes-data}))
