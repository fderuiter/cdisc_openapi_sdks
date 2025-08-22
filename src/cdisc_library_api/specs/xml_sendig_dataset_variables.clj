(ns cdisc-library-api.specs.xml-sendig-dataset-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-variables :refer :all]
            )
  (:import (java.io File)))


(def xml-sendig-dataset-variables-data
  {
   (ds/opt :self) sendig-dataset-variables-spec
   })

(def xml-sendig-dataset-variables-spec
  (ds/spec
    {:name ::xml-sendig-dataset-variables
     :spec xml-sendig-dataset-variables-data}))
