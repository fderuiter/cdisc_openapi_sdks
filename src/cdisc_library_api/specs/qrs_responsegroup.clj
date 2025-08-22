(ns cdisc-library-api.specs.qrs-responsegroup
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-responsegroup-links :refer :all]
            )
  (:import (java.io File)))


(def qrs-responsegroup-data
  {
   (ds/opt :label) string?
   (ds/opt :_links) qrs-responsegroup-links-spec
   })

(def qrs-responsegroup-spec
  (ds/spec
    {:name ::qrs-responsegroup
     :spec qrs-responsegroup-data}))
