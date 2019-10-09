//if (!surface_exists(global.surf))
//{
//    global.surf = surface_create(1024, 768);
//    view_surface_id[0] = global.surf;
//}

draw_text(352,20,string_hash_to_newline("Google Play Services Status: "+ string(GooglePlayServices_Status())));
draw_text(352,40, string_hash_to_newline(global.OurName + ": " + global.OurId));
draw_text(352,60,string_hash_to_newline("Achievement Status:"+string(achievement_login_status())));
draw_text(objMinus.x+24,objMinus.y-6,string_hash_to_newline(string(global.Score)));
draw_text(64,230,string_hash_to_newline("Achievements Available:" + string(achievement_available())));
draw_text(x,100,string_hash_to_newline("Friends list"));
draw_text(x,300,string_hash_to_newline("Leaderboard 1"));

var i;

for(i=0;i<global.numfriends;i++)
{
    draw_text(200,130+ i*30,string_hash_to_newline(global.friendname[i]) );
    
    var xscale = 32/sprite_get_width(global.friendpic[i]);
    var yscale = 32/sprite_get_height(global.friendpic[i]);
    draw_sprite_ext(global.friendpic[i],0,140,-16+130+i*30,xscale,yscale,0,c_white,1);
}

for(i=0;i<global.numentries;i++)
{
    var xscale = 32/sprite_get_width(global.playerpic[i]);
    var yscale = 32/sprite_get_height(global.playerpic[i]);
    draw_sprite_ext(global.playerpic[i],0,360,130+ i*30-16,xscale,yscale,0,c_white,1);
    draw_text(400,130+ i*30,string_hash_to_newline(string(global.playerrank[i]) + ":" +string(global.playername[i])+ " " +string(global.playerscore[i])));
}


