/*
 * ExportAdamWorkbook.h
 *
 * 
 */

#ifndef _ExportAdamWorkbook_H_
#define _ExportAdamWorkbook_H_


#include <string>
#include "ExportAdamDatastructuresRow.h"
#include "ExportAdamVariablesRow.h"
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

class ExportAdamWorkbook : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportAdamWorkbook();
	ExportAdamWorkbook(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportAdamWorkbook();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportAdamVariablesRow> getVariables();

	/*! \brief Set 
	 */
	void setVariables(std::list <ExportAdamVariablesRow> variables);
	/*! \brief Get 
	 */
	std::list<ExportAdamDatastructuresRow> getDatastructures();

	/*! \brief Set 
	 */
	void setDatastructures(std::list <ExportAdamDatastructuresRow> datastructures);

private:
	std::list <ExportAdamVariablesRow>variables;
	std::list <ExportAdamDatastructuresRow>datastructures;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportAdamWorkbook_H_ */
