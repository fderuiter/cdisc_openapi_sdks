/*
 * CtCodelistLinks.h
 *
 * 
 */

#ifndef _CtCodelistLinks_H_
#define _CtCodelistLinks_H_


#include <string>
#include "CtCodelistRef.h"
#include "CtPackageRef.h"
#include "RootCtCodelistRef.h"
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

class CtCodelistLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CtCodelistLinks();
	CtCodelistLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtCodelistLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtCodelistRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtCodelistRef  self);
	/*! \brief Get 
	 */
	CtPackageRef getParentPackage();

	/*! \brief Set 
	 */
	void setParentPackage(CtPackageRef  parentPackage);
	/*! \brief Get 
	 */
	RootCtCodelistRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootCtCodelistRef  rootItem);
	/*! \brief Get 
	 */
	CtCodelistRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CtCodelistRef  priorVersion);

private:
	CtCodelistRef self;
	CtPackageRef parentPackage;
	RootCtCodelistRef rootItem;
	CtCodelistRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtCodelistLinks_H_ */
