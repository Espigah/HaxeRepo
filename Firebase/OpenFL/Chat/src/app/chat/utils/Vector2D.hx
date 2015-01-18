package app.chat.utils;

import haxe.ds.Vector;

/**
 * ...
 * @author espigah
 */
class Vector2D
{
    public static function create(w:Int, h:Int):Array<Array<Int>>
    {
        var v = new Vector(w);
        for (i in 0...w)
        {
            v[i] = new Vector(h);			
        }
        return v;
    }
}
