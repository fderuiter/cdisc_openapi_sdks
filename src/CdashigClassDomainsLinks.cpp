#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigClassDomainsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigClassDomainsLinks::CdashigClassDomainsLinks()
{
	//__init();
}

CdashigClassDomainsLinks::~CdashigClassDomainsLinks()
{
	//__cleanup();
}

void
CdashigClassDomainsLinks::__init()
{
	//self = new CdashigClassDomainsRef();
	//new std::list()std::list> domains;
}

void
CdashigClassDomainsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(domains != NULL) {
	//domains.RemoveAll(true);
	//delete domains;
	//domains = NULL;
	//}
	//
}

void
CdashigClassDomainsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassDomainsRef")) {
			jsonToValue(&self, node, "CdashigClassDomainsRef", "CdashigClassDomainsRef");
		} else {
			
			CdashigClassDomainsRef* obj = static_cast<CdashigClassDomainsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *domainsKey = "domains";
	node = json_object_get_member(pJsonObject, domainsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigDomainRefElement> new_list;
			CdashigDomainRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigDomainRefElement")) {
					jsonToValue(&inst, temp_json, "CdashigDomainRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			domains = new_list;
		}
		
	}
}

CdashigClassDomainsLinks::CdashigClassDomainsLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigClassDomainsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigClassDomainsRef")) {
		CdashigClassDomainsRef obj = getSelf();
		node = converttoJson(&obj, "CdashigClassDomainsRef", "");
	}
	else {
		
		CdashigClassDomainsRef obj = static_cast<CdashigClassDomainsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashigDomainRefElement")) {
		list<CdashigDomainRefElement> new_list = static_cast<list <CdashigDomainRefElement> > (getDomains());
		node = converttoJson(&new_list, "CdashigDomainRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashigDomainRefElement> new_list = static_cast<list <CdashigDomainRefElement> > (getDomains());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigDomainRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigDomainRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *domainsKey = "domains";
	json_object_set_member(pJsonObject, domainsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashigClassDomainsRef
CdashigClassDomainsLinks::getSelf()
{
	return self;
}

void
CdashigClassDomainsLinks::setSelf(CdashigClassDomainsRef  self)
{
	this->self = self;
}

std::list<CdashigDomainRefElement>
CdashigClassDomainsLinks::getDomains()
{
	return domains;
}

void
CdashigClassDomainsLinks::setDomains(std::list <CdashigDomainRefElement> domains)
{
	this->domains = domains;
}


