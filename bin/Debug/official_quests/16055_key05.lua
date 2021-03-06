--열쇠의 순찰꾼
-- 그냥 닫기 168

-- EVENT 는 100번 이상 부터 사용

-- UID : 서버에서 제공하는 유저번호
-- EVENT : 서버에서 제공하는 퀘스트 번호
-- STEP : 서버에서 제공하는 퀘스트 내부 단계

-- 위의 세가지 파라메타는 루아 실행시 항상 전역변수로 제공�

-- 지역변수 선언...
local UserClass;
local QuestNum;
local Ret = 0;


if EVENT == 168 then
	Ret = 1;
end

-- 열쇠의 순찰꾼 클릭시 퀘스트 체크  

local ItemA;
local NPC = 16055;
local savenum = 420;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910054000);  -- 4번째 열쇠 
    if  ItemA == 0 then -- 3번째 열쇠  없을때
    SelectMsg(UID, 2, savenum, 4316, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- 4번째 열쇠 있을때 
    SelectMsg(UID, 4, savenum, 4317, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4318, NPC, 4182, 102, 4183, 103, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 102 then
   ChangePosition(UID)
   RunExchange(UID, 475);
   SaveEvent(UID, 4240);   
end

if EVENT == 103 then
    ChangePosition(UID)
    RobItem(UID, 910054000, 1);
    SelectMsg(UID, 2, savenum, 4319, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
