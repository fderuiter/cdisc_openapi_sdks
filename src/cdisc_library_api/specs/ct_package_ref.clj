(ns cdisc-library-api.specs.ct-package-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-package-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-package-ref-spec
  (ds/spec
    {:name ::ct-package-ref
     :spec ct-package-ref-data}))
