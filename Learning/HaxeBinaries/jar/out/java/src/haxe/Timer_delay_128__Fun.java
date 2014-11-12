package haxe;
import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public  class Timer_delay_128__Fun extends haxe.lang.Function
{
	public    Timer_delay_128__Fun(haxe.root.Array<haxe.Timer> t, haxe.root.Array<haxe.lang.Function> f1)
	{
		super(0, 0);
		this.t = t;
		this.f1 = f1;
	}
	
	
	@Override public   java.lang.Object __hx_invoke0_o()
	{
		this.t.__get(0).stop();
		this.f1.__get(0).__hx_invoke0_o();
		return null;
	}
	
	
	public  haxe.root.Array<haxe.Timer> t;
	
	public  haxe.root.Array<haxe.lang.Function> f1;
	
}


