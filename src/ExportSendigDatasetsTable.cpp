#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSendigDatasetsTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSendigDatasetsTable::ExportSendigDatasetsTable()
{
	//__init();
}

ExportSendigDatasetsTable::~ExportSendigDatasetsTable()
{
	//__cleanup();
}

void
ExportSendigDatasetsTable::__init()
{
	//new std::list()std::list> datasets;
}

void
ExportSendigDatasetsTable::__cleanup()
{
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
ExportSendigDatasetsTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportSendigDatasetsRow> new_list;
			ExportSendigDatasetsRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportSendigDatasetsRow")) {
					jsonToValue(&inst, temp_json, "ExportSendigDatasetsRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

ExportSendigDatasetsTable::ExportSendigDatasetsTable(char* json)
{
	this->fromJson(json);
}

char*
ExportSendigDatasetsTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportSendigDatasetsRow")) {
		list<ExportSendigDatasetsRow> new_list = static_cast<list <ExportSendigDatasetsRow> > (getDatasets());
		node = converttoJson(&new_list, "ExportSendigDatasetsRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportSendigDatasetsRow> new_list = static_cast<list <ExportSendigDatasetsRow> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportSendigDatasetsRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportSendigDatasetsRow obj = *it;
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

std::list<ExportSendigDatasetsRow>
ExportSendigDatasetsTable::getDatasets()
{
	return datasets;
}

void
ExportSendigDatasetsTable::setDatasets(std::list <ExportSendigDatasetsRow> datasets)
{
	this->datasets = datasets;
}


