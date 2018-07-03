-- Generated by CSharp.lua Compiler 1.1.0
local System = System
local UnityEngine = UnityEngine
local Sample
System.usingDeclare(function (global) 
  Sample = global.Sample
end)
System.namespace("Sample", function (namespace) 
  namespace.class("TestHelloWord", function (namespace) 
    local Awake, Start, Update
    Awake = function (this) 
      UnityEngine.Debug.Log("TestHelloWord")
      this:getgameObject():AddComponent(Sample.TestCoroutine)
      local c = this:GetComponent(UnityEngine.MonoBehaviour)
      UnityEngine.MonoBehaviour.print(c:getname())

      local obj1 = UnityEngine.Object.FindObjectOfType(UnityEngine.MonoBehaviour)
      UnityEngine.Object.Destroy(obj1)

      local i = TestUtils.Load("Assets/BaseScripts/CSharpLua/Examples/01_HelloWorld/TestLoader.prefab")
      local obj = UnityEngine.Object.Instantiate(i)
      obj:gettransform():setparent(this:gettransform())

      local a = UnityEngine.Vector2(1, 1)
      a:set(0, 10)
      UnityEngine.MonoBehaviour.print(a)
      UnityEngine.MonoBehaviour.print(UnityEngine.Vector2.getup())
    end
    Start = function (this) 
      UnityEngine.MonoBehaviour.print("TestHelloWord.Start")
    end
    Update = function (this) 
      UnityEngine.MonoBehaviour.print("TestHelloWord.Update")
    end
    return {
      __inherits__ = function (global) 
        return {
          global.UnityEngine.MonoBehaviour
        }
      end, 
      Awake = Awake, 
      Start = Start, 
      Update = Update
    }
  end)
end)
