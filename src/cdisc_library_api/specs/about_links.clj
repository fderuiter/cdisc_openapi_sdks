(ns cdisc-library-api.specs.about-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.about-ref :refer :all]
            [cdisc-library-api.specs.lastupdated-ref :refer :all]
            )
  (:import (java.io File)))


(def about-links-data
  {
   (ds/opt :self) about-ref-spec
   (ds/opt :lastupdated) lastupdated-ref-spec
   })

(def about-links-spec
  (ds/spec
    {:name ::about-links
     :spec about-links-data}))
