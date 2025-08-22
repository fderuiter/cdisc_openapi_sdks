#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmDatasetVariablesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmDatasetVariablesLinks::SdtmDatasetVariablesLinks()
{
	//__init();
}

SdtmDatasetVariablesLinks::~SdtmDatasetVariablesLinks()
{
	//__cleanup();
}

void
SdtmDatasetVariablesLinks::__init()
{
	//self = new SdtmDatasetVariablesRef();
	//parentProduct = new SdtmProductRef();
	//parentClass = new SdtmClassRef();
	//priorVersion = new SdtmDatasetVariablesRef();
	//new std::list()std::list> datasetVariables;
}

void
SdtmDatasetVariablesLinks::__cleanup()
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
	//if(parentClass != NULL) {
	//
	//delete parentClass;
	//parentClass = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(datasetVariables != NULL) {
	//datasetVariables.RemoveAll(true);
	//delete datasetVariables;
	//datasetVariables = NULL;
	//}
	//
}

void
SdtmDatasetVariablesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariablesRef")) {
			jsonToValue(&self, node, "SdtmDatasetVariablesRef", "SdtmDatasetVariablesRef");
		} else {
			
			SdtmDatasetVariablesRef* obj = static_cast<SdtmDatasetVariablesRef*> (&self);
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
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassRef")) {
			jsonToValue(&parentClass, node, "SdtmClassRef", "SdtmClassRef");
		} else {
			
			SdtmClassRef* obj = static_cast<SdtmClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariablesRef")) {
			jsonToValue(&priorVersion, node, "SdtmDatasetVariablesRef", "SdtmDatasetVariablesRef");
		} else {
			
			SdtmDatasetVariablesRef* obj = static_cast<SdtmDatasetVariablesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetVariablesKey = "datasetVariables";
	node = json_object_get_member(pJsonObject, datasetVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmDatasetVariableRefElement> new_list;
			SdtmDatasetVariableRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmDatasetVariableRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmDatasetVariableRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasetVariables = new_list;
		}
		
	}
}

SdtmDatasetVariablesLinks::SdtmDatasetVariablesLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmDatasetVariablesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmDatasetVariablesRef")) {
		SdtmDatasetVariablesRef obj = getSelf();
		node = converttoJson(&obj, "SdtmDatasetVariablesRef", "");
	}
	else {
		
		SdtmDatasetVariablesRef obj = static_cast<SdtmDatasetVariablesRef> (getSelf());
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
	if (isprimitive("SdtmClassRef")) {
		SdtmClassRef obj = getParentClass();
		node = converttoJson(&obj, "SdtmClassRef", "");
	}
	else {
		
		SdtmClassRef obj = static_cast<SdtmClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SdtmDatasetVariablesRef")) {
		SdtmDatasetVariablesRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmDatasetVariablesRef", "");
	}
	else {
		
		SdtmDatasetVariablesRef obj = static_cast<SdtmDatasetVariablesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmDatasetVariableRefElement")) {
		list<SdtmDatasetVariableRefElement> new_list = static_cast<list <SdtmDatasetVariableRefElement> > (getDatasetVariables());
		node = converttoJson(&new_list, "SdtmDatasetVariableRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmDatasetVariableRefElement> new_list = static_cast<list <SdtmDatasetVariableRefElement> > (getDatasetVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmDatasetVariableRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmDatasetVariableRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetVariablesKey = "datasetVariables";
	json_object_set_member(pJsonObject, datasetVariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmDatasetVariablesRef
SdtmDatasetVariablesLinks::getSelf()
{
	return self;
}

void
SdtmDatasetVariablesLinks::setSelf(SdtmDatasetVariablesRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmDatasetVariablesLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmDatasetVariablesLinks::setParentProduct(SdtmProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmClassRef
SdtmDatasetVariablesLinks::getParentClass()
{
	return parentClass;
}

void
SdtmDatasetVariablesLinks::setParentClass(SdtmClassRef  parentClass)
{
	this->parentClass = parentClass;
}

SdtmDatasetVariablesRef
SdtmDatasetVariablesLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmDatasetVariablesLinks::setPriorVersion(SdtmDatasetVariablesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmDatasetVariableRefElement>
SdtmDatasetVariablesLinks::getDatasetVariables()
{
	return datasetVariables;
}

void
SdtmDatasetVariablesLinks::setDatasetVariables(std::list <SdtmDatasetVariableRefElement> datasetVariables)
{
	this->datasetVariables = datasetVariables;
}


