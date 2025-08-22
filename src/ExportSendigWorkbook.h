/*
 * ExportSendigWorkbook.h
 *
 * 
 */

#ifndef _ExportSendigWorkbook_H_
#define _ExportSendigWorkbook_H_


#include <string>
#include "ExportSendigDatasetsRow.h"
#include "ExportSendigVariablesRow.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExportSendigWorkbook : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSendigWorkbook();
	ExportSendigWorkbook(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSendigWorkbook();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportSendigVariablesRow> getVariables();

	/*! \brief Set 
	 */
	void setVariables(std::list <ExportSendigVariablesRow> variables);
	/*! \brief Get 
	 */
	std::list<ExportSendigDatasetsRow> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <ExportSendigDatasetsRow> datasets);

private:
	std::list <ExportSendigVariablesRow>variables;
	std::list <ExportSendigDatasetsRow>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSendigWorkbook_H_ */
