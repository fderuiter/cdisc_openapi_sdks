(ns cdisc-library-api.specs.ct-packages
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-packages-links :refer :all]
            )
  (:import (java.io File)))


(def ct-packages-data
  {
   (ds/opt :_links) ct-packages-links-spec
   })

(def ct-packages-spec
  (ds/spec
    {:name ::ct-packages
     :spec ct-packages-data}))
