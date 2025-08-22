(ns cdisc-library-api.specs.lastupdated-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.lastupdated-ref :refer :all]
            )
  (:import (java.io File)))


(def lastupdated-links-data
  {
   (ds/opt :self) lastupdated-ref-spec
   })

(def lastupdated-links-spec
  (ds/spec
    {:name ::lastupdated-links
     :spec lastupdated-links-data}))
