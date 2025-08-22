/*
 * RootCtTermLinks.h
 *
 * 
 */

#ifndef _RootCtTermLinks_H_
#define _RootCtTermLinks_H_


#include <string>
#include "CtTermRefVersion.h"
#include "RootCtTermRef.h"
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

class RootCtTermLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCtTermLinks();
	RootCtTermLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCtTermLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtTermRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCtTermRef  self);
	/*! \brief Get 
	 */
	std::list<CtTermRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <CtTermRefVersion> versions);

private:
	RootCtTermRef self;
	std::list <CtTermRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCtTermLinks_H_ */
