(ns cdisc-library-api.specs.xml-sdtmig-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-datasets :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-datasets-data
  {
   (ds/opt :self) sdtmig-datasets-spec
   })

(def xml-sdtmig-datasets-spec
  (ds/spec
    {:name ::xml-sdtmig-datasets
     :spec xml-sdtmig-datasets-data}))
