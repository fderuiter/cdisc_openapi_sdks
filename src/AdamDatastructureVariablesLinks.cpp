#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamDatastructureVariablesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamDatastructureVariablesLinks::AdamDatastructureVariablesLinks()
{
	//__init();
}

AdamDatastructureVariablesLinks::~AdamDatastructureVariablesLinks()
{
	//__cleanup();
}

void
AdamDatastructureVariablesLinks::__init()
{
	//self = new AdamDatastructureVariablesRef();
	//parentProduct = new AdamProductRef();
	//priorVersion = new AdamDatastructureVariablesRef();
	//new std::list()std::list> analysisVariables;
}

void
AdamDatastructureVariablesLinks::__cleanup()
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
	//if(analysisVariables != NULL) {
	//analysisVariables.RemoveAll(true);
	//delete analysisVariables;
	//analysisVariables = NULL;
	//}
	//
}

void
AdamDatastructureVariablesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureVariablesRef")) {
			jsonToValue(&self, node, "AdamDatastructureVariablesRef", "AdamDatastructureVariablesRef");
		} else {
			
			AdamDatastructureVariablesRef* obj = static_cast<AdamDatastructureVariablesRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductRef")) {
			jsonToValue(&parentProduct, node, "AdamProductRef", "AdamProductRef");
		} else {
			
			AdamProductRef* obj = static_cast<AdamProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureVariablesRef")) {
			jsonToValue(&priorVersion, node, "AdamDatastructureVariablesRef", "AdamDatastructureVariablesRef");
		} else {
			
			AdamDatastructureVariablesRef* obj = static_cast<AdamDatastructureVariablesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *analysisVariablesKey = "analysisVariables";
	node = json_object_get_member(pJsonObject, analysisVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AdamVariableRefElement> new_list;
			AdamVariableRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AdamVariableRefElement")) {
					jsonToValue(&inst, temp_json, "AdamVariableRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			analysisVariables = new_list;
		}
		
	}
}

AdamDatastructureVariablesLinks::AdamDatastructureVariablesLinks(char* json)
{
	this->fromJson(json);
}

char*
AdamDatastructureVariablesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamDatastructureVariablesRef")) {
		AdamDatastructureVariablesRef obj = getSelf();
		node = converttoJson(&obj, "AdamDatastructureVariablesRef", "");
	}
	else {
		
		AdamDatastructureVariablesRef obj = static_cast<AdamDatastructureVariablesRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("AdamProductRef")) {
		AdamProductRef obj = getParentProduct();
		node = converttoJson(&obj, "AdamProductRef", "");
	}
	else {
		
		AdamProductRef obj = static_cast<AdamProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("AdamDatastructureVariablesRef")) {
		AdamDatastructureVariablesRef obj = getPriorVersion();
		node = converttoJson(&obj, "AdamDatastructureVariablesRef", "");
	}
	else {
		
		AdamDatastructureVariablesRef obj = static_cast<AdamDatastructureVariablesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("AdamVariableRefElement")) {
		list<AdamVariableRefElement> new_list = static_cast<list <AdamVariableRefElement> > (getAnalysisVariables());
		node = converttoJson(&new_list, "AdamVariableRefElement", "array");
	} else {
		node = json_node_alloc();
		list<AdamVariableRefElement> new_list = static_cast<list <AdamVariableRefElement> > (getAnalysisVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AdamVariableRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AdamVariableRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *analysisVariablesKey = "analysisVariables";
	json_object_set_member(pJsonObject, analysisVariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

AdamDatastructureVariablesRef
AdamDatastructureVariablesLinks::getSelf()
{
	return self;
}

void
AdamDatastructureVariablesLinks::setSelf(AdamDatastructureVariablesRef  self)
{
	this->self = self;
}

AdamProductRef
AdamDatastructureVariablesLinks::getParentProduct()
{
	return parentProduct;
}

void
AdamDatastructureVariablesLinks::setParentProduct(AdamProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

AdamDatastructureVariablesRef
AdamDatastructureVariablesLinks::getPriorVersion()
{
	return priorVersion;
}

void
AdamDatastructureVariablesLinks::setPriorVersion(AdamDatastructureVariablesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<AdamVariableRefElement>
AdamDatastructureVariablesLinks::getAnalysisVariables()
{
	return analysisVariables;
}

void
AdamDatastructureVariablesLinks::setAnalysisVariables(std::list <AdamVariableRefElement> analysisVariables)
{
	this->analysisVariables = analysisVariables;
}


