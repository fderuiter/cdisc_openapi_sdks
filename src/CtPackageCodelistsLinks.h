/*
 * CtPackageCodelistsLinks.h
 *
 * 
 */

#ifndef _CtPackageCodelistsLinks_H_
#define _CtPackageCodelistsLinks_H_


#include <string>
#include "CtCodelistRefElement.h"
#include "CtPackageCodelistsRef.h"
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

class CtPackageCodelistsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CtPackageCodelistsLinks();
	CtPackageCodelistsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtPackageCodelistsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtPackageCodelistsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtPackageCodelistsRef  self);
	/*! \brief Get 
	 */
	CtPackageCodelistsRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CtPackageCodelistsRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<CtCodelistRefElement> getCodelists();

	/*! \brief Set 
	 */
	void setCodelists(std::list <CtCodelistRefElement> codelists);

private:
	CtPackageCodelistsRef self;
	CtPackageCodelistsRef priorVersion;
	std::list <CtCodelistRefElement>codelists;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtPackageCodelistsLinks_H_ */
