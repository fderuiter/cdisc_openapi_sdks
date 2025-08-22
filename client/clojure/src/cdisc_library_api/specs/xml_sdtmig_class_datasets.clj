(ns cdisc-library-api.specs.xml-sdtmig-class-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-class-datasets :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-class-datasets-data
  {
   (ds/opt :self) sdtmig-class-datasets-spec
   })

(def xml-sdtmig-class-datasets-spec
  (ds/spec
    {:name ::xml-sdtmig-class-datasets
     :spec xml-sdtmig-class-datasets-data}))
