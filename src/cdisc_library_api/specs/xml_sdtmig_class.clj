(ns cdisc-library-api.specs.xml-sdtmig-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-class :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-class-data
  {
   (ds/opt :self) sdtmig-class-spec
   })

(def xml-sdtmig-class-spec
  (ds/spec
    {:name ::xml-sdtmig-class
     :spec xml-sdtmig-class-data}))
