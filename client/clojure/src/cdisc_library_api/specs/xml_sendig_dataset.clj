(ns cdisc-library-api.specs.xml-sendig-dataset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-dataset-data
  {
   (ds/opt :self) sendig-dataset-spec
   })

(def xml-sendig-dataset-spec
  (ds/spec
    {:name ::xml-sendig-dataset
     :spec xml-sendig-dataset-data}))
