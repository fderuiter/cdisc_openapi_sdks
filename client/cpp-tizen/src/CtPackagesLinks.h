/*
 * CtPackagesLinks.h
 *
 * 
 */

#ifndef _CtPackagesLinks_H_
#define _CtPackagesLinks_H_


#include <string>
#include "CtPackageRefElement.h"
#include "CtPackagesRef.h"
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

class CtPackagesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CtPackagesLinks();
	CtPackagesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtPackagesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtPackagesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtPackagesRef  self);
	/*! \brief Get 
	 */
	std::list<CtPackageRefElement> getPackages();

	/*! \brief Set 
	 */
	void setPackages(std::list <CtPackageRefElement> packages);

private:
	CtPackagesRef self;
	std::list <CtPackageRefElement>packages;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtPackagesLinks_H_ */
