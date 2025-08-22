(ns cdisc-library-api.specs.xml-sendig-class-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-class-datasets :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-class-datasets-data
  {
   (ds/opt :self) sendig-class-datasets-spec
   })

(def xml-sendig-class-datasets-spec
  (ds/spec
    {:name ::xml-sendig-class-datasets
     :spec xml-sendig-class-datasets-data}))
