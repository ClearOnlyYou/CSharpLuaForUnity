﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UnityEngine_QueueModeWrap
{
	public static void Register(LuaState L)
	{
		L.BeginEnum(typeof(UnityEngine.QueueMode));
		L.RegConstant("CompleteOthers", UnityEngine.QueueMode.CompleteOthers);
		L.RegConstant("PlayNow", UnityEngine.QueueMode.PlayNow);
		L.EndEnum();
		TypeTraits<UnityEngine.QueueMode>.Check = CheckType;
		StackTraits<UnityEngine.QueueMode>.Push = Push;
	}

	static void Push(IntPtr L, UnityEngine.QueueMode arg)
	{
		ToLua.Push(L, arg);
	}

	static bool CheckType(IntPtr L, int pos)
	{
		return TypeChecker.CheckEnumType(typeof(UnityEngine.QueueMode), L, pos);
	}
}

