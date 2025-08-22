/*
 * CtTermLinks.h
 *
 * 
 */

#ifndef _CtTermLinks_H_
#define _CtTermLinks_H_


#include <string>
#include "CtCodelistRef.h"
#include "CtPackageRef.h"
#include "CtTermRef.h"
#include "RootCtTermRef.h"
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

class CtTermLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CtTermLinks();
	CtTermLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtTermLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtTermRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtTermRef  self);
	/*! \brief Get 
	 */
	CtPackageRef getParentPackage();

	/*! \brief Set 
	 */
	void setParentPackage(CtPackageRef  parentPackage);
	/*! \brief Get 
	 */
	CtCodelistRef getParentCodelist();

	/*! \brief Set 
	 */
	void setParentCodelist(CtCodelistRef  parentCodelist);
	/*! \brief Get 
	 */
	RootCtTermRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootCtTermRef  rootItem);
	/*! \brief Get 
	 */
	CtTermRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CtTermRef  priorVersion);

private:
	CtTermRef self;
	CtPackageRef parentPackage;
	CtCodelistRef parentCodelist;
	RootCtTermRef rootItem;
	CtTermRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtTermLinks_H_ */
