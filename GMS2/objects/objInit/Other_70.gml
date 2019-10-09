show_debug_message("Social async action received");

var name;
var ident = ds_map_find_value(async_load, "id" ); // async_load is ONLY valid inside this event. It is usually -1 outside of the event.
var player_id,issuer_id,state,date_completed,date_issued,message;
var ach_type,ach_ident,ach_score;


if(ident == achievement_our_info)
{
  
    var name = ds_map_find_value(async_load, "name" );
    var playerid = ds_map_find_value(async_load, "playerid" );
  
     show_debug_message("received our info " + string(playerid));
  
    global.OurName = name;
    global.OurId = playerid;
    show_debug_message("Found name " + string(name) + " playerid " + string(playerid));
    achievement_load_friends();
    achievement_load_progress();
    if(os_type==os_android)
    {
        achievement_load_leaderboard("CgkIqbLxvI0fEAIQBg",1,100,achievement_filter_friends_only);
    }
    else
        achievement_load_leaderboard("leaderboard1id",1,100,achievement_filter_friends_only); //1=friends only
    
        
    // Ok so we are now logged in, let's look for any cloud saves...
    // cloud_synchronise();           
    // achievement_get_challenges();
    
}
else if(ident == achievement_friends_info)
{
    var numfriends = ds_map_find_value(async_load,"numfriends");
    var i;
     show_debug_message("Found numfriends " + string(numfriends)  );
    global.numfriends = numfriends;
    for(i=0;i<numfriends;i++)
    {
        var friendid = "Friend" + string(i);
        global.friendname[i] = ds_map_find_value(async_load,friendid);
        
        var friendidid = "Friendid" + string(i);
        global.friendid[i] = ds_map_find_value(async_load,friendidid);
        global.friendpic[i] = sprite12;
        var butt = instance_create_depth(180,130+i*30,"Compatibility_Instances_Depth_0",objChallenge);
        butt.playerid = global.friendid[i];
        achievement_get_pic(global.friendid[i]);
        butt.challengeid = "leaderboard1id";
        
     //   var friendpicurl = "Friendpicurl" + string(i);
     //   var friendurl = ds_map_find_value(async_load,friendpicurl);
        
     //   show_debug_message("Found friend name " + string(global.friendname[i]) + " with url " + friendurl );
    }
}
else if(ident ==achievement_leaderboard_info)
{
    var numentries = ds_map_find_value(async_load,"numentries");
    var lbid = ds_map_find_value(async_load,"leaderboardid");
    var i;
    show_debug_message("Found leaderboard " + lbid + " with numentries " + string(numentries)  );
    global.numentries = numentries;
    for(i=0;i<numentries;i++)
    {
        var playerid = "Player" + string(i);
        global.playername[i] = ds_map_find_value(async_load,playerid);
        
        var playeridid = "Playerid" + string(i);
        global.playerid[i] = ds_map_find_value(async_load,playeridid);
        global.playerpic[i] = sprite12;
        achievement_get_pic(global.playerid[i]);
        
        var playerrank = "Rank" + string(i);
        global.playerrank[i] = ds_map_find_value(async_load, playerrank);      
        
        var playerscore = "Score" + string(i);
        global.playerscore[i] = ds_map_find_value(async_load, playerscore);    
      
        
        show_debug_message("Found lb entry " +string(i) + " " + string(global.playername[i]) + " rank " + string(global.playerrank[i]) + " score " + string(global.playerscore[i] )+ " id " + string(global.playerid[i]));
    }
}
else if(ident ==achievement_achievement_info)
{
    var numentries = ds_map_find_value(async_load,"numentries");
    var i;
    show_debug_message("Loaded achievements with numentries " + string(numentries)  );
    
    
    for(i=0;i<numentries;i++)
    {
        var ach_id;
        var aid = "Ach" + string(i);
        ach_id = ds_map_find_value(async_load,aid);
       
        var completion;
        var compi = "AchComp" + string(i);
        completion = ds_map_find_value(async_load,compi); 
       
      
        show_debug_message("Found achievement " + string(i) + " " + string(ach_id) + " comp " + string(completion) );
    }
}
else if(ident ==achievement_pic_loaded)
{
    var picid = ds_map_find_value(async_load,"playerid");
    var spriteid = ds_map_find_value(async_load,"spriteid");
    
    show_debug_message("Loaded pic " + string(picid) + " " + string(spriteid)  );
    
    if(spriteid!= -1)
    {
        for(i=0;i<global.numfriends;i++)
        {
            if(global.friendid[i] == picid)
            {
                global.friendpic[i] = spriteid;
            }
        }
        
        for(i=0;i<global.numentries;i++)
        {
            if(global.playerid[i] == picid)
            {
                global.playerpic[i] = spriteid;
            }
        }
    }
}
else if(ident == achievement_challenge_list_received)
{
    show_debug_message("Challenge list received by game");
    
    var numentries = ds_map_find_value(async_load,"numchallenges");
    var i;
    show_debug_message("challenge list received of length " + string(numentries)  );
    
    
    for(i=0;i<numentries;i++)
    {
        
        var aid = "Challenge" + string(i)+"playerid";
        player_id = ds_map_find_value(async_load,aid);
       
        var compi = "Challenge" + string(i) +"issuerid";
        issuer_id = ds_map_find_value(async_load,compi); 
       
        aid = "Challenge" + string(i)+"state";
        state = ds_map_find_value(async_load,aid);
      
        aid = "Challenge" + string(i)+"message";
        message = ds_map_find_value(async_load,aid);
        
        aid = "Challenge" + string(i)+"completeddate";
        date_completed = ds_map_find_value(async_load,aid);
        
        aid = "Challenge" + string(i)+"issueddate";
        date_issued = ds_map_find_value(async_load,aid);
        
         aid = "Challenge" + string(i)+"type";
        ach_type = ds_map_find_value(async_load,aid);
        
        aid = "Challenge" + string(i)+"identifier";
        ach_ident = ds_map_find_value(async_load,aid);
        
        aid = "Challenge" + string(i)+"score";
        ach_score = ds_map_find_value(async_load,aid);
        
        show_debug_message("Found challenge " + string(i) + " to " + string(player_id) + " from " + string(issuer_id)
        + " message " + string(message)
        + " completed " + string(date_completed)
        + " issued " + string(date_issued)
        + " state " + string(state)
          + " type " + string(ach_type)
         + " ident " + string(ach_ident)
         + " score " + string(ach_score) 
           );
    }
}
else if(ident == achievement_challenge_completed)
{
    show_debug_message("We have completed a challenge");
    
    
     
        var aid = "playerid";
        player_id = ds_map_find_value(async_load,aid);
       
        var compi = "issuerid";
        issuer_id = ds_map_find_value(async_load,compi); 
       
        aid = "state";
        state = ds_map_find_value(async_load,aid);
      
        aid = "message";
        message = ds_map_find_value(async_load,aid);
        
        aid = "completeddate";
        date_completed = ds_map_find_value(async_load,aid);
        
        aid = "issueddate";
        date_issued = ds_map_find_value(async_load,aid);
        
        aid = "type";
        ach_type = ds_map_find_value(async_load,aid);
        
        aid = "identifier";
        ach_ident = ds_map_find_value(async_load,aid);
        
        aid = "score";
        ach_score = ds_map_find_value(async_load,aid);
        
        show_debug_message("Completed challenge " + " to " + string(player_id) + " from " + string(issuer_id)
        + " message " + string(message)
        + " completed " + string(date_completed)
        + " issued " + string(date_issued)
        + " state " + string(state)
         + " type " + string(ach_type)
         + " ident " + string(ach_ident)
         + " score " + string(ach_score)
           );
    
    
}
else if(ident == achievement_challenge_completed_by_remote)
{
    show_debug_message("Someone else completed our challenge");
    
     
    
        var aid = "playerid";
        player_id = ds_map_find_value(async_load,aid);
       
        var compi = "issuerid";
        issuer_id = ds_map_find_value(async_load,compi); 
       
        aid = "state";
        state = ds_map_find_value(async_load,aid);
      
        aid = "message";
        message = ds_map_find_value(async_load,aid);
        
        aid = "completeddate";
        date_completed = ds_map_find_value(async_load,aid);
        
        aid = "issueddate";
        date_issued = ds_map_find_value(async_load,aid);
        
         aid = "type";
        ach_type = ds_map_find_value(async_load,aid);
        
        aid = "identifier";
        ach_ident = ds_map_find_value(async_load,aid);
        
        aid = "score";
        ach_score = ds_map_find_value(async_load,aid);
        
        show_debug_message("Completed challenge " + " to " + string(player_id) + " from " + string(issuer_id)
        + " message " + string(message)
        + " completed " + string(date_completed)
        + " issued " + string(date_issued)
        + " state " + string(state)
          + " type " + string(ach_type)
         + " ident " + string(ach_ident)
         + " score " + string(ach_score) 
           );
    
}
else if(ident == achievement_challenge_received)
{
    show_debug_message("we have been challenged by someone");
    
     
     
        var aid = "playerid";
        player_id = ds_map_find_value(async_load,aid);
       
        var compi = "issuerid";
        issuer_id = ds_map_find_value(async_load,compi); 
       
        aid = "state";
        state = ds_map_find_value(async_load,aid);
      
        aid = "message";
        message = ds_map_find_value(async_load,aid);
        
        aid = "completeddate";
        date_completed = ds_map_find_value(async_load,aid);
        
        aid = "issueddate";
        date_issued = ds_map_find_value(async_load,aid);
        
         aid = "type";
        ach_type = ds_map_find_value(async_load,aid);
        
        aid = "identifier";
        ach_ident = ds_map_find_value(async_load,aid);
        
        aid = "score";
        ach_score = ds_map_find_value(async_load,aid);
        
        
        show_debug_message("Completed challenge " + " to " + string(player_id) + " from " + string(issuer_id)
        + " message " + string(message)
        + " completed " + string(date_completed)
        + " issued " + string(date_issued)
        + " state " + string(state)
         + " type " + string(ach_type)
         + " ident " + string(ach_ident)
         + " score " + string(ach_score)  
           );
    
}
else if(ident == achievement_challenge_launched)
{
    show_debug_message("Game launched by clicking on a challenge");
    
     
     
        var aid = "playerid";
        player_id = ds_map_find_value(async_load,aid);
       
        var compi = "issuerid";
        issuer_id = ds_map_find_value(async_load,compi); 
       
        aid = "state";
        state = ds_map_find_value(async_load,aid);
      
        aid = "message";
        message = ds_map_find_value(async_load,aid);
        
        aid = "completeddate";
        date_completed = ds_map_find_value(async_load,aid);
        
        aid = "issueddate";
        date_issued = ds_map_find_value(async_load,aid);
        
         aid = "type";
        ach_type = ds_map_find_value(async_load,aid);
        
        aid = "identifier";
        ach_ident = ds_map_find_value(async_load,aid);
        
        aid = "score";
        ach_score = ds_map_find_value(async_load,aid);
        
        
        show_debug_message("Completed challenge " + " to " + string(player_id) + " from " + string(issuer_id)
        + " message " + string(message)
        + " completed " + string(date_completed)
        + " issued " + string(date_issued)
        + " state " + string(state)
          + " type " + string(ach_type)
         + " ident " + string(ach_ident)
         + " score " + string(ach_score) 
           );
}
else
{
    show_debug_message("Unknown social event received id:" + string(ident));
}

