/*
 * RootCtCodelistLinks.h
 *
 * 
 */

#ifndef _RootCtCodelistLinks_H_
#define _RootCtCodelistLinks_H_


#include <string>
#include "CtCodelistRefVersion.h"
#include "RootCtCodelistRef.h"
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

class RootCtCodelistLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCtCodelistLinks();
	RootCtCodelistLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCtCodelistLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtCodelistRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCtCodelistRef  self);
	/*! \brief Get 
	 */
	std::list<CtCodelistRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <CtCodelistRefVersion> versions);

private:
	RootCtCodelistRef self;
	std::list <CtCodelistRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCtCodelistLinks_H_ */
