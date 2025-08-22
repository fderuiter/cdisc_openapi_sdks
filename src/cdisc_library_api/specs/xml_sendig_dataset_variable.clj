(ns cdisc-library-api.specs.xml-sendig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-dataset-variable-data
  {
   (ds/opt :self) sendig-dataset-variable-spec
   })

(def xml-sendig-dataset-variable-spec
  (ds/spec
    {:name ::xml-sendig-dataset-variable
     :spec xml-sendig-dataset-variable-data}))
