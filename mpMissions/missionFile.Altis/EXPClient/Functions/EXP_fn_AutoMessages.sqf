/**
 * EXP_fn_AutoMessages
 *
 * [EXP] Gaming Community
 * www.expgamingcommunity.com
 * © 2017 [EXP] Gaming Community
 *
 * Author : Nicole And Metalman10
 *
 * How to use :
 *
 * [true,60] call EXP_AutoMessages;
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private ["_useDebug","_timer","_stringToValue"];
_useDebug = _this select 0;			//--- Long To RPT
_timer = _this select 1;			//--- How Long Between Each Message..

while {true} do
{
	_stringToValue = selectRandom
	[
		"All Cops Must Be In Teamspeak!",
		"All Medics Must Be In Teamspeak!",
		"Need Admin Assistace? Join Teamspeak!",
		"Make Sure To Sign Up On Our Forums For More Info On Our Server!",
		"Think You Have What it Takes To Join Our Team? Apply On The Fourms!"
	];

	if (_useDebug) then
	{
		systemChat format ["%1",_stringToValue];
		diag_log format ["[ EXP :: DEBUG ] :: %1",_stringToValue];
	}
	else
	{
		systemChat format ["%1",_stringToValue];
	};

	uiSleep _timer;
};

