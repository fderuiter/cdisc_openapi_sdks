(ns cdisc-library-api.specs.xml-sdtmig-dataset-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-variables :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-dataset-variables-data
  {
   (ds/opt :self) sdtmig-dataset-variables-spec
   })

(def xml-sdtmig-dataset-variables-spec
  (ds/spec
    {:name ::xml-sdtmig-dataset-variables
     :spec xml-sdtmig-dataset-variables-data}))
