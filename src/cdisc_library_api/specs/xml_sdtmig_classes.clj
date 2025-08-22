(ns cdisc-library-api.specs.xml-sdtmig-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-classes :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-classes-data
  {
   (ds/opt :self) sdtmig-classes-spec
   })

(def xml-sdtmig-classes-spec
  (ds/spec
    {:name ::xml-sdtmig-classes
     :spec xml-sdtmig-classes-data}))
