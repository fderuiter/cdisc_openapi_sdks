(ns cdisc-library-api.specs.ct-package-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-package-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-package-ref-element-spec
  (ds/spec
    {:name ::ct-package-ref-element
     :spec ct-package-ref-element-data}))
