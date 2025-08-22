/*
 * ExportCtTerm.h
 *
 * 
 */

#ifndef _ExportCtTerm_H_
#define _ExportCtTerm_H_


#include <string>
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

class ExportCtTerm : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportCtTerm();
	ExportCtTerm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportCtTerm();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getBundle1();

	/*! \brief Set 
	 */
	void setBundle1(std::string  bundle1);
	/*! \brief Get 
	 */
	std::list<std::string> getCDISCSynonyms();

	/*! \brief Set 
	 */
	void setCDISCSynonyms(std::list <std::string> cDISCSynonyms);
	/*! \brief Get 
	 */
	std::string getBundle2();

	/*! \brief Set 
	 */
	void setBundle2(std::string  bundle2);

private:
	std::string bundle1;
	std::list <std::string>cDISCSynonyms;
	std::string bundle2;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportCtTerm_H_ */
