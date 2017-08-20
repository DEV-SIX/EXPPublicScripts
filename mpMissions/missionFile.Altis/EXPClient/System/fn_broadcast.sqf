/*
 * fn_boardcast
 *
 * [EXP] Gaming Community
 * www.expgamingcommunity.com
 * © 2017 [EXP] Gaming Community
 *
 * Author : Nicole & Metalman10 
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 *
 *	DO NOT REMOVE THIS!
 *
 */

private ["_type","_message"];

//--- Pull Data
_type = select 0;
_message = select 1;

//--- Check to make sure you actually filled out the correct fields.
if ( ( _type isEqualTo isNull ) || ( _message isEqualTo "" ) ) exitWith {};

switch (_type) do
{
	case 0:
	{
		systemChat format ["%1" , _message];
	};

	case 1:
	{
		systemChat format ["WARNING : %1 " , _message];
	};

	default 
	{
		//--- If shit goes down and everything breaks.
		diag_log format ["WAT NO TYPE DEFINED!"];
	};
};