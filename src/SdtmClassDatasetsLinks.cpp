#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClassDatasetsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClassDatasetsLinks::SdtmClassDatasetsLinks()
{
	//__init();
}

SdtmClassDatasetsLinks::~SdtmClassDatasetsLinks()
{
	//__cleanup();
}

void
SdtmClassDatasetsLinks::__init()
{
	//self = new SdtmClassDatasetsRef();
	//parentProduct = new SdtmProductRef();
	//priorVersion = new SdtmClassDatasetsRef();
	//new std::list()std::list> datasets;
}

void
SdtmClassDatasetsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
SdtmClassDatasetsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassDatasetsRef")) {
			jsonToValue(&self, node, "SdtmClassDatasetsRef", "SdtmClassDatasetsRef");
		} else {
			
			SdtmClassDatasetsRef* obj = static_cast<SdtmClassDatasetsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmProductRef")) {
			jsonToValue(&parentProduct, node, "SdtmProductRef", "SdtmProductRef");
		} else {
			
			SdtmProductRef* obj = static_cast<SdtmProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassDatasetsRef")) {
			jsonToValue(&priorVersion, node, "SdtmClassDatasetsRef", "SdtmClassDatasetsRef");
		} else {
			
			SdtmClassDatasetsRef* obj = static_cast<SdtmClassDatasetsRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmDatasetRefElement> new_list;
			SdtmDatasetRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmDatasetRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmDatasetRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

SdtmClassDatasetsLinks::SdtmClassDatasetsLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmClassDatasetsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassDatasetsRef")) {
		SdtmClassDatasetsRef obj = getSelf();
		node = converttoJson(&obj, "SdtmClassDatasetsRef", "");
	}
	else {
		
		SdtmClassDatasetsRef obj = static_cast<SdtmClassDatasetsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmProductRef")) {
		SdtmProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SdtmProductRef", "");
	}
	else {
		
		SdtmProductRef obj = static_cast<SdtmProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SdtmClassDatasetsRef")) {
		SdtmClassDatasetsRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmClassDatasetsRef", "");
	}
	else {
		
		SdtmClassDatasetsRef obj = static_cast<SdtmClassDatasetsRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmDatasetRefElement")) {
		list<SdtmDatasetRefElement> new_list = static_cast<list <SdtmDatasetRefElement> > (getDatasets());
		node = converttoJson(&new_list, "SdtmDatasetRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmDatasetRefElement> new_list = static_cast<list <SdtmDatasetRefElement> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmDatasetRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmDatasetRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetsKey = "datasets";
	json_object_set_member(pJsonObject, datasetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmClassDatasetsRef
SdtmClassDatasetsLinks::getSelf()
{
	return self;
}

void
SdtmClassDatasetsLinks::setSelf(SdtmClassDatasetsRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmClassDatasetsLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmClassDatasetsLinks::setParentProduct(SdtmProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmClassDatasetsRef
SdtmClassDatasetsLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmClassDatasetsLinks::setPriorVersion(SdtmClassDatasetsRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmDatasetRefElement>
SdtmClassDatasetsLinks::getDatasets()
{
	return datasets;
}

void
SdtmClassDatasetsLinks::setDatasets(std::list <SdtmDatasetRefElement> datasets)
{
	this->datasets = datasets;
}


