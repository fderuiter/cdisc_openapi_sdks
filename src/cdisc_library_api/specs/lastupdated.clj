(ns cdisc-library-api.specs.lastupdated
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.lastupdated-links :refer :all]
            )
  (:import (java.io File)))


(def lastupdated-data
  {
   (ds/opt :_links) lastupdated-links-spec
   (ds/opt :overall) string?
   (ds/opt :data-analysis) string?
   (ds/opt :data-collection) string?
   (ds/opt :data-tabulation) string?
   (ds/opt :measure) string?
   (ds/opt :terminology) string?
   })

(def lastupdated-spec
  (ds/spec
    {:name ::lastupdated
     :spec lastupdated-data}))
