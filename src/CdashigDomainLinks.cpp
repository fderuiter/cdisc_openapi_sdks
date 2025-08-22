#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigDomainLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigDomainLinks::CdashigDomainLinks()
{
	//__init();
}

CdashigDomainLinks::~CdashigDomainLinks()
{
	//__cleanup();
}

void
CdashigDomainLinks::__init()
{
	//self = new CdashigDomainRef();
	//parentProduct = new CdashigProductRef();
	//parentClass = new CdashigClassRef();
	//priorVersion = new CdashigDomainRef();
	//new std::list()std::list> scenarios;
}

void
CdashigDomainLinks::__cleanup()
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
	//if(scenarios != NULL) {
	//scenarios.RemoveAll(true);
	//delete scenarios;
	//scenarios = NULL;
	//}
	//
}

void
CdashigDomainLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainRef")) {
			jsonToValue(&self, node, "CdashigDomainRef", "CdashigDomainRef");
		} else {
			
			CdashigDomainRef* obj = static_cast<CdashigDomainRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductRef")) {
			jsonToValue(&parentProduct, node, "CdashigProductRef", "CdashigProductRef");
		} else {
			
			CdashigProductRef* obj = static_cast<CdashigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassRef")) {
			jsonToValue(&parentClass, node, "CdashigClassRef", "CdashigClassRef");
		} else {
			
			CdashigClassRef* obj = static_cast<CdashigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainRef")) {
			jsonToValue(&priorVersion, node, "CdashigDomainRef", "CdashigDomainRef");
		} else {
			
			CdashigDomainRef* obj = static_cast<CdashigDomainRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *scenariosKey = "scenarios";
	node = json_object_get_member(pJsonObject, scenariosKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigScenarioRefElement> new_list;
			CdashigScenarioRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigScenarioRefElement")) {
					jsonToValue(&inst, temp_json, "CdashigScenarioRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			scenarios = new_list;
		}
		
	}
}

CdashigDomainLinks::CdashigDomainLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigDomainLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigDomainRef")) {
		CdashigDomainRef obj = getSelf();
		node = converttoJson(&obj, "CdashigDomainRef", "");
	}
	else {
		
		CdashigDomainRef obj = static_cast<CdashigDomainRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashigProductRef")) {
		CdashigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashigProductRef", "");
	}
	else {
		
		CdashigProductRef obj = static_cast<CdashigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashigClassRef")) {
		CdashigClassRef obj = getParentClass();
		node = converttoJson(&obj, "CdashigClassRef", "");
	}
	else {
		
		CdashigClassRef obj = static_cast<CdashigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("CdashigDomainRef")) {
		CdashigDomainRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashigDomainRef", "");
	}
	else {
		
		CdashigDomainRef obj = static_cast<CdashigDomainRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("CdashigScenarioRefElement")) {
		list<CdashigScenarioRefElement> new_list = static_cast<list <CdashigScenarioRefElement> > (getScenarios());
		node = converttoJson(&new_list, "CdashigScenarioRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashigScenarioRefElement> new_list = static_cast<list <CdashigScenarioRefElement> > (getScenarios());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigScenarioRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigScenarioRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *scenariosKey = "scenarios";
	json_object_set_member(pJsonObject, scenariosKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashigDomainRef
CdashigDomainLinks::getSelf()
{
	return self;
}

void
CdashigDomainLinks::setSelf(CdashigDomainRef  self)
{
	this->self = self;
}

CdashigProductRef
CdashigDomainLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigDomainLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashigClassRef
CdashigDomainLinks::getParentClass()
{
	return parentClass;
}

void
CdashigDomainLinks::setParentClass(CdashigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

CdashigDomainRef
CdashigDomainLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashigDomainLinks::setPriorVersion(CdashigDomainRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<CdashigScenarioRefElement>
CdashigDomainLinks::getScenarios()
{
	return scenarios;
}

void
CdashigDomainLinks::setScenarios(std::list <CdashigScenarioRefElement> scenarios)
{
	this->scenarios = scenarios;
}


