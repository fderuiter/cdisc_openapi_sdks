/*
 * CtPackages.h
 *
 * 
 */

#ifndef _CtPackages_H_
#define _CtPackages_H_


#include <string>
#include "CtPackagesLinks.h"
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

class CtPackages : public Object {
public:
	/*! \brief Constructor.
	 */
	CtPackages();
	CtPackages(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtPackages();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtPackagesLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CtPackagesLinks  _links);

private:
	CtPackagesLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtPackages_H_ */
