(ns cdisc-library-api.specs.xml-sendig-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-datasets :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-datasets-data
  {
   (ds/opt :self) sendig-datasets-spec
   })

(def xml-sendig-datasets-spec
  (ds/spec
    {:name ::xml-sendig-datasets
     :spec xml-sendig-datasets-data}))
