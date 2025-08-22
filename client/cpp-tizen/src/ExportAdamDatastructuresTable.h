/*
 * ExportAdamDatastructuresTable.h
 *
 * 
 */

#ifndef _ExportAdamDatastructuresTable_H_
#define _ExportAdamDatastructuresTable_H_


#include <string>
#include "ExportAdamDatastructuresRow.h"
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

class ExportAdamDatastructuresTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportAdamDatastructuresTable();
	ExportAdamDatastructuresTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportAdamDatastructuresTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportAdamDatastructuresRow> getDatastructures();

	/*! \brief Set 
	 */
	void setDatastructures(std::list <ExportAdamDatastructuresRow> datastructures);

private:
	std::list <ExportAdamDatastructuresRow>datastructures;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportAdamDatastructuresTable_H_ */
