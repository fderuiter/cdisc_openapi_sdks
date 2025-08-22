#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigClassScenariosLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigClassScenariosLinks::CdashigClassScenariosLinks()
{
	//__init();
}

CdashigClassScenariosLinks::~CdashigClassScenariosLinks()
{
	//__cleanup();
}

void
CdashigClassScenariosLinks::__init()
{
	//self = new CdashigClassScenariosRef();
	//new std::list()std::list> scenarios;
}

void
CdashigClassScenariosLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(scenarios != NULL) {
	//scenarios.RemoveAll(true);
	//delete scenarios;
	//scenarios = NULL;
	//}
	//
}

void
CdashigClassScenariosLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassScenariosRef")) {
			jsonToValue(&self, node, "CdashigClassScenariosRef", "CdashigClassScenariosRef");
		} else {
			
			CdashigClassScenariosRef* obj = static_cast<CdashigClassScenariosRef*> (&self);
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

CdashigClassScenariosLinks::CdashigClassScenariosLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigClassScenariosLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigClassScenariosRef")) {
		CdashigClassScenariosRef obj = getSelf();
		node = converttoJson(&obj, "CdashigClassScenariosRef", "");
	}
	else {
		
		CdashigClassScenariosRef obj = static_cast<CdashigClassScenariosRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
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

CdashigClassScenariosRef
CdashigClassScenariosLinks::getSelf()
{
	return self;
}

void
CdashigClassScenariosLinks::setSelf(CdashigClassScenariosRef  self)
{
	this->self = self;
}

std::list<CdashigScenarioRefElement>
CdashigClassScenariosLinks::getScenarios()
{
	return scenarios;
}

void
CdashigClassScenariosLinks::setScenarios(std::list <CdashigScenarioRefElement> scenarios)
{
	this->scenarios = scenarios;
}


