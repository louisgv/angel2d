%module angel
%{
#include "../../Actors/GridActor.h"
#include "../../Actors/FullScreenActor.h"
#include "../../Actors/HUDActor.h"
%}

class GridActor : public Renderable
{
public:
	GridActor();
	GridActor(const Color& lines, const Color& axis, float interval, const Vector2& minCoord, const Vector2& maxCoord);

	void SetLineColor(const Color &lineCol);
	const Color& GetLineColor() const;

	void SetAxisColor(const Color &axisCol);
	const Color& GetAxisColor() const;

	void SetInterval(float interval);
	const float GetInterval() const;

	void SetMinCoord(const Vector2 &minCoord);
	const Vector2 GetMinCoord() const;

	void SetMaxCoord(const Vector2 &maxCoord);
	const Vector2 GetMaxCoord() const;

	virtual void Render();
	virtual void Update(float dt);
};

class FullScreenActor : public Actor
{
public:
	FullScreenActor();

	void SetLock(bool locked);
	const bool IsLocked();

	virtual void ReceiveMessage(Message *message);

	virtual const String GetClassName() const;
};

class HUDActor : public Actor 
{
public:

	virtual void Render();

	virtual const String GetClassName() const;
};
