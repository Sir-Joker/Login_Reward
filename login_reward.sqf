/**
Filename: 			login_reward.sqf

Based on the ETG Reward Script by Kellojo
Works with the Exile Player Reward Script by Andrew_S90
Edited by: 			SirJoker
Last Edited: 		17.11.2017
Do what you want with these lines, but share it again 
**/
private["_player"];

//	Do not edit below me - only if you know what you are doing ;)
//	Check if client has logged in before

	_LoginCount = profileNamespace getVariable "var_Server_Logins";
	_LoginReward = profileNamespace getVariable "var_Reward_Login";
	if (isNil "_LoginCount") then 
	{
		profileNamespace 		setVariable ["var_Server_Logins",1];
		saveProfileNamespace;
		_LoginCount = 			profileNamespace getVariable "var_Server_Logins";
	};
	if (isNil "_LoginReward") then 
	{
		profileNamespace 		setVariable ["var_Reward_Login",true];
		saveProfileNamespace;
		_LoginReward = 			profileNamespace getVariable "var_Reward_Login";
	};

if (_LoginReward) then
{
	//	Reward player for loging in...

	_Logins = 					profileNamespace getVariable "var_Server_Logins";
	//_LogText = "Nach jeder Stunde online erhöht sich deine Chance auf eine Belohnung!";
	//["WelcomeTitleAndText", ["REWARD!", "Dies war dein "+_Logins+_LogText]] call ExileClient_gui_toaster_addTemplateToast; sleep 10;
	systemChat 				format ["Welcome back %1!",(name player)];
	systemChat 				format ["Thank you for logging in for the %1th time!",_Logins];
	systemChat 				"You need to be online for at least one hour to get a higher chance to recieve a reward.";
	sleep 0.1;
	// Adds Login Count +1
	_NewLoginCount = 			_LoginCount + 1;
	profileNamespace setVariable ["var_Reward_Login",false];
	saveProfileNamespace;

//	***Giving the player a reward***

//	Loginreward tier setup
//	Numbers represent logins
//	Feel free to edit them to your likings
//	Tier                  //Rewards

	_tier1 = 	5;			
	_tier2 = 	10;			
	_tier3 = 	15;			
	_tier4 = 	20;			
	_tier5 = 	30;			
	_tier6 = 	45;			
	_tier7 = 	65;			
	_tier8 = 	90;			
	_tier9 = 	120;		
	_tier10 = 	200;		

//First Login
	if (_Logins = 1) then 
	{
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000],"Exile_Item_Flag","Exile_Item_SafeKit"]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 1 reward!";
		systemChat 				"Have fun.";
	};

	
//Tier 1
	if ((_Logins <= _tier1) && (_Logins > 1)) then 
	{
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 1 reward!";
		systemChat 				"Have fun.";
	};
//Tier 2
	if ((_tier1 <= _Logins) && (_Logins < _tier2)) then 
	{
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;		//	Message
		systemChat 				"Here is your login tier 2 reward!";
		systemChat 				"Have fun.";
	};
//Tier 3
	if ((_tier2 <= _Logins) && (_Logins < _tier3)) then 
	{
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 3 reward!";
		systemChat 				"Have fun.";
	};
//Tier 4
	if ((_tier3 <= _Logins) && (_Logins < _tier4)) then 
	{	
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 4 reward!";
		systemChat 				"Have fun.";
	};
//Tier 5
	if ((_tier4 <= _Logins) && (_Logins < _tier5)) then 
	{
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 5 reward!";
		systemChat 				"Have fun.";
	};
//Tier 6
	if ((_tier5 <= _Logins) && (_Logins < _tier6)) then 
	{
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 6 reward!";
		systemChat 				"Have fun.";
	};
//Tier 7
	if ((_tier6 <= _Logins) && (_Logins < _tier7)) then 
	{ 	
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 7 reward!";
		systemChat 				"Have fun.";
	};
//Tier 8
	if ((_tier7 <= _Logins) && (_Logins < _tier8)) then 
	{ 
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 8 reward!";
		systemChat 				"Have fun.";
	};
//Tier 9
	if ((_tier8 <= _Logins) && (_Logins < _tier9)) then 
	{	
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 9 reward!";
		systemChat 				"Have fun.";
	};
//Tier 10
	if (_tier9 <= _Logins) then 
	{
		["addRewardsRequest", [getplayeruid player, [["ExileScore",1000],["ExileMoney",2000]]]] call ExileClient_system_network_send;
		//	Message
		systemChat 				"Here is your login tier 10 reward!";
		systemChat 				"Have fun.";
	};
}
else
{
systemChat 				"You need to be online for at least one hour to get a higher chance to recieve a reward.";
};	
sleep 600;
profileNamespace 			setVariable ["var_Server_Logins",_NewLoginCount];
profileNamespace			setVariable ["var_Reward_Login",true];
saveProfileNamespace;