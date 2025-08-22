(ns cdisc-library-api.specs.xml-root-sendig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sendig-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-root-sendig-dataset-variable-data
  {
   (ds/opt :self) root-sendig-dataset-variable-spec
   })

(def xml-root-sendig-dataset-variable-spec
  (ds/spec
    {:name ::xml-root-sendig-dataset-variable
     :spec xml-root-sendig-dataset-variable-data}))
