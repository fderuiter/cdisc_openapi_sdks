(ns cdisc-library-api.specs.xml-sdtmig-dataset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-dataset-data
  {
   (ds/opt :self) sdtmig-dataset-spec
   })

(def xml-sdtmig-dataset-spec
  (ds/spec
    {:name ::xml-sdtmig-dataset
     :spec xml-sdtmig-dataset-data}))
