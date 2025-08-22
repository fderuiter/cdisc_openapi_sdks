(ns cdisc-library-api.specs.xml-root-sdtm-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtm-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-root-sdtm-dataset-variable-data
  {
   (ds/opt :self) root-sdtm-dataset-variable-spec
   })

(def xml-root-sdtm-dataset-variable-spec
  (ds/spec
    {:name ::xml-root-sdtm-dataset-variable
     :spec xml-root-sdtm-dataset-variable-data}))
