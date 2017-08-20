/*
 * initPlayerLocal
 *
 * [EXP] Gaming Community
 * www.expgamingcommunity.com
 * © 2017 [EXP] Gaming Community
 *
 * Author : Nicole & Metalman10 
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

//--- EXP Client Functions
waitUntil {!isNull (findDisplay 46)};
{
    _x params [["_function",""],["_file",""]];
    private _fn = compileFinal (preprocessFileLineNumbers _file);
    missionNamespace setVariable [_function,_fn];
    true
} 
count
[
	["EXP_MainConfig","EXPClient\EXP_MainConfig.sqf"],
	["EXP_fn_AutoMessages","EXPClient\Functions\EXP_fn_AutoMessages.sqf"],
	["EXP_fn_playerCheck","EXPClient\Functions\EXP_fn_playerCheck.sqf"]
];

//--- Calls Global Variables
call EXP_MainConfig;


//---- Client Functions Init

if (useAutoMessages) then
{
	[
		true,	//--- Log To RPT?
		60		//--- Time Between Each Message
	] call EXP_fn_AutoMessages;
};

//--- DO NOT REMOVE! UNLESS U WANT UR SERVER TO BURN
call EXP_fn_playerCheck;