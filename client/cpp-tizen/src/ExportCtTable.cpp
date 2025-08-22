#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportCtTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportCtTable::ExportCtTable()
{
	//__init();
}

ExportCtTable::~ExportCtTable()
{
	//__cleanup();
}

void
ExportCtTable::__init()
{
	//new std::list()std::list> ct;
}

void
ExportCtTable::__cleanup()
{
	//if(ct != NULL) {
	//ct.RemoveAll(true);
	//delete ct;
	//ct = NULL;
	//}
	//
}

void
ExportCtTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *ctKey = "ct";
	node = json_object_get_member(pJsonObject, ctKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportCtCodelist> new_list;
			ExportCtCodelist inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportCtCodelist")) {
					jsonToValue(&inst, temp_json, "ExportCtCodelist", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			ct = new_list;
		}
		
	}
}

ExportCtTable::ExportCtTable(char* json)
{
	this->fromJson(json);
}

char*
ExportCtTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportCtCodelist")) {
		list<ExportCtCodelist> new_list = static_cast<list <ExportCtCodelist> > (getCt());
		node = converttoJson(&new_list, "ExportCtCodelist", "array");
	} else {
		node = json_node_alloc();
		list<ExportCtCodelist> new_list = static_cast<list <ExportCtCodelist> > (getCt());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportCtCodelist>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportCtCodelist obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *ctKey = "ct";
	json_object_set_member(pJsonObject, ctKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ExportCtCodelist>
ExportCtTable::getCt()
{
	return ct;
}

void
ExportCtTable::setCt(std::list <ExportCtCodelist> ct)
{
	this->ct = ct;
}


