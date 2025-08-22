#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClassVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClassVariableLinks::SdtmClassVariableLinks()
{
	//__init();
}

SdtmClassVariableLinks::~SdtmClassVariableLinks()
{
	//__cleanup();
}

void
SdtmClassVariableLinks::__init()
{
	//self = new SdtmClassVariableRef();
	//parentProduct = new SdtmProductRef();
	//parentClass = new SdtmClassRef();
	//new std::list()std::list> qualifiesVariables;
	//rootItem = new RootSdtmClassVariableRef();
	//priorVersion = new SdtmClassVariableRef();
}

void
SdtmClassVariableLinks::__cleanup()
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
	//if(qualifiesVariables != NULL) {
	//qualifiesVariables.RemoveAll(true);
	//delete qualifiesVariables;
	//qualifiesVariables = NULL;
	//}
	//if(rootItem != NULL) {
	//
	//delete rootItem;
	//rootItem = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
SdtmClassVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassVariableRef")) {
			jsonToValue(&self, node, "SdtmClassVariableRef", "SdtmClassVariableRef");
		} else {
			
			SdtmClassVariableRef* obj = static_cast<SdtmClassVariableRef*> (&self);
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
	const gchar *qualifiesVariablesKey = "qualifiesVariables";
	node = json_object_get_member(pJsonObject, qualifiesVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClassVariableRefQualifies> new_list;
			SdtmClassVariableRefQualifies inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClassVariableRefQualifies")) {
					jsonToValue(&inst, temp_json, "SdtmClassVariableRefQualifies", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			qualifiesVariables = new_list;
		}
		
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmClassVariableRef")) {
			jsonToValue(&rootItem, node, "RootSdtmClassVariableRef", "RootSdtmClassVariableRef");
		} else {
			
			RootSdtmClassVariableRef* obj = static_cast<RootSdtmClassVariableRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassVariableRef")) {
			jsonToValue(&priorVersion, node, "SdtmClassVariableRef", "SdtmClassVariableRef");
		} else {
			
			SdtmClassVariableRef* obj = static_cast<SdtmClassVariableRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmClassVariableLinks::SdtmClassVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmClassVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassVariableRef")) {
		SdtmClassVariableRef obj = getSelf();
		node = converttoJson(&obj, "SdtmClassVariableRef", "");
	}
	else {
		
		SdtmClassVariableRef obj = static_cast<SdtmClassVariableRef> (getSelf());
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
	if (isprimitive("SdtmClassVariableRefQualifies")) {
		list<SdtmClassVariableRefQualifies> new_list = static_cast<list <SdtmClassVariableRefQualifies> > (getQualifiesVariables());
		node = converttoJson(&new_list, "SdtmClassVariableRefQualifies", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClassVariableRefQualifies> new_list = static_cast<list <SdtmClassVariableRefQualifies> > (getQualifiesVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClassVariableRefQualifies>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClassVariableRefQualifies obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *qualifiesVariablesKey = "qualifiesVariables";
	json_object_set_member(pJsonObject, qualifiesVariablesKey, node);
	if (isprimitive("RootSdtmClassVariableRef")) {
		RootSdtmClassVariableRef obj = getRootItem();
		node = converttoJson(&obj, "RootSdtmClassVariableRef", "");
	}
	else {
		
		RootSdtmClassVariableRef obj = static_cast<RootSdtmClassVariableRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("SdtmClassVariableRef")) {
		SdtmClassVariableRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmClassVariableRef", "");
	}
	else {
		
		SdtmClassVariableRef obj = static_cast<SdtmClassVariableRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmClassVariableRef
SdtmClassVariableLinks::getSelf()
{
	return self;
}

void
SdtmClassVariableLinks::setSelf(SdtmClassVariableRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmClassVariableLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmClassVariableLinks::setParentProduct(SdtmProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmClassRef
SdtmClassVariableLinks::getParentClass()
{
	return parentClass;
}

void
SdtmClassVariableLinks::setParentClass(SdtmClassRef  parentClass)
{
	this->parentClass = parentClass;
}

std::list<SdtmClassVariableRefQualifies>
SdtmClassVariableLinks::getQualifiesVariables()
{
	return qualifiesVariables;
}

void
SdtmClassVariableLinks::setQualifiesVariables(std::list <SdtmClassVariableRefQualifies> qualifiesVariables)
{
	this->qualifiesVariables = qualifiesVariables;
}

RootSdtmClassVariableRef
SdtmClassVariableLinks::getRootItem()
{
	return rootItem;
}

void
SdtmClassVariableLinks::setRootItem(RootSdtmClassVariableRef  rootItem)
{
	this->rootItem = rootItem;
}

SdtmClassVariableRef
SdtmClassVariableLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmClassVariableLinks::setPriorVersion(SdtmClassVariableRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


