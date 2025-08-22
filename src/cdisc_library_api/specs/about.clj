(ns cdisc-library-api.specs.about
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.about-links :refer :all]
            )
  (:import (java.io File)))


(def about-data
  {
   (ds/opt :_links) about-links-spec
   (ds/opt :release-notes) string?
   (ds/opt :api-documentation) string?
   })

(def about-spec
  (ds/spec
    {:name ::about
     :spec about-data}))
