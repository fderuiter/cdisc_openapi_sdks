(ns cdisc-library-api.specs.ct-package-codelists-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-package-codelists-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-package-codelists-ref-spec
  (ds/spec
    {:name ::ct-package-codelists-ref
     :spec ct-package-codelists-ref-data}))
