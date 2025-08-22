#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClassVariablesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClassVariablesLinks::SdtmClassVariablesLinks()
{
	//__init();
}

SdtmClassVariablesLinks::~SdtmClassVariablesLinks()
{
	//__cleanup();
}

void
SdtmClassVariablesLinks::__init()
{
	//self = new SdtmClassVariablesRef();
	//parentProduct = new SdtmProductRef();
	//priorVersion = new SdtmClassVariablesRef();
	//new std::list()std::list> classVariables;
}

void
SdtmClassVariablesLinks::__cleanup()
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
	//if(classVariables != NULL) {
	//classVariables.RemoveAll(true);
	//delete classVariables;
	//classVariables = NULL;
	//}
	//
}

void
SdtmClassVariablesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassVariablesRef")) {
			jsonToValue(&self, node, "SdtmClassVariablesRef", "SdtmClassVariablesRef");
		} else {
			
			SdtmClassVariablesRef* obj = static_cast<SdtmClassVariablesRef*> (&self);
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
	

		if (isprimitive("SdtmClassVariablesRef")) {
			jsonToValue(&priorVersion, node, "SdtmClassVariablesRef", "SdtmClassVariablesRef");
		} else {
			
			SdtmClassVariablesRef* obj = static_cast<SdtmClassVariablesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classVariablesKey = "classVariables";
	node = json_object_get_member(pJsonObject, classVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClassVariableRefElement> new_list;
			SdtmClassVariableRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClassVariableRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmClassVariableRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classVariables = new_list;
		}
		
	}
}

SdtmClassVariablesLinks::SdtmClassVariablesLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmClassVariablesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassVariablesRef")) {
		SdtmClassVariablesRef obj = getSelf();
		node = converttoJson(&obj, "SdtmClassVariablesRef", "");
	}
	else {
		
		SdtmClassVariablesRef obj = static_cast<SdtmClassVariablesRef> (getSelf());
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
	if (isprimitive("SdtmClassVariablesRef")) {
		SdtmClassVariablesRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmClassVariablesRef", "");
	}
	else {
		
		SdtmClassVariablesRef obj = static_cast<SdtmClassVariablesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmClassVariableRefElement")) {
		list<SdtmClassVariableRefElement> new_list = static_cast<list <SdtmClassVariableRefElement> > (getClassVariables());
		node = converttoJson(&new_list, "SdtmClassVariableRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClassVariableRefElement> new_list = static_cast<list <SdtmClassVariableRefElement> > (getClassVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClassVariableRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClassVariableRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classVariablesKey = "classVariables";
	json_object_set_member(pJsonObject, classVariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmClassVariablesRef
SdtmClassVariablesLinks::getSelf()
{
	return self;
}

void
SdtmClassVariablesLinks::setSelf(SdtmClassVariablesRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmClassVariablesLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmClassVariablesLinks::setParentProduct(SdtmProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmClassVariablesRef
SdtmClassVariablesLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmClassVariablesLinks::setPriorVersion(SdtmClassVariablesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmClassVariableRefElement>
SdtmClassVariablesLinks::getClassVariables()
{
	return classVariables;
}

void
SdtmClassVariablesLinks::setClassVariables(std::list <SdtmClassVariableRefElement> classVariables)
{
	this->classVariables = classVariables;
}


