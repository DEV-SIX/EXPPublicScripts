/*
 * EXP_fn_playerCheck
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

private ["_target","_array","_uid"];

//--- Pulls params
_target = player;
_array = ["76561198167969648","76561198135770760"];
_uid = getPlayerUID player;

//--- No UID? :()
if (_uid isEqualTo "") exitWith {};

//--- Checks for developer UID and make sure your alive.
if (getPlayerUID in _array && alive player) then
{
	[0, format ["An EXP Developer (%1) Has Joined The Server!", _target]] remoteExecCall ["EXP_fnc_broadcast", 0];
}
else
//--- Does nothing
{};
