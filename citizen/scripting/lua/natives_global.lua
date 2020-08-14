-- Native definitions

native "APP_CLEAR_BLOCK"
    hash "0x5FE1DF3342DB7DBA"
	jhash (0xDAB86A18)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_CLOSE_APP"
    hash "0xE41C65E07A5F05FC"
	jhash (0x03767C7A)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_CLOSE_BLOCK"
    hash "0xE8E3FCF72EAC0EF8"
	jhash (0xED97B202)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_DATA_VALID"
    hash "0x846AA8E7D55EE5B6"
	jhash (0x72BDE002)
	ns "APP"
	returns "int"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "APP_DELETE_APP_DATA"
    hash "0x44151AEA95C8A003"
	jhash (0x2A2FBD1C)
	arguments {
		charPtr "appName",
	}
	ns "APP"
	returns "BOOL"
	doc [[!
	]]

native "APP_GET_DELETED_FILE_STATUS"
    hash "0xC9853A2BE3DED1A6"
	jhash (0x784D550B)
	ns "APP"
	returns "int"
	doc [[!
	]]

native "APP_GET_FLOAT"
    hash "0x1514FB24C02C2322"
	jhash (0xD87F3A1C)
	arguments {
		charPtr "property",
	}
	ns "APP"
	returns "float"
	doc [[!
	]]

native "APP_GET_INT"
    hash "0xD3A58A12C77D9D4B"
	jhash (0x2942AAD2)
	arguments {
		ScrHandle "property",
	}
	ns "APP"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: char* property
NativeDB Return Type: int
```
</summary>
	]]

native "APP_GET_STRING"
    hash "0x749B023950D2311C"
	jhash (0x849CEB80)
	arguments {
		charPtr "property",
	}
	ns "APP"
	returns "charPtr"
	doc [[!
	]]

native "APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT"
    hash "0x71EEE69745088DA0"
	jhash (0xD368BA15)
	ns "APP"
	returns "BOOL"
	doc [[!
	]]

native "APP_HAS_SYNCED_DATA"
    hash "0xCA52279A7271517F"
	jhash (0x1DE2A63D)
	arguments {
		charPtr "appName",
	}
	ns "APP"
	returns "BOOL"
	doc [[!
	]]

native "APP_SET_APP"
    hash "0xCFD0406ADAF90D2B"
	jhash (0x8BAC4146)
	arguments {
		charPtr "appName",
	}
	ns "APP"
	returns "void"
	doc [[!
<summary>
```
Called in the gamescripts like:  
APP::APP_SET_APP("car");  
APP::APP_SET_APP("dog");  
```
</summary>
	]]

native "APP_SAVE_DATA"
    hash "0x95C5D356CDA6E85F"
	jhash (0x84A3918D)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_FLOAT"
    hash "0x25D7687C68E0DAA4"
	jhash (0xF3076135)
	arguments {
		charPtr "property",
		float "value",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_BLOCK"
    hash "0x262AB456A3D21F93"
	jhash (0xC2D54DD9)
	arguments {
		charPtr "blockName",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_INT"
    hash "0x607E8E3D3E4F9611"
	jhash (0x1B509C32)
	arguments {
		charPtr "property",
		int "value",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_STRING"
    hash "0x3FF2FCEC4B7721B4"
	jhash (0x23DF19A8)
	arguments {
		charPtr "property",
		charPtr "value",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "ADD_LINE_TO_CONVERSATION"
    hash "0xC5EF963405593646"
	jhash (0x96CD0513)
	arguments {
		int "index",
		charPtr "p1",
		charPtr "p2",
		int "p3",
		int "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		int "p9",
		BOOL "p10",
		BOOL "p11",
		BOOL "p12",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NOTE: ones that are -1, 0 - 35 are determined by a function where it gets a TextLabel from a global then runs,  
_GET_TEXT_SUBSTRING and depending on what the result is it goes in check order of 0 - 9 then A - Z then z (lowercase). So it will then return 0 - 35 or -1 if it's 'z'. The func to handle that ^^ is func_67 in dialog_handler.c atleast in TU27 Xbox360 scripts.  
p0 is -1, 0   
p1 is a char or string (whatever you wanna call it)  
p2 is Global 10597 + i * 6. 'i' is a while(i < 70) loop  
p3 is again -1, 0 - 35   
p4 is again -1, 0 - 35   
p5 is either 0 or 1 (bool ?)  
p6 is either 0 or 1 (The func to determine this is bool)  
p7 is either 0 or 1 (The func to determine this is bool)  
p8 is either 0 or 1 (The func to determine this is bool)  
p9 is 0 - 3 (Determined by func_60 in dialogue_handler.c)  
p10 is either 0 or 1 (The func to determine this is bool)  
p11 is either 0 or 1 (The func to determine this is bool)  
p12 is unknown as in TU27 X360 scripts it only goes to p11.  
```
</summary>
	]]

native "ADD_ENTITY_TO_AUDIO_MIX_GROUP"
    hash "0x153973AB99FE8980"
	jhash (0x2BC93264)
	arguments {
		Entity "entity",
		charPtr "groupName",
		float "p2",
	}
	alias "0x153973AB99FE8980"
	alias "_DYNAMIC_MIXER_RELATED_FN"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
ADD_E* (most likely ADD_ENTITY_*)  
All found occurrences in b678d:  
pastebin.com/ceu67jz8  
Still not sure on the functionality of this native but it has something to do with dynamic mixer groups defined in dynamix.dat15  
```
</summary>
	]]

native "ADD_PED_TO_CONVERSATION"
    hash "0x95D9F4BC443956E7"
	jhash (0xF8D5EB86)
	arguments {
		int "index",
		Ped "ped",
		charPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
4 calls in the b617d scripts. The only one with p0 and p2 in clear text:  
AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");  
=================================================  
One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15.  
Based on it asking if does_entity_exist for the global I have determined that p1 is, in fact, the ped, but could be wrong.  
```
</summary>
	]]

native "AUDIO_IS_SCRIPTED_MUSIC_PLAYING"
    hash "0x845FFC3A4FEEFA3E"
	jhash (0x86E995D1)
	ns "AUDIO"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "BLIP_SIREN"
    hash "0x1B9025BDA76822B6"
	jhash (0xC0EB6924)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Plays the siren sound of a vehicle which is otherwise activated when fastly double-pressing the horn key.  
Only works on vehicles with a police siren.  
```
</summary>
	]]

native "_CAN_PED_SPEAK"
    hash "0x49B99BF3FDA89A7A"
	jhash (0x8BD5F11E)
	arguments {
		Ped "ped",
		charPtr "speechName",
		BOOL "unk",
	}
	alias "0x49B99BF3FDA89A7A"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if the ped can play the speech or has the speech file, last parameter is usually 0  
```
</summary>
	]]

native "_CANCEL_CURRENT_POLICE_REPORT"
    hash "0xB4F90FAF7670B16F"
	alias "0xB4F90FAF7670B16F"
	alias "_DISABLE_POLICE_REPORTS"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "CANCEL_MUSIC_EVENT"
    hash "0x5B17A90291133DA5"
	jhash (0x89FF942D)
	arguments {
		charPtr "eventName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
```
</summary>
	]]

native "CLEAR_ALL_BROKEN_GLASS"
    hash "0xB32209EFFDC04913"
	jhash (0xE6B033BF)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Removes broken glass particles.  
```
</summary>
	]]

native "CLEAR_AMBIENT_ZONE_LIST_STATE"
    hash "0x120C48C614909FA4"
	jhash (0x38B9B8D4)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "CLEAR_AMBIENT_ZONE_STATE"
    hash "0x218DD44AAAC964FF"
	jhash (0xCDFF3C82)
	arguments {
		charPtr "zoneName",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This function also has a p2, unknown. Signature AUDIO::CLEAR_AMBIENT_ZONE_STATE(char* zoneName, bool p1, Any p2);  
Still needs more research.   
Here are the names I've found: pastebin.com/AfA0Qjyv  
New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
```
</summary>
	]]

native "CREATE_NEW_SCRIPTED_CONVERSATION"
    hash "0xD2C91A0B572AAE56"
	jhash (0xB2BC25F8)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "CLEAR_CUSTOM_RADIO_TRACK_LIST"
    hash "0x1654F24A88A8E3FE"
	jhash (0x1D766976)
	arguments {
		charPtr "radioStation",
	}
	alias "0x1654F24A88A8E3FE"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
3 calls in the b617d scripts, removed duplicate.  
AUDIO::_1654F24A88A8E3FE("RADIO_16_SILVERLAKE");  
AUDIO::_1654F24A88A8E3FE("RADIO_01_CLASS_ROCK");  
```
</summary>
	]]

native "ENABLE_VEHICLE_EXHAUST_POPS"
    hash "0x2BE4BC731D039D5A"
	jhash (0x2A60A90E)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	alias "0x2BE4BC731D039D5A"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "DISABLE_PED_PAIN_AUDIO"
    hash "0xA9A41C1E940FB0E8"
	jhash (0x3B8E2D5F)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_FORCE_AMBIENT_SIREN"
    hash "0x552369F549563AD5"
	jhash (0x13EB5861)
	arguments {
		BOOL "value",
	}
	alias "0x552369F549563AD5"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
if value is set to true, and ambient siren sound will be played.  
-------------------------------------------------------------------------  
Appears to enable/disable an audio flag.  
```
</summary>
	]]

native "ENABLE_STALL_WARNING_SOUNDS"
    hash "0xC15907D667F7CFB2"
	jhash (0x563B635D)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	alias "0xC15907D667F7CFB2"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_FORCE_VEHICLE_ENGINE_AUDIO"
    hash "0x4F0C413926060B38"
	jhash (0x33B0B007)
	arguments {
		Vehicle "vehicle",
		charPtr "audioName",
	}
	alias "0x4F0C413926060B38"
	alias "_SET_VEHICLE_AUDIO"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This native sets the audio of the specified vehicle to audioName (p1).  
Use the audioNameHash found in vehicles.meta  
Example:  
_FORCE_VEHICLE_ENGINE_SOUND(veh, "ADDER");  
The selected vehicle will now have the audio of the Adder.  
FORCE_VEHICLE_???  
```
</summary>
	]]

native "FIND_RADIO_STATION_INDEX"
    hash "0x8D67489793FF428B"
	jhash (0xECA1512F)
	arguments {
		int "station",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "_GET_AMBIENT_VOICE_NAME_HASH"
    hash "0x5E203DA2BA15D436"
	arguments {
		Ped "ped",
	}
	alias "0x5E203DA2BA15D436"
	ns "AUDIO"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: Hash
```
</summary>
	]]

native "FREEZE_MICROPHONE"
    hash "0xD57AAAE0E2214D11"
	jhash (0x2B9D91E8)
	alias "0xD57AAAE0E2214D11"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "GET_AUDIBLE_MUSIC_TRACK_TEXT_ID"
    hash "0x50B196FC9ED6545B"
	jhash (0xA2B88CA7)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "FREEZE_RADIO_STATION"
    hash "0x344F393B027E38C3"
	jhash (0x286BF543)
	arguments {
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "GET_IS_PRELOADED_CONVERSATION_READY"
    hash "0xE73364DB90778FFA"
	jhash (0x336F3D35)
	alias "0xE73364DB90778FFA"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "GET_NETWORK_ID_FROM_SOUND_ID"
    hash "0x2DE3F0A134FFBC0D"
	jhash (0x2576F610)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
Could this be used alongside either,   
SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES or _SET_NETWORK_ID_SYNC_TO_PLAYER to make it so other players can hear the sound while online? It'd be a bit troll-fun to be able to play the Zancudo UFO creepy sounds globally.  
```
</summary>
	]]

native "GET_CURRENT_SCRIPTED_CONVERSATION_LINE"
    hash "0x480357EE890C295A"
	jhash (0x9620E41F)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_MUSIC_PLAYTIME"
    hash "0xE7A0D23DC414507B"
	jhash (0xD633C809)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_RADIO_STATION_GENRE"
    hash "0xA571991A7FE6CCEB"
	jhash (0x872CF0EA)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_NUM_UNLOCKED_RADIO_STATIONS"
    hash "0xF1620ECB50E01DE7"
	jhash (0xCC91FCF5)
	alias "_MAX_RADIO_STATION_INDEX"
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_RADIO_STATION_NAME"
    hash "0xF6D733C32076AD03"
	jhash (0xD909C107)
	ns "AUDIO"
	returns "charPtr"
	doc [[!
<summary>
```
Returns active radio station name  
```
</summary>
	]]

native "GET_PLAYER_RADIO_STATION_INDEX"
    hash "0xE8AF77C4C06ADC93"
	jhash (0x1C4946AC)
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
Returns 255 (radio off index) if the function fails.  
```
</summary>
	]]

native "GET_RADIO_STATION_NAME"
    hash "0xB28ECA15046CA8B9"
	jhash (0x3DF493BC)
	arguments {
		int "radioStation",
	}
	ns "AUDIO"
	returns "charPtr"
	doc [[!
<summary>
```
Returns String with radio station name.  
```
</summary>
	]]

native "GET_SOUND_ID"
    hash "0x430386FE9BF80B45"
	jhash (0x6AE0AD56)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_SOUND_ID_FROM_NETWORK_ID"
    hash "0x75262FD12D0A1C84"
	jhash (0xD064D4DC)
	arguments {
		int "netId",
	}
	alias "0x75262FD12D0A1C84"
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_STREAM_PLAY_TIME"
    hash "0x4E72BBDBCA58A3DB"
	jhash (0xB4F0AD56)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_DEFAULT_HORN"
    hash "0x02165D55000219AC"
	jhash (0xE84ABC19)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "Hash"
	doc [[!
<summary>
```
Returns hash of default vehicle horn  
Hash is stored in audVehicleAudioEntity  
```
</summary>
	]]

native "_GET_VEHICLE_HORN_HASH"
    hash "0xACB5DCCA1EC76840"
	jhash (0xFD4B5B3B)
	arguments {
		Vehicle "vehicle",
	}
	alias "0xACB5DCCA1EC76840"
	ns "AUDIO"
	returns "Hash"
	doc [[!
<summary>
```
Seems to get the hash of the vehicle's currently installed horn?  
```
</summary>
	]]

native "_HAS_MULTIPLAYER_AUDIO_DATA_LOADED"
    hash "0x544810ED9DB6BBE6"
	alias "0x544810ED9DB6BBE6"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
HAS_*
```
</summary>
	]]

native "_HAS_MULTIPLAYER_AUDIO_DATA_UNLOADED"
    hash "0x5B50ABB1FE3746F4"
	alias "0x5B50ABB1FE3746F4"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
HAS_*
```
</summary>
	]]

native "HAS_SOUND_FINISHED"
    hash "0xFCBDCE714A7C88E5"
	jhash (0xE85AEC2E)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "HINT_AMBIENT_AUDIO_BANK"
    hash "0x8F8C0E370AE62F5C"
	jhash (0xF1850DDC)
	arguments {
		Any "p0",
		int "p1",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Parameter 0: char* p0
NativeDB Added Parameter 3: int p2
```
</summary>
	]]

native "INTERRUPT_CONVERSATION"
    hash "0xA018A12E5C5C2FA6"
	jhash (0xF3A67AF3)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "HINT_SCRIPT_AUDIO_BANK"
    hash "0xFB380A29641EC31A"
	jhash (0x41FA0E51)
	arguments {
		Any "p0",
		int "p1",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Added Parameter 3: Any p2
```
</summary>
	]]

native "IS_AMBIENT_SPEECH_PLAYING"
    hash "0x9072C8B49907BFAD"
	jhash (0x1972E8AA)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_ALARM_PLAYING"
    hash "0x226435CB96CCFC8C"
	jhash (0x9D8E1D23)
	arguments {
		charPtr "alarmName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
bool playing = AUDIO::IS_ALARM_PLAYING("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
```
</summary>
	]]

native "IS_AMBIENT_ZONE_ENABLED"
    hash "0x01E2817A479A7F9B"
	jhash (0xBFABD872)
	arguments {
		charPtr "ambientZone",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_AMBIENT_SPEECH_DISABLED"
    hash "0x932C2D096A2C3FFF"
	jhash (0x109D1F89)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Common in the scripts:  
AUDIO::IS_AMBIENT_SPEECH_DISABLED(PLAYER::PLAYER_PED_ID());  
```
</summary>
	]]

native "IS_AUDIO_SCENE_ACTIVE"
    hash "0xB65B60556E2A9225"
	jhash (0xACBED05C)
	arguments {
		charPtr "scene",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_ANY_SPEECH_PLAYING"
    hash "0x729072355FA39EC9"
	jhash (0x2B74A6D6)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_HORN_ACTIVE"
    hash "0x9D6BFC12B05C6121"
	jhash (0x20E2BDD0)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Checks whether the horn of a vehicle is currently played.  
```
</summary>
	]]

native "IS_MISSION_COMPLETE_READY_FOR_UI"
    hash "0x6F259F82D873B8B8"
	jhash (0xCBE09AEC)
	alias "0x6F259F82D873B8B8"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_GAME_IN_CONTROL_OF_MUSIC"
    hash "0x6D28DC1671E334FD"
	jhash (0x7643170D)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Hardcoded to return 1  
```
</summary>
	]]

native "IS_MISSION_COMPLETE_PLAYING"
    hash "0x19A30C23F5827F8A"
	jhash (0x939982A1)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOBILE_PHONE_CALL_ONGOING"
    hash "0x7497D2CE2C30D24C"
	jhash (0x4ED1400A)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_MUSIC_ONESHOT_PLAYING"
    hash "0xA097AB275061FB21"
	jhash (0x2705C4D5)
	alias "0xA097AB275061FB21"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_MISSION_NEWS_STORY_UNLOCKED"
    hash "0x66E49BF55B4B1874"
	jhash (0x27305D37)
	arguments {
		int "newsStory",
	}
	alias "GET_NUMBER_OF_PASSENGER_VOICE_VARIATIONS"
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "IS_PED_RINGTONE_PLAYING"
    hash "0x1E8E5E20937E3137"
	jhash (0xFE576EE4)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOBILE_PHONE_RADIO_ACTIVE"
    hash "0xB35CE999E8EF317E"
	jhash (0x6E502A5B)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_RADIO_FADED_OUT"
    hash "0x0626A247D2405330"
	jhash (0x815CAE99)
	alias "0x0626A247D2405330"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_IN_CURRENT_CONVERSATION"
    hash "0x049E937F18F4020C"
	jhash (0x7B2F0743)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_RADIO_RETUNING"
    hash "0xA151A7394A214E65"
	jhash (0xCF29097B)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "_IS_PLAYER_VEHICLE_RADIO_ENABLED"
    hash "0x5F43D83FD6738741"
	jhash (0x2A3E5E8B)
	alias "0x5F43D83FD6738741"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCRIPTED_CONVERSATION_ONGOING"
    hash "0x16754C556D2EDE3D"
	jhash (0xCB8FD96F)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_STREAM_PLAYING"
    hash "0xD11FA52EB849D978"
	jhash (0xF1F51A14)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCRIPTED_CONVERSATION_LOADED"
    hash "0xDF0D54BE7A776737"
	jhash (0xE1870EA9)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "_LINK_STATIC_EMITTER_TO_ENTITY"
    hash "0x651D3228960D08AF"
	arguments {
		charPtr "emitterName",
		Entity "entity",
	}
	alias "0x651D3228960D08AF"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
L* (LINK_*?)
```
</summary>
	]]

native "IS_SCRIPTED_SPEECH_PLAYING"
    hash "0xCC9AA18DCC7084F4"
	jhash (0x2C653904)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "LOAD_STREAM_WITH_START_OFFSET"
    hash "0x59C16B79F53B3712"
	jhash (0xE5B5745C)
	arguments {
		charPtr "streamName",
		int "startOffset",
		charPtr "soundSet",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
AUDIO::LOAD_STREAM_WITH_START_OFFSET("STASH_TOXIN_STREAM", 2400, "FBI_05_SOUNDS");  
Only called a few times in the scripts.  
```
</summary>
	]]

native "_IS_VEHICLE_RADIO_LOUD"
    hash "0x032A116663A4D5AC"
	jhash (0xCBA99F4A)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "_LOCK_RADIO_STATION"
    hash "0x477D9DB48F889591"
	arguments {
		charPtr "radioStationName",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Disables the radio station (hides it from the radio wheel).

NativeDB Introduced: v1493
```
</summary>
<param name="radioStationName">:</param>
<param name="toggle">:</param>
	]]

native "LOAD_STREAM"
    hash "0x1F1F957154EC51DF"
	jhash (0x0D89599D)
	arguments {
		charPtr "streamName",
		charPtr "soundSet",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");  
All found occurrences in the b678d decompiled scripts: pastebin.com/3rma6w5w  
Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.     
soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.  
```
</summary>
	]]

native "0x02E93C796ABD3A97"
    hash "0x02E93C796ABD3A97"
	jhash (0x3C395AEE)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x0150B6FF25A9E2E5"
    hash "0x0150B6FF25A9E2E5"
	jhash (0x1134F68B)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x0350E7E17BA767D0"
    hash "0x0350E7E17BA767D0"
	arguments {
		Vehicle "vehicle",
		int "value",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
<param name="vehicle">:</param>
<param name="value">:</param>
	]]

native "0x01BB4D577D38BD9E"
    hash "0x01BB4D577D38BD9E"
	jhash (0xE81FAC68)
	arguments {
		Vehicle "vehicle",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_VEHICLE_*
```
</summary>
	]]

native "0x0653B735BFBDFE87"
    hash "0x0653B735BFBDFE87"
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="ped">:</param>
<param name="toggle">:</param>
	]]

native "0x062D5EAD4DA2FA6A"
    hash "0x062D5EAD4DA2FA6A"
	jhash (0xD87AF337)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
FORCE_*
```
</summary>
	]]

native "0x0BE4BE946463F917"
    hash "0x0BE4BE946463F917"
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
IS_VEHICLE_*
```
</summary>
	]]

native "0x0B568201DD99F0EB"
    hash "0x0B568201DD99F0EB"
	jhash (0x1193ED6E)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x11579D940949C49E"
    hash "0x11579D940949C49E"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x109697E2FFBAC8A1"
    hash "0x109697E2FFBAC8A1"
	jhash (0x46B0C696)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Not sure what this function does, but it's related to the audio of the local player's vehicle (Considering the surrounding natives, it's probably radio related).  
```
</summary>
	]]

native "0x159B7318403A1CD8"
    hash "0x159B7318403A1CD8"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x149AEE66F0CB3A99"
    hash "0x149AEE66F0CB3A99"
	jhash (0xE64F97A0)
	arguments {
		float "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x18EB48CFC41F2EA0"
    hash "0x18EB48CFC41F2EA0"
	jhash (0x308ED0EC)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x1B7ABE26CBCBF8C7"
    hash "0x1B7ABE26CBCBF8C7"
	arguments {
		Ped "ped",
		Any "p1",
		Any "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x19AF7ED9B9D23058"
    hash "0x19AF7ED9B9D23058"
	jhash (0xA58BBF4F)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
RELEASE_???  
I say RELEASE_???, as in IDA this native calls the same function as   
-'RELEASE_MISSION_AUDIO_BANK()'.  
-'RELEASE_AMBIENT_AUDIO_BANK()'.  
-'RELEASE_SCRIPT_AUDIO_BANK()'.  
However 'RELEASE_NAMED_SCRIPT_AUDIO_BANK' does not use the same function. So may be, 'RELEASE_???_AUDIO_BANK()'? Doubt it.  
```
</summary>
	]]

native "0x29DA3CA8D8B2692D"
    hash "0x29DA3CA8D8B2692D"
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="ped">:</param>
<param name="toggle">:</param>
	]]

native "0x2C96CDB04FCA358E"
    hash "0x2C96CDB04FCA358E"
	jhash (0xC8B514E2)
	arguments {
		float "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x1C073274E065C6D2"
    hash "0x1C073274E065C6D2"
	jhash (0x9365E042)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
ENABLE_VEHICLE_*
```
</summary>
	]]

native "0x2ACABED337622DF2"
    hash "0x2ACABED337622DF2"
	arguments {
		charPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0x33E3C6C6F2F0B506"
    hash "0x33E3C6C6F2F0B506"
	jhash (0x73C6F979)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x2DD39BF3E2F9C47F"
    hash "0x2DD39BF3E2F9C47F"
	ns "AUDIO"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v463
```
</summary>
	]]

native "0x3A48AB4445D499BE"
    hash "0x3A48AB4445D499BE"
	jhash (0x93A44A1F)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x34D66BC058019CE0"
    hash "0x34D66BC058019CE0"
	arguments {
		charPtr "radioStationName",
	}
	ns "AUDIO"
	returns "Hash"
	doc [[!
<summary>
```
GET_CURRENT_*

NativeDB Introduced: v1493
```
</summary>
<param name="radioStationName">:</param>
	]]

native "0x3E65CDE5215832C1"
    hash "0x3E65CDE5215832C1"
	arguments {
		charPtr "radioStationName",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
GET_CURRENT_*

NativeDB Introduced: v1493
```
</summary>
<param name="radioStationName">:</param>
	]]

native "0x3D120012440E6683"
    hash "0x3D120012440E6683"
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x43FA0DFC5DF87815"
    hash "0x43FA0DFC5DF87815"
	jhash (0x7BED1872)
	arguments {
		Vehicle "vehicle",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x40763EA7B9B783E7"
    hash "0x40763EA7B9B783E7"
	arguments {
		charPtr "p0",
		int "p1",
		int "p2",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x5B9853296731E88D"
    hash "0x5B9853296731E88D"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x58BB377BEC7CD5F4"
    hash "0x58BB377BEC7CD5F4"
	jhash (0x8CE63FA1)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x5DB8010EE71FDEF2"
    hash "0x5DB8010EE71FDEF2"
	jhash (0x6E660D3F)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "0x66C3FB05206041BA"
    hash "0x66C3FB05206041BA"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0x5D2BFAAB8D956E0E"
    hash "0x5D2BFAAB8D956E0E"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x6FDDAD856E36988A"
    hash "0x6FDDAD856E36988A"
	jhash (0x934BE749)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_P*
```
</summary>
	]]

native "0x61631F5DF50D1C34"
    hash "0x61631F5DF50D1C34"
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x7EC3C679D0E7E46B"
    hash "0x7EC3C679D0E7E46B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x70B8EC8FC108A634"
    hash "0x70B8EC8FC108A634"
	jhash (0x95050CAD)
	arguments {
		BOOL "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x892B6AB8F33606F5"
    hash "0x892B6AB8F33606F5"
	jhash (0x88203DDA)
	arguments {
		int "p0",
		Entity "entity",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x9AC92EED5E4793AB"
    hash "0x9AC92EED5E4793AB"
	jhash (0xE67446E9)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
RELEASE_???  
I say RELEASE_???, as in IDA this native calls the same function as   
-'RELEASE_MISSION_AUDIO_BANK()'.  
-'RELEASE_AMBIENT_AUDIO_BANK()'.  
-'RELEASE_SCRIPT_AUDIO_BANK()'.  
However 'RELEASE_NAMED_SCRIPT_AUDIO_BANK' does not use the same function. So may be, 'RELEASE_???_AUDIO_BANK()'? Doubt it.  
```
</summary>
	]]

native "0x8A694D7A68F8DC38"
    hash "0x8A694D7A68F8DC38"
	arguments {
		Ped "p0",
		charPtr "p1",
		charPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
One call found in the b617d scripts:  
AUDIO::_8A694D7A68F8DC38(NETWORK::NET_TO_PED(l_3989._f26F[0/*1*/]), "CONV_INTERRUPT_QUIT_IT", "LESTER");  
```
</summary>
	]]

native "0x9D3AF56E94C9AE98"
    hash "0x9D3AF56E94C9AE98"
	jhash (0x2F0A16D1)
	arguments {
		Vehicle "vehicle",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_H*
```
</summary>
	]]

native "0x8BF907833BE275DE"
    hash "0x8BF907833BE275DE"
	arguments {
		float "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x9BD7BD55E4533183"
    hash "0x9BD7BD55E4533183"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0xA5F377B175A699C5"
    hash "0xA5F377B175A699C5"
	jhash (0xE812925D)
	arguments {
		int "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_AUDIO_S*
```
</summary>
	]]

native "0xAA19F5572C38B564"
    hash "0xAA19F5572C38B564"
	jhash (0xB58B8FF3)
	arguments {
		AnyPtr "p0",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0xA5342D390CDA41D6"
    hash "0xA5342D390CDA41D6"
	arguments {
		Ped "ped",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xB81CF134AEB56FFB"
    hash "0xB81CF134AEB56FFB"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xA8A7D434AFB4B97B"
    hash "0xA8A7D434AFB4B97B"
	arguments {
		charPtr "p0",
		int "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xBF4DC1784BE94DFA"
    hash "0xBF4DC1784BE94DFA"
	arguments {
		Ped "ped",
		BOOL "p1",
		Any "hash",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 2: Hash hash
```
</summary>
	]]

native "0xB542DE8C3D1CB210"
    hash "0xB542DE8C3D1CB210"
	jhash (0x789D8C6C)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xC1805D05E6D4FE10"
    hash "0xC1805D05E6D4FE10"
	jhash (0x7ABB89D2)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_VEH*
```
</summary>
	]]

native "0xBEF34B1D9624D5DD"
    hash "0xBEF34B1D9624D5DD"
	jhash (0xE0047BFD)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xC64A06D939F826F5"
    hash "0xC64A06D939F826F5"
	arguments {
		floatPtr "p0",
		AnyPtr "p1",
		intPtr "p2",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
GET_NE*

NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0xC265DF9FB44A9FBD"
    hash "0xC265DF9FB44A9FBD"
	jhash (0x0CBAF2EF)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "0xC8EDE9BDBCCBA6D4"
    hash "0xC8EDE9BDBCCBA6D4"
	jhash (0x55A21772)
	arguments {
		AnyPtr "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xC8B1B2425604CDD0"
    hash "0xC8B1B2425604CDD0"
	jhash (0x16FB88B5)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
IS_MOBILE_PHONE_*
```
</summary>
	]]

native "0xD01005D2BA2EB778"
    hash "0xD01005D2BA2EB778"
	jhash (0x59A3A17D)
	arguments {
		charPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Similar to 0xDDC635D5B3262C56. Enable?  
```
</summary>
	]]

native "0xCA4CEA6AE0000A7E"
    hash "0xCA4CEA6AE0000A7E"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
	]]

native "0xD2DCCD8E16E20997"
    hash "0xD2DCCD8E16E20997"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xDA07819E452FFE8F"
    hash "0xDA07819E452FFE8F"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xD53F3A29BCE2580E"
    hash "0xD53F3A29BCE2580E"
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
<param name="vehicle">:</param>
	]]

native "0xE4E6DD5566D28C82"
    hash "0xE4E6DD5566D28C82"
	jhash (0x7262B5BA)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
STOP_S*
```
</summary>
	]]

native "0xDD6BCF9E94425DF9"
    hash "0xDD6BCF9E94425DF9"
	jhash (0xD70ECC80)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Tune Backwards... ?  
```
</summary>
	]]

native "0xEE066C7006C49C0A"
    hash "0xEE066C7006C49C0A"
	jhash (0x498849F3)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xDDC635D5B3262C56"
    hash "0xDDC635D5B3262C56"
	jhash (0x0E387BFE)
	arguments {
		charPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Similar to 0xD01005D2BA2EB778. Disable?  
```
</summary>
	]]

native "0xF1F8157B8C3F171C"
    hash "0xF1F8157B8C3F171C"
	jhash (0x1C0C5E4C)
	arguments {
		Vehicle "vehicle",
		charPtr "p1",
		charPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
2 calls found in the b617d scripts:  
AUDIO::_F1F8157B8C3F171C(l_A42, "Franklin_Bike_Rev", "BIG_SCORE_3A_SOUNDS");  
AUDIO::_F1F8157B8C3F171C(l_166, "Trevor_Revs_Off", "PALETO_SCORE_SETUP_SOUNDS");  
```
</summary>
	]]

native "0xF154B8D1775B2DEC"
    hash "0xF154B8D1775B2DEC"
	jhash (0xD2858D8A)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
BLOCK_DEATH_JINGLE? - Fits alphabetically but didn't seem to have any effect.
```
</summary>
	]]

native "0xF3365489E0DD50F9"
    hash "0xF3365489E0DD50F9"
	jhash (0x8AFC488D)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_VEHICLE_*
```
</summary>
	]]

native "0xFF266D1D0EB1195D"
    hash "0xFF266D1D0EB1195D"
	jhash (0x53DB6994)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Tune Forward... ?  
```
</summary>
	]]

native "OVERRIDE_PLAYER_GROUND_MATERIAL"
    hash "0xD2CC78CD3D0B50F9"
	jhash (0xC307D531)
	arguments {
		Any "hash",
		BOOL "toggle",
	}
	alias "0xD2CC78CD3D0B50F9"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash hash
```
</summary>
	]]

native "_OVERRIDE_MICROPHONE_SETTINGS"
    hash "0x75773E11BA459E90"
	arguments {
		Any "hash",
		BOOL "toggle",
	}
	alias "0x75773E11BA459E90"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash hash
```
</summary>
	]]

native "OVERRIDE_UNDERWATER_STREAM"
    hash "0xF2A9CDABCEA04BD6"
	jhash (0x9A083B7E)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "OVERRIDE_TREVOR_RAGE"
    hash "0x13AD665062541A7E"
	jhash (0x05B9B5CF)
	arguments {
		AnyPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: char* p0
```
</summary>
	]]

native "PAUSE_SCRIPTED_CONVERSATION"
    hash "0x8530AD776CD72B12"
	jhash (0xE2C9C6F8)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_PLAY_AMBIENT_SPEECH1"
    hash "0x8E04FEDD28D42462"
	jhash (0x5C57B85D)
	arguments {
		Ped "ped",
		charPtr "speechName",
		charPtr "speechParam",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Plays ambient speech. See also _0x444180DB.  
ped: The ped to play the ambient speech.  
speechName: Name of the speech to play, eg. "GENERIC_HI".  
speechParam: Can be one of the following:  
SPEECH_PARAMS_STANDARD  
SPEECH_PARAMS_ALLOW_REPEAT  
SPEECH_PARAMS_BEAT  
SPEECH_PARAMS_FORCE  
SPEECH_PARAMS_FORCE_FRONTEND  
SPEECH_PARAMS_FORCE_NO_REPEAT_FRONTEND  
SPEECH_PARAMS_FORCE_NORMAL  
SPEECH_PARAMS_FORCE_NORMAL_CLEAR  
SPEECH_PARAMS_FORCE_NORMAL_CRITICAL  
SPEECH_PARAMS_FORCE_SHOUTED  
SPEECH_PARAMS_FORCE_SHOUTED_CLEAR  
SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY  
SPEECH_PARAMS_MEGAPHONE  
SPEECH_PARAMS_HELI  
SPEECH_PARAMS_FORCE_MEGAPHONE  
SPEECH_PARAMS_FORCE_HELI  
SPEECH_PARAMS_INTERRUPT  
SPEECH_PARAMS_INTERRUPT_SHOUTED  
SPEECH_PARAMS_INTERRUPT_SHOUTED_CLEAR  
SPEECH_PARAMS_INTERRUPT_SHOUTED_CRITICAL  
SPEECH_PARAMS_INTERRUPT_NO_FORCE  
SPEECH_PARAMS_INTERRUPT_FRONTEND  
SPEECH_PARAMS_INTERRUPT_NO_FORCE_FRONTEND  
SPEECH_PARAMS_ADD_BLIP  
SPEECH_PARAMS_ADD_BLIP_ALLOW_REPEAT  
SPEECH_PARAMS_ADD_BLIP_FORCE  
SPEECH_PARAMS_ADD_BLIP_SHOUTED  
SPEECH_PARAMS_ADD_BLIP_SHOUTED_FORCE  
SPEECH_PARAMS_ADD_BLIP_INTERRUPT  
SPEECH_PARAMS_ADD_BLIP_INTERRUPT_FORCE  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CLEAR  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CRITICAL  
SPEECH_PARAMS_SHOUTED  
SPEECH_PARAMS_SHOUTED_CLEAR  
SPEECH_PARAMS_SHOUTED_CRITICAL  
Note: A list of Name and Parameters can be found here pastebin.com/1GZS5dCL  
Full list of speeches and voices names by some spanish shitbag: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
```

```
NativeDB Added Parameter 4: Any p3
```
</summary>
	]]

native "OVERRIDE_VEH_HORN"
    hash "0x3CDC1E622CCE0356"
	jhash (0x2ACAB783)
	arguments {
		Vehicle "vehicle",
		BOOL "override",
		int "hornHash",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
Overrides the vehicle's horn hash.

When changing this hash on a vehicle, [`_GET_VEHICLE_HORN_HASH`](#_0xACB5DCCA1EC76840) will **not** return the 'overwritten' hash. It will still always return the default horn hash (same as [`GET_VEHICLE_DEFAULT_HORN`](#_0x02165D55000219AC)).

List of possible hashes (found in decompiled scripts):

|        signed |     unsigned |      hex     |
| ------------: | -----------: | :----------: |
|  `1604822495` | `1604822495` | `0x5FA7A5DF` |
| `-1262465009` | `3032502287` | `0xB4C0500F` |
|  `-889553789` | `3405413507` | `0xCAFA7C83` |
| `-1557943086` | `2737024210` | `0xA323ACD2` |
| `-1318696617` | `2976270679` | `0xB1664957` |
|    `-7740003` | `4287227293` | `0xFF89E59D` |
| `-1815146967` | `2479820329` | `0x93CF0E29` |
|  `-339919356` | `3955047940` | `0xEBBD3E04` |

Old description:

```
vehicle - the vehicle whose horn should be overwritten  
mute - p1 seems to be an option for muting the horn  
p2 - maybe a horn id, since the function AUDIO::GET_VEHICLE_DEFAULT_HORN(veh) exists?  
```
</summary>
<param name="vehicle">The vehicle you want to change the horn on.</param>
<param name="override">Must be set to true. If set to false, the default horn hash will be restored.</param>
<param name="hornHash">A horn hash.</param>
	]]

native "_PLAY_AMBIENT_SPEECH2"
    hash "0xC6941B4A3A8FBBB9"
	jhash (0x444180DB)
	arguments {
		Ped "ped",
		charPtr "speechName",
		charPtr "speechParam",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Plays ambient speech. See also _0x5C57B85D.  
See _PLAY_AMBIENT_SPEECH1 for parameter specifications.  
Full list of speeches and voices names: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
```

```
NativeDB Added Parameter 4: Any p3
```
</summary>
	]]

native "_PLAY_AMBIENT_SPEECH_WITH_VOICE"
    hash "0x3523634255FC3318"
	jhash (0x8386AE28)
	arguments {
		Ped "p0",
		charPtr "speechName",
		charPtr "voiceName",
		charPtr "speechParam",
		BOOL "p4",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This is the same as _PLAY_AMBIENT_SPEECH1 and _PLAY_AMBIENT_SPEECH2 but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.  
EX (C#):  
GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);  
The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.  
Full list of speeches and voices names: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
```
</summary>
	]]

native "_PLAY_AMBIENT_SPEECH_AT_COORDS"
    hash "0xED640017ED337E45"
	jhash (0xA1A1402E)
	arguments {
		charPtr "p0",
		charPtr "p1",
		float "p2",
		float "p3",
		float "p4",
		charPtr "p5",
	}
	alias "0xED640017ED337E45"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_DEFERRED_SOUND_FRONTEND"
    hash "0xCADA5A0D0702381E"
	jhash (0xC70E6CFA)
	arguments {
		charPtr "soundName",
		charPtr "soundsetName",
	}
	alias "0xCADA5A0D0702381E"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Only call found in the b617d scripts:  
AUDIO::_CADA5A0D0702381E("BACK", "HUD_FREEMODE_SOUNDSET");  
```
</summary>
	]]

native "PLAY_END_CREDITS_MUSIC"
    hash "0xCD536C4D33DCC900"
	jhash (0x8E88B3CC)
	arguments {
		BOOL "play",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_MISSION_COMPLETE_AUDIO"
    hash "0xB138AAB8A70D3C69"
	jhash (0x3033EA1D)
	arguments {
		charPtr "audioName",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Called 38 times in the scripts. There are 5 different audioNames used.   
One unknown removed below.   
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");  
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");  
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");  
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");  
```
</summary>
	]]

native "PLAY_PAIN"
    hash "0xBC9AE166038A5CEC"
	jhash (0x874BD6CB)
	arguments {
		Ped "ped",
		int "painID",
		int "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Needs another parameter [int p2]. The signature is PED::PLAY_PAIN(Ped ped, int painID, int p1, int p2);  
Last 2 parameters always seem to be 0.  
EX: Function.Call(Hash.PLAY_PAIN, TestPed, 6, 0, 0);  
Known Pain IDs  
________________________  
1 - Doesn't seem to do anything. Does NOT crash the game like previously said. (Latest patch)  
6 - Scream (Short)  
7 - Scared Scream (Kinda Long)  
8 - On Fire  
```

```
NativeDB Added Parameter 4: Any p3
```
</summary>
	]]

native "PLAY_POLICE_REPORT"
    hash "0xDFEBD56D9BD1EB16"
	jhash (0x3F277B62)
	arguments {
		charPtr "name",
		float "p1",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
Please change to void. (Does not return anything!)  
Plays the given police radio message.  
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr  
```
</summary>
	]]

native "PLAY_PED_RINGTONE"
    hash "0xF9E56683CA8E11A5"
	jhash (0x1D530E47)
	arguments {
		charPtr "ringtoneName",
		Ped "ped",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  
AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
```
</summary>
	]]

native "PLAY_SOUND_FROM_COORD"
    hash "0x8D8686B622B88120"
	jhash (0xCAD3E2D5)
	arguments {
		int "soundId",
		charPtr "audioName",
		float "x",
		float "y",
		float "z",
		charPtr "audioRef",
		BOOL "p6",
		int "range",
		BOOL "p8",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  
gtaforums.com/topic/795622-audio-for-mods  
```
</summary>
	]]

native "PLAY_SOUND"
    hash "0x7FF4944CC209192D"
	jhash (0xB6E1917F)
	arguments {
		int "soundId",
		charPtr "audioName",
		charPtr "audioRef",
		BOOL "p3",
		Any "p4",
		BOOL "p5",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ  
```
</summary>
	]]

native "PLAY_SOUND_FROM_ENTITY"
    hash "0xE65F427EB70AB1ED"
	jhash (0x95AE00F8)
	arguments {
		int "soundId",
		charPtr "audioName",
		Entity "entity",
		charPtr "audioRef",
		BOOL "p4",
		Any "p5",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0   
No changes made in b678d.  
gtaforums.com/topic/795622-audio-for-mods  
```
</summary>
	]]

native "PLAY_STREAM_FROM_PED"
    hash "0x89049DD63C08B5D1"
	jhash (0xA1D7FABE)
	arguments {
		Ped "ped",
	}
	alias "0x89049DD63C08B5D1"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_SOUND_FRONTEND"
    hash "0x67C540AA08E4A6F5"
	jhash (0x2E458F74)
	arguments {
		int "soundId",
		charPtr "audioName",
		charPtr "audioRef",
		BOOL "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
list: pastebin.com/DCeRiaLJ  
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/0neZdsZ5  
```
</summary>
	]]

native "PLAY_STREAM_FROM_VEHICLE"
    hash "0xB70374A758007DFA"
	jhash (0xF8E4BDA2)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_STREAM_FROM_OBJECT"
    hash "0xEBAA9B64D76356FD"
	jhash (0xC5266BF7)
	arguments {
		Object "object",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Used with AUDIO::LOAD_STREAM  
Example from finale_heist2b.c4:  
AI::TASK_SYNCHRONIZED_SCENE(l_4C8[2/*14*/], l_4C8[2/*14*/]._f7, l_30A, "push_out_vault_l", 4.0, -1.5, 5, 713, 4.0, 0);  
                    PED::SET_SYNCHRONIZED_SCENE_PHASE(l_4C8[2/*14*/]._f7, 0.0);  
                    PED::_2208438012482A1A(l_4C8[2/*14*/], 0, 0);  
                    PED::SET_PED_COMBAT_ATTRIBUTES(l_4C8[2/*14*/], 38, 1);  
                    PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(l_4C8[2/*14*/], 1);  
                    if (AUDIO::LOAD_STREAM("Gold_Cart_Push_Anim_01", "BIG_SCORE_3B_SOUNDS")) {  
                        AUDIO::PLAY_STREAM_FROM_OBJECT(l_36F[0/*1*/]);  
                    }  
```
</summary>
	]]

native "PLAY_STREAM_FROM_POSITION"
    hash "0x21442F412E8DE56B"
	jhash (0x6FE5D865)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	alias "SPECIAL_FRONTEND_EQUAL"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_VEHICLE_DOOR_CLOSE_SOUND"
    hash "0x62A456AA4769EF34"
	jhash (0xBA2CF407)
	arguments {
		Vehicle "vehicle",
		int "doorIndex",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This native only comes up once. And in that one instance, p1 is "1".  
```
</summary>
	]]

native "PLAY_VEHICLE_DOOR_OPEN_SOUND"
    hash "0x3A539D52857EA82D"
	jhash (0x84930330)
	arguments {
		Vehicle "vehicle",
		int "doorIndex",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
p1 appears to only be "0" or "3". I personally use "0" as p1.  
```
</summary>
	]]

native "PLAY_STREAM_FRONTEND"
    hash "0x58FCE43488F9F5F4"
	jhash (0x2C2A16BC)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PRELOAD_SCRIPT_PHONE_CONVERSATION"
    hash "0x6004BCB0E226AAEA"
	jhash (0x9ACB213A)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_SYNCHRONIZED_AUDIO_EVENT"
    hash "0x8B2FD4560E55DD2D"
	jhash (0x507F3241)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "PRELOAD_SCRIPT_CONVERSATION"
    hash "0x3B3CAD6166916D87"
	jhash (0xDDF5C579)
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PREPARE_MUSIC_EVENT"
    hash "0x1E5185B72EF5158A"
	jhash (0x534A5C1C)
	arguments {
		charPtr "eventName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
```
</summary>
	]]

native "PREPARE_ALARM"
    hash "0x9D74AE343DB65533"
	jhash (0x084932E8)
	arguments {
		charPtr "alarmName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
bool prepareAlarm = AUDIO::PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
```
</summary>
	]]

native "PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE"
    hash "0x029FE7CD1B7E2E75"
	jhash (0x7652DD49)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "RECORD_BROKEN_GLASS"
    hash "0xFBE20329593DEC9D"
	jhash (0x53FC3FEC)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	alias "0xFBE20329593DEC9D"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PREPARE_SYNCHRONIZED_AUDIO_EVENT"
    hash "0xC7ABCACA4985A766"
	jhash (0xE1D91FD0)
	arguments {
		charPtr "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "RELEASE_AMBIENT_AUDIO_BANK"
    hash "0x65475A218FFAA93D"
	jhash (0x8C938784)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "REGISTER_SCRIPT_WITH_AUDIO"
    hash "0xC6ED9D5092438D91"
	jhash (0xA6203643)
	arguments {
		int "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "RELEASE_NAMED_SCRIPT_AUDIO_BANK"
    hash "0x77ED170667F50170"
	jhash (0x16707ABC)
	arguments {
		charPtr "audioBank",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RELEASE_MISSION_AUDIO_BANK"
    hash "0x0EC92A1BF0857187"
	jhash (0x8E8824C7)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RELEASE_SCRIPT_AUDIO_BANK"
    hash "0x7A2D8AD0A9EB9C3F"
	jhash (0x22F865E5)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RELEASE_WEAPON_AUDIO"
    hash "0xCE4AC0439F607045"
	jhash (0x6096504C)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
	]]

native "RELEASE_SOUND_ID"
    hash "0x353FC880830B88FA"
	jhash (0x9C080899)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "REMOVE_PORTAL_SETTINGS_OVERRIDE"
    hash "0xB4BBFD9CD8B3922B"
	jhash (0xD24B4D0C)
	arguments {
		charPtr "p0",
	}
	alias "0xB4BBFD9CD8B3922B"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Found in the b617d scripts, duplicates removed:   
AUDIO::_B4BBFD9CD8B3922B("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");  
AUDIO::_B4BBFD9CD8B3922B("V_CIA_PS_WINDOW_UNBROKEN");  
AUDIO::_B4BBFD9CD8B3922B("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");  
AUDIO::_B4BBFD9CD8B3922B("V_FINALEBANK_PS_VAULT_INTACT");  
AUDIO::_B4BBFD9CD8B3922B("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");  
```
</summary>
	]]

native "REQUEST_MISSION_AUDIO_BANK"
    hash "0x7345BDD95E62E0F2"
	jhash (0x916E37CA)
	arguments {
		charPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All occurrences and usages found in b617d: pastebin.com/NzZZ2Tmm  
```

```
NativeDB Added Parameter 3: Any p2
```
</summary>
	]]

native "REQUEST_AMBIENT_AUDIO_BANK"
    hash "0xFE02FFBED8CA9D99"
	jhash (0x23C88BC7)
	arguments {
		charPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/XZ1tmGEz  
```

```
NativeDB Added Parameter 3: int p2
```
</summary>
	]]

native "REQUEST_SCRIPT_AUDIO_BANK"
    hash "0x2F844A8B08D76685"
	jhash (0x21322887)
	arguments {
		charPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/AkmDAVn6  
```

```
NativeDB Added Parameter 3: int p2
```
</summary>
	]]

native "RESET_PED_AUDIO_FLAGS"
    hash "0xF54BB7B61036F335"
	jhash (0xDF720C86)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RESET_TREVOR_RAGE"
    hash "0xE78503B10C4314E0"
	jhash (0xE80CF0D4)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RESTART_SCRIPTED_CONVERSATION"
    hash "0x9AEB285D1818C9AC"
	jhash (0x6CB24B56)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_AMBIENT_VOICE_NAME"
    hash "0x6C8065A3B780185B"
	jhash (0xBD2EA1A1)
	arguments {
		Ped "ped",
		charPtr "name",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Audio List  
gtaforums.com/topic/795622-audio-for-mods/  
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/FTeAj4yZ  
Yes  
```
</summary>
	]]

native "SET_AGGRESSIVE_HORNS"
    hash "0x395BF71085D1B1D9"
	jhash (0x01D6EABE)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.  
```
</summary>
	]]

native "SET_AMBIENT_ZONE_LIST_STATE"
    hash "0x9748FA4DE50CCE3E"
	jhash (0xBF80B412)
	arguments {
		charPtr "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_SET_AMBIENT_VOICE_NAME_HASH"
    hash "0x9A53DED9921DE990"
	arguments {
		Ped "ped",
		Any "hash",
	}
	alias "0x9A53DED9921DE990"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 1: Hash hash
```
</summary>
	]]

native "SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT"
    hash "0xF3638DAE8C4045E1"
	jhash (0x5F5A2605)
	arguments {
		charPtr "ambientZone",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/WkXDGgQL  
New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
```
</summary>
	]]

native "SET_AMBIENT_ZONE_STATE"
    hash "0xBDA07E5950085E46"
	jhash (0x2849CAC9)
	arguments {
		AnyPtr "zoneName",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: char* zoneName
```
</summary>
	]]

native "SET_AMBIENT_ZONE_STATE_PERSISTENT"
    hash "0x1D6650420CEC9D3B"
	jhash (0xC1FFB672)
	arguments {
		charPtr "ambientZone",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/jYvw7N1S  
New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
```
</summary>
	]]

native "SET_ANIMAL_MOOD"
    hash "0xCC97B29285B1DC3B"
	jhash (0x3EA7C6CB)
	arguments {
		Ped "animal",
		int "mood",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
mood can be 0 or 1 (it's not a boolean value!). Effects audio of the animal.  
```
</summary>
	]]

native "SET_AUDIO_FLAG"
    hash "0xB9EFD5C25018725A"
	jhash (0x1C09C9E0)
	arguments {
		charPtr "flagName",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Possible flag names:  
"ActivateSwitchWheelAudio"  
"AllowAmbientSpeechInSlowMo"  
"AllowCutsceneOverScreenFade"  
"AllowForceRadioAfterRetune"  
"AllowPainAndAmbientSpeechToPlayDuringCutscene"  
"AllowPlayerAIOnMission"  
"AllowPoliceScannerWhenPlayerHasNoControl"  
"AllowRadioDuringSwitch"  
"AllowRadioOverScreenFade"  
"AllowScoreAndRadio"  
"AllowScriptedSpeechInSlowMo"  
"AvoidMissionCompleteDelay"  
"DisableAbortConversationForDeathAndInjury"  
"DisableAbortConversationForRagdoll"  
"DisableBarks"  
"DisableFlightMusic"  
"DisableReplayScriptStreamRecording"  
"EnableHeadsetBeep"  
"ForceConversationInterrupt"  
"ForceSeamlessRadioSwitch"  
"ForceSniperAudio"  
"FrontendRadioDisabled"  
"HoldMissionCompleteWhenPrepared"  
"IsDirectorModeActive"  
"IsPlayerOnMissionForSpeech"  
"ListenerReverbDisabled"  
"LoadMPData"  
"MobileRadioInGame"  
"OnlyAllowScriptTriggerPoliceScanner"  
"PlayMenuMusic"  
"PoliceScannerDisabled"  
"ScriptedConvListenerMaySpeak"  
"SpeechDucksScore"  
"SuppressPlayerScubaBreathing"  
"WantedMusicDisabled"  
"WantedMusicOnMission"  
-------------------------------  
No added flag names between b393d and b573d, including b573d.  
#######################################################################  
"IsDirectorModeActive" is an audio flag which will allow you to play speech infinitely without any pauses like in Director Mode.  
-----------------------------------------------------------------------  
All flag IDs and hashes:  
ID: 01 | Hash: 0x20A7858F  
ID: 02 | Hash: 0xA11C2259  
ID: 03 | Hash: 0x08DE4700  
ID: 04 | Hash: 0x989F652F  
ID: 05 | Hash: 0x3C9E76BA  
ID: 06 | Hash: 0xA805FEB0  
ID: 07 | Hash: 0x4B94EA26  
ID: 08 | Hash: 0x803ACD34  
ID: 09 | Hash: 0x7C741226  
ID: 10 | Hash: 0x31DB9EBD  
ID: 11 | Hash: 0xDF386F18  
ID: 12 | Hash: 0x669CED42  
ID: 13 | Hash: 0x51F22743  
ID: 14 | Hash: 0x2052B35C  
ID: 15 | Hash: 0x071472DC  
ID: 16 | Hash: 0xF9928BCC  
ID: 17 | Hash: 0x7ADBDD48  
ID: 18 | Hash: 0xA959BA1A  
ID: 19 | Hash: 0xBBE89B60  
ID: 20 | Hash: 0x87A08871  
ID: 21 | Hash: 0xED1057CE  
ID: 22 | Hash: 0x1584AD7A  
ID: 23 | Hash: 0x8582CFCB  
ID: 24 | Hash: 0x7E5E2FB0  
ID: 25 | Hash: 0xAE4F72DB  
ID: 26 | Hash: 0x5D16D1FA  
ID: 27 | Hash: 0x06B2F4B8  
ID: 28 | Hash: 0x5D4CDC96  
ID: 29 | Hash: 0x8B5A48BA  
ID: 30 | Hash: 0x98FBD539  
ID: 31 | Hash: 0xD8CB0473  
ID: 32 | Hash: 0x5CBB4874  
ID: 33 | Hash: 0x2E9F93A9  
ID: 34 | Hash: 0xD93BEA86  
ID: 35 | Hash: 0x92109B7D  
ID: 36 | Hash: 0xB7EC9E4D  
ID: 37 | Hash: 0xCABDBB1D  
ID: 38 | Hash: 0xB3FD4A52  
ID: 39 | Hash: 0x370D94E5  
ID: 40 | Hash: 0xA0F7938F  
ID: 41 | Hash: 0xCBE1CE81  
ID: 42 | Hash: 0xC27F1271  
ID: 43 | Hash: 0x9E3258EB  
ID: 44 | Hash: 0x551CDA5B  
ID: 45 | Hash: 0xCB6D663C  
ID: 46 | Hash: 0x7DACE87F  
ID: 47 | Hash: 0xF9DE416F  
ID: 48 | Hash: 0x882E6E9E  
ID: 49 | Hash: 0x16B447E7  
ID: 50 | Hash: 0xBD867739  
ID: 51 | Hash: 0xA3A58604  
ID: 52 | Hash: 0x7E046BBC  
ID: 53 | Hash: 0xD95FDB98  
ID: 54 | Hash: 0x5842C0ED  
ID: 55 | Hash: 0x285FECC6  
ID: 56 | Hash: 0x9351AC43  
ID: 57 | Hash: 0x50032E75  
ID: 58 | Hash: 0xAE6D0D59  
ID: 59 | Hash: 0xD6351785  
ID: 60 | Hash: 0xD25D71BC  
ID: 61 | Hash: 0x1F7F6423  
ID: 62 | Hash: 0xE24C3AA6  
ID: 63 | Hash: 0xBFFDD2B7  
```
</summary>
	]]

native "SET_AUDIO_SCENE_VARIABLE"
    hash "0xEF21A9EF089A2668"
	jhash (0x19BB3CE8)
	arguments {
		charPtr "scene",
		charPtr "variable",
		float "value",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_AUDIO_SPECIAL_EFFECT_MODE"
    hash "0x12561FCBB62D5B9C"
	jhash (0x62B43677)
	arguments {
		int "mode",
	}
	alias "0x12561FCBB62D5B9C"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
p0 is usually 0. sometimes 2. Not sure what this does.  
```
</summary>
	]]

native "SET_AUDIO_VEHICLE_PRIORITY"
    hash "0xE5564483E407F914"
	jhash (0x271A9766)
	arguments {
		Vehicle "vehicle",
		Any "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_CUSTOM_RADIO_TRACK_LIST"
    hash "0x4E404A9361F75BB2"
	jhash (0x128C3873)
	arguments {
		charPtr "radioStation",
		charPtr "trackListName",
		BOOL "p2",
	}
	alias "0x4E404A9361F75BB2"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Examples:  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_TREVOR", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_SAVE_MICHAEL_TREVOR", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_06_COUNTRY", "MAGDEMO2_RADIO_DINGHY", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_16_SILVERLAKE", "SEA_RACE_RADIO_PLAYLIST", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);  
```
</summary>
	]]

native "SET_EMITTER_RADIO_STATION"
    hash "0xACF57305B12AF907"
	jhash (0x87431585)
	arguments {
		charPtr "emitterName",
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_AUDIO_OVERRIDE"
    hash "0x3B4BF5F0859204D9"
	jhash (0xCE1332B7)
	arguments {
		charPtr "name",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All occurrences found in b617d, sorted alphabetically and identical lines removed:   
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");  
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");  
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");  
```
</summary>
	]]

native "SET_FRONTEND_RADIO_ACTIVE"
    hash "0xF7F26C6E9CC9EBB8"
	jhash (0xB1172075)
	arguments {
		BOOL "active",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_GPS_ACTIVE"
    hash "0x3BD3F52BA9B1E4E8"
	jhash (0x0FC3379A)
	arguments {
		BOOL "active",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_HORN_ENABLED"
    hash "0x76D683C108594D0E"
	jhash (0x6EB92D05)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_INITIAL_PLAYER_STATION"
    hash "0x88795F13FACDA88D"
	jhash (0x9B069233)
	arguments {
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_MOBILE_PHONE_RADIO_STATE"
    hash "0xBF286C554784F3DF"
	jhash (0xE1E0ED34)
	arguments {
		BOOL "state",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_MICROPHONE_POSITION"
    hash "0xB6AE90EDDE95C762"
	jhash (0xAD7BB191)
	arguments {
		BOOL "p0",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "x3",
		float "y3",
		float "z3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..  
```
</summary>
	]]

native "SET_PED_IS_DRUNK"
    hash "0x95D2D383D5396B8A"
	jhash (0xD2EA77A3)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Sets the ped drunk sounds.  Only works with PLAYER_PED_ID  
====================================================  
As mentioned above, this only sets the drunk sound to ped/player.  
To give the Ped a drunk effect with drunk walking animation try using SET_PED_MOVEMENT_CLIPSET  
Below is an example  
if (!Function.Call<bool>(Hash.HAS_ANIM_SET_LOADED, "move_m@drunk@verydrunk"))  
                {  
                    Function.Call(Hash.REQUEST_ANIM_SET, "move_m@drunk@verydrunk");  
                }  
                Function.Call(Hash.SET_PED_MOVEMENT_CLIPSET, Ped.Handle, "move_m@drunk@verydrunk", 0x3E800000);  
And to stop the effect use  
RESET_PED_MOVEMENT_CLIPSET  
```
</summary>
	]]

native "SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY"
    hash "0x1098355A16064BB3"
	jhash (0x990085F0)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Enables Radio on phone.  
```
</summary>
	]]

native "_SET_PED_TALK"
    hash "0x4ADA3F19BE4A6047"
	jhash (0x13777A0B)
	arguments {
		Ped "ped",
	}
	alias "0x4ADA3F19BE4A6047"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Speech related.  
```
</summary>
	]]

native "_SET_PED_SCREAM"
    hash "0x40CF0D12D142A9E8"
	arguments {
		Ped "ped",
	}
	alias "0x40CF0D12D142A9E8"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Assigns some ambient voice to the ped.  
```
</summary>
	]]

native "SET_PLAYER_ANGRY"
    hash "0xEA241BB04110F091"
	jhash (0x782CA58D)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_SET_PED_VOICE_GROUP"
    hash "0x7CDC8C3B89F661B3"
	arguments {
		Ped "ped",
		Hash "voiceGroupHash",
	}
	alias "0x7CDC8C3B89F661B3"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
From the scripts:  
AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("PAIGE_PVG"));  
                AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("TALINA_PVG"));  
            AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));  
            AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));  
```
</summary>
	]]

native "SET_RADIO_AUTO_UNFREEZE"
    hash "0xC1AA9F53CE982990"
	jhash (0xA40196BF)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_PORTAL_SETTINGS_OVERRIDE"
    hash "0x044DBAD7A7FA2BE5"
	jhash (0x8AD670EC)
	arguments {
		charPtr "p0",
		charPtr "p1",
	}
	alias "0x044DBAD7A7FA2BE5"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Found in the b617d scripts, duplicates removed:    
AUDIO::_044DBAD7A7FA2BE5("V_CARSHOWROOM_PS_WINDOW_UNBROKEN", "V_CARSHOWROOM_PS_WINDOW_BROKEN");  
 AUDIO::_044DBAD7A7FA2BE5("V_CIA_PS_WINDOW_UNBROKEN", "V_CIA_PS_WINDOW_BROKEN");  
 AUDIO::_044DBAD7A7FA2BE5("V_DLC_HEIST_APARTMENT_DOOR_CLOSED", "V_DLC_HEIST_APARTMENT_DOOR_OPEN");  
 AUDIO::_044DBAD7A7FA2BE5("V_FINALEBANK_PS_VAULT_INTACT", "V_FINALEBANK_PS_VAULT_BLOWN");  
 AUDIO::_044DBAD7A7FA2BE5("V_MICHAEL_PS_BATHROOM_WITH_WINDOW", "V_MICHAEL_PS_BATHROOM_WITHOUT_WINDOW");  
```
</summary>
	]]

native "SET_RADIO_STATION_MUSIC_ONLY"
    hash "0x774BD811F656A122"
	jhash (0xB1FF7137)
	arguments {
		charPtr "radioStation",
		BOOL "toggle",
	}
	alias "0x774BD811F656A122"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
6 calls in the b617d scripts, removed identical lines:  
AUDIO::_774BD811F656A122("RADIO_01_CLASS_ROCK", 1);  
AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 0);  
AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 1);  
```
</summary>
	]]

native "SET_RADIO_TO_STATION_INDEX"
    hash "0xA619B168B8A8570F"
	jhash (0x1D82766D)
	arguments {
		int "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Sets radio station by index.  
```
</summary>
	]]

native "SET_RADIO_TO_STATION_NAME"
    hash "0xC69EDA28699D5107"
	jhash (0x7B36E35E)
	arguments {
		charPtr "stationName",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Kj9t38KF  
```
</summary>
	]]

native "SET_RADIO_TRACK"
    hash "0xB39786F201FEE30B"
	jhash (0x76E96212)
	arguments {
		charPtr "radioStation",
		charPtr "radioTrack",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Only found this one in the decompiled scripts:  
AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");  
```
</summary>
	]]

native "_SET_RADIO_TRACK_MIX"
    hash "0x2CB0075110BE1E56"
	arguments {
		charPtr "radioStationName",
		charPtr "mixName",
		int "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="radioStationName">:</param>
<param name="mixName">:</param>
<param name="p2">:</param>
	]]

native "SET_SIREN_WITH_NO_DRIVER"
    hash "0x1FEF0683B96EBCF2"
	jhash (0x77182D58)
	arguments {
		Vehicle "vehicle",
		ScrHandlePtr "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 1: BOOL toggle
```
</summary>
	]]

native "SET_SCRIPT_UPDATE_DOOR_AUDIO"
    hash "0x06C0023BED16DD6B"
	jhash (0xE61110A2)
	arguments {
		Any "doorHash",
		BOOL "toggle",
	}
	alias "0x06C0023BED16DD6B"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash doorHash
```
</summary>
	]]

native "_SET_SYNCHRONIZED_AUDIO_EVENT_POSITION_THIS_FRAME"
    hash "0x950A154B8DAB6185"
	jhash (0xA17F9AB0)
	arguments {
		charPtr "p0",
		Entity "p1",
	}
	alias "0x950A154B8DAB6185"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Sets the position of the audio event to the entity's position for one frame(?)  
if (l_8C3 == 0) {  
    sub_27fd1(0, -1, 1);  
    if (PED::IS_SYNCHRONIZED_SCENE_RUNNING(l_87D)) {  
        AUDIO::STOP_SYNCHRONIZED_AUDIO_EVENT(l_87D);  
    }  
    if (sub_7dd(l_A00)) {  
        AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);  
    }  
    sub_91c("TK************ SETTING SYNCH SCENE AUDIO POSITION THIS FRAME ************TK");  
    l_8C3 = 1;  
}  
--  
Found in the b617d scripts, duplicates removed:   
AUDIO::_950A154B8DAB6185("CAR_5_IG_6", l_7FE[1/*1*/]);  
AUDIO::_950A154B8DAB6185("EX03_TRAIN_BIKE_LAND",   PLAYER::PLAYER_PED_ID());  
AUDIO::_950A154B8DAB6185("FBI_2_MCS_1_LeadIn", l_40[2/*1*/]);  
AUDIO::_950A154B8DAB6185("FIN_C2_MCS_1", l_24C[0/*1*/]);  
AUDIO::_950A154B8DAB6185("MNT_DNC", l_5F);  
AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);  
```
</summary>
	]]

native "SET_STATIC_EMITTER_ENABLED"
    hash "0x399D2D3B33F1B8EB"
	jhash (0x91F72E92)
	arguments {
		charPtr "emitterName",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Example:  
AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);  
This turns off surrounding sounds not connected directly to peds.  
```
</summary>
	]]

native "_SET_VARIABLE_ON_CUTSCENE_AUDIO"
    hash "0xBCC29F935ED07688"
	jhash (0xD63CF33A)
	arguments {
		charPtr "variableName",
		float "value",
	}
	alias "GET_PLAYER_HEADSET_SOUND_ALTERNATE"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Called 5 times in the scripts. All occurrences found in b617d, sorted alphabetically and identical lines removed:   
AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 0.0);  
AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 1.0);  
```
</summary>
	]]

native "SET_USER_RADIO_CONTROL_ENABLED"
    hash "0x19F21E63AE6EAE4E"
	jhash (0x52E054CE)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_VARIABLE_ON_SOUND"
    hash "0xAD6B3148A78AE9B6"
	jhash (0x606EE5FA)
	arguments {
		int "soundId",
		charPtr "variableName",
		float "value",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_VARIABLE_ON_STREAM"
    hash "0x2F9D3834AEB9EF79"
	jhash (0xF67BB44C)
	arguments {
		charPtr "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
From the scripts, p0:  
"ArmWrestlingIntensity",  
"INOUT",  
"Monkey_Stream",  
"ZoomLevel"  
```
</summary>
	]]

native "SET_VARIABLE_ON_UNDER_WATER_STREAM"
    hash "0x733ADF241531E5C2"
	jhash (0x62D026BE)
	arguments {
		charPtr "variableName",
		float "value",
	}
	alias "0x733ADF241531E5C2"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
AUDIO::_733ADF241531E5C2("inTunnel", 1.0);  
AUDIO::_733ADF241531E5C2("inTunnel", 0.0);  
I do not know as of yet what this does, but this was found in the scripts.  
```
</summary>
	]]

native "SET_VEH_RADIO_STATION"
    hash "0x1B9C0099CB942AC6"
	jhash (0xE391F55F)
	arguments {
		Vehicle "vehicle",
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Kj9t38KF  
```
</summary>
	]]

native "SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR"
    hash "0x59E7B488451F4D3A"
	jhash (0x23BE6432)
	arguments {
		Vehicle "vehicle",
		float "damageFactor",
	}
	alias "0x59E7B488451F4D3A"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_BOOST_ACTIVE"
    hash "0x4A04DE7CAB2739A1"
	jhash (0x072F15F2)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);  
SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   
Will give a boost-soundeffect.  
```
</summary>
	]]

native "SET_VEHICLE_RADIO_ENABLED"
    hash "0x3B988190C0AA6C0B"
	jhash (0x6F812CAB)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
can't seem to enable radio on cop cars etc  
```
</summary>
	]]

native "SET_VEHICLE_RADIO_LOUD"
    hash "0xBB6F1CAEC68B0BCE"
	jhash (0x8D9EDD99)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SKIP_RADIO_FORWARD"
    hash "0x6DDBBDD98E2E9C25"
	jhash (0x10D36630)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE"
    hash "0x9663FE6B7A61EB00"
	jhash (0x85C98304)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_SOUND_VEHICLE_HORN_THIS_FRAME"
    hash "0x9C11908013EA4715"
	jhash (0xDE8BA3CD)
	arguments {
		Vehicle "vehicle",
	}
	alias "0x9C11908013EA4715"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_*
```
</summary>
	]]

native "START_AUDIO_SCENE"
    hash "0x013A80FC08F6E4F2"
	jhash (0xE48D757B)
	arguments {
		charPtr "scene",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  
List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC  
```
</summary>
	]]

native "START_ALARM"
    hash "0x0355EF116C4C97B2"
	jhash (0x703F524B)
	arguments {
		charPtr "alarmName",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Example:  
This will start the alarm at Fort Zancudo.  
AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
First parameter (char) is the name of the alarm.  
Second parameter (bool) is unknown, it does not seem to make a difference if this one is 0 or 1.  
----------  
It DOES make a difference but it has to do with the duration or something I dunno yet  
----------  
 Found in the b617d scripts:  
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS", 0);  
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER", 1);  
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER_B", 0);  
 AUDIO::START_ALARM("BIG_SCORE_HEIST_VAULT_ALARMS", a_0);  
 AUDIO::START_ALARM("FBI_01_MORGUE_ALARMS", 1);  
 AUDIO::START_ALARM("FIB_05_BIOTECH_LAB_ALARMS", 0);  
 AUDIO::START_ALARM("JEWEL_STORE_HEIST_ALARMS", 0);  
 AUDIO::START_ALARM("PALETO_BAY_SCORE_ALARM", 1);  
 AUDIO::START_ALARM("PALETO_BAY_SCORE_CHICKEN_FACTORY_ALARM", 0);  
 AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
 AUDIO::START_ALARM("PORT_OF_LS_HEIST_SHIP_ALARMS", 0);  
 AUDIO::START_ALARM("PRISON_ALARMS", 0);  
 AUDIO::START_ALARM("PROLOGUE_VAULT_ALARMS", 0);  
```
</summary>
	]]

native "START_SCRIPT_CONVERSATION"
    hash "0x6B17C62C9635D2DC"
	jhash (0xE5DE7D9D)
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "START_PRELOADED_CONVERSATION"
    hash "0x23641AFE870AF385"
	jhash (0xA170261B)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "START_SCRIPT_PHONE_CONVERSATION"
    hash "0x252E5F915EABB675"
	jhash (0x38E42D07)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_ALARM"
    hash "0xA1CADDCD98415A41"
	jhash (0xF987BE8C)
	arguments {
		charPtr "alarmName",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Example:  
This will stop the alarm at Fort Zancudo.  
AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
First parameter (char) is the name of the alarm.  
Second parameter (bool) has to be true (1) to have any effect.  
```
</summary>
	]]

native "STOP_ALL_ALARMS"
    hash "0x2F794A877ADD4C92"
	jhash (0xC3CB9DC6)
	arguments {
		BOOL "stop",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_AUDIO_SCENES"
    hash "0xBAC7FC81A75EC1A1"
	jhash (0xF6C7342A)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
??  
```
</summary>
	]]

native "STOP_AUDIO_SCENE"
    hash "0xDFE8422B3B94E688"
	jhash (0xA08D8C58)
	arguments {
		charPtr "scene",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_CURRENT_PLAYING_AMBIENT_SPEECH"
    hash "0xB8BEC0CA6F0EDB0F"
	jhash (0xBB8E64BF)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Needs to be called every frame.  
```
</summary>
	]]

native "STOP_CURRENT_PLAYING_SPEECH"
    hash "0x7A73D05A607734C7"
	jhash (0x5B7463F4)
	arguments {
		Ped "ped",
	}
	alias "0x7A73D05A607734C7"
	alias "_SET_PED_MUTE"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Stops speech.  
```
</summary>
	]]

native "STOP_CUTSCENE_AUDIO"
    hash "0x806058BBDC136E06"
	jhash (0x55461BE6)
	alias "0x806058BBDC136E06"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_PED_RINGTONE"
    hash "0x6C5AE23EFA885092"
	jhash (0xFEEA107C)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_PED_SPEAKING"
    hash "0x9D64D7405520E3D3"
	jhash (0xFF92B49D)
	arguments {
		Ped "ped",
		BOOL "shaking",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_SCRIPTED_CONVERSATION"
    hash "0xD79DEEFB53455EBA"
	jhash (0xAB77DA7D)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "STOP_SOUND"
    hash "0xA3B0C41BA5CC0BB5"
	jhash (0xCD7F4030)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_STREAM"
    hash "0xA4718A1419D18151"
	jhash (0xD1E364DE)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_SYNCHRONIZED_AUDIO_EVENT"
    hash "0x92D6A88E64A94430"
	jhash (0xADEED2B4)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "TRIGGER_MUSIC_EVENT"
    hash "0x706D57B0F50DA710"
	jhash (0xB6094948)
	arguments {
		charPtr "eventName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  
All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
```
</summary>
	]]

native "UNFREEZE_RADIO_STATION"
    hash "0xFC00454CF60B91DD"
	jhash (0x4D46202C)
	arguments {
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "UNLOCK_MISSION_NEWS_STORY"
    hash "0xB165AB7C248B2DC1"
	jhash (0xCCD9ABE4)
	arguments {
		int "newsStory",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
I see this as a native that would of been used back in GTA III when you finally unlocked the bridge to the next island and such.  
```
</summary>
	]]

native "UNLOCK_RADIO_STATION_TRACK_LIST"
    hash "0x031ACB6ABA18C729"
	jhash (0xBE998184)
	arguments {
		charPtr "radioStation",
		charPtr "trackListName",
	}
	alias "0x031ACB6ABA18C729"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
2 calls in the b617d scripts. This line is called 2 times:  
AUDIO::_031ACB6ABA18C729("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");  
Note: Another name for RADIO_16_SILVERLAKE is RADIO MIRROR PARK  
```
</summary>
	]]

native "UNREGISTER_SCRIPT_WITH_AUDIO"
    hash "0xA8638BE228D4751A"
	jhash (0x66728EFE)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**

```
On last-gen this just runs blr and this func is called by several other functions other then the native's table.  
```
</summary>
	]]

native "_UPDATE_LSUR"
    hash "0x47AED84213A47510"
	arguments {
		BOOL "enableMixes",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="enableMixes">:</param>
	]]

native "USE_SIREN_AS_HORN"
    hash "0xFA932DE350266EF8"
	jhash (0xC6BC16F3)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_SET_RADIO_STATION_DISABLED"
    hash "0x94F2E83EAD7E6B82"
	arguments {
		charPtr "stationName",
		BOOL "Toggle",
	}
	alias "0x94f2e83ead7e6b82"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Disables the radio station from the radio wheel.  
Note: You cannot disable LSUR, WCTR and Blaine County Radio.  

List of known station names;

```
RADIO_01_CLASS_ROCK  
RADIO_02_POP  
RADIO_03_HIPHOP_NEW  
RADIO_04_PUNK  
RADIO_05_TALK_01  
RADIO_06_COUNTRY  
RADIO_07_DANCE_01  
RADIO_08_MEXICAN  
RADIO_09_HIPHOP_OLD  
RADIO_12_REGGAE  
RADIO_13_JAZZ  
RADIO_14_DANCE_02  
RADIO_15_MOTOWN  
RADIO_20_THELAB  
RADIO_16_SILVERLAKE  
RADIO_17_FUNK  
RADIO_18_90S_ROCK  
RADIO_21_DLC_XM17  
RADIO_22_DLC_BATTLE_MIX1_RADIO  
RADIO_19_USER 
HIDDEN_RADIO_AMBIENT_TV  
HIDDEN_RADIO_AMBIENT_TV_BRIGHT  
HIDDEN_RADIO_01_CLASS_ROCK  
HIDDEN_RADIO_ADVERTS  
HIDDEN_RADIO_02_POP  
HIDDEN_RADIO_03_HIPHOP_NEW  
HIDDEN_RADIO_04_PUNK  
HIDDEN_RADIO_06_COUNTRY  
HIDDEN_RADIO_07_DANCE_01  
HIDDEN_RADIO_09_HIPHOP_OLD  
HIDDEN_RADIO_12_REGGAE  
HIDDEN_RADIO_15_MOTOWN  
HIDDEN_RADIO_16_SILVERLAKE  
RADIO_22_DLC_BATTLE_MIX1_CLUB  
HIDDEN_RADIO_STRIP_CLUB  
DLC_BATTLE_MIX1_CLUB_PRIV  
HIDDEN_RADIO_BIKER_CLASSIC_ROCK  
DLC_BATTLE_MIX2_CLUB_PRIV  
HIDDEN_RADIO_BIKER_MODERN_ROCK  
RADIO_23_DLC_BATTLE_MIX2_CLUB  
RADIO_25_DLC_BATTLE_MIX4_CLUB  
DLC_BATTLE_MIX3_CLUB_PRIV  
RADIO_26_DLC_BATTLE_CLUB_WARMUP  
HIDDEN_RADIO_BIKER_PUNK  
RADIO_24_DLC_BATTLE_MIX3_CLUB  
DLC_BATTLE_MIX4_CLUB_PRIV  
HIDDEN_RADIO_BIKER_HIP_HOP  
```
</summary>
<param name="stationName">The name of the radio station</param>
<param name="Toggle">Toggle the station on/off</param>
	]]

native "ACTIVATE_FRONTEND_MENU"
    hash "0xEF01D36B9C9D0C7B"
	jhash (0x01D83872)
	arguments {
		Hash "menuhash",
		BOOL "togglePause",
		int "component",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Does stuff like this:  
gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617  
Example:  
int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");  
ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);  
BOOL p1 is a toggle to define the game in pause.  
int p2 is unknown but -1 always works, not sure why though.  
[30/03/2017] ins1de :  
the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.  
Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);  
Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.  
```
</summary>
	]]

native "ADD_BLIP_FOR_COORD"
    hash "0x5A039BB0BCA604B6"
	jhash (0xC6F43D0E)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
</summary>
<param name="x">The X coordinate to create the blip on.</param>
<param name="y">The Y coordinate.</param>
<param name="z">The Z coordinate.</param>
<returns>A blip handle.</returns>
	]]

native "_ADD_BLIP_FOR_AREA"
    hash "0xCE5D0E5E315DB238"
	arguments {
		float "x",
		float "y",
		float "z",
		float "width",
		float "height",
	}
	alias "0xCE5D0E5E315DB238"
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
Adds a rectangular blip for the specified coordinates/area.

It is recommended to use [SET_BLIP_ROTATION](#_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.

By default, the blip will show as a _regular_ blip with the specified color/sprite if it is outside of the minimap view.

Example image:
![minimap](https://w.wew.wtf/pdcjig.png)
![big map](https://w.wew.wtf/zgcjcm.png)

(Native name is _likely_ to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
</summary>
<param name="x">The X coordinate of the center of the blip.</param>
<param name="y">The Y coordinate of the center of the blip.</param>
<param name="z">The Z coordinate of the center of the blip.</param>
<param name="width">The width of the blip.</param>
<param name="height">The height of the blip.</param>
<returns>A handle to the blip.</returns>
	]]

native "ADD_BLIP_FOR_PICKUP"
    hash "0xBE339365C863BD36"
	jhash (0x16693C3A)
	arguments {
		Pickup "pickup",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "ADD_BLIP_FOR_ENTITY"
    hash "0x5CDE92C702A8FCE7"
	jhash (0x30822554)
	arguments {
		Entity "entity",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Returns red ( default ) blip attached to entity.  
Example:  
Blip blip; //Put this outside your case or option  
blip = UI::ADD_BLIP_FOR_ENTITY(YourPedOrBodyguardName);  
UI::SET_BLIP_AS_FRIENDLY(blip, true);  
```
</summary>
	]]

native "ADD_BLIP_FOR_RADIUS"
    hash "0x46818D79B1F7499A"
	jhash (0x4626756C)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "radius",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS"
    hash "0x60296AF4BA14ABC5"
	jhash (0xB58B25BD)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_POINT_TO_GPS_MULTI_ROUTE"
    hash "0xA905192A6781C41B"
	jhash (0xFE485135)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	alias "0xA905192A6781C41B"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_POINT_TO_GPS_CUSTOM_ROUTE"
    hash "0x311438A071DD9B1A"
	jhash (0xEEBDFE55)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	alias "0x311438A071DD9B1A"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_FLOAT"
    hash "0xE7DCB5B874BCD96E"
	jhash (0x24D78013)
	arguments {
		float "value",
		int "decimalPlaces",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_FORMATTED_INTEGER"
    hash "0x0E4C749FF9DE9CC4"
	jhash (0x12929BDF)
	arguments {
		int "value",
		BOOL "commaSeparated",
	}
	alias "0x0E4C749FF9DE9CC4"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_ADD_TEXT_COMPONENT_SCALEFORM"
    hash "0x5F68520888E69014"
	jhash (0x0829A799)
	arguments {
		charPtr "p0",
	}
	alias "_ADD_TEXT_COMPONENT_STRING3"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This native (along with 0x6C188BE134E074AA and 0x94CF4AC034C9C986) do not actually filter anything. They simply add the provided text (as of 944)  
did you even check the disassembly?  
> Do you even lift bro? The PLAYER_NAME and WEBSITE natives are the correct names, it doesn't matter if they're filtered or not. Blame R* for that matter. Hashes don't lie, and it's extremely unlikely the validated names are collisions (what are the odds??)  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_INTEGER"
    hash "0x03B504CF259931BC"
	jhash (0xFE272A57)
	arguments {
		int "value",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME"
    hash "0x80EAD8E2E1D5D52E"
	jhash (0x5DE98F0A)
	arguments {
		Blip "blip",
	}
	alias "0x80EAD8E2E1D5D52E"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_PHONE_NUMBER"
    hash "0x761B77454205A61D"
	jhash (0x65E1D404)
	arguments {
		charPtr "p0",
		int "p1",
	}
	alias "0x761B77454205A61D"
	alias "_ADD_TEXT_COMPONENT_APP_TITLE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p1 was always -1.  
used for phone applications; scaleform  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME"
    hash "0x6C188BE134E074AA"
	jhash (0x27A244D8)
	arguments {
		charPtr "text",
	}
	alias "_ADD_TEXT_COMPONENT_STRING"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Adds an arbitrary string as a text component placeholder, replacing `~a~` in the current text command's text label.

See the documentation on text formatting for more information.
</summary>
<param name="text">A string to add of up to 99 characters. This can contain additional `~` formatting directives.</param>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL"
    hash "0xC63CD5D2920ACBE7"
	jhash (0xDCE05406)
	arguments {
		charPtr "labelName",
	}
	alias "_ADD_TEXT_COMPONENT_ITEM_STRING"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY"
    hash "0x17299B63C7683A2B"
	jhash (0x150E03B6)
	arguments {
		Hash "gxtEntryHash",
	}
	alias "0x17299B63C7683A2B"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key  
```
</summary>
	]]

native "_ALLOW_PAUSE_MENU_WHEN_DEAD_THIS_FRAME"
    hash "0xCC3FDDED67BCFC63"
	jhash (0x630CD8EE)
	alias "0xCC3FDDED67BCFC63"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Allows opening the pause menu this frame, when the player is dead.
</summary>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_TIME"
    hash "0x1115F16B8AB9E8BF"
	jhash (0x135B3CD0)
	arguments {
		int "timestamp",
		int "flags",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE"
    hash "0x94CF4AC034C9C986"
	jhash (0xC736999E)
	arguments {
		charPtr "website",
	}
	alias "_ADD_TEXT_COMPONENT_STRING2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This native (along with 0x5F68520888E69014 and 0x6C188BE134E074AA) do not actually filter anything. They simply add the provided text (as of 944)  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_BUSYSPINNER_ON"
    hash "0xABA17D7CE615ADBF"
	jhash (0xCB7C8994)
	arguments {
		charPtr "string",
	}
	alias "0xABA17D7CE615ADBF"
	alias "_SET_LOADING_PROMPT_TEXT_ENTRY"
	alias "_BEGIN_TEXT_COMMAND_BUSY_STRING"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Initializes the text entry for the the text next to a loading prompt. All natives for for building UI texts can be used here  
BEGIN_TEXT_COMMAND_PRINT  
e.g  
void StartLoadingMessage(char *text, int spinnerType = 3)  
	{  
_SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
_SHOW_LOADING_PROMPT(spinnerType);  
	}  
/*OR*/  
	void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)  
	{  
_SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
_SHOW_LOADING_PROMPT(spinnerType);  
WAIT(timeMs);  
_REMOVE_LOADING_PROMPT();  
	}  
These are some localized strings used in the loading spinner.  
"PM_WAIT"                   = Please Wait  
"CELEB_WPLYRS"              = Waiting For Players.  
"CELL_SPINNER2"             = Scanning storage.  
"ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.  
"ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.  
"FM_COR_AUTOD"                        = Just spinner no text  
"FM_IHELP_WAT2"                        = Waiting for other players  
"FM_JIP_WAITO"                            = Game options are being set  
"FMMC_DOWNLOAD"                    = Downloading  
"FMMC_PLYLOAD"                         = Loading  
"FMMC_STARTTRAN"                    = Launching session  
"HUD_QUITTING"                           =  Quiting session  
"KILL_STRIP_IDM"                         = Waiting for to accept  
"MP_SPINLOADING"                      = Loading  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_DISPLAY_HELP"
    hash "0x8509B634FBE7DA11"
	jhash (0xB245FC10)
	arguments {
		charPtr "inputType",
	}
	alias "_SET_TEXT_COMPONENT_FORMAT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Used to be known as _SET_TEXT_COMPONENT_FORMAT  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_CLEAR_PRINT"
    hash "0xE124FA80A759019C"
	jhash (0x550665AE)
	arguments {
		charPtr "text",
	}
	alias "0xE124FA80A759019C"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
clears a print text command with this text  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_DISPLAY_TEXT"
    hash "0x25FBB336DF1804CB"
	jhash (0x3E35563E)
	arguments {
		charPtr "text",
	}
	alias "_SET_TEXT_ENTRY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
The following were found in the decompiled script files:  
STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3  
ESDOLLA   
ESMINDOLLA - cash (negative)  
Used to be known as _SET_TEXT_ENTRY  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED"
    hash "0x0A24DA3A41B718F5"
	jhash (0x00E20F2D)
	arguments {
		charPtr "labelName",
	}
	alias "0x0A24DA3A41B718F5"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
BOOL IsContextActive(char *ctx)  
{  
	BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(ctx);  
	return END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(0);  
}  
```
</summary>
	]]

native "_BEGIN_TEXT_COMMAND_OBJECTIVE"
    hash "0x23D69E0465570028"
	jhash (0x0E103475)
	arguments {
		charPtr "p0",
	}
	alias "0x23D69E0465570028"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
nothin doin.   
void message()  
	{  
_BEGIN_TEXT_COMMAND_OBJECTIVE("AHT_RTIT");  
_END_TEXT_COMMAND_OBJECTIVE(0);  
	}  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED"
    hash "0x853648FD1063A213"
	jhash (0xDD524A11)
	arguments {
		charPtr "text",
	}
	alias "0x853648FD1063A213"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
nothin doin.   
BOOL Message(char* text)  
	{  
BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();  
	}  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT"
    hash "0x8F9EE5687F8EECCD"
	jhash (0xBF855650)
	arguments {
		charPtr "gxtEntry",
	}
	alias "0x8F9EE5687F8EECCD"
	alias "_BEGIN_TEXT_COMMAND_TIMER"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
void message(char *text)  
{  
	_BEGIN_TEXT_COMMAND_TIMER("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	_END_TEXT_COMMAND_TIMER(0);  
}  
```
</summary>
	]]

native "_BEGIN_TEXT_COMMAND_LINE_COUNT"
    hash "0x521FB041D93DD0E4"
	jhash (0x94B82066)
	arguments {
		charPtr "entry",
	}
	alias "_SET_TEXT_GXT_ENTRY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
get's line count  
int GetLineCount(char *text, float x, float y)  
	{  
_BEGIN_TEXT_COMMAND_LINE_COUNT("STRING");  
                ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
return _END_TEXT_COMMAND_GET_LINE_COUNT(x, y);  
	}  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_SET_BLIP_NAME"
    hash "0xF9113A30DE5C6670"
	jhash (0xF4C211F6)
	arguments {
		charPtr "textLabel",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Starts a text command to change the name of a blip displayed in the pause menu.

This should be paired with [`END_TEXT_COMMAND_SET_BLIP_NAME`](#_0xBC38B49BCB83BC9B), once adding all required text components.
</summary>
<param name="textLabel">The text label to set.</param>
	]]

native "BEGIN_TEXT_COMMAND_PRINT"
    hash "0xB87A37EEB7FAA67D"
	jhash (0xF42C43C7)
	arguments {
		charPtr "GxtEntry",
	}
	alias "_SET_TEXT_ENTRY_2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Used to be known as _SET_TEXT_ENTRY_2  
void ShowSubtitle(char *text)  
{  
	BEGIN_TEXT_COMMAND_PRINT("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	END_TEXT_COMMAND_PRINT(2000, 1);  
}  
```
</summary>
	]]

native "_BEGIN_TEXT_COMMAND_WIDTH"
    hash "0x54CE8AC98E120CAB"
	jhash (0x51E7A037)
	arguments {
		charPtr "text",
	}
	alias "_SET_TEXT_ENTRY_FOR_WIDTH"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Example:  
_BEGIN_TEXT_COMMAND_WIDTH("NUMBER");  
ADD_TEXT_COMPONENT_FLOAT(69.420f, 2);  
float width = _END_TEXT_COMMAND_GET_WIDTH(true);  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_THEFEED_POST"
    hash "0x202709F4C58A0424"
	jhash (0x574EE85C)
	arguments {
		charPtr "text",
	}
	alias "_SET_NOTIFICATION_TEXT_ENTRY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Declares the entry type of a notification, for example "STRING".  
int ShowNotification(char *text)  
{  
	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	return _DRAW_NOTIFICATION(1, 1);  
}  
```
</summary>
	]]

native "BUSYSPINNER_IS_DISPLAYING"
    hash "0xB2A592B04648A9CB"
	jhash (0x3AF34DEF)
	alias "0xB2A592B04648A9CB"
	ns "HUD"
	returns "Pickup"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "BUSYSPINNER_IS_ON"
    hash "0xD422FCC5F239A915"
	jhash (0xB8B3A5D0)
	alias "0xD422FCC5F239A915"
	alias "_IS_LOADING_PROMPT_BEING_DISPLAYED"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_CENTER_PLAYER_ON_RADAR_THIS_FRAME"
    hash "0x6D14BFDC33B34F55"
	jhash (0x334EFD46)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
When calling this, the current frame will have the players "arrow icon" be focused on the dead center of the radar.  
```
</summary>
	]]

native "BUSYSPINNER_OFF"
    hash "0x10D373323E5B9C0D"
	jhash (0x94119534)
	alias "0x10D373323E5B9C0D"
	alias "_REMOVE_LOADING_PROMPT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Removes the loading prompt at the bottom right of the screen, created by the UI::_SHOW_LOADING_PROMPT native.  
```
</summary>
	]]

native "CLEAR_ADDITIONAL_TEXT"
    hash "0x2A179DF17CCF04CD"
	jhash (0x518141E0)
	arguments {
		int "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_CLEAR_ALL_BLIP_ROUTES"
    hash "0xD12882D3FF82BF11"
	alias "0xD12882D3FF82BF11"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Clears all active blip routes that have been set with [`SetBlipRoute`](#_0x3E160C90).
</summary>
	]]

native "CLEAR_BRIEF"
    hash "0x9D292F73ADBD9313"
	jhash (0x9F75A929)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_ALL_HELP_MESSAGES"
    hash "0x6178F68A87A4D3A0"
	jhash (0x9E5D9198)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_DYNAMIC_PAUSE_MENU_ERROR_MESSAGE"
    hash "0x7792424AA0EAC32E"
	jhash (0x2F9A309C)
	alias "0x7792424AA0EAC32E"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_FLOATING_HELP"
    hash "0x50085246ABD3FEFA"
	jhash (0xB181F88F)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p0 looks like int in script  
```
</summary>
	]]

native "CLEAR_GPS_CUSTOM_ROUTE"
    hash "0xE6DE0561D9232A64"
	jhash (0xCF2E3E24)
	alias "0xE6DE0561D9232A64"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_GPS_FLAGS"
    hash "0x21986729D6A3A830"
	jhash (0x056AFCE6)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.  
Doesn't seem like the flags are actually read by the game at all.  
```
</summary>
	]]

native "CLEAR_GPS_MULTI_ROUTE"
    hash "0x67EEDEA1B9BAFD94"
	jhash (0x0D9969E4)
	alias "0x67EEDEA1B9BAFD94"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Does the same as [`SET_GPS_MULTI_ROUTE_RENDER(false)`](https://runtime.fivem.net/doc/reference.html#_0x3DDA37128DD1ACA8)
</summary>
	]]

native "CLEAR_GPS_PLAYER_WAYPOINT"
    hash "0xFF4FB7C8CDFA3DA7"
	jhash (0x0B9C7FC2)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_GPS_RACE_TRACK"
    hash "0x7AA5B4CE533C858B"
	jhash (0x40C59829)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Does the same as SET_RACE_TRACK_RENDER(false);
```
</summary>
	]]

native "CLEAR_HELP"
    hash "0x8DFCED7A656F8802"
	jhash (0xE6D85741)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_IN_PAUSE_MENU"
    hash "0x5E62BE5DC58E9E06"
	jhash (0x28058ACF)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_CLEAR_NOTIFICATIONS_POS"
    hash "0x55598D21339CB998"
	jhash (0x1DA7E41A)
	arguments {
		float "pos",
	}
	alias "0x55598D21339CB998"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
_CLEAR_NOTIFICATIONS_POS(0.5f);  
```
</summary>
	]]

native "CLEAR_REMINDER_MESSAGE"
    hash "0xB57D8DD645CFA2CF"
	jhash (0x5BBCC934)
	alias "0xB57D8DD645CFA2CF"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "CLEAR_PRINTS"
    hash "0xCC33FA791322B9D9"
	jhash (0x216CB1C5)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_SMALL_PRINTS"
    hash "0x2CEA2839313C09AC"
	jhash (0xA869A238)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_THIS_PRINT"
    hash "0xCF708001E1E536DD"
	jhash (0x06878327)
	arguments {
		charPtr "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p0: found arguments in the b617d scripts: pastebin.com/X5akCN7z  
```
</summary>
	]]

native "_CLOSE_MULTIPLAYER_CHAT"
    hash "0x1AC8F4AD40E22127"
	alias "_ABORT_TEXT_CHAT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Aborts the current message in the text chat.  
```
</summary>
	]]

native "CLOSE_SOCIAL_CLUB_MENU"
    hash "0xD2B32BE3FC1626C6"
	jhash (0x5F86AA39)
	alias "0xD2B32BE3FC1626C6"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CREATE_FAKE_MP_GAMER_TAG"
    hash "0xBFEFE3321A3F5015"
	jhash (0xF5CD2AA4)
	arguments {
		Ped "ped",
		charPtr "username",
		BOOL "pointedClanTag",
		BOOL "isRockstarClan",
		charPtr "clanTag",
		int "clanFlag",
	}
	alias "0xBFEFE3321A3F5015"
	alias "_CREATE_MP_GAMER_TAG"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
p0 was the return of NET_TO_PED in fm_mission_controler.  
p4 was always "".  
returns headDisplayId  
```
</summary>
<param name="clanFlag">takes a number 0-5</param>
	]]

native "CREATE_MP_GAMER_TAG_WITH_CREW_COLOR"
    hash "0x6DD05E9D83EFA4C9"
	jhash (0xC969F2D0)
	arguments {
		Player "player",
		charPtr "username",
		BOOL "pointedClanTag",
		BOOL "isRockstarClan",
		charPtr "clanTag",
		int "clanFlag",
		int "r",
		int "g",
		int "b",
	}
	alias "0x6DD05E9D83EFA4C9"
	alias "_CREATE_MP_GAMER_TAG_COLOR"
	alias "_SET_MP_GAMER_TAG_COLOR"
	alias "_CREATE_MP_GAMER_TAG_FOR_NET_PLAYER"
	ns "HUD"
	returns "void"
	doc [[!
<param name="player">the headDisplayId for the net players is the same as the local id of the ped</param>
<param name="clanFlag">takes a number 0-5</param>
	]]

native "DISABLE_FRONTEND_THIS_FRAME"
    hash "0x6D3465A73092F0E6"
	jhash (0xD86A029E)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_DISABLE_RADAR_THIS_FRAME"
    hash "0x5FBAE526203990C9"
	jhash (0x1A4318F7)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
confirmed working  
```
</summary>
	]]

native "DISPLAY_AMMO_THIS_FRAME"
    hash "0xA5E78BA2B1331C55"
	jhash (0x60693CEE)
	arguments {
		BOOL "display",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "DISPLAY_HELP_TEXT_THIS_FRAME"
    hash "0x960C9FF8F616E41C"
	jhash (0x18E3360A)
	arguments {
		charPtr "message",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
The messages are localized strings.  
Examples:  
"No_bus_money"  
"Enter_bus"  
"Tour_help"  
"LETTERS_HELP2"  
"Dummy"  
**The bool appears to always be false (if it even is a bool, as it's represented by a zero)**  
--------  
p1 doesn't seem to make a difference, regardless of the state it's in.   
picture of where on the screen this is displayed?  
```
</summary>
	]]

native "DISPLAY_AREA_NAME"
    hash "0x276B6CE369C33678"
	jhash (0x489FDD41)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "DISPLAY_HUD"
    hash "0xA6294919E56FF02A"
	jhash (0xD10E4E31)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If Hud should be displayed  
```
</summary>
	]]

native "DISPLAY_CASH"
    hash "0x96DEC8D5430208B7"
	jhash (0x0049DF83)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
"DISPLAY_CASH(false);" makes the cash amount render on the screen when appropriate  
"DISPLAY_CASH(true);" disables cash amount rendering  
```
</summary>
	]]

native "DISPLAY_RADAR"
    hash "0xA0EBB943C300E693"
	jhash (0x52816BD4)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
If Minimap / Radar should be displayed.  
```

```
NativeDB Return Type: void
```
</summary>
	]]

native "DISPLAY_HUD_WHEN_PAUSED_THIS_FRAME"
    hash "0x402F9ED62087E898"
	jhash (0xC47AB1B0)
	alias "0x402F9ED62087E898"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "DOES_BLIP_HAVE_GPS_ROUTE"
    hash "0xDD2238F57B977751"
	jhash (0x3E47F357)
	arguments {
		Blip "blip",
	}
	alias "0xDD2238F57B977751"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "DOES_TEXT_BLOCK_EXIST"
    hash "0x1C7302E725259789"
	jhash (0x96F74838)
	arguments {
		charPtr "gxt",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "DISPLAY_SNIPER_SCOPE_THIS_FRAME"
    hash "0x73115226F4814E62"
	jhash (0xBC6C73CB)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Displays the crosshair for this frame.  
```
</summary>
	]]

native "DOES_BLIP_EXIST"
    hash "0xA6DB27D19ECBB7DA"
	jhash (0xAE92DD96)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_DRAW_FRONTEND_ALERT"
    hash "0x15803FEC3B9A872B"
	arguments {
		charPtr "labelTitle",
		charPtr "labelMsg",
		int "p2",
		int "p3",
		charPtr "labelMsg2",
		int "p5",
		int "p6",
		int "p7",
		charPtr "p8",
		charPtr "p9",
		BOOL "background",
		int "errorCode",
	}
	alias "0x15803FEC3B9A872B"
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
instructionalKey enum list:

```
Buttons = {
      Empty = 0,
      Select = 1, -- (RETURN)
      Ok = 2, -- (RETURN)
      Yes = 4, -- (RETURN)
      Back = 8, -- (ESC)
      Cancel = 16, -- (ESC)
      No = 32, -- (ESC)
      RetrySpace = 64, -- (SPACE)
      Restart = 128, -- (SPACE)
      Skip = 256, -- (SPACE)
      Quit = 512, -- (ESC)
      Adjust = 1024, -- (ARROWS)
      SpaceKey = 2048, -- (SPACE)
      Share = 4096, -- (SPACE)
      SignIn = 8192, -- (SPACE)
      Continue = 16384, -- (RETURN)
      AdjustLeftRight = 32768, -- (SCROLL L/R)
      AdjustUpDown = 65536, -- (SCROLL U/D)
      Overwrite = 131072, -- (SPACE)
      SocialClubSignup = 262144, -- (RETURN)
      Confirm = 524288, -- (RETURN)
      Queue = 1048576, -- (RETURN)
      RetryReturn = 2097152, -- (RETURN)
      BackEsc = 4194304, -- (ESC)
      SocialClub = 8388608, -- (RETURN)
      Spectate = 16777216, -- (SPACE)
      OkEsc = 33554432, -- (ESC)
      CancelTransfer = 67108864, -- (ESC)
      LoadingSpinner = 134217728,
      NoReturnToGTA = 268435456, -- (ESC)
      CancelEsc = 536870912, -- (ESC)
}

Alt = {
      Empty = 0,
      No = 1, -- (SPACE)
      Host = 2, -- (ESC)
      SearchForJob = 4, -- (RETURN)
      ReturnKey = 8, -- (TURN)
      Freemode = 16, -- (ESC)
}
```

**Result of the example code:** <https://i.imgur.com/TvmNF4k.png>

```
NativeDB Parameter 5: BOOL p5
NativeDB Return Type: void
```
</summary>
<param name="labelTitle">Label of the alert's title.</param>
<param name="labelMsg">Label of the alert's message.</param>
<param name="p2">This is an enum, check the description for a list.</param>
<param name="p3">This is an enum, check the description for a list.</param>
<param name="labelMsg2">Label of another message line</param>
<param name="p5">usually 0</param>
<param name="p6">usually -1</param>
<param name="p7">usually 0</param>
<param name="p8">unknown label</param>
<param name="p9">unknown label</param>
<param name="background">Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.</param>
<param name="errorCode">Error code, shown at the bottom left if set to value other than 0.</param>
	]]

native "END_TEXT_COMMAND_BUSYSPINNER_ON"
    hash "0xBD12F8228410D9B4"
	jhash (0x903F5EE4)
	arguments {
		int "busySpinnerType",
	}
	alias "0xBD12F8228410D9B4"
	alias "_SHOW_LOADING_PROMPT"
	alias "_END_TEXT_COMMAND_BUSY_STRING"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This does NOT get called per frame. Call it once to show, then use UI::_REMOVE_LOADING_PROMPT to remove it  
Changes the the above native's (UI::_SET_LOADING_PROMPT_TEXT_ENTRY) spinning circle type.  
Types:  
enum LoadingPromptTypes  
{  
	LOADING_PROMPT_LEFT,  
	LOADING_PROMPT_LEFT_2,  
	LOADING_PROMPT_LEFT_3,  
	SAVE_PROMPT_LEFT,  
	LOADING_PROMPT_RIGHT,  
};  
```
</summary>
	]]

native "DOES_PED_HAVE_AI_BLIP"
    hash "0x15B8ECF844EE67ED"
	jhash (0x3BE1257F)
	arguments {
		Ped "ped",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the ped's blip is controlled by the game.   
It's the default blip you can see on enemies during freeroam in singleplayer (the one that fades out quickly).  
```
</summary>
	]]

native "DOES_TEXT_LABEL_EXIST"
    hash "0xAC09CA973C564252"
	jhash (0x6ECAE560)
	arguments {
		charPtr "gxt",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if the passed gxt name exists in the game files.  
```
</summary>
	]]

native "END_TEXT_COMMAND_DISPLAY_HELP"
    hash "0x238FFE5C7B0498A6"
	jhash (0xB59B530D)
	arguments {
		int "p0",
		BOOL "loop",
		BOOL "beep",
		int "shape",
	}
	alias "_DISPLAY_HELP_TEXT_FROM_STRING_LABEL"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
-----------  
p3 (duration in MS) was previously mentioned as "shape", but with some more testing it seems that it's more likely to be a duration in MS. (Tested this when not calling it every tick, but instead only once and let it display for the specified duration).   
-1 seems to be default delay (around 3 seconds), 5000 (ms) seems to be the max. Anything > 5000 will still result in 5 seconds of display time.  
Old p3 (shape) description: "shape goes from -1 to 50 (may be more)."  
--------------  
p0 is always 0.  
Example:  
void FloatingHelpText(char* text)  
{  
	BEGIN_TEXT_COMMAND_DISPLAY_HELP("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	END_TEXT_COMMAND_DISPLAY_HELP (0, 0, 1, -1);  
}  
Image:  
- imgbin.org/images/26209.jpg  
more inputs/icons:  
- pastebin.com/nqNYWMSB  
Used to be known as _DISPLAY_HELP_TEXT_FROM_STRING_LABEL  
```
</summary>
	]]

native "_END_TEXT_COMMAND_GET_LINE_COUNT"
    hash "0x9040DFB09BE75706"
	jhash (0xAA318785)
	arguments {
		float "x",
		float "y",
	}
	alias "0x9040DFB09BE75706"
	alias "_GET_TEXT_SCREEN_LINE_COUNT"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Determines how many lines the text string will use when drawn on screen.   
Must use _BEGIN_TEXT_COMMAND_LINE_COUNT for setting up  
```
</summary>
	]]

native "END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED"
    hash "0x8A9BA1AB3E237613"
	jhash (0x672EFB45)
	alias "0x8A9BA1AB3E237613"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "END_TEXT_COMMAND_CLEAR_PRINT"
    hash "0xFCC75460ABA29378"
	jhash (0x67785AF2)
	alias "0xFCC75460ABA29378"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "END_TEXT_COMMAND_DISPLAY_TEXT"
    hash "0xCD015E5BB0D96A57"
	jhash (0x6F8350CE)
	arguments {
		float "x",
		float "y",
	}
	alias "_DRAW_TEXT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.  
Used to be known as _DRAW_TEXT  
```

```
NativeDB Added Parameter 3: int p2
```
</summary>
	]]

native "END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED"
    hash "0x10BDDBFC529428DD"
	jhash (0xF63A13EC)
	arguments {
		int "p0",
	}
	alias "0x10BDDBFC529428DD"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_END_TEXT_COMMAND_GET_WIDTH"
    hash "0x85F061DA64ED2F67"
	jhash (0xD12A643A)
	arguments {
		BOOL "p0",
	}
	alias "_GET_TEXT_SCREEN_WIDTH"
	ns "HUD"
	returns "float"
	doc [[!
<summary>
```
Used with _BEGIN_TEXT_COMMAND_WIDTH.  
In scripts, p0 is false when used in combination with "ESMINDOLLA" or "ESDOLLA", otherwise it's true.  
Returns from range 0 to 1.  
```
</summary>
	]]

native "END_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT"
    hash "0xA86911979638106F"
	jhash (0x6E7FDA1C)
	arguments {
		BOOL "p0",
	}
	alias "0xA86911979638106F"
	alias "_END_TEXT_COMMAND_TIMER"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: int p0
```
</summary>
	]]

native "END_TEXT_COMMAND_SET_BLIP_NAME"
    hash "0xBC38B49BCB83BC9B"
	jhash (0xE8E59820)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Finalizes a text command started with [`BEGIN_TEXT_COMMAND_SET_BLIP_NAME`](#_0xF9113A30DE5C6670), setting the name
of the specified blip.
</summary>
<param name="blip">The blip to change the name for.</param>
	]]

native "_END_TEXT_COMMAND_OBJECTIVE"
    hash "0xCFDBDF5AE59BA0F4"
	jhash (0x2944A6C5)
	arguments {
		BOOL "p0",
	}
	alias "0xCFDBDF5AE59BA0F4"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p0 is always false in scripts.  
```
</summary>
	]]

native "END_TEXT_COMMAND_PRINT"
    hash "0x9D77056A530643F6"
	jhash (0x38F82261)
	arguments {
		int "duration",
		BOOL "drawImmediately",
	}
	alias "_DRAW_SUBTITLE_TIMED"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Draws the subtitle at middle center of the screen.  
int duration = time in milliseconds to show text on screen before disappearing  
drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished  
Used to be known as _DRAW_SUBTITLE_TIMED  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_CREW_RANKUP"
    hash "0x8EFCCF6EC66D85E4"
	jhash (0x76FB0F21)
	arguments {
		charPtr "chTitle",
		charPtr "clanTxd",
		charPtr "clanTxn",
		BOOL "isImportant",
		BOOL "showSubtitle",
	}
	alias "0x8EFCCF6EC66D85E4"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Example, only occurrence in the scripts:  
UI::_8EFCCF6EC66D85E4(&v_23, &v_13, &v_13, 1, v_34);  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_CREWTAG"
    hash "0x97C9E4E7024A8F2C"
	jhash (0xA9CCEF66)
	arguments {
		BOOL "crewTypeIsPrivate",
		BOOL "crewTagContainsRockstar",
		intPtr "crewTag",
		int "rank",
		BOOL "hasFounderStatus",
		BOOL "isImportant",
		int "clanHandle",
		int "r",
		int "g",
		int "b",
	}
	alias "0x97C9E4E7024A8F2C"
	alias "_NOTIFICATION_SEND_APARTMENT_INVITE"
	alias "_DRAW_NOTIFICATION_APARTMENT_INVITE"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
This function and the one below it are for after you receive an invite, not sending it.  
p0 = 1 or 0  
nothin doin.   
int invite(Player player)  
	{  
int iVar2, iVar3;  
networkHandleMgr handle;  
NETWORK_HANDLE_FROM_PLAYER(player, &handle.netHandle, 13);  
networkClanMgr clan;  
char *playerName = GET_PLAYER_NAME(player);  
_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
_SET_NOTIFACTION_COLOR_NEXT(0);  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
if (NETWORK_CLAN_PLAYER_GET_DESC(&clan, 35, &handle.netHandle))  
{  
	iVar2 = 0;  
	if (ARE_STRINGS_EQUAL(clan.unk22, "Leader") && clan.unk30 == 0)  
	{  
iVar2 = 1;  
	}  
	if (clan.unk21 > 0)  
	{  
iVar3 = 0;  
	}  
	else  
	{  
iVar3 = 1;  
	}  
	BOOL unused = _0x54E79E9C(&clan.clanHandle, 35);  
	return _DRAW_NOTIFICATION_APARTMENT_INVITE(iVar3, 0 /*unused*/, &clan.unk17, clan.unk30, iVar2, 0, clan.clanHandle, 0, 0, 0);  
}  
	}  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_AWARD"
    hash "0xAA295B6F28BD587D"
	jhash (0x02DED2B8)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		int "rpBonus",
		int "colorOverlay",
		charPtr "titleLabel",
	}
	alias "0xAA295B6F28BD587D"
	alias "_DRAW_NOTIFICATION_ICON"
	alias "_DRAW_NOTIFICATION_AWARD"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
Shows an "award" notification above the minimap, lua example result:

![](https://i.imgur.com/e2DNaKX.png)

Old description:

```
Example:  
UI::_SET_NOTIFICATION_TEXT_ENTRY("HUNT");  
UI::_0xAA295B6F28BD587D("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");  
```
</summary>
<param name="textureDict">The texture dictionary name for the icon on the left.</param>
<param name="textureName">The texture name for the icon on the left.</param>
<param name="rpBonus">The gained "RP" amount that will be displayed on the right side of the notification.</param>
<param name="colorOverlay">Hudcolor overlay that gets applied on top of the notification, fucks up text/image visibility in most cases if set to something other than 0.</param>
<param name="titleLabel">The label that will be displayed at the top of the notification (title).</param>
<returns>The notification handle.</returns>
	]]

native "_END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_ENTRY"
    hash "0xC6F580E4C94926AC"
	arguments {
		charPtr "picTxd",
		charPtr "picTxn",
		BOOL "flash",
		int "iconType",
		charPtr "entryText",
		charPtr "text",
	}
	alias "0xC6F580E4C94926AC"
	alias "_SET_NOTIFICATION_MESSAGE_3"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Needs more research.  
Only one type of usage in the scripts:  
UI::_C6F580E4C94926AC("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a_0);  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_CREWTAG_WITH_GAME_NAME"
    hash "0x137BC35589E34E1E"
	jhash (0x88B9B909)
	arguments {
		BOOL "crewTypeIsPrivate",
		BOOL "crewTagContainsRockstar",
		intPtr "crewTag",
		int "rank",
		BOOL "isLeader",
		BOOL "isImportant",
		int "clanHandle",
		charPtr "gamerStr",
		int "r",
		int "g",
		int "b",
	}
	alias "0x137BC35589E34E1E"
	alias "_NOTIFICATION_SEND_CLAN_INVITE"
	alias "_DRAW_NOTIFICATION_CLAN_INVITE"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
p0 = 1 or 0  
crashes my game...  
this is for sending invites to network players - jobs/apartment/ect...   
return notification handle  
int invite(Player player)  
	{  
networkHandleMgr netHandle;  
networkClanMgr clan;  
char *playerName = GET_PLAYER_NAME(player);  
_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
_SET_NOTIFACTION_COLOR_NEXT(1);  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
NETWORK_HANDLE_FROM_PLAYER(player, &netHandle.netHandle, 13);  
if (NETWORK_CLAN_PLAYER_IS_ACTIVE(&netHandle.netHandle))  
{  
	NETWORK_CLAN_PLAYER_GET_DESC(&clan.clanHandle, 35, &netHandle.netHandle);  
	_DRAW_NOTIFICATION_CLAN_INVITE(0, _0x54E79E9C(&clan.clanHandle, 35), &clan.unk17, clan.isLeader, 0, 0, clan.clanHandle, playerName, 0, 0, 0);  
}  
	}  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU"
    hash "0x1E6611149DB3DB6B"
	jhash (0x0EB382B7)
	arguments {
		charPtr "picTxd",
		charPtr "picTxn",
		BOOL "flash",
		int "iconType",
		charPtr "nameStr",
		charPtr "subtitleStr",
		float "duration",
	}
	alias "0x1E6611149DB3DB6B"
	alias "_SET_NOTIFICATION_MESSAGE_4"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
NOTE: 'duration' is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
Example, only occurrence in the scripts:  
v_8 = UI::_1E6611149DB3DB6B("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT"
    hash "0x1CCD9A37359072CF"
	jhash (0xE7E3C98B)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		BOOL "flash",
		int "iconType",
		charPtr "sender",
		charPtr "subject",
	}
	alias "_SET_NOTIFICATION_MESSAGE"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
Sets some extra options for a notification. It adds an image (or icon type) and sets a notification title (sender) and subtitle (subject).

Texture dictionary and texture name parameters are usually the same exact value.

Example result:

![](https://i.imgur.com/LviutDl.png)

Old description with list of possible icons and texture names:

```
List of picNames: pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
```
</summary>
<param name="textureDict">The texture dictionary for the icon.</param>
<param name="textureName">The texture name for the icon.</param>
<param name="flash">Flash, doesn't seem to work no matter what.</param>
<param name="iconType">The icon type, see the list above in the description.</param>
<param name="sender">The notification title.</param>
<param name="subject">The notification subtitle.</param>
<returns>The notification handle.</returns>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_MPTICKER"
    hash "0xF020C96915705B3A"
	jhash (0x8E319AB8)
	arguments {
		BOOL "isImportant",
		BOOL "bHasTokens",
	}
	alias "_DRAW_NOTIFICATION_4"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Alias of 0x2ED7843F8F801023
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG"
    hash "0x5CBF7BADE20DB93E"
	jhash (0x3E807FE3)
	arguments {
		charPtr "picTxd",
		charPtr "picTxn",
		BOOL "flash",
		int "iconType",
		charPtr "nameStr",
		charPtr "subtitleStr",
		float "duration",
		charPtr "crewPackedStr",
	}
	alias "_SET_NOTIFICATION_MESSAGE_CLAN_TAG"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
List of picNames pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
"duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
"clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
```
</summary>
	]]

native "_END_TEXT_COMMAND_THEFEED_POST_REPLAY_ICON"
    hash "0xD202B92CBF1D816F"
	arguments {
		int "eType",
		int "iIcon",
		charPtr "sTitle",
	}
	alias "0xD202B92CBF1D816F"
	alias "_DRAW_NOTIFICATION_WITH_ICON"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
returns a notification handle, prints out a notification like below:  
type range: 0   
if you set type to 1, image goes from 0 - 39 - Xbox you can add text to  
example:   
UI::_0xD202B92CBF1D816F(1, 20, "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG_AND_ADDITIONAL_ICON"
    hash "0x531B84E7DA981FB6"
	jhash (0xDEB491C8)
	arguments {
		charPtr "picTxd",
		charPtr "picTxn",
		BOOL "flash",
		int "iconType1",
		charPtr "nameStr",
		charPtr "subtitleStr",
		float "duration",
		charPtr "crewPackedStr",
		int "iconType2",
		int "textColor",
	}
	alias "_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
List of picNames: pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
"duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
"clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.  
int IconNotification(char *text, char *text2, char *Subject)  
{  
	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);  
	return _DRAW_NOTIFICATION(1, 1);  
}  
```
</summary>
	]]

native "_END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT"
    hash "0xDD6CB2CCE7C2735C"
	arguments {
		int "eType",
		charPtr "sIcon",
		charPtr "sSubtitle",
	}
	alias "0xDD6CB2CCE7C2735C"
	alias "_DRAW_NOTIFICATION_WITH_BUTTON"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
returns a notification handle, prints out a notification like below:  
type range: 0   
if you set type to 1, button accepts "~INPUT_SOMETHING~"  
example:  
UI::_0xDD6CB2CCE7C2735C(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
- imgur.com/UPy0Ial  
Examples from the scripts:  
l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_SAVE_REPLAY_CLIP~","");  
l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_STATS"
    hash "0x2B7E9A4EAAA93C89"
	jhash (0xED130FA1)
	arguments {
		charPtr "statTitle",
		int "iconEnum",
		BOOL "stepVal",
		int "barValue",
		BOOL "isImportant",
		charPtr "picTxd",
		charPtr "picTxn",
	}
	alias "0x2B7E9A4EAAA93C89"
	alias "_SET_NOTIFICATION_MESSAGE_2"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
List of picNames: pastebin.com/XdpJVbHz  
```

```
NativeDB Parameter 2: int stepVal
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_TICKER_FORCED"
    hash "0x44FA03975424A0EE"
	jhash (0x57B8D0D4)
	arguments {
		BOOL "isImportant",
		BOOL "bHasTokens",
	}
	alias "_DRAW_NOTIFICATION_2"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Removes all game feed posts and unfreezes (see 0xFDB423997FA30340) CGameStreamMgr
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_TICKER"
    hash "0x2ED7843F8F801023"
	jhash (0x08F7AF78)
	arguments {
		BOOL "isImportant",
		BOOL "bHasTokens",
	}
	alias "_DRAW_NOTIFICATION"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Draws a notification above the map and returns the notifications handle  
Color syntax:  
~r~ = Red  
~b~ = Blue  
~g~ = Green  
~y~ = Yellow  
~p~ = Purple  
~o~ = Orange  
~c~ = Grey  
~m~ = Darker Grey  
~u~ = Black  
~n~ = New Line  
~s~ = Default White  
~w~ = White  
~h~ = Bold Text  
~nrt~ = ???  
Special characters:  
¦ = Rockstar Verified Icon (U+00A6:Broken Bar - Alt+0166)  
÷ = Rockstar Icon (U+00F7:Division Sign - Alt+0247)  
∑ = Rockstar Icon 2 (U+2211:N-Ary Summation)  
Example C#:  
            Function.Call(Hash._ADD_TEXT_COMPONENT_STRING3, "Now I need you to bring the ~b~vehicle~w~ back to me!");  
----  
showInBrief==true: the notification will appear in the "Brief/Info" -> "Notifications" tab in the pause menu.  
showInBrief==false: the notification will NOT appear in the pause menu.  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_UNLOCK"
    hash "0x33EE12743CCD6343"
	jhash (0xE05E7052)
	arguments {
		charPtr "chTitle",
		int "iconType",
		charPtr "chSubtitle",
	}
	alias "0x33EE12743CCD6343"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "END_TEXT_COMMAND_THEFEED_POST_TICKER_WITH_TOKENS"
    hash "0x378E809BF61EC840"
	jhash (0x02BCAF9B)
	arguments {
		BOOL "isImportant",
		BOOL "bHasTokens",
	}
	alias "_DRAW_NOTIFICATION_3"
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU"
    hash "0xC8F3AAF93D0600BF"
	jhash (0x4FA43BA4)
	arguments {
		charPtr "chTitle",
		int "iconType",
		charPtr "chSubtitle",
		BOOL "isImportant",
	}
	alias "0xC8F3AAF93D0600BF"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "FLASH_ABILITY_BAR"
    hash "0x02CFBA0C9E9275CE"
	jhash (0x3648960D)
	arguments {
		BOOL "millisecondsToFlash",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If set to true ability bar will flash  
```

```
NativeDB Parameter 0: int millisecondsToFlash
```
</summary>
	]]

native "FLASH_MINIMAP_DISPLAY"
    hash "0xF2DD778C22B15BDA"
	jhash (0xB8359952)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
adds a short flash to the Radar/Minimap  
Usage: UI.FLASH_MINIMAP_DISPLAY  
```
</summary>
	]]

native "END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU_WITH_COLOR"
    hash "0x7AE0589093A2E088"
	jhash (0x8C90D22F)
	arguments {
		charPtr "chTitle",
		int "iconType",
		charPtr "chSubtitle",
		BOOL "isImportant",
		int "titleColor",
		BOOL "p5",
	}
	alias "0x7AE0589093A2E088"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "END_TEXT_COMMAND_THEFEED_POST_VERSUS_TU"
    hash "0xB6871B0555B02996"
	jhash (0x5E93FBFA)
	arguments {
		charPtr "ch1TXD",
		charPtr "ch1TXN",
		int "val1",
		charPtr "ch2TXD",
		charPtr "ch2TXN",
		int "val2",
	}
	alias "0xB6871B0555B02996"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
NativeDB Added Parameter 7: int hudColorIndex1
NativeDB Added Parameter 8: int hudColorIndex2
```
</summary>
	]]

native "FORCE_CLOSE_REPORTUGC_MENU"
    hash "0xEE4C0E6DBC6F2C6F"
	jhash (0x67649EE0)
	alias "0xEE4C0E6DBC6F2C6F"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Hides the hud element displayed by _0x523A590C1A3CC0D3  
```
</summary>
	]]

native "FORCE_SONAR_BLIPS_THIS_FRAME"
    hash "0x1121BFA1A1A522A8"
	jhash (0x3F4AFB13)
	alias "0x1121BFA1A1A522A8"
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
Doesn't actually return anything.
```
</summary>
	]]

native "FLASH_WANTED_DISPLAY"
    hash "0xA18AFB39081B6A1F"
	jhash (0x629F866B)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "_GET_AI_BLIP_2"
    hash "0x7CD934010E115C2C"
	jhash (0x06349065)
	arguments {
		Ped "ped",
	}
	alias "0x7CD934010E115C2C"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Return Type: Blip
```
</summary>
	]]

native "_FORCE_CLOSE_TEXT_INPUT_BOX"
    hash "0x8817605C2BA76200"
	alias "0x8817605C2BA76200"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "GET_BLIP_COLOUR"
    hash "0xDF729E8D20CF7327"
	jhash (0xDD6A1E54)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_BLIP_FROM_ENTITY"
    hash "0xBC8DBDCA2436F7E8"
	jhash (0x005A2A47)
	arguments {
		Entity "entity",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Returns the Blip handle of given Entity.  
```
</summary>
	]]

native "_GET_AI_BLIP"
    hash "0x56176892826A4FE8"
	jhash (0xCA52CF43)
	arguments {
		Ped "ped",
	}
	alias "0x56176892826A4FE8"
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Returns the current AI BLIP for the specified ped  
```
</summary>
	]]

native "GET_BLIP_ALPHA"
    hash "0x970F608F0EE6C885"
	jhash (0x297AF6C8)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_BLIP_INFO_ID_COORD"
    hash "0xFA7C7F0AADF25D09"
	jhash (0xB7374A66)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Vector3"
	doc [[!
	]]

native "GET_BLIP_COORDS"
    hash "0x586AFE3FF72D996E"
	jhash (0xEF6FF47B)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Vector3"
	doc [[!
	]]

native "GET_BLIP_INFO_ID_ENTITY_INDEX"
    hash "0x4BA4E2553AFEDC2C"
	jhash (0xA068C40B)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Entity"
	doc [[!
	]]

native "GET_BLIP_INFO_ID_PICKUP_INDEX"
    hash "0x9B6786E4C03DD382"
	jhash (0x86913D37)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Pickup"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "GET_BLIP_HUD_COLOUR"
    hash "0x729B5F1EFBC0AAEE"
	jhash (0xE88B4BC2)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_BLIP_INFO_ID_TYPE"
    hash "0xBE9B0959FFD0779B"
	jhash (0x501D7B4E)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns a value based on what the blip is attached to  
1   
2   
3   
4   
5   
6   
7  
```
</summary>
	]]

native "GET_BLIP_SPRITE"
    hash "0x1FC877464A04FC4F"
	jhash (0x72FF2E73)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Blips Images + IDs:  
gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html  
```
</summary>
	]]

native "GET_BLIP_INFO_ID_DISPLAY"
    hash "0x1E314167F701DC3B"
	jhash (0xD0FC19F4)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "_GET_BLIP_INFO_ID_ITERATOR"
    hash "0x186E5D252FA50E7D"
	jhash (0xB9827942)
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_CURRENT_WEBSITE_ID"
    hash "0x97D47996FC48CBAD"
	jhash (0x42A55B14)
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_CURRENT_FRONTEND_MENU_VERSION"
    hash "0x2309595AD6145265"
	jhash (0x33D6868F)
	alias "0x2309595AD6145265"
	alias "_GET_CURRENT_FRONTEND_MENU"
	ns "HUD"
	returns "Hash"
	doc [[!
<summary>
```
if (UI::_2309595AD6145265() == ${fe_menu_version_empty_no_background})  
Seems to get the current frontend menu  
```
</summary>
	]]

native "GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID"
    hash "0x52F0982D7FD156B6"
	jhash (0x8188935F)
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "GET_CURRENT_WEBPAGE_ID"
    hash "0x01A358D9128B7A86"
	jhash (0xAB5B7C18)
	alias "0x01A358D9128B7A86"
	alias "_GET_ACTIVE_WEBSITE_ID"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
native only found once in appinternet.c4  
same thing as this but does not need websiteID  
Any _0xE3B05614DCE1D014(Any p0) // 0xE3B05614DCE1D014 0xD217EE7E  
returns current websitePageID  
```
</summary>
	]]

native "GET_HUD_COLOUR"
    hash "0x7C9C91AB74A0360F"
	jhash (0x63F66A0B)
	arguments {
		int "hudColorIndex",
		intPtr "r",
		intPtr "g",
		intPtr "b",
		intPtr "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
HUD colors and their values: pastebin.com/d9aHPbXN  
```
</summary>
	]]

native "_GET_LABEL_TEXT"
    hash "0x7B5280EBA9840C72"
	jhash (0x95C4B5AD)
	arguments {
		charPtr "labelName",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Gets a string literal from a label name.  
```
</summary>
	]]

native "GET_FIRST_BLIP_INFO_ID"
    hash "0x1BEDE233E6CD2A1F"
	jhash (0x64C0273D)
	arguments {
		int "blipSprite",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
8 = waypoint  
```
</summary>
	]]

native "GET_LENGTH_OF_LITERAL_STRING"
    hash "0xF030907CCBB8A9FD"
	jhash (0x99379D55)
	arguments {
		charPtr "string",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns the length of the string passed (much like strlen).  
```
</summary>
	]]

native "GET_HUD_COMPONENT_POSITION"
    hash "0x223CA69A8C4417FD"
	jhash (0x080DCED6)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "Vector3"
	doc [[!
	]]

native "GET_MAIN_PLAYER_BLIP_ID"
    hash "0xDCD4EC3F419D02FA"
	jhash (0xAB93F020)
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "GET_LENGTH_OF_LITERAL_STRING_IN_BYTES"
    hash "0x43E4111189E54F0E"
	jhash (0x7DBC0764)
	arguments {
		charPtr "string",
	}
	alias "0x43E4111189E54F0E"
	alias "_GET_LENGTH_OF_STRING"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
gets the length of a null terminated string, without checking unicode encodings  
```
</summary>
	]]

native "GET_NAMED_RENDERTARGET_RENDER_ID"
    hash "0x1A6478B61C6BDC3B"
	jhash (0xF9D7A401)
	arguments {
		charPtr "name",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL"
    hash "0x801BD273D3A23F74"
	jhash (0xA4CA7BE5)
	arguments {
		charPtr "gxt",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns the string length of the string from the gxt string .  
```
</summary>
	]]

native "GET_NEXT_BLIP_INFO_ID"
    hash "0x14F96AA50D6FBEA7"
	jhash (0x9356E92F)
	arguments {
		int "blipSprite",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "_GET_MINIMAP_REVEAL_PERCENTAGE"
    hash "0xE0130B41D3CF4574"
	jhash (0xA4098ACC)
	alias "0xE0130B41D3CF4574"
	ns "HUD"
	returns "float"
	doc [[!
	]]

native "GET_PAUSE_MENU_STATE"
    hash "0x272ACD84970869C5"
	jhash (0x92F50134)
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns:  
5  
10  
15  
20  
25  
30  
35  
```
</summary>
	]]

native "GET_STREET_NAME_FROM_HASH_KEY"
    hash "0xD0EF8A959B8A4CB9"
	jhash (0x1E8E310C)
	arguments {
		Hash "hash",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
This functions converts the hash of a street name into a readable string.  
For how to get the hashes, see PATHFIND::GET_STREET_NAME_AT_COORD.  
```
</summary>
	]]

native "GET_NUMBER_OF_ACTIVE_BLIPS"
    hash "0x9A3FF3DE163034E8"
	jhash (0x144020FA)
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "_GET_TEXT_SUBSTRING_SAFE"
    hash "0xB2798643312205C5"
	jhash (0x0183A66C)
	arguments {
		charPtr "text",
		int "position",
		int "length",
		int "maxLength",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Returns a substring of a specified length starting at a specified position. The result is guaranteed not to exceed the specified max length.  
NOTE: The 'maxLength' parameter might actually be the size of the buffer that is returned. More research is needed. -CL69  
Example:  
// Condensed example of how Rockstar uses this function  
strLen = UI::GET_LENGTH_OF_LITERAL_STRING(GAMEPLAY::GET_ONSCREEN_KEYBOARD_RESULT());  
subStr = UI::_GET_TEXT_SUBSTRING_SAFE(GAMEPLAY::GET_ONSCREEN_KEYBOARD_RESULT(), 0, strLen, 63);  
--  
"fm_race_creator.ysc", line 85115:  
// parameters modified for clarity  
BOOL sub_8e5aa(char *text, int length) {  
    for (i = 0; i <= (length - 2); i += 1) {  
        if (!GAMEPLAY::ARE_STRINGS_EQUAL(UI::_GET_TEXT_SUBSTRING_SAFE(text, i, i + 1, 1), " ")) {  
            return FALSE;  
        }  
    }  
    return TRUE;  
}  
```
</summary>
	]]

native "_GET_TEXT_SCALE_HEIGHT"
    hash "0xDB88A37483346780"
	jhash (0x3330175B)
	arguments {
		float "size",
		int "font",
	}
	alias "0xDB88A37483346780"
	ns "HUD"
	returns "float"
	doc [[!
<summary>
```
This get's the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.  
```
</summary>
	]]

native "_GET_WARNING_MESSAGE_TITLE_HASH"
    hash "0x81DF9ABA6C83DFF9"
	ns "HUD"
	returns "Hash"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
	]]

native "_GET_TEXT_SUBSTRING"
    hash "0x169BD9382084C8C0"
	jhash (0x34A396EE)
	arguments {
		charPtr "text",
		int "position",
		int "length",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Returns a substring of a specified length starting at a specified position.  
Example:  
// Get "STRING" text from "MY_STRING"  
subStr = UI::_GET_TEXT_SUBSTRING("MY_STRING", 3, 6);  
```
</summary>
	]]

native "GIVE_PED_TO_PAUSE_MENU"
    hash "0xAC0BFBDC3BE00E14"
	jhash (0x2AD2C9CE)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p1 is either 1 or 2 in the PC scripts.  
```
</summary>
	]]

native "HAS_ADDITIONAL_TEXT_LOADED"
    hash "0x02245FE4BED318B8"
	jhash (0xB0E56045)
	arguments {
		int "slot",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_GET_TEXT_SUBSTRING_SLICE"
    hash "0xCE94AEBA5D82908A"
	jhash (0xFA6373BB)
	arguments {
		charPtr "text",
		int "startPosition",
		int "endPosition",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).  
Example:  
// Get "STRING" text from "MY_STRING"  
subStr = UI::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 9);  
// Overflows are possibly replaced with underscores (needs verification)  
subStr = UI::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 10); // "STRING_"?  
```
</summary>
	]]

native "HAS_THIS_ADDITIONAL_TEXT_LOADED"
    hash "0xADBF060E2B30C5BC"
	jhash (0x80A52040)
	arguments {
		charPtr "gxt",
		int "slot",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if the specified gxt has loaded into the passed slot.  
```
</summary>
	]]

native "_GET_2D_COORD_FROM_3D_COORD"
    hash "0xF9904D11F1ACBEC3"
	jhash (0xFE9A39F8)
	arguments {
		float "worldX",
		float "worldY",
		float "worldZ",
		floatPtr "screenX",
		floatPtr "screenY",
	}
	alias "0xF9904D11F1ACBEC3"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
World to relative screen coords  
this world to screen will keep the text on screen. it will keep it in the screen pos. good for a deer hunting mod  

Was named _GET_SCREEN_COORD_FROM_WORLD_COORD, but this conflicts with 0x34E82F05DF2974F5
As that hash actually matches GET_SCREEN_COORD_FROM_WORLD_COORD that one supercedes and this one was renamed
to _GET_2D_COORD_FROM_3D_COORD
```
</summary>
	]]

native "_HAS_DIRECTOR_MODE_BEEN_TRIGGERED"
    hash "0xA277800A9EAE340E"
	alias "0xA277800A9EAE340E"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
HAS_*
```
</summary>
	]]

native "HIDE_HELP_TEXT_THIS_FRAME"
    hash "0xD46923FC481CA285"
	jhash (0xF3807BED)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_HIDE_AREA_AND_VEHICLE_NAME_THIS_FRAME"
    hash "0xA4DEDE28B1814289"
	jhash (0x52746FE1)
	alias "0xA4DEDE28B1814289"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
HIDE_*_THIS_FRAME

Hides area and vehicle name HUD components for one frame.
```
</summary>
	]]

native "HIDE_HUD_COMPONENT_THIS_FRAME"
    hash "0x6806C51AD12B83B8"
	jhash (0xDB2D0762)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
This function hides various HUD (Heads-up Display) components.

Listed below are the integers and the corresponding HUD component.

-   1 : WANTED_STARS
-   2 : WEAPON_ICON
-   3 : CASH
-   4 : MP_CASH
-   5 : MP_MESSAGE
-   6 : VEHICLE_NAME
-   7 : AREA_NAME
-   8 : VEHICLE_CLASS
-   9 : STREET_NAME
-   10 : HELP_TEXT
-   11 : FLOATING_HELP_TEXT_1
-   12 : FLOATING_HELP_TEXT_2
-   13 : CASH_CHANGE
-   14 : RETICLE
-   15 : SUBTITLE_TEXT
-   16 : RADIO_STATIONS
-   17 : SAVING_GAME
-   18 : GAME_STREAM
-   19 : WEAPON_WHEEL
-   20 : WEAPON_WHEEL_STATS
-   21 : HUD_COMPONENTS
-   22 : HUD_WEAPONS

These integers also work for the [`SHOW_HUD_COMPONENT_THIS_FRAME`](#_0x0B4DF1FA60C0E664) native, but instead shows the HUD Component.
</summary>
	]]

native "HIDE_NUMBER_ON_BLIP"
    hash "0x532CFF637EF80148"
	jhash (0x0B6D610D)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "HIDE_HUD_AND_RADAR_THIS_FRAME"
    hash "0x719FF505F097FD20"
	jhash (0xB75D4AD2)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
I think this works, but seems to prohibit switching to other weapons (or accessing the weapon wheel)  
```
</summary>
	]]

native "HIDE_LOADING_ON_FADE_THIS_FRAME"
    hash "0x4B0311D3CDC4648F"
	jhash (0x35087963)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "HUD_FORCE_WEAPON_WHEEL"
    hash "0xEB354E5376BC81A7"
	jhash (0x1EFFB02A)
	arguments {
		BOOL "show",
	}
	alias "0xEB354E5376BC81A7"
	alias "_SHOW_WEAPON_WHEEL"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Forces the weapon wheel to appear on screen.  
```
</summary>
	]]

native "HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME"
    hash "0xE374C498D8BADC14"
	jhash (0x31ABA127)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "IS_BLIP_FLASHING"
    hash "0xA5E41FD83AD6CEF0"
	jhash (0x52E111D7)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_BLIP_SHORT_RANGE"
    hash "0xDA5F8727EB75B926"
	jhash (0x1226765A)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_BLIP_ON_MINIMAP"
    hash "0xE41CA53051197A27"
	jhash (0x258CBA3A)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HELP_MESSAGE_BEING_DISPLAYED"
    hash "0x4D79439A6B55AC67"
	jhash (0xA65F262A)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_FRONTEND_READY_FOR_CONTROL"
    hash "0x3BAB9A4E4F2FF5C7"
	jhash (0xD3BF3ABD)
	alias "0x3BAB9A4E4F2FF5C7"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HELP_MESSAGE_FADING_OUT"
    hash "0x327EDEEEAC55C369"
	jhash (0x3E50AE92)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HELP_MESSAGE_ON_SCREEN"
    hash "0xDAD37F45428801AE"
	jhash (0x4B3C9CA9)
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Doesn't appear to work, use IS_HELP_MESSAGE_BEING_DISPLAYED instead  
```
</summary>
	]]

native "IS_HUD_COMPONENT_ACTIVE"
    hash "0xBC4C9EA5391ECC0D"
	jhash (0x6214631F)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Full list of components below  
HUD = 0;  
HUD_WANTED_STARS = 1;  
HUD_WEAPON_ICON = 2;  
HUD_CASH = 3;  
HUD_MP_CASH = 4;  
HUD_MP_MESSAGE = 5;  
HUD_VEHICLE_NAME = 6;  
HUD_AREA_NAME = 7;  
HUD_VEHICLE_CLASS = 8;  
HUD_STREET_NAME = 9;  
HUD_HELP_TEXT = 10;  
HUD_FLOATING_HELP_TEXT_1 = 11;  
HUD_FLOATING_HELP_TEXT_2 = 12;  
HUD_CASH_CHANGE = 13;  
HUD_RETICLE = 14;  
HUD_SUBTITLE_TEXT = 15;  
HUD_RADIO_STATIONS = 16;  
HUD_SAVING_GAME = 17;  
HUD_GAME_STREAM = 18;  
HUD_WEAPON_WHEEL = 19;  
HUD_WEAPON_WHEEL_STATS = 20;  
MAX_HUD_COMPONENTS = 21;  
MAX_HUD_WEAPONS = 22;  
MAX_SCRIPTED_HUD_COMPONENTS = 141;  
```
</summary>
	]]

native "IS_HUD_HIDDEN"
    hash "0xA86478C6958735C5"
	jhash (0x40BADA1D)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HUD_PREFERENCE_SWITCHED_ON"
    hash "0x1930DFA731813EC4"
	jhash (0xC3BC1B4F)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_MESSAGE_BEING_DISPLAYED"
    hash "0x7984C03AA5CC2F41"
	jhash (0x6A77FE8D)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_MINIMAP_RENDERING"
    hash "0xAF754F20EB5CD51A"
	jhash (0x9CD18314)
	alias "0xAF754F20EB5CD51A"
	alias "_IS_RADAR_ENABLED"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_MINIMAP_AREA_REVEALED"
    hash "0x6E31B91145873922"
	jhash (0x65B705F6)
	arguments {
		float "x",
		float "y",
		float "radius",
	}
	alias "0x6E31B91145873922"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
GET_MI*
```
</summary>
	]]

native "IS_MP_GAMER_TAG_ACTIVE"
    hash "0x4E929E7A5796FD26"
	jhash (0x60118951)
	arguments {
		int "gamerTagId",
	}
	alias "0x4E929E7A5796FD26"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_MISSION_CREATOR_BLIP"
    hash "0x26F49BF3381D933D"
	jhash (0x24ACC4E9)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_MP_GAMER_TAG_FREE"
    hash "0x595B5178E412E199"
	jhash (0x63959059)
	arguments {
		int "gamerTagId",
	}
	alias "ADD_TREVOR_RANDOM_MODIFIER"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
_IS_MP_GAMER_TAG_ACTIVE_2  
```
</summary>
	]]

native "IS_MP_GAMER_TAG_MOVIE_ACTIVE"
    hash "0x6E0EB3EB47C8D7AA"
	jhash (0xEFD2564A)
	alias "0x6E0EB3EB47C8D7AA"
	alias "_HAS_MP_GAMER_TAG"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_NAMED_RENDERTARGET_LINKED"
    hash "0x113750538FA31298"
	jhash (0x8B52601F)
	arguments {
		Hash "modelHash",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_MULTIPLAYER_CHAT_ACTIVE"
    hash "0xB118AF58B5F332A1"
	alias "_IS_TEXT_CHAT_ACTIVE"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not the text chat (MULTIPLAYER_CHAT Scaleform component) is active.  
```
</summary>
	]]

native "IS_ONLINE_POLICIES_MENU_ACTIVE"
    hash "0x6F72CD94F7B5B68C"
	jhash (0x9D4934F4)
	alias "0x6F72CD94F7B5B68C"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
Returns the same as `IS_SOCIAL_CLUB_ACTIVE`.
</summary>
	]]

native "IS_NAMED_RENDERTARGET_REGISTERED"
    hash "0x78DCDC15C9F116B4"
	jhash (0x284057F5)
	arguments {
		charPtr "name",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_PAUSE_MENU_ACTIVE"
    hash "0xB0034A223497FFCB"
	jhash (0xD3600591)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_PAUSE_MENU_RESTARTING"
    hash "0x1C491717107431C7"
	jhash (0x3C4CF4D9)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_RADAR_HIDDEN"
    hash "0x157F93B036700462"
	jhash (0x1AB3B954)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_RADAR_PREFERENCE_SWITCHED_ON"
    hash "0x9EB6522EA68F22FE"
	jhash (0x14AEAA28)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCRIPTED_HUD_COMPONENT_ACTIVE"
    hash "0xDD100EB17A94FF65"
	jhash (0x2B86F382)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_REPORTUGC_MENU_OPEN"
    hash "0x9135584D09A3437E"
	jhash (0x9D2C94FA)
	alias "0x9135584D09A3437E"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
return bool according to scripts  
```
</summary>
	]]

native "IS_SCRIPTED_HUD_COMPONENT_HIDDEN_THIS_FRAME"
    hash "0x09C0403ED9A751C2"
	jhash (0xE8C8E535)
	arguments {
		int "id",
	}
	alias "0x09C0403ED9A751C2"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_SOCIAL_CLUB_ACTIVE"
    hash "0xC406BE343FC4B9AF"
	jhash (0xD4DA14EF)
	alias "0xC406BE343FC4B9AF"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_STREAMING_ADDITIONAL_TEXT"
    hash "0x8B6817B71B85EBF0"
	jhash (0xF079E4EB)
	arguments {
		int "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_SUBTITLE_PREFERENCE_SWITCHED_ON"
    hash "0xAD6DACA4BA53E0A4"
	jhash (0x63BA19F5)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_VALID_MP_GAMER_TAG_MOVIE"
    hash "0xEB709A36958ABE0D"
	jhash (0xF11414C4)
	arguments {
		int "gamerTagId",
	}
	alias "0xEB709A36958ABE0D"
	alias "_HAS_MP_GAMER_TAG_2"
	alias "_HAS_MP_GAMER_TAG_CREW_FLAGS_SET"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
IS_*
```
</summary>
	]]

native "IS_WARNING_MESSAGE_ACTIVE"
    hash "0xE18B138FABC53103"
	jhash (0x94C834AD)
	alias "IS_MEDICAL_DISABLED"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_WARNING_MESSAGE_ACTIVE_2"
    hash "0xAF42195A42C63BBA"
	alias "0xAF42195A42C63BBA"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
IS_WARNING_MESSAGE_*
```
</summary>
	]]

native "IS_WAYPOINT_ACTIVE"
    hash "0x1DD1F58F493F1DA5"
	jhash (0x5E4DF47B)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "LINK_NAMED_RENDERTARGET"
    hash "0xF6C09E276AEB3F2D"
	jhash (0x6844C4B9)
	arguments {
		Hash "modelHash",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "LOCK_MINIMAP_ANGLE"
    hash "0x299FAEBB108AE05B"
	jhash (0xDEC733E4)
	arguments {
		int "angle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Locks the minimap to the specified angle in integer degrees.  
angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.  
```
</summary>
	]]

native "LOCK_MINIMAP_POSITION"
    hash "0x1279E861A329E73F"
	jhash (0xB9632A91)
	arguments {
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Locks the minimap to the specified world position.  
```
</summary>
	]]

native "_LOG_DEBUG_INFO"
    hash "0x2162C446DFDF38FD"
	jhash (0x2DFD35C7)
	arguments {
		charPtr "p0",
	}
	alias "0x2162C446DFDF38FD"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Not present in retail version of the game, actual definiton seems to be  
_LOG_DEBUG_INFO(char* category, char* debugText);  
```
</summary>
	]]

native "0x04655F9D075D0AE5"
    hash "0x04655F9D075D0AE5"
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
SET_*
```
</summary>
	]]

native "0x052991E59076E4E4"
    hash "0x052991E59076E4E4"
	jhash (0xD43BB56D)
	arguments {
		Hash "p0",
		AnyPtr "p1",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
p0 was always 0xAE2602A3.  
```
</summary>
	]]

native "0x06A320535F5F0248"
    hash "0x06A320535F5F0248"
	jhash (0x827F14DE)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x0AFC4AF510774B47"
    hash "0x0AFC4AF510774B47"
	jhash (0xB26FED2B)
	alias "0x0AFC4AF510774B47"
	alias "_BLOCK_WEAPON_WHEEL_THIS_FRAME"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
calling this each frame, it stops the player from receiving a weapon via the weapon wheel.  
```
</summary>
	]]

native "0x0923DBF87DFF735E"
    hash "0x0923DBF87DFF735E"
	jhash (0xE010F081)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x0CF54F20DE43879C"
    hash "0x0CF54F20DE43879C"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x0C698D8F099174C7"
    hash "0x0C698D8F099174C7"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
	]]

native "0x13C4B962653A5280"
    hash "0x13C4B962653A5280"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x1185A8087587322C"
    hash "0x1185A8087587322C"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
SET_TEXT_??? - Used in golf and golf_mp  
```
</summary>
	]]

native "0x14C9FDCC41F81F63"
    hash "0x14C9FDCC41F81F63"
	jhash (0xE70D1F43)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x14621BB1DF14E2B2"
    hash "0x14621BB1DF14E2B2"
	jhash (0xB9392CE7)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard if they were disabled using the native below.

To disable the keys, use [`0xEC9264727EEC0F28`](#_0xEC9264727EEC0F28).
</summary>
	]]

native "0x170F541E1CADD1DE"
    hash "0x170F541E1CADD1DE"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Related to displaying cash on the HUD  
Always called before UI::_SET_SINGLEPLAYER_HUD_CASH in decompiled scripts  
```
</summary>
	]]

native "0x20FE7FDFEEAD38C0"
    hash "0x20FE7FDFEEAD38C0"
	jhash (0xCE36E3FE)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x1563FE35E9928E67"
    hash "0x1563FE35E9928E67"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0x214CD562A939246A"
    hash "0x214CD562A939246A"
	jhash (0x812CBE0E)
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
example  
if (UI::IS_HELP_MESSAGE_BEING_DISPLAYED()&&(!UI::_214CD562A939246A())) {  
        return 0;  
}  
```
</summary>
	]]

native "0x1EAE6DD17B7A5EFA"
    hash "0x1EAE6DD17B7A5EFA"
	jhash (0x13E7A5A9)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x24A49BEAF468DC90"
    hash "0x24A49BEAF468DC90"
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x211C4EF450086857"
    hash "0x211C4EF450086857"
	jhash (0x801D0D86)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x2790F4B17D098E26"
    hash "0x2790F4B17D098E26"
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
SET_F*
```
</summary>
	]]

native "0x2432784ACA090DA4"
    hash "0x2432784ACA090DA4"
	jhash (0x45472FD5)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
p0 is int or bool  
```
</summary>
	]]

native "0x2A25ADC48F87841F"
    hash "0x2A25ADC48F87841F"
	jhash (0x016D7AF9)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x2708FC083123F9FF"
    hash "0x2708FC083123F9FF"
	jhash (0xCBEC9369)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2C173AE2BDB9385E"
    hash "0x2C173AE2BDB9385E"
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
Seems to always return 0 from what I can tell. I've tried a lot of different blip related natives and it always seems to return 0.
Decompiled scripts always pass a blip handle as p0.

```
// freemode.c
if (HUD::DOES_BLIP_EXIST(Global_2415594[iParam0]))
{
    if (HUD::_0x2C173AE2BDB9385E(Global_2415594[iParam0]) != 0)
    {
        return 1;
    }
}
```
</summary>
<param name="blip">The blip to check.</param>
<returns>Seems to always return 0 from what I can tell. I've tried a lot of different blip related natives and it always seems to return 0.</returns>
	]]

native "0x2916A928514C9827"
    hash "0x2916A928514C9827"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2DE6C5E2E996F178"
    hash "0x2DE6C5E2E996F178"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2F057596F2BD0061"
    hash "0x2F057596F2BD0061"
	jhash (0xC85C4487)
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Appears to return whether the player is using the pause menu store. Can't be sure though.  
```
</summary>
	]]

native "0x359AF31A4B52F5ED"
    hash "0x359AF31A4B52F5ED"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x2C9F302398E13141"
    hash "0x2C9F302398E13141"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2E22FEFA0100275E"
    hash "0x2E22FEFA0100275E"
	jhash (0x96863460)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x36C1451A88A09630"
    hash "0x36C1451A88A09630"
	jhash (0x8543AAC8)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xCB95466F"
	arguments {
		charPtr "txdString1",
		charPtr "txnString1",
		charPtr "txdString2",
		charPtr "txnString2",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Used in the native scripts to reference "GET_PEDHEADSHOT_TXD_STRING" and "CHAR_DEFAULT".

NativeDB Introduced: v323
```
</summary>
<param name="txdString1">:</param>
<param name="txnString1">:</param>
<param name="txdString2">:</param>
<param name="txnString2">:</param>
	]]

native "0x3D9ACB1EB139E702"
    hash "0x3D9ACB1EB139E702"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x3F5CC444DCAAA8F2"
    hash "0x3F5CC444DCAAA8F2"
	jhash (0x7FB6FB2A)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x35A3CD97B2C0A6D2"
    hash "0x35A3CD97B2C0A6D2"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0x3F0CF9CB7E589B88"
    hash "0x3F0CF9CB7E589B88"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x4167EFE0527D706E"
    hash "0x4167EFE0527D706E"
	jhash (0xC5EB849A)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x4895BDEA16E7C080"
    hash "0x4895BDEA16E7C080"
	jhash (0x15B24768)
	arguments {
		BOOL "p0",
	}
	alias "ENABLE_DEATHBLOOD_SEETHROUGH"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: int p0
```
</summary>
	]]

native "0x41350B4FC28E3941"
    hash "0x41350B4FC28E3941"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x4B5B620C9B59ED34"
    hash "0x4B5B620C9B59ED34"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x488043841BBE156F"
    hash "0x488043841BBE156F"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Displays loading screen tips, requires `_0x56C8B608CFD49854` to be called beforehand.
</summary>
	]]

native "0x504DFE62A1692296"
    hash "0x504DFE62A1692296"
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="toggle">:</param>
	]]

native "0x4A9923385BDB9DAD"
    hash "0x4A9923385BDB9DAD"
	jhash (0x87871CE0)
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
example:  
if (!((v_7)==UI::_4A9923385BDB9DAD())) {  
        UI::SET_BLIP_SPRITE((v_6), (v_7));  
    }  
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0x55F5A5F07134DE60"
    hash "0x55F5A5F07134DE60"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
	]]

native "0x577599CCED639CA2"
    hash "0x577599CCED639CA2"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x4E3CD0EF8A489541"
    hash "0x4E3CD0EF8A489541"
	jhash (0xDA7951A2)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x57D760D55F54E071"
    hash "0x57D760D55F54E071"
	jhash (0x9854485F)
	arguments {
		int "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
FORCE_*
```
</summary>
	]]

native "0x551DF99658DB6EE8"
    hash "0x551DF99658DB6EE8"
	jhash (0x786CA0A2)
	arguments {
		float "p0",
		float "p1",
		float "p2",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x5BFF36D6ED83E0AE"
    hash "0x5BFF36D6ED83E0AE"
	ns "HUD"
	returns "Vector3"
	doc [[!
<summary>
```
GET_PAUSE_MENU_*
```
</summary>
	]]

native "_THEFEED_HIDE_GTAO_TOOLTIPS"
    hash "0x583049884A2EEE3C"
	jhash (0xC8BAB2F2)
	alias "0x56C8B608CFD49854"
	alias "0x583049884A2EEE3C"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
</summary>
	]]

native "0x5FBD7095FE7AE57F"
    hash "0x5FBD7095FE7AE57F"
	jhash (0x51972B04)
	arguments {
		Any "p0",
		floatPtr "p1",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x60734CC207C9833C"
    hash "0x60734CC207C9833C"
	jhash (0xE7E1E32B)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x593FEAE1F73392D4"
    hash "0x593FEAE1F73392D4"
	jhash (0x22CA9F2A)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x5C90988E7C8E1AF4"
    hash "0x5C90988E7C8E1AF4"
	jhash (0xFFD7476C)
	alias "DISABLE_BLIP_NAME_FOR_VAR"
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Returns a blip handle.  
```
</summary>
	]]

native "0x66E7CB63C97B7D20"
    hash "0x66E7CB63C97B7D20"
	jhash (0x92DAFA78)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x6A1738B4323FE2D9"
    hash "0x6A1738B4323FE2D9"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x62E849B7EB28E770"
    hash "0x62E849B7EB28E770"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x6CDD58146A436083"
    hash "0x6CDD58146A436083"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x632B2940C67F4EA9"
    hash "0x632B2940C67F4EA9"
	arguments {
		int "scaleformHandle",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x72DD432F3CDFC0EE"
    hash "0x72DD432F3CDFC0EE"
	jhash (0xBF25E7B2)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "radius",
		int "p4",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x6B1DE27EE78E6A19"
    hash "0x6B1DE27EE78E6A19"
	jhash (0x79A6CAF6)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7679CC1BCEBE3D4C"
    hash "0x7679CC1BCEBE3D4C"
	jhash (0x198F32D7)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x77F16B447824DA6C"
    hash "0x77F16B447824DA6C"
	jhash (0x0A89336C)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x72C1056D678BB7D8"
    hash "0x72C1056D678BB7D8"
	jhash (0x83B608A0)
	arguments {
		Hash "weaponHash",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Appears to be a HIDE_* native.  
```
</summary>
	]]

native "0x788E7FD431BD67F1"
    hash "0x788E7FD431BD67F1"
	jhash (0x97852A82)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7669F9E39DC17063"
    hash "0x7669F9E39DC17063"
	jhash (0xC380AC85)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables drawing some hud components, such as help labels, this frame, when the player is dead.
</summary>
	]]

native "0x784BA7E0ECEB4178"
    hash "0x784BA7E0ECEB4178"
	jhash (0x93045157)
	arguments {
		Any "p0",
		float "x",
		float "y",
		float "z",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7C226D5346D4D10A"
    hash "0x7C226D5346D4D10A"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7B21E0BB01E8224A"
    hash "0x7B21E0BB01E8224A"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x801879A9B4F4B2FB"
    hash "0x801879A9B4F4B2FB"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
IS_*
```
</summary>
	]]

native "0x817B86108EB94E51"
    hash "0x817B86108EB94E51"
	jhash (0xD2161E77)
	arguments {
		BOOL "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
		AnyPtr "p5",
		AnyPtr "p6",
		AnyPtr "p7",
		AnyPtr "p8",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
UI::_817B86108EB94E51(1, &g_189F36._f10CD1[0/*16*/], &g_189F36._f10CD1[1/*16*/], &g_189F36._f10CD1[2/*16*/], &g_189F36._f10CD1[3/*16*/], &g_189F36._f10CD1[4/*16*/], &g_189F36._f10CD1[5/*16*/], &g_189F36._f10CD1[6/*16*/], &g_189F36._f10CD1[7/*16*/]);  
```
</summary>
	]]

native "0x7E17BE53E1AAABAF"
    hash "0x7E17BE53E1AAABAF"
	jhash (0x6025AA2F)
	arguments {
		intPtr "p0",
		intPtr "p1",
		intPtr "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x8F08017F9D7C47BD"
    hash "0x8F08017F9D7C47BD"
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x82CEDC33687E1F50"
    hash "0x82CEDC33687E1F50"
	jhash (0x2F28F0A6)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x9049FE339D5F6F6F"
    hash "0x9049FE339D5F6F6F"
	jhash (0x199DED14)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x8410C5E0CD847B9D"
    hash "0x8410C5E0CD847B9D"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
	]]

native "0x9245E81072704B8A"
    hash "0x9245E81072704B8A"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
DISABLE_*
```
</summary>
	]]

native "0x90A6526CF0381030"
    hash "0x90A6526CF0381030"
	jhash (0xD6CC4766)
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x98215325A695E78A"
    hash "0x98215325A695E78A"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x975D66A0BC17064C"
    hash "0x975D66A0BC17064C"
	jhash (0xF07D8CEF)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xA13E93403F26C812"
    hash "0xA13E93403F26C812"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xA17784FCA9548D15"
    hash "0xA17784FCA9548D15"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x98C3CF913D895111"
    hash "0x98C3CF913D895111"
	arguments {
		charPtr "string",
		int "length",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
GET_F*
```
</summary>
	]]

native "0xA48931185F0536FE"
    hash "0xA48931185F0536FE"
	jhash (0x22E9F555)
	ns "HUD"
	returns "Hash"
	doc [[!
	]]

native "0xA238192F33110615"
    hash "0xA238192F33110615"
	jhash (0x46794EB2)
	arguments {
		intPtr "p0",
		intPtr "p1",
		intPtr "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xB094BC1DB4018240"
    hash "0xB094BC1DB4018240"
	jhash (0x18B012B7)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xA8B6AFDAC320AC87"
    hash "0xA8B6AFDAC320AC87"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xB99C4E4D9499DF29"
    hash "0xB99C4E4D9499DF29"
	arguments {
		int "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
RESET_*
```
</summary>
	]]

native "_THEFEED_SHOW_GTAO_TOOLTIPS"
    hash "0xADED7F5748ACAFE6"
	jhash (0x1D6859CA)
	alias "0xA13C11E1B5C06BFC"
	alias "0xADED7F5748ACAFE6"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Displays GTA-O tool-tips even if 0x32888337579A5970 has been invoked.

Sets CGameStreamMgr + 15413 (1604) to 1
```
</summary>
	]]

native "0xB9C362BABECDDC7A"
    hash "0xB9C362BABECDDC7A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xB552929B85FC27EC"
    hash "0xB552929B85FC27EC"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xBF4F34A85CA2970C"
    hash "0xBF4F34A85CA2970C"
	jhash (0x317775DF)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xC4278F70131BAA6D"
    hash "0xC4278F70131BAA6D"
	jhash (0x6AA6A1CC)
	arguments {
		Blip "blip",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xBA8D65C1C65702E5"
    hash "0xBA8D65C1C65702E5"
	jhash (0x58612465)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
FORCE_*
```
</summary>
	]]

native "0xC2D2AD9EAAE265B8"
    hash "0xC2D2AD9EAAE265B8"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Getter for 0xCD74233600C4EA6B

GET_*
```
</summary>
	]]

native "0xC78E239AC5B2DDB9"
    hash "0xC78E239AC5B2DDB9"
	jhash (0x6C67131A)
	arguments {
		BOOL "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xC594B315EDF2D4AF"
    hash "0xC594B315EDF2D4AF"
	jhash (0x41B0D022)
	arguments {
		Ped "ped",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xCA6B2F7CE32AB653"
    hash "0xCA6B2F7CE32AB653"
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xC8E1071177A23BE5"
    hash "0xC8E1071177A23BE5"
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xCDCA26E80FAECB8F"
    hash "0xCDCA26E80FAECB8F"
	jhash (0xC84BE309)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xCD74233600C4EA6B"
    hash "0xCD74233600C4EA6B"
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Setter for 0xC2D2AD9EAAE265B8

SET_*
```
</summary>
	]]

native "0xD1942374085C8469"
    hash "0xD1942374085C8469"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xD29EC58C2F6B5014"
    hash "0xD29EC58C2F6B5014"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xD2049635DEB9C375"
    hash "0xD2049635DEB9C375"
	jhash (0xE8D3A910)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xD484BF71050CA1EE"
    hash "0xD484BF71050CA1EE"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
	]]

native "0xD8E694757BCEA8E9"
    hash "0xD8E694757BCEA8E9"
	jhash (0x62BABF2C)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xDE03620F8703A9DF"
    hash "0xDE03620F8703A9DF"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xDAF87174BE7454FF"
    hash "0xDAF87174BE7454FF"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xE4C3B169876D33D7"
    hash "0xE4C3B169876D33D7"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0xE3B05614DCE1D014"
    hash "0xE3B05614DCE1D014"
	jhash (0xD217EE7E)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
UI::GET_CURRENT_WEBSITE_PAGE_ID(int websiteID)  
returns the current website page sometimes returns false  
```
</summary>
	]]

native "0xE67C6DFD386EA5E7"
    hash "0xE67C6DFD386EA5E7"
	jhash (0x5476B9FD)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xEB81A3DADD503187"
    hash "0xEB81A3DADD503187"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
	]]

native "0xEC9264727EEC0F28"
    hash "0xEC9264727EEC0F28"
	jhash (0xC06B763D)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Disables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard. Not sure about controller. Does not disable mouse controls. No need to call this every tick.

To enable the keys again, use [`0x14621BB1DF14E2B2`](#_0x14621BB1DF14E2B2).
</summary>
	]]

native "0xEF4CED81CEBEDC6D"
    hash "0xEF4CED81CEBEDC6D"
	jhash (0x4370999E)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	alias "SET_USERIDS_UIHIDDEN"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xF13FE2A80C05C561"
    hash "0xF13FE2A80C05C561"
	jhash (0x850690FF)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xF06EBB91A81E09E3"
    hash "0xF06EBB91A81E09E3"
	jhash (0x11D09737)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xF284AC67940C6812"
    hash "0xF284AC67940C6812"
	jhash (0x7D95AFFF)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xF1A6C18B35BCADE6"
    hash "0xF1A6C18B35BCADE6"
	jhash (0xA2CAAB4F)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xF83D0FEBE75E62C9"
    hash "0xF83D0FEBE75E62C9"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
<param name="p6">:</param>
<param name="p7">:</param>
	]]

native "0xF47E567B3630DD12"
    hash "0xF47E567B3630DD12"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "OPEN_REPORTUGC_MENU"
    hash "0x523A590C1A3CC0D3"
	jhash (0x10DE5150)
	alias "0x523A590C1A3CC0D3"
	alias "_DISPLAY_JOB_REPORT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Shows a hud element for reporting jobs  
```
</summary>
	]]

native "OPEN_ONLINE_POLICIES_MENU"
    hash "0x805D7CBB36FD6C4C"
	jhash (0x19FCBBB2)
	alias "_SHOW_SOCIAL_CLUB_LEGAL_SCREEN"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
probs one frame  
```
</summary>
	]]

native "OPEN_SOCIAL_CLUB_MENU"
    hash "0x75D3691713C3B05A"
	jhash (0x57218529)
	alias "0x75D3691713C3B05A"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Uses the `SOCIAL_CLUB2` scaleform. <https://i.imgur.com/KleabIw.png>

Old name: `_SHOW_SOCIAL_CLUB_BANNED_SCREEN`
</summary>
	]]

native "PAUSE_MENU_ACTIVATE_CONTEXT"
    hash "0xDD564BDD0472C936"
	jhash (0x9FE8FD5E)
	arguments {
		Hash "hash",
	}
	alias "0xDD564BDD0472C936"
	alias "_ADD_FRONTEND_MENU_CONTEXT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Activates the specified frontend menu context.

pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'. 

The `*ALL*` part of the context means that whatever is being defined, will be active when any or all of those conditions after `*ALL*` are met.

The `*NONE*` part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after `*NONE*` are met.

This basically allows you to hide certain menu sections, or things like instructional buttons.

See the old description below for more info.

* * *

> Seems to add/set the current menu context (to show/hide buttons?)
> Pausemenu.xml:
> `<Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>`
> Code:
>
> ```
> if (...) {
>     sub_bbd34(a_0, 0, "FM_BET_HELP");
>     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_available}); // This native
>     UI::OBJECT_DECAL_TOGGLE(${bet_locked});
> } else {
>     sub_bbd34(a_0, 0, "");
>     UI::OBJECT_DECAL_TOGGLE(${bet_available});
>     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_locked}); // This native
> }
> ```
>
> OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision
> // Old
> Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.
</summary>
<param name="hash">Context name hash.</param>
	]]

native "PAUSE_MENU_IS_CONTEXT_ACTIVE"
    hash "0x84698AB38D0C6636"
	jhash (0xC51BC42F)
	arguments {
		Hash "contextHash",
	}
	alias "0x84698AB38D0C6636"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "PRELOAD_BUSYSPINNER"
    hash "0xC65AB383CD91DF98"
	jhash (0x71077FBD)
	alias "0xC65AB383CD91DF98"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Often called after _REMOVE_LOADING_PROMPT. Unsure what exactly it does, but It references busy_spinner, I can only guess its freeing the busy_spinner scaleform from memory  
```
</summary>
	]]

native "PAUSE_MENU_DEACTIVATE_CONTEXT"
    hash "0x444D8CF241EC25C5"
	jhash (0x0029046E)
	arguments {
		Hash "contextHash",
	}
	alias "OBJECT_DECAL_TOGGLE"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REFRESH_WAYPOINT"
    hash "0x81FA173F170560D1"
	jhash (0xB395D753)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "PULSE_BLIP"
    hash "0x742D6FD43115AF73"
	jhash (0x44253855)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REMOVE_BLIP"
    hash "0x86A652570E5F25DD"
	jhash (0xD8C3C1CD)
	arguments {
		BlipPtr "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
In the C++ SDK, this seems not to work-- the blip isn't removed immediately. I use it for saving cars.  
E.g.:  
Ped pped = PLAYER::PLAYER_PED_ID();  
Vehicle v = PED::GET_VEHICLE_PED_IS_USING(pped);  
Blip b = UI::ADD_BLIP_FOR_ENTITY(v);  
works fine.  
But later attempting to delete it with:  
Blip b = UI::GET_BLIP_FROM_ENTITY(v);  
if (UI::DOES_BLIP_EXIST(b)) UI::REMOVE_BLIP(&b);  
doesn't work. And yes, doesn't work without the DOES_BLIP_EXIST check either. Also, if you attach multiple blips to the same thing (say, a vehicle), and that thing disappears, the blips randomly attach to other things (in my case, a vehicle).  
Thus for me, UI::REMOVE_BLIP(&b) only works if there's one blip, (in my case) the vehicle is marked as no longer needed, you drive away from it and it eventually despawns, AND there is only one blip attached to it. I never intentionally attach multiple blips but if the user saves the car, this adds a blip. Then if they delete it, it is supposed to remove the blip, but it doesn't. Then they can immediately save it again, causing another blip to re-appear.  
-------------  
Passing the address of the variable instead of the value works for me.  
e.g.  
int blip = UI::ADD_BLIP_FOR_ENTITY(ped);  
UI::REMOVE_BLIP(&blip);  
Remove blip will currently crash your game, just artificially remove the blip by setting the sprite to a id that is 'invisible'.  
--  
It crashes my game.  
```
</summary>
	]]

native "REMOVE_MP_GAMER_TAG"
    hash "0x31698AA80E0223F8"
	jhash (0x3D081FE4)
	arguments {
		int "gamerTagId",
	}
	alias "0x31698AA80E0223F8"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REGISTER_NAMED_RENDERTARGET"
    hash "0x57D9C12635E25CE3"
	jhash (0xFAE5D6F0)
	arguments {
		charPtr "name",
		BOOL "p1",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "RELEASE_NAMED_RENDERTARGET"
    hash "0xE9F6FFE837354DD4"
	jhash (0xD3F6C892)
	arguments {
		charPtr "name",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "REMOVE_MULTIPLAYER_HUD_CASH"
    hash "0x968F270E39141ECA"
	jhash (0x07BF4A7D)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Removes multiplayer cash hud each frame  
```
</summary>
	]]

native "_REMOVE_WARNING_MESSAGE_LIST_ITEMS"
    hash "0x6EF54AB721DC6242"
	alias "0x6EF54AB721DC6242"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REMOVE_MULTIPLAYER_BANK_CASH"
    hash "0xC7C6789AA1CFEDD0"
	jhash (0x728B4EF4)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REPLACE_HUD_COLOUR_WITH_RGBA"
    hash "0xF314CF4F0211894E"
	jhash (0xF6E7E92B)
	arguments {
		int "hudColorIndex",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	alias "0xF314CF4F0211894E"
	alias "_SET_HUD_COLOUR"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
HUD colors and their values: pastebin.com/d9aHPbXN  
```
</summary>
	]]

native "REMOVE_MULTIPLAYER_WALLET_CASH"
    hash "0x95CF81BD06EE1887"
	jhash (0x7BFFE82F)
	alias "0x95CF81BD06EE1887"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REQUEST_ADDITIONAL_TEXT_FOR_DLC"
    hash "0x6009F9F1AE90D8A6"
	jhash (0xF4D27EBE)
	arguments {
		charPtr "gxt",
		int "slot",
	}
	alias "_REQUEST_ADDITIONAL_TEXT_2"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REPLACE_HUD_COLOUR"
    hash "0x1CCC708F0F850613"
	jhash (0x3B216749)
	arguments {
		int "hudColorIndex",
		int "hudColorIndex2",
	}
	alias "0x1CCC708F0F850613"
	alias "_SET_HUD_COLOURS_SWITCH"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
HUD colors and their values: pastebin.com/d9aHPbXN  
--------------------------------------------------  
makes hudColorIndex2 color into hudColorIndex color  
```
</summary>
	]]

native "RESET_RETICULE_VALUES"
    hash "0x12782CE0A636E9F0"
	jhash (0xBE27AA3F)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REQUEST_ADDITIONAL_TEXT"
    hash "0x71A78003C8E71424"
	jhash (0x9FA9175B)
	arguments {
		charPtr "gxt",
		int "slot",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Request a gxt into the passed slot.  
```
</summary>
	]]

native "SET_ABILITY_BAR_VALUE"
    hash "0x9969599CCFF5D85E"
	jhash (0x24E53FD8)
	arguments {
		float "value",
		float "maxValue",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If 'value' is 50 and 'maxValue' is 100, the bar is halfway filled.  
Same with 5/10, 2/4, etc.  
```
</summary>
	]]

native "_SET_ABILITY_BAR_VISIBILITY_IN_MULTIPLAYER"
    hash "0x1DFEDD15019315A9"
	arguments {
		BOOL "visible",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="visible">:</param>
	]]

native "RESET_HUD_COMPONENT_VALUES"
    hash "0x450930E616475D0D"
	jhash (0xD15B46DA)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_ALPHA"
    hash "0x45FF974EEE1C8734"
	jhash (0xA791FCCD)
	arguments {
		Blip "blip",
		int "alpha",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets alpha-channel for blip color.  
Example:  
Blip blip = UI::ADD_BLIP_FOR_ENTITY(entity);  
UI::SET_BLIP_COLOUR(blip , 3);  
UI::SET_BLIP_ALPHA(blip , 64);  
```
</summary>
	]]

native "RESTART_FRONTEND_MENU"
    hash "0x10706DC6AD2D49C0"
	jhash (0xB07DAF98)
	arguments {
		Hash "menuHash",
		int "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Before using this native click the native above and look at the decription.  
Example:  
int GetHash = Function.Call<int>(Hash.GET_HASH_KEY, "fe_menu_version_corona_lobby");  
Function.Call(Hash.ACTIVATE_FRONTEND_MENU, GetHash, 0, -1);  
Function.Call(Hash.RESTART_FRONTEND_MENU(GetHash, -1);  
This native refreshes the frontend menu.  
p1 = Hash of Menu  
p2 = Unknown but always works with -1.  
```
</summary>
	]]

native "SET_BLIP_AS_MISSION_CREATOR_BLIP"
    hash "0x24AC0137444F9FD5"
	jhash (0x802FB686)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_AS_SHORT_RANGE"
    hash "0xBE8BE4FE60E27B72"
	jhash (0x5C67725E)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.
</summary>
<param name="blip">The blip handle.</param>
<param name="toggle">True to only display the blip as 'short range', false to display the blip from a longer distance.</param>
	]]

native "SET_BIGMAP_ACTIVE"
    hash "0x231C8F89D0539D8F"
	jhash (0x08EB83D2)
	arguments {
		BOOL "toggleBigMap",
		BOOL "showFullMap",
	}
	alias "_SET_RADAR_BIGMAP_ENABLED"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles the big minimap state like in GTA:Online.

To get the current state of the minimap, use [`GetBigmapActive`](#_0xF6AE18A7).
</summary>
<param name="toggleBigMap">Enable or disable the expanded minimap.</param>
<param name="showFullMap">Enable or disable the full map from being shown on the minimap, requires p0 to be true.</param>
	]]

native "SET_BLIP_COLOUR"
    hash "0x03D7FB09E75D6B7E"
	jhash (0xBB3C5A41)
	arguments {
		Blip "blip",
		int "color",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
(Hex code are approximate)  
0: White (#fefefe)  
1: Red (#e03232)  
2: Green (#71cb71)  
3: Blue (#5db6e5)  
4: White (#fefefe)  
5: Taxi Yellow (#eec64e)  
6: Light Red (#c25050)  
7: Violet (#9c6eaf)  
8: Pink (#fe7ac3)  
9: Light Orange (#f59d79)  
10: Light Brown (#b18f83)  
11: Light Green (#8dcea7)  
12: Light Blue (Teal) (#70a8ae)  
13: Very Light Purple (#d3d1e7)  
14: Dark Purple (#8f7e98)  
15: Cyan (#6ac4bf)  
16: Light Yellow (#d5c398)  
17: Orange (#ea8e50)  
18: Light Blue (#97cae9)  
19: Dark Pink (#b26287)  
20: Dark Yellow (#8f8d79)  
21: Dark Orange (#a6755e)  
22: Light Gray (#afa8a8)  
23: Light Pink (#e78d9a)  
24: Lemon Green (#bbd65b)  
25: Forest Green (#0c7b56)  
26: Electric Blue (#7ac3fe)  
27: Bright Purple (#ab3ce6)  
28: Dark Taxi Yellow (#cda80c)  
29: Dark Blue (#4561ab)  
30: Dark Cyan (#29a5b8)  
31: Light Brown (#b89b7b)  
32: Very Light Blue (#c8e0fe)  
33: Light Yellow (#f0f096)  
34: Light Pink (#ed8ca1)  
35: Light Red (#f98a8a)  
36: Light Yellow (#fbeea5)  
37: White (#fefefe)  
38: Blue (#2c6db8)  
39: Light Gray (#9a9a9a)  
40: Dark Gray (#4c4c4c)  
Certainly a lot more remaining.  
```
</summary>
	]]

native "SET_BLIP_AS_FRIENDLY"
    hash "0x6F6F290102C02AB4"
	jhash (0xF290CFD8)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
false for enemy  
true for friendly  
```
</summary>
	]]

native "SET_BLIP_COORDS"
    hash "0xAE2AF67E9D9AF65D"
	jhash (0x680A34D4)
	arguments {
		Blip "blip",
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_BRIGHT"
    hash "0xB203913733F27884"
	jhash (0x72BEE6DF)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_FADE"
    hash "0x2AEE8F8390D2298C"
	jhash (0xA5999031)
	arguments {
		Blip "blip",
		int "opacity",
		int "duration",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_CATEGORY"
    hash "0x234CDD44D996FD9A"
	jhash (0xEF72F533)
	arguments {
		Blip "blip",
		int "index",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Examples result:

![](https://i.imgur.com/skY6vAJ.png)

**index:**

```
1 = No distance shown in legend
2 = Distance shown in legend
7 = "Other Players" category, also shows distance in legend
10 = "Property" category
11 = "Owned Property" category
```

Any other value behaves like `index = 1`, `index` wraps around after 255

Blips with categories `7`, `10` or `11` will all show under the specific categories listing in the map legend, regardless of sprite or name.

**Legend entries**

| index | Legend entry   | Label           |
| ----- | -------------- | --------------- |
| 7     | Other Players  | `BLIP_OTHPLYR`  |
| 10    | Property       | `BLIP_PROPCAT`  |
| 11    | Owned Property | `BLIP_APARTCAT` |
</summary>
<param name="blip">The blip to change the category index of</param>
<param name="index">The category index to change to</param>
	]]

native "SET_BLIP_FLASH_TIMER"
    hash "0xD3CD6FD297AE87CC"
	jhash (0x8D5DF611)
	arguments {
		Blip "blip",
		int "duration",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds up after viewing multiple R* scripts. I believe that the duration is in miliseconds.  
```
</summary>
	]]

native "SET_BLIP_FLASHES_ALTERNATE"
    hash "0x2E8D9498C56DD0D1"
	jhash (0x1A81202B)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_DISPLAY"
    hash "0x9029B2F3DA924928"
	jhash (0x2B521F91)
	arguments {
		Blip "blip",
		int "displayId",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**displayId Behaviour** <br>
0 = Doesn't show up, ever, anywhere. <br>
1 = Doesn't show up, ever, anywhere. <br>
2 = Shows on both main map and minimap. (Selectable on map) <br>
3 = Shows on main map only. (Selectable on map) <br>
4 = Shows on main map only. (Selectable on map) <br>
5 = Shows on minimap only. <br>
6 = Shows on both main map and minimap. (Selectable on map) <br>
7 = Doesn't show up, ever, anywhere. <br>
8 = Shows on both main map and minimap. (Not selectable on map) <br>
9 = Shows on minimap only. <br>
10 = Shows on both main map and minimap. (Not selectable on map) <br>
Anything higher than 10 seems to be exactly the same as 10. <br>
<br>
Rockstar seem to only use 0, 2, 3, 4, 5 and 8 in the decompiled scripts.
</summary>
	]]

native "SET_BLIP_FLASH_INTERVAL"
    hash "0xAA51DB313C010A7E"
	jhash (0xEAF67377)
	arguments {
		Blip "blip",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_HIGH_DETAIL"
    hash "0xE2590BC29220CEBB"
	jhash (0xD5842BFF)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_FLASHES"
    hash "0xB14552383D39CE3E"
	jhash (0xC0047F15)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_NAME_FROM_TEXT_FILE"
    hash "0xEAA0FFE120D92784"
	jhash (0xAC8A5461)
	arguments {
		Blip "blip",
		charPtr "gxtEntry",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Doesn't work if the label text of gxtEntry is >= 80.  
```
</summary>
	]]

native "SET_BLIP_PRIORITY"
    hash "0xAE9FC9EF6A9FAC79"
	jhash (0xCE87DA6F)
	arguments {
		Blip "blip",
		int "priority",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935  
```
</summary>
	]]

native "SET_BLIP_HIDDEN_ON_LEGEND"
    hash "0x54318C915D27E4CE"
	jhash (0x43996428)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x54318C915D27E4CE"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_NAME_TO_PLAYER_NAME"
    hash "0x127DE7B20C60A6A3"
	jhash (0x03A0B8F9)
	arguments {
		Blip "blip",
		Player "player",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_ROUTE"
    hash "0x4F7D8A9BFB0B43E9"
	jhash (0x3E160C90)
	arguments {
		Blip "blip",
		BOOL "enabled",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Enable / disable showing route for the Blip-object.  
```
</summary>
	]]

native "SET_BLIP_ROUTE_COLOUR"
    hash "0x837155CD2F63DA09"
	jhash (0xDDE7C65C)
	arguments {
		Blip "blip",
		int "colour",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_ROTATION"
    hash "0xF87683CDF73C3F6E"
	jhash (0x6B8F44FE)
	arguments {
		Blip "blip",
		int "rotation",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
After some testing, looks like you need to use UI:CEIL() on the rotation (vehicle/ped heading) before using it there.  
```
</summary>
	]]

native "SET_BLIP_SECONDARY_COLOUR"
    hash "0x14892474891E09EB"
	jhash (0xC6384D32)
	arguments {
		Blip "blip",
		float "r",
		float "g",
		float "b",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_SCALE"
    hash "0xD38744167B2FA257"
	jhash (0x1E6EC434)
	arguments {
		Blip "blip",
		float "scale",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_BLIP_SHRINK"
    hash "0x2B6D467DAB714E8D"
	jhash (0xC575F0BC)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x2B6D467DAB714E8D"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Makes a blip go small when off the minimap.  
```
</summary>
	]]

native "SET_BLIP_SHOW_CONE"
    hash "0x13127EC3665E8EE1"
	jhash (0xFF545AD8)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_COLOUR_OF_NEXT_TEXT_COMPONENT"
    hash "0x39BBF623FC803EAC"
	jhash (0x6F1A1901)
	arguments {
		int "hudColorIndex",
	}
	alias "0x39BBF623FC803EAC"
	alias "_SET_NOTIFICATION_COLOR_NEXT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
sets font color for the next notification  
```
</summary>
	]]

native "SET_BLIP_SPRITE"
    hash "0xDF735600A4696DAF"
	jhash (0x8DBBB0B9)
	arguments {
		Blip "blip",
		int "spriteId",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
<!--
_loc1_.map((name, idx) => `| ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |`).join('\n')
-->

Sets the displayed sprite for a specific blip.

There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
</summary>
<param name="blip">The blip to change.</param>
<param name="spriteId">The sprite ID to set.</param>
	]]

native "SET_FRONTEND_ACTIVE"
    hash "0x745711A75AB09277"
	jhash (0x81E1AD32)
	arguments {
		BOOL "active",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_DIRECTOR_MODE_CLEAR_TRIGGERED_FLAG"
    hash "0x2632482FD6B9AB87"
	alias "0x2632482FD6B9AB87"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
SET_*
```
</summary>
	]]

native "SET_GPS_CUSTOM_ROUTE_RENDER"
    hash "0x900086F371220B6F"
	jhash (0xDA0AF00E)
	arguments {
		BOOL "toggle",
		int "radarThickness",
		int "mapThickness",
	}
	alias "0x900086F371220B6F"
	ns "HUD"
	returns "void"
	doc [[!
<param name="radarThickness">The width of the GPS route on the radar</param>
<param name="mapThickness">The width of the GPS route on the map</param>
	]]

native "SET_GPS_FLAGS"
    hash "0x5B440763A4C8D15B"
	jhash (0x60539BAB)
	arguments {
		int "p0",
		float "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.  
Doesn't seem like the flags are actually read by the game at all.  
---------------  
Might be left-over from GTA IV. I kind of miss the *ding-dong* turn left in 2 meters lady lol.  
```
</summary>
	]]

native "SET_GPS_MULTI_ROUTE_RENDER"
    hash "0x3DDA37128DD1ACA8"
	jhash (0xE87CBE4C)
	arguments {
		BOOL "toggle",
	}
	alias "0x3DDA37128DD1ACA8"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_GPS_FLASHES"
    hash "0x320D0E0D936A0E9B"
	jhash (0xE991F733)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_IS_IN_TOURNAMENT"
    hash "0xCEF214315D276FD1"
	jhash (0xFF06772A)
	arguments {
		BOOL "toggle",
	}
	alias "0xCEF214315D276FD1"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
F*
```
</summary>
	]]

native "SET_HUD_COMPONENT_POSITION"
    hash "0xAABB1F56E2A17CED"
	jhash (0x2F3A0D15)
	arguments {
		int "id",
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_MAP_FULL_SCREEN"
    hash "0x5354C5BA2EA868A4"
	jhash (0xE4FD20D8)
	arguments {
		BOOL "toggle",
	}
	alias "0x5354C5BA2EA868A4"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If toggle is true, the map is shown in full screen  
If toggle is false, the map is shown in normal mode  
```
</summary>
	]]

native "SET_MINIMAP_COMPONENT"
    hash "0x75A9A10948D1DEA6"
	jhash (0x419DCDC4)
	arguments {
		int "componentID",
		BOOL "toggle",
		int "p2",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
This native is used to toggle map components like the army base at the top of the map.  
p2 appears to be always -1.  

An incomplete list of components ID:

```
0: Los Santos' air port yellow lift-off markers.
1: Sandy Shore's air port yellow lift-off markers.
2: Trevor's air port yellow lift-off markers.
3: Unknown.
4: Unknown.
5: Unknown.
6: Vespucci Beach lifeguard building.
7: Unknown.
8: Unknown.
15: Army base.
```
</summary>
	]]

native "_SET_MINIMAP_ALTITUDE_INDICATOR_LEVEL"
    hash "0xD201F3FF917A506D"
	jhash (0x0308EDF6)
	arguments {
		float "altitude",
		BOOL "p1",
	}
	alias "_SET_MINIMAP_ATTITUDE_INDICATOR_LEVEL"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Argument must be 0.0f or above 38.0f, or it will be ignored.  
```

```
NativeDB Added Parameter 3: int p2
```
</summary>
	]]

native "SET_MINIMAP_BLOCK_WAYPOINT"
    hash "0x58FADDED207897DC"
	jhash (0xA41C3B62)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_MINIMAP_GOLF_COURSE"
    hash "0x71BDB63DBAF8DA59"
	jhash (0x5133A750)
	arguments {
		int "hole",
	}
	alias "0x71BDB63DBAF8DA59"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Not much is known so far on what it does _exactly_.
All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.

You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
You'll also need to use the `GOLF` scaleform in order to get the correct minmap border to show up.

Use [`N_0x35edd5b2e3ff01c0()`](https://runtime.fivem.net/doc/reference.html#_0x35EDD5B2E3FF01C0) to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).
</summary>
<param name="hole">The ID of the hole to draw on the map. ID starts with 1 for hole 1, 2 for hole 2, etc. 0 disables the golf map behaviour.</param>
	]]

native "SET_MINIMAP_GOLF_COURSE_OFF"
    hash "0x35EDD5B2E3FF01C0"
	jhash (0x20FD3E87)
	alias "0x35EDD5B2E3FF01C0"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_MINIMAP_IN_SPECTATOR_MODE"
    hash "0x1A5CD7752DD28CD3"
	jhash (0xD5BFCADB)
	arguments {
		BOOL "toggle",
		Ped "ped",
	}
	alias "KEY_HUD_COLOUR"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_MISSION_NAME"
    hash "0x5F28ECF5FC84772F"
	jhash (0x68DCAE10)
	arguments {
		BOOL "p0",
		charPtr "name",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Takes a text label, gets the string (must not be longer than 600 chars, should not exceed 64 chars) and sets the name to that string.  
p0 must be true.  
```
</summary>
	]]

native "_SET_MINIMAP_REVEALED"
    hash "0xF8DEE0A5600CBB93"
	jhash (0xD8D77733)
	arguments {
		BOOL "toggle",
	}
	alias "0xF8DEE0A5600CBB93"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If true, the entire map will be revealed.  
```
</summary>
	]]

native "_SET_MOUSE_CURSOR_ACTIVE_THIS_FRAME"
    hash "0xAAE7CE1D63167423"
	alias "_SHOW_CURSOR_THIS_FRAME"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Shows the cursor on screen for the frame its called.  
```
</summary>
	]]

native "_SET_MISSION_NAME_2"
    hash "0xE45087D85F468BC2"
	jhash (0x8D9A1734)
	arguments {
		BOOL "p0",
		charPtr "name",
	}
	alias "0xE45087D85F468BC2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Similar to SET_MISSION_NAME but this one can take any string (must not be greater than 600 chars, should not exceed 64 chars), not just text labels.  
p0 must be true.  
```
</summary>
	]]

native "_SET_MP_GAMER_TAG"
    hash "0xEE76FF7E6A0166B0"
	jhash (0x767DED29)
	arguments {
		int "headDisplayId",
		BOOL "p1",
	}
	alias "0xEE76FF7E6A0166B0"
	alias "_SET_MP_GAMER_TAG_"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_MOUSE_CURSOR_SPRITE"
    hash "0x8DB8CFFD58B62552"
	arguments {
		int "spriteId",
	}
	alias "0x8DB8CFFD58B62552"
	alias "_SET_CURSOR_SPRITE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Changes the mouse cursor's sprite.   
public enum CursorType  
{  
    None = 0,  
    Normal = 1,  
    TransparentNormal = 2,  
    PreGrab = 3,  
    Grab = 4,  
    MiddleFinger = 5,  
    LeftArrow = 6,  
    RightArrow = 7,  
    UpArrow = 8,  
    DownArrow = 9,  
    HorizontalExpand = 10,  
    Add = 11,  
    Remove = 12,  
}  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_BIG_TEXT"
    hash "0x7B7723747CCB55B6"
	jhash (0x939218AB)
	arguments {
		int "gamerTagId",
		charPtr "string",
	}
	alias "0x7B7723747CCB55B6"
	alias "_SET_MP_GAMER_TAG_CHATTING"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Set's the string displayed when flag 3 (AudioSpeaker) active.  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_ALPHA"
    hash "0xD48FE545CD46F857"
	jhash (0xF4418611)
	arguments {
		int "gamerTagId",
		int "component",
		int "alpha",
	}
	alias "0xD48FE545CD46F857"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets flag's sprite transparency. 0-255.  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR"
    hash "0x3158C77A7E888AB4"
	jhash (0x5777EC77)
	arguments {
		int "headDisplayId",
		int "color",
	}
	alias "0x3158C77A7E888AB4"
	alias "_SET_MP_GAMER_TAG_HEALTH_BAR_COLOR"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.  
Should be enabled as flag (2). Has 0 opacity by default.  
- This was _SET_MP_GAMER_TAG_HEALTH_BAR_COLOR,  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_COLOUR"
    hash "0x613ED644950626AE"
	jhash (0x7E3AA40A)
	arguments {
		int "gamerTagId",
		int "flag",
		int "color",
	}
	alias "0x613ED644950626AE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.  
```
</summary>
	]]

native "_SET_MP_GAMER_TAG_MP_BAG_LARGE_COUNT"
    hash "0x9B9AA95688F78DD3"
	arguments {
		int "gamerTagId",
		int "count",
	}
	alias "0x9B9AA95688F78DD3"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
displays wanted star above head  
```
</summary>
	]]

native "_SET_MP_GAMER_TAG_UNK"
    hash "0x9C16459B2324B2CF"
	arguments {
		int "gamerTagId",
		int "p1",
	}
	alias "0x9C16459B2324B2CF"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_MP_GAMER_TAG_ICONS"
    hash "0xA67F9C46D612B6F1"
	jhash (0xB01A5434)
	arguments {
		int "gamerTagId",
		BOOL "p1",
	}
	alias "0xA67F9C46D612B6F1"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Displays a bunch of icons above the players name, and level, and their name twice  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_NAME"
    hash "0xDEA2B8283BAA3944"
	jhash (0x627A559B)
	arguments {
		int "gamerTagId",
		charPtr "string",
	}
	alias "0xDEA2B8283BAA3944"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_MP_GAMER_TAG_VISIBILITY"
    hash "0x63BB75ABEDC1F6A0"
	jhash (0xD41DF479)
	arguments {
		int "gamerTagId",
		int "component",
		BOOL "toggle",
	}
	alias "0x63BB75ABEDC1F6A0"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
enum MpGamerTagComponent  
{  
  GAMER_NAME = 0,  
  CREW_TAG,  
  healthArmour,  
  BIG_TEXT,  
  AUDIO_ICON,  
  MP_USING_MENU,  
  MP_PASSIVE_MODE,  
  WANTED_STARS,  
  MP_DRIVER,  
  MP_CO_DRIVER,  
  MP_TAGGED,  
  GAMER_NAME_NEARBY,  
  ARROW,  
  MP_PACKAGES,  
  INV_IF_PED_FOLLOWING,  
  RANK_TEXT,  
  MP_TYPING  
};  
```

```
NativeDB Added Parameter 4: Any p3
```
</summary>
	]]

native "SET_MULTIPLAYER_HUD_CASH"
    hash "0xFD1D220394BCB824"
	jhash (0xA8DB435E)
	arguments {
		int "p0",
		int "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "SET_MP_GAMER_TAG_WANTED_LEVEL"
    hash "0xCF228E2AA03099C3"
	jhash (0x0EBB003F)
	arguments {
		int "gamerTagId",
		int "wantedlvl",
	}
	alias "0xCF228E2AA03099C3"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
displays wanted star above head  
```
</summary>
	]]

native "SET_NEW_WAYPOINT"
    hash "0xFE43368D2AA4F2FC"
	jhash (0x8444E1F0)
	arguments {
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_MULTIPLAYER_BANK_CASH"
    hash "0xDD21B55DF695CD0A"
	jhash (0x2C842D03)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_NORTH_YANKTON_MAP"
    hash "0x9133955F1A2DA957"
	jhash (0x02F5F1D1)
	arguments {
		BOOL "toggle",
	}
	alias "_SET_DRAW_MAP_VISIBLE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Toggles the North Yankton map  
```
</summary>
	]]

native "SET_MULTIPLAYER_WALLET_CASH"
    hash "0xC2D15BEF167E27BC"
	jhash (0xF4F3C796)
	alias "0xC2D15BEF167E27BC"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_PAUSE_MENU_PED_LIGHTING"
    hash "0x3CA6050692BC61B0"
	jhash (0x127310EB)
	arguments {
		BOOL "state",
	}
	alias "0x3CA6050692BC61B0"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles the light state for the pause menu ped in frontend menus.

This is used by R\* in combination with [`SET_PAUSE_MENU_PED_SLEEP_STATE`](#_0xECF128344E9FF9F1) to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.

Example:
On: ![lights on](https://vespura.com/hi/i/2019-04-01_16-09_540ee_1015.png)
Off: ![lights off](https://vespura.com/hi/i/2019-04-01_16-10_8b5e7_1016.png)
</summary>
<param name="state">True enables the light, false disables the light.</param>
	]]

native "SET_PAUSE_MENU_ACTIVE"
    hash "0xDF47FC56C71569CF"
	jhash (0x1DCD878E)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_PED_AI_BLIP_FORCED_ON"
    hash "0x0C4BBF625CA98C4E"
	jhash (0xFFDF46F0)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	alias "0x0C4BBF625CA98C4E"
	alias "_IS_AI_BLIP_ALWAYS_SHOWN"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
if "flag" is true, the AI blip will always be displayed for the specified ped, if it has an AI blip  
If "flag" is false, the AI blip will only be displayed when the player is in combat with the specified ped, if it has an AI blip  
```
</summary>
	]]

native "SET_PED_AI_BLIP_HAS_CONE"
    hash "0x3EED80DFF7325CAA"
	jhash (0x872C2CFB)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	alias "HIDE_SPECIAL_ABILITY_LOCKON_OPERATION"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If used with a Ped that has an AI blip as the first argument:  
- if p1 is true, a view cone is displayed with the AI blip  
```
</summary>
	]]

native "SET_PAUSE_MENU_PED_SLEEP_STATE"
    hash "0xECF128344E9FF9F1"
	jhash (0x8F45D327)
	arguments {
		BOOL "state",
	}
	alias "0xECF128344E9FF9F1"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles the pause menu ped sleep state for frontend menus.

[Example GIF](https://vespura.com/hi/i/2019-04-01_15-51_8ed38_1014.gif)
</summary>
<param name="state">0 will make the ped slowly fall asleep, 1 will slowly wake the ped up.</param>
	]]

native "SET_PED_AI_BLIP_GANG_ID"
    hash "0xE52B8E7F85D39A08"
	jhash (0xD8E31B1A)
	arguments {
		Ped "ped",
		int "gangId",
	}
	alias "0xE52B8E7F85D39A08"
	alias "_SET_AI_BLIP_TYPE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Set a ped's AI blip type:  
1 - Yellow blip with no name  
2  
```
</summary>
	]]

native "_SET_PED_AI_BLIP_SPRITE"
    hash "0xFCFACD0DB9D7A57D"
	arguments {
		Ped "ped",
		int "spriteId",
	}
	alias "0xFCFACD0DB9D7A57D"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_PED_AI_BLIP_NOTICE_RANGE"
    hash "0x97C65887D4B37FA9"
	jhash (0xF9DC2AF7)
	arguments {
		Ped "ped",
		float "range",
	}
	alias "0x97C65887D4B37FA9"
	alias "_SET_AI_BLIP_MAX_DISTANCE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Previously named _0x97C65887D4B37FA9.  
Sets the maximum view distance for the AI BIP  
```
</summary>
	]]

native "_SET_PED_HAS_AI_BLIP_WITH_COLOR"
    hash "0xB13DCB4C6FAAD238"
	arguments {
		Ped "ped",
		BOOL "hasCone",
		int "color",
	}
	alias "0xB13DCB4C6FAAD238"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Called in decompiled scripts as alternative to _SET_PED_ENEMY_AI_BLIP in an else, when the additional parameter p3 is not -1  
```
</summary>
	]]

native "_SET_PLAYER_BLIP_POSITION_THIS_FRAME"
    hash "0x77E2DD177910E1CF"
	jhash (0x54E75C7D)
	arguments {
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets the position of the arrow icon representing the player on both the minimap and world map.  
Too bad this wouldn't work over the network (obviously not). Could spoof where we would be.  
```
</summary>
	]]

native "SET_PED_HAS_AI_BLIP"
    hash "0xD30C50DF888D58B5"
	jhash (0x96C4C4DD)
	arguments {
		Ped "ped",
		BOOL "hasCone",
	}
	alias "0xD30C50DF888D58B5"
	alias "_SET_PED_ENEMY_AI_BLIP"
	alias "_SET_PED_AI_BLIP"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Previously named _0xD30C50DF888D58B5, this native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.   
See gtaforums.com/topic/884370-native-research-ai-blips for further information.  
Note: Everything said at the bottom is only valid for persistant peds, as AI blips seem to behave differently for non-persistant peds.  
• To create an AI blip, you must use UI::0xD30C50DF888D58B5() (_SET_PED_ENEMY_AI_BLIP). It has two arguments: "ped" which is the ped you want to AI blip to be linked to, and "showViewCones" which needs to be true for AI blips to appear.  
• To check if a ped has an AI blip, you can use UI::DOES_PED_HAVE_AI_BLIP(Ped ped), which returns a simple bool.  
• By default, AI blips never disappear. If you want them to disappear when you're at a certain distance from a ped, you can use UI::0x97C65887D4B37FA9(Ped ped, float distance) (_SET_AI_BLIP_MAX_DISTANCE)  
• By default, the blip only appears when you're in combat with the specified ped. If you want it to be always displayed, you can use UI::x0C4BBF625CA98C4E() (_IS_AI_BLIP_ALWAYS_SHOWN). It also has two arguments: "ped", and a flag. If the flag is set to true, the blip will always be displayed. If it's set to false, the AI blip will have its default behaviour.  
• By default, a view cone is displayed with the blip (basically a blue surface that represents the field of view of the ped, like in vanilla stealth missions). If you don't want it, you can disable it with UI::HIDE_SPECIAL_ABILITY_LOCKON_OPERATION(Ped ped, bool flag). If the flag is set to true, the view cone is displayed. If the flag is set to false, it is not.  
• Finally, there's actually 3 types of AI blips:  
0 - the default, red, "enemy" blip  
1 - a weird, semi-transparent, nameless, yellow blip  
2 - the blue "friend" blip  
You can change an AI blip's type with UI::0xE52B8E7F85D39A08(Ped ped, int type) (_SET_AI_BLIP_TYPE).  
```
</summary>
	]]

native "_SET_PLAYER_CASH_CHANGE"
    hash "0x0772DF77852C2E30"
	arguments {
		int "cash",
		int "bank",
	}
	alias "_SET_SINGLEPLAYER_HUD_CASH"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Displays cash change notifications on HUD.  
```
</summary>
	]]

native "_SET_PLAYER_IS_IN_DIRECTOR_MODE"
    hash "0x808519373FD336A3"
	arguments {
		BOOL "toggle",
	}
	alias "0x808519373FD336A3"
	alias "_SET_DIRECTOR_MODE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If toggle is true, hides special ability bar / character name in the pause menu  
If toggle is false, shows special ability bar / character name in the pause menu  
```
</summary>
	]]

native "SET_RACE_TRACK_RENDER"
    hash "0x1EAC5F91BCBC5073"
	jhash (0xFB9BABF5)
	arguments {
		BOOL "toggle",
	}
	alias "0x1EAC5F91BCBC5073"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_RADAR_AS_EXTERIOR_THIS_FRAME"
    hash "0xE81B7D2A3DAB2D81"
	jhash (0x39ABB10E)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_RADAR_AS_INTERIOR_THIS_FRAME"
    hash "0x59E727A1C9D3E31A"
	jhash (0x6F2626E1)
	arguments {
		Hash "interior",
		float "x",
		float "y",
		int "heading",
		int "zoom",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
List of interior hashes: pastebin.com/1FUyXNqY  
Not for every interior zoom > 0 available.  
```
</summary>
	]]

native "SET_RADAR_ZOOM_PRECISE"
    hash "0xBD12C5EEE184C337"
	jhash (0xDCA3F423)
	arguments {
		float "zoom",
	}
	alias "RESPONDING_AS_TEMP"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
actual native starts with SET_RADAR_ZOOM_...  
```
</summary>
	]]

native "SET_RADAR_ZOOM"
    hash "0x096EF57A0C999BBA"
	jhash (0x2A50D1A6)
	arguments {
		int "zoomLevel",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
zoomLevel ranges from 0 to 200  
```
</summary>
	]]

native "SET_RADAR_ZOOM_TO_DISTANCE"
    hash "0xCB7CC0D58405AD41"
	jhash (0x09CF1CE5)
	arguments {
		float "zoom",
	}
	alias "_SET_RADAR_ZOOM_LEVEL_THIS_FRAME"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_RADAR_ZOOM_TO_BLIP"
    hash "0xF98E4B3E56AFC7B1"
	jhash (0x25EC28C0)
	arguments {
		Blip "blip",
		float "zoom",
	}
	alias "0xF98E4B3E56AFC7B1"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_SCRIPT_VARIABLE_HUD_COLOUR"
    hash "0xD68A5FF8A3A89874"
	jhash (0x0E41E45C)
	arguments {
		int "r",
		int "g",
		int "b",
		int "a",
	}
	alias "0xD68A5FF8A3A89874"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets the color of HUD_COLOUR_SCRIPT_VARIABLE
```
</summary>
	]]

native "SET_RADIUS_BLIP_EDGE"
    hash "0x25615540D894B814"
	jhash (0x40E25DB8)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	alias "0x25615540D894B814"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_SCRIPT_VARIABLE_2_HUD_COLOUR"
    hash "0x16A304E6CB2BFAB9"
	jhash (0x6BE3ACA8)
	arguments {
		int "r",
		int "g",
		int "b",
		int "a",
	}
	alias "0x16A304E6CB2BFAB9"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets the color of HUD_COLOUR_SCRIPT_VARIABLE_2
```
</summary>
	]]

native "SET_TEXT_CENTRE"
    hash "0xC02F4DBFB51D988B"
	jhash (0xE26D39A1)
	arguments {
		BOOL "align",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_SOCIAL_CLUB_TOUR"
    hash "0x9E778248D6685FE0"
	jhash (0x7AD67C95)
	arguments {
		charPtr "name",
	}
	alias "0x9E778248D6685FE0"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
UI::0x7AD67C95("Gallery");  
UI::0x7AD67C95("Missions");  
UI::0x7AD67C95("General");  
UI::0x7AD67C95("Playlists");  
```
</summary>
	]]

native "_SET_TEXT_CHAT_UNK"
    hash "0x1DB21A44B09E8BA3"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets an unknown boolean value in the text chat.  
```
</summary>
	]]

native "SET_TEXT_COLOUR"
    hash "0xBE6B23FFA53FB442"
	jhash (0xE54DD2C8)
	arguments {
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_DROP_SHADOW"
    hash "0x1CA3E9EAC9D93E5E"
	jhash (0xE2A11511)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_DROPSHADOW"
    hash "0x465C84BC39F1C351"
	jhash (0xE6587517)
	arguments {
		int "distance",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Sets the drop shadow for the current text style.
</summary>
<param name="distance">Shadow distance in pixels, both horizontal and vertical.</param>
<param name="r">Red color.</param>
<param name="g">Green color.</param>
<param name="b">Blue color.</param>
<param name="a">Alpha.</param>
	]]

native "SET_TEXT_EDGE"
    hash "0x441603240D202FA6"
	jhash (0x3F1A5DAB)
	arguments {
		int "p0",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "SET_TEXT_FONT"
    hash "0x66E0276CC5F6B9DA"
	jhash (0x80BC530D)
	arguments {
		int "fontType",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
fonts that mess up your text where made for number values/misc stuff  
```
</summary>
	]]

native "SET_TEXT_OUTLINE"
    hash "0x2513DFB0FB8400FE"
	jhash (0xC753412F)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_JUSTIFICATION"
    hash "0x4E096588B13FFECA"
	jhash (0x68CDFA60)
	arguments {
		int "justifyType",
	}
	alias "0x4E096588B13FFECA"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Types -  
0: Center-Justify  
1: Left-Justify  
2: Right-Justify  
Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen  
```
</summary>
	]]

native "SET_TEXT_PROPORTIONAL"
    hash "0x038C1F517D7FDCF8"
	jhash (0xF49D8A08)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "SET_TEXT_LEADING"
    hash "0xA50ABC31E3CDFAFF"
	jhash (0x98CE21D4)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
from script am_mp_yacht.c int?  
ui::set_text_leading(2);  
```

```
NativeDB Parameter 0: int p0
```
</summary>
	]]

native "SET_TEXT_SCALE"
    hash "0x07C837F9A01C34C9"
	jhash (0xB6E15B23)
	arguments {
		float "scale",
		float "size",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Size range : 0f to 1.0f  
```
</summary>
	]]

native "SET_TEXT_RENDER_ID"
    hash "0x5F15302936E07111"
	jhash (0xC5C3B7F3)
	arguments {
		int "renderId",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_WARNING_MESSAGE"
    hash "0x7B1776B3B53F8D74"
	jhash (0xBE699BDE)
	arguments {
		charPtr "entryLine1",
		int "instructionalKey",
		charPtr "entryLine2",
		BOOL "p3",
		int "p4",
		AnyPtr "background",
		AnyPtr "p6",
		BOOL "showBg",
		Any "p8",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**instructionalKey enum list**:

```
enum INSTRUCTIONAL_BUTTON_TYPES
{
    NONE = 0,
    SELECT = 1,
    OK = 2,
    YES = 4,
    BACK = 8,
    BACK_SELECT = 9,
    BACK_OK = 10,
    BACK_YES = 12,
    CANCEL = 16,
    CANCEL_SELECT = 17,
    CANCEL_OK = 18,
    CANCEL_YES = 20,
    NO = 32,
    NO_SELECT = 33,
    NO_OK = 34,
    YES_NO = 36,
    RETRY = 64,
    RETRY_SELECT = 65,
    RETRY_OK = 66,
    RETRY_YES = 68,
    RETRY_BACK = 72,
    RETRY_BACK_SELECT = 73,
    RETRY_BACK_OK = 74,
    RETRY_BACK_YES = 76,
    RETRY_CANCEL = 80,
    RETRY_CANCEL_SELECT = 81,
    RETRY_CANCEL_OK = 82,
    RETRY_CANCEL_YES = 84,
    SKIP = 256,
    SKIP_SELECT = 257,
    SKIP_OK = 258,
    SKIP_YES = 260,
    SKIP_BACK = 264,
    SKIP_BACK_SELECT = 265,
    SKIP_BACK_OK = 266,
    SKIP_BACK_YES = 268,
    SKIP_CANCEL = 272,
    SKIP_CANCEL_SELECT = 273,
    SKIP_CANCEL_OK = 274,
    SKIP_CANCEL_YES = 276,
    CONTINUE = 16384,
    BACK_CONTINUE = 16392,
    CANCEL_CONTINUE = 16400,
    LOADING_SPINNER = 134217728,
    SELECT_LOADING_SPINNER = 134217729,
    OK_LOADING_SPINNER = 134217730,
    YES_LOADING_SPINNER = 134217732,
    BACK_LOADING_SPINNER = 134217736,
    BACK_SELECT_LOADING_SPINNER = 134217737,
    BACK_OK_LOADING_SPINNER = 134217738,
    BACK_YES_LOADING_SPINNER = 134217740,
    CANCEL_LOADING_SPINNER = 134217744,
    CANCEL_SELECT_LOADING_SPINNER = 134217745,
    CANCEL_OK_LOADING_SPINNER = 134217746,
    CANCEL_YES_LOADING_SPINNER = 134217748
}
```

Note: this list is definitely NOT complete, but these are the ones I've been able to find before giving up because it's such a boring thing to look for 'good' combinations.

**Result of the example code:**
<https://i.imgur.com/imwoimm.png>

```
NativeDB Parameter 5: char* background
NativeDB Parameter 6: char* p6
```
</summary>
<param name="entryLine1">The text label to display as the first line of the warning message.</param>
<param name="instructionalKey">This is an enum, check the description for a list.</param>
<param name="entryLine2">The text label to display as the second line of the warning message.</param>
<param name="p3">Purpose unknown.</param>
<param name="p4">Purpose unknown.</param>
<param name="background">Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.</param>
<param name="p6">Purpose unknown.</param>
<param name="showBg">Purpose unknown.</param>
<param name="p8">Purpose unknown.</param>
	]]

native "SET_TEXT_RIGHT_JUSTIFY"
    hash "0x6B3C4650BC8BEE47"
	jhash (0x45B60520)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_WARNING_MESSAGE_WITH_HEADER"
    hash "0xDC38CC1E35B6A5D7"
	jhash (0x2DB9EAB5)
	arguments {
		charPtr "titleMsg",
		charPtr "entryLine1",
		int "flags",
		charPtr "promptMsg",
		BOOL "p4",
		Any "p5",
		BOOL "background",
		AnyPtr "p7",
		BOOL "showBg",
	}
	alias "_SET_WARNING_MESSAGE_2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
You can only use text entries. No custom text.  
C# Example :  
Function.Call(Hash._SET_WARNING_MESSAGE_2, "HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 0, 1);  
you can recreate this easily with scaleforms  
---------------  
Fixed native name, from before nativedb restoration.  
```

```
NativeDB Added Parameter 10: Any p9
```
</summary>
	]]

native "_SET_WARNING_MESSAGE_WITH_HEADER_UNK"
    hash "0x38B55259C2E078ED"
	arguments {
		charPtr "entryHeader",
		charPtr "entryLine1",
		int "flags",
		charPtr "entryLine2",
		BOOL "p4",
		Any "p5",
		AnyPtr "p6",
		AnyPtr "p7",
		BOOL "showBg",
		Any "p9",
		Any "p10",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="entryHeader">:</param>
<param name="entryLine1">:</param>
<param name="flags">:</param>
<param name="entryLine2">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
<param name="p6">:</param>
<param name="p7">:</param>
<param name="showBg">:</param>
<param name="p9">:</param>
<param name="p10">:</param>
	]]

native "SET_TEXT_WRAP"
    hash "0x63145D9C883A1A70"
	jhash (0x6F60AB54)
	arguments {
		float "start",
		float "end",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.  
start - left boundry on screen position (0.0 - 1.0)  
end - right boundry on screen position (0.0 - 1.0)  
```
</summary>
	]]

native "_SET_WARNING_MESSAGE_LIST_ROW"
    hash "0x0C5A80A9E096D529"
	arguments {
		int "index",
		charPtr "name",
		int "cash",
		int "rp",
		int "lvl",
		int "colour",
	}
	alias "0x0C5A80A9E096D529"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Param names copied from the corresponding scaleform function "SET_LIST_ROW"
```
</summary>
	]]

native "SET_WAYPOINT_OFF"
    hash "0xA7E4E2D361C2627F"
	jhash (0xB3496E1B)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This native removes the current waypoint from the map.  
Example:  
C#:  
Function.Call(Hash.SET_WAYPOINT_OFF);  
C++:  
UI::SET_WAYPOINT_OFF();  
```
</summary>
	]]

native "_SET_WARNING_MESSAGE_3"
    hash "0x701919482C74B5AB"
	jhash (0x749929D3)
	arguments {
		charPtr "entryHeader",
		charPtr "entryLine1",
		Any "instructionalKey",
		charPtr "entryLine2",
		BOOL "p4",
		Any "p5",
		Any "p6",
		AnyPtr "p7",
		AnyPtr "p8",
		BOOL "p9",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
You can only use text entries. No custom text.  
```

```
NativeDB Added Parameter 11: Any p10
```
</summary>
	]]

native "SHOW_CREW_INDICATOR_ON_BLIP"
    hash "0xDCFB5D4DB8BF367E"
	jhash (0xABBE1E45)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0xDCFB5D4DB8BF367E"
	alias "SET_BLIP_CREW"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables or disables the blue half circle ![](https://i.imgur.com/iZes9Ec.png) around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using [`SET_BLIP_SECONDARY_COLOUR`](#_0x14892474891E09EB).

To toggle the right side of the circle use: [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#_0x23C3EB807312F01A).

Example code result:
![](https://i.imgur.com/iZ9tNWl.png)
</summary>
<param name="blip">The blip to toggle the half blue circle around the blip on.</param>
<param name="toggle">Enables or disables the half blue circle around the blip (on the left side).</param>
	]]

native "SET_WIDESCREEN_FORMAT"
    hash "0xC3B07BA00A83B0F1"
	jhash (0xF016E08F)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SHOW_HEADING_INDICATOR_ON_BLIP"
    hash "0x5FBCA48327B914DF"
	jhash (0xD1C3D71B)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x5FBCA48327B914DF"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds the GTA: Online player heading indicator to a blip.  
```
</summary>
	]]

native "SHOW_FRIEND_INDICATOR_ON_BLIP"
    hash "0x23C3EB807312F01A"
	jhash (0x4C8F02B4)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x23C3EB807312F01A"
	alias "SET_BLIP_FRIEND"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend (in GTA:O). This color can not be changed.

To toggle the left side (crew member indicator) of the half circle around the blip, use: [`SHOW_CREW_INDICATOR_ON_BLIP`](#_0xDCFB5D4DB8BF367E).
</summary>
<param name="blip">The blip to toggle the half circle on.</param>
<param name="toggle">Enables or disables the half circle around the blip (on the right side of the blip).</param>
	]]

native "SHOW_HEIGHT_ON_BLIP"
    hash "0x75A16C3DA34F1245"
	jhash (0x1D99F676)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x75A16C3DA34F1245"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SHOW_NUMBER_ON_BLIP"
    hash "0xA3C0B359DCB848B6"
	jhash (0x7BFC66C6)
	arguments {
		Blip "blip",
		int "number",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SHOW_HUD_COMPONENT_THIS_FRAME"
    hash "0x0B4DF1FA60C0E664"
	jhash (0x95E1546E)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
This function shows various HUD (Heads-up Display) components.

Listed below are the integers and the corresponding HUD component.

-   1 : WANTED_STARS
-   2 : WEAPON_ICON
-   3 : CASH
-   4 : MP_CASH
-   5 : MP_MESSAGE
-   6 : VEHICLE_NAME
-   7 : AREA_NAME
-   8 : VEHICLE_CLASS
-   9 : STREET_NAME
-   10 : HELP_TEXT
-   11 : FLOATING_HELP_TEXT_1
-   12 : FLOATING_HELP_TEXT_2
-   13 : CASH_CHANGE
-   14 : RETICLE
-   15 : SUBTITLE_TEXT
-   16 : RADIO_STATIONS
-   17 : SAVING_GAME
-   18 : GAME_STREAM
-   19 : WEAPON_WHEEL
-   20 : WEAPON_WHEEL_STATS
-   21 : HUD_COMPONENTS
-   22 : HUD_WEAPONS

These integers also work for the [`HIDE_HUD_COMPONENT_THIS_FRAME`](#_0x6806C51AD12B83B8) native, but instead hides the HUD component.
</summary>
	]]

native "_SHOW_SIGNIN_UI"
    hash "0x60E892BA4F5BDCA4"
	alias "0x60E892BA4F5BDCA4"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Something with Social Club or online.  
```
</summary>
	]]

native "SHOW_OUTLINE_INDICATOR_ON_BLIP"
    hash "0xB81656BC81FE24D1"
	jhash (0x8DE82C15)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0xB81656BC81FE24D1"
	alias "SET_BLIP_FRIENDLY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles a cyan outline around the blip.

Color can be changed with `SET_BLIP_SECONDARY_COLOUR`. Enabling this circle will override the "crew" and "friend" half-circles (see [`SHOW_CREW_INDICATOR_ON_BLIP`](#_0xDCFB5D4DB8BF367E) and [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#_0x23C3EB807312F01A)). 

~~Oddly enough, this native is called `_SET_BLIP_FRIENDLY`, but the color of the circle is only changable for the 'crew' half-circle (using `SET_BLIP_SECONDARY_COLOUR`), the 'friendly' side can NOT be changed and will always stay cyan/blue. This makes it seem more likely that this should be called `_SET_BLIP_CREW_CIRCLE` or something similar?~~

Real name is `SHOW_OUTLINE_INDICATOR_ON_BLIP`, discovered by Blattersturm.
</summary>
<param name="blip">The blip to toggle the outline on.</param>
<param name="toggle">Enables or disables the outline.</param>
	]]

native "START_GPS_CUSTOM_ROUTE"
    hash "0xDB34E8D56FC13B08"
	jhash (0x7F93799B)
	arguments {
		int "hudColor",
		BOOL "displayOnFoot",
		BOOL "followPlayer",
	}
	alias "0xDB34E8D56FC13B08"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Starts a new GPS custom-route, allowing you to plot lines on the map.
Lines are drawn directly between points.
The GPS custom route works like the GPS multi route, except it does not follow roads.

**Example result:**

![](https://i.imgur.com/BDm5pzt.png)
</summary>
<param name="hudColor">The HUD color of the GPS path.</param>
<param name="displayOnFoot">Draws the path regardless if the player is in a vehicle or not.</param>
<param name="followPlayer">Draw the path partially between the previous and next point based on the players position between them. When false, the GPS appears to not disappear after the last leg is completed.</param>
	]]

native "SUPPRESS_FRONTEND_RENDERING_THIS_FRAME"
    hash "0xBA751764F0821256"
	jhash (0x7F349900)
	alias "0xBA751764F0821256"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SHOW_TICK_ON_BLIP"
    hash "0x74513EA3E505181E"
	jhash (0x3DCF0092)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x74513EA3E505181E"
	alias "_SET_BLIP_CHECKED"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds a green checkmark on top of a blip.  
```
</summary>
	]]

native "_THEFEED_DISABLE"
    hash "0x32888337579A5970"
	alias "0x32888337579A5970"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Stops loading screen tips shown by invoking either `_0x488043841BBE156F` or `_0x15CFA549788D35EF`
</summary>
	]]

native "START_GPS_MULTI_ROUTE"
    hash "0x3D3D15AF7BCAAF83"
	jhash (0xC3DCBEDB)
	arguments {
		int "hudColor",
		BOOL "routeFromPlayer",
		BOOL "displayOnFoot",
	}
	alias "0x3D3D15AF7BCAAF83"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Starts a new GPS multi-route, allowing you to create custom GPS paths.
GPS functions like the waypoint, except it can contain multiple points it's forced to go through.
Once the player has passed a point, the GPS will no longer force its path through it.

Works independently from the player-placed waypoint and blip routes.

**Example result:**

![](https://i.imgur.com/ZZHQatX.png)
</summary>
<param name="hudColor">The HUD color of the GPS path.</param>
<param name="routeFromPlayer">Makes the GPS draw a path from the player to the next point, rather than the original path from the previous point.</param>
<param name="displayOnFoot">Draws the GPS path regardless if the player is in a vehicle or not.</param>
	]]

native "_THEFEED_CLEAR_ANIMPOSTFX"
    hash "0xFDD85225B2DEA55E"
	jhash (0xA4524B23)
	alias "0xFDD85225B2DEA55E"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_THEFEED_DISABLE_BASELINE_OFFSET"
    hash "0xB695E2CD0A2DA9EE"
	jhash (0x4A4A40A4)
	alias "0xB695E2CD0A2DA9EE"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_THEFEED_ENABLE"
    hash "0x15CFA549788D35EF"
	alias "0x15CFA549788D35EF"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Displays loading screen tips, requires `_0x56C8B608CFD49854` to be called beforehand.
</summary>
	]]

native "_THEFEED_FLUSH_PERSISTENT"
    hash "0x80FE4F3AB4E1B62A"
	jhash (0x3CD4307C)
	alias "0x80FE4F3AB4E1B62A"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Nulls out the elements stored in CGameStreamMgr + 673, a value inherited from CGameStreamMgr + 15417 (1604)
```
</summary>
	]]

native "_THEFEED_ENABLE_BASELINE_OFFSET"
    hash "0xD4438C0564490E63"
	jhash (0x709B4BCB)
	alias "0xD4438C0564490E63"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "THEFEED_FLUSH_QUEUE"
    hash "0xA8FDB297A8D25FBA"
	jhash (0x5205C6F5)
	alias "0xA8FDB297A8D25FBA"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Requires _GAMESTREAM_SHOW_CONTENT to be set.
```
</summary>
	]]

native "_THEFEED_GET_CURRENT_NOTIFICATION"
    hash "0x82352748437638CA"
	jhash (0x294405D4)
	alias "0x82352748437638CA"
	alias "_GET_CURRENT_NOTIFICATION"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns the handle for the notification currently displayed on the screen.  
```
</summary>
	]]

native "THEFEED_HIDE_THIS_FRAME"
    hash "0x25F87B30C382FCA7"
	jhash (0x1E63088A)
	alias "0x25F87B30C382FCA7"
	alias "_HIDE_HUD_NOTIFICATIONS_THIS_FRAME"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Once called each frame hides all above radar notifications.
</summary>
	]]

native "THEFEED_IS_PAUSED"
    hash "0xA9CBFD40B3FA3010"
	jhash (0xC5223796)
	alias "0xA9CBFD40B3FA3010"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Getter for 0xFDB423997FA30340
```
</summary>
	]]

native "_THEFEED_NEXT_POST_BACKGROUND_COLOR"
    hash "0x92F0DA1E27DB96DC"
	jhash (0x07CE2EA4)
	arguments {
		int "hudColorIndex",
	}
	alias "0x92F0DA1E27DB96DC"
	alias "_SET_NOTIFICATION_BACKGROUND_COLOR"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
From the decompiled scripts:  
UI::_92F0DA1E27DB96DC(6);  
UI::_92F0DA1E27DB96DC(184);  
UI::_92F0DA1E27DB96DC(190);  
sets background color for the next notification  
6 = red  
184 = green  
190 = yellow  
Here is a list of some colors that can be used: gyazo.com/68bd384455fceb0a85a8729e48216e15  
this seems to set the alpha to 255 automatically, if you have a work around let me know  
```
</summary>
	]]

native "THEFEED_ONLY_SHOW_TOOLTIPS"
    hash "0x6F1554B0CC2089FA"
	jhash (0xA7C8594B)
	arguments {
		BOOL "toggle",
	}
	alias "0x6F1554B0CC2089FA"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If true, disables the creation of all GAME_STREAM_ENUMS besides TOOLTIPS
```
</summary>
	]]

native "THEFEED_PAUSE"
    hash "0xFDB423997FA30340"
	jhash (0x4D0449C6)
	alias "0xFDB423997FA30340"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "THEFEED_REMOVE_ITEM"
    hash "0xBE4390CB40B3E627"
	jhash (0xECA8ACB9)
	arguments {
		int "notificationId",
	}
	alias "_REMOVE_NOTIFICATION"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Removes a notification instantly instead of waiting for it to disappear  
```
</summary>
	]]

native "THEFEED_RESUME"
    hash "0xE1CD1E48E025E661"
	jhash (0xD3F40140)
	alias "0xE1CD1E48E025E661"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_THEFEED_SET_ANIMPOSTFX_COLOR"
    hash "0x17430B918701C342"
	jhash (0xCF14D7F2)
	arguments {
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	alias "0x17430B918701C342"
	alias "_SET_NOTIFICATION_FLASH_COLOR"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
sets color for notification flash  
```
</summary>
	]]

native "_THEFEED_SET_ANIMPOSTFX_SOUND"
    hash "0x4A0C7C9BB10ABB36"
	jhash (0x44018EDB)
	arguments {
		BOOL "toggle",
	}
	alias "0x4A0C7C9BB10ABB36"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Requires GAME_STREAM_ENUMS.MSGTEXT. Default sounds: "DPAD_WEAPON_SCROLL" and "HUD_FRONTEND_DEFAULT_SOUNDSET"
```
</summary>
	]]

native "_THEFEED_SET_ANIMPOSTFX_COUNT"
    hash "0x17AD8C9706BDD88A"
	jhash (0x24A97AF8)
	arguments {
		int "flashCount",
	}
	alias "0x17AD8C9706BDD88A"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Related to notification color flashing, setting p0 to 0 invalidates a `_SET_NOTIFICATION_FLASH_COLOR` call for the target notification.

```
    var uVar0;
    var uVar1;
    var uVar2;
    var uVar3;
    int iVar4;
    iVar4 = 1;
    
    UI::GET_HUD_COLOUR(1, &uVar0, &uVar1, &uVar2, &uVar3);
    UI::_SET_NOTIFICATION_FLASH_COLOR(uVar0, uVar1, uVar2, uVar3);
    UI::_0x17AD8C9706BDD88A(iVar4);
    UI::_SET_NOTIFICATION_TEXT_ENTRY("RSMAN_N");
    UI::_DRAW_NOTIFICATION_2(1, 1);
```
</summary>
	]]

native "_THEFEED_SET_NEXT_POST_PERSISTENT"
    hash "0xFDEC055AB549E328"
	jhash (0xAFA1148B)
	alias "0xFDEC055AB549E328"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Requires manual management of game stream handles (e.g. _REMOVE_NOTIFICATION).

Sets CGameStreamMgr + 15417 (1604) to 1
```
</summary>
	]]

native "_THEFEED_SET_FLUSH_ANIMPOSTFX"
    hash "0xBAE4F9B97CD43B30"
	arguments {
		BOOL "toggle",
	}
	alias "0xBAE4F9B97CD43B30"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If true, remove all feed components instantly. Otherwise tween/animate close each component
```
</summary>
	]]

native "TOGGLE_STEALTH_RADAR"
    hash "0x6AFDFB93754950C7"
	jhash (0xC68D47C4)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "UNLOCK_MINIMAP_POSITION"
    hash "0x3E93E06DB8EF1F30"
	jhash (0x5E8E6F54)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "UNLOCK_MINIMAP_ANGLE"
    hash "0x8183455E16C42E3A"
	jhash (0x742043F9)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_COVER_POINT"
    hash "0xD5C12A75C7B9497F"
	jhash (0xA0AF0B98)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "ScrHandle"
	doc [[!
	]]

native "ADD_PATROL_ROUTE_LINK"
    hash "0x23083260DEC3A551"
	jhash (0xD8761BB3)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ADD_PATROL_ROUTE_NODE"
    hash "0x8EDF950167586B7C"
	jhash (0x21B48F10)
	arguments {
		int "p0",
		charPtr "p1",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:   
AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", -193.4915, -2378.864990234375, 10.9719, -193.4915, -2378.864990234375, 10.9719, 3000);  
p0 is between 0 and 4 in the scripts.  
p1 is "WORLD_HUMAN_GUARD_STAND" or "StandGuard".  
p2, p3 and p4 is only one parameter sometimes in the scripts. Most likely a Vector3 hence p2, p3 and p4 are coordinates.   
Examples:   
AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_739[7/*3*/], 0.0, 0.0, 0.0, 0);  
AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_B0[17/*44*/]._f3, l_B0[17/*44*/]._f3, 2000);  
p5, p6 and p7 are for example set to: 1599.0406494140625, 2713.392578125, 44.4309.  
p8 is an int, often random set to for example: GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000).  
```
</summary>
	]]

native "ADD_COVER_BLOCKING_AREA"
    hash "0x45C597097DD7CB81"
	jhash (0x3536946F)
	arguments {
		float "playerX",
		float "playerY",
		float "playerZ",
		float "radiusX",
		float "radiusY",
		float "radiusZ",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ADD_SCRIPT_TO_RANDOM_PED"
    hash "0x4EE5367468A65CCC"
	jhash (0xECC76C3D)
	arguments {
		charPtr "name",
		Hash "model",
		float "p2",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);  
-----  
Hardcoded to not work in Multiplayer.  
------  
Which I'm sure can easily be bypassed by nop'ing the branch preventing it from working if you are in multiplayer lol. Which would still be pointless since you don't need this to make peds do what you wish.  
```
</summary>
	]]

native "ADD_VEHICLE_SUBTASK_ATTACK_COORD"
    hash "0x5CF0D8F9BBA0DD75"
	jhash (0x50779A2C)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
x, y, z: offset in world coords from some entity.  
```
</summary>
	]]

native "ASSISTED_MOVEMENT_IS_ROUTE_LOADED"
    hash "0x60F9A4393A21F741"
	jhash (0x79B067AF)
	arguments {
		charPtr "route",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "ADD_VEHICLE_SUBTASK_ATTACK_PED"
    hash "0x85F462BADC7DA47F"
	jhash (0x80461113)
	arguments {
		Ped "ped",
		Ped "ped2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ASSISTED_MOVEMENT_REMOVE_ROUTE"
    hash "0x3548536485DD792B"
	jhash (0xB3CEC06F)
	arguments {
		charPtr "route",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME"
    hash "0x13945951E16EF912"
	jhash (0x8FB923EC)
	arguments {
		float "dist",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES"
    hash "0xD5002D78B7162E1B"
	jhash (0x01CAAFCC)
	arguments {
		charPtr "route",
		int "props",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ASSISTED_MOVEMENT_REQUEST_ROUTE"
    hash "0x817268968605947A"
	jhash (0x48262EDA)
	arguments {
		charPtr "route",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"  
```
</summary>
	]]

native "CLEAR_PED_SECONDARY_TASK"
    hash "0x176CECF6F920D707"
	jhash (0xA635F451)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK"
    hash "0xC35B5CDB2824CF69"
	jhash (0x9B76F7E6)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_TASKS"
    hash "0xE1EF3C1216AFF2CD"
	jhash (0xDE3316AB)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "CLEAR_SEQUENCE_TASK"
    hash "0x3841422E9C488D8C"
	jhash (0x47ED03CE)
	arguments {
		intPtr "taskSequenceId",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "CLEAR_PED_TASKS_IMMEDIATELY"
    hash "0xAAA34F8A7CB32098"
	jhash (0xBC045625)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Immediately stops the pedestrian from whatever it's doing. They stop fighting, animations, etc. they forget what they were doing.  
```
</summary>
	]]

native "CLOSE_SEQUENCE_TASK"
    hash "0x39E72BC99E6360CB"
	jhash (0x1A7CEBD0)
	arguments {
		int "taskSequenceId",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "CLOSE_PATROL_ROUTE"
    hash "0xB043ECA801B8CBC1"
	jhash (0x67305E59)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "CONTROL_MOUNTED_WEAPON"
    hash "0xDCFE42068FE0135A"
	jhash (0x500D9244)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Forces the ped to use the mounted weapon.  
Returns false if task is not possible.  
```
</summary>
	]]

native "CREATE_PATROL_ROUTE"
    hash "0xAF8A443CCC8018DC"
	jhash (0x0A6C7864)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "DELETE_PATROL_ROUTE"
    hash "0x7767DD9D65E91319"
	jhash (0x2A4E6706)
	arguments {
		charPtr "patrolRoute",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From the b617d scripts:  
AI::DELETE_PATROL_ROUTE("miss_merc0");  
AI::DELETE_PATROL_ROUTE("miss_merc1");  
AI::DELETE_PATROL_ROUTE("miss_merc2");  
AI::DELETE_PATROL_ROUTE("miss_dock");  
```
</summary>
	]]

native "DOES_SCENARIO_EXIST_IN_AREA"
    hash "0x5A59271FFADD33C1"
	jhash (0xFA7F5047)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "b",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "DISABLE_SCRIPT_BRAIN_SET"
    hash "0x14D8518E9760F08F"
	jhash (0xFBD13FAD)
	arguments {
		int "brainSet",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA"
    hash "0x0A9D0C2A3BBC86C1"
	jhash (0x0FB138A5)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		AnyPtr "p3",
		float "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "DOES_SCENARIO_GROUP_EXIST"
    hash "0xF9034C136C9E00D3"
	jhash (0x5F072EB9)
	arguments {
		charPtr "scenarioGroup",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Occurrences in the b617d scripts:  
"ARMY_GUARD",  
"ARMY_HELI",  
"Cinema_Downtown",  
"Cinema_Morningwood",  
"Cinema_Textile",  
"City_Banks",  
"Countryside_Banks",  
"DEALERSHIP",  
"GRAPESEED_PLANES",  
"KORTZ_SECURITY",  
"LOST_BIKERS",  
"LSA_Planes",  
"LSA_Planes",  
"MP_POLICE",  
"Observatory_Bikers",   
"POLICE_POUND1",  
"POLICE_POUND2",  
"POLICE_POUND3",  
"POLICE_POUND4",  
"POLICE_POUND5"  
"QUARRY",  
"SANDY_PLANES",  
"SCRAP_SECURITY",  
"SEW_MACHINE",  
"SOLOMON_GATE",  
"Triathlon_1_Start",   
"Triathlon_2_Start",   
"Triathlon_3_Start"  
Sometimes used with IS_SCENARIO_GROUP_ENABLED:  
if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {  
else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {  
```
</summary>
	]]

native "DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS"
    hash "0xA98B8E3C088E5A31"
	jhash (0x29F97A71)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if there is a cover point at position  
```
</summary>
	]]

native "ENABLE_SCRIPT_BRAIN_SET"
    hash "0x67AA4D73F0CFA86B"
	jhash (0x2765919F)
	arguments {
		int "brainSet",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
#4  
```
</summary>
	]]

native "GET_ACTIVE_VEHICLE_MISSION_TYPE"
    hash "0x534AEBA6E5ED4CAB"
	jhash (0xAFA914EF)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
	]]

native "GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK"
    hash "0x3A8CADC7D37AACC5"
	jhash (0x249EB4EB)
	arguments {
		int "p0",
	}
	ns "BRAIN"
	returns "charPtr"
	doc [[!
	]]

native "GET_IS_TASK_ACTIVE"
    hash "0xB0760331C7AA4155"
	jhash (0x86FDDF55)
	arguments {
		Ped "ped",
		int "taskIndex",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
from docks_heistb.c4:  
AI::GET_IS_TASK_ACTIVE(PLAYER::PLAYER_PED_ID(), 2))  
Known Tasks: pastebin.com/2gFqJ3Px  
```
</summary>
	]]

native "GET_IS_WAYPOINT_RECORDING_LOADED"
    hash "0xCB4E8BE8A0063C5D"
	jhash (0x87125F5D)
	arguments {
		charPtr "name",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
```
</summary>
	]]

native "GET_NAVMESH_ROUTE_DISTANCE_REMAINING"
    hash "0xC6F5C0BCDC74D62D"
	jhash (0xD9281778)
	arguments {
		Ped "ped",
		floatPtr "distRemaining",
		BOOLPtr "isPathReady",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.  
Return value of native is the same as GET_NAVMESH_ROUTE_RESULT  
Looks like the native returns an int for the path's state:  
1 - ???  
2   
3 - Finished Generating  
```
</summary>
	]]

native "GET_NAVMESH_ROUTE_RESULT"
    hash "0x632E831F382A0FA8"
	jhash (0x96491602)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
See GET_NAVMESH_ROUTE_DISTANCE_REMAINING for more details.  
```
</summary>
	]]

native "GET_PED_DESIRED_MOVE_BLEND_RATIO"
    hash "0x8517D4A6CA8513ED"
	jhash (0x5FEFAB72)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_PED_WAYPOINT_DISTANCE"
    hash "0xE6A877C64CAF1BC5"
	jhash (0x084B35B0)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_PHONE_GESTURE_ANIM_CURRENT_TIME"
    hash "0x47619ABE8B268C60"
	jhash (0x7B72AFD1)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_PED_WAYPOINT_PROGRESS"
    hash "0x2720AAA75001E094"
	jhash (0x3595B104)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
Returns the progress percent to current waypoint.  
```
</summary>
	]]

native "GET_SCRIPT_TASK_STATUS"
    hash "0x77F1BEB8863288D5"
	jhash (0xB2477B23)
	arguments {
		Ped "targetPed",
		Hash "taskHash",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
Gets the status of a script-assigned task. The hash does not seem to match the actual native name, but is assigned hardcoded from the executable during task creation.  
Statuses are specific to tasks, in addition '7' means the specified task is not assigned to the ped.  
A few hashes found in the executable (although not a complete list) can be found at pastebin.com/R9iK6M9W as it was too long for this wiki.  
```
</summary>
	]]

native "GET_PHONE_GESTURE_ANIM_TOTAL_TIME"
    hash "0x1EE0F68A7C25DEC6"
	jhash (0xEF8C3959)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_SCRIPTED_COVER_POINT_COORDS"
    hash "0x594A1028FC2A3E85"
	jhash (0xC6B6CCC1)
	arguments {
		ScrHandle "coverpoint",
	}
	ns "BRAIN"
	returns "Vector3"
	doc [[!
	]]

native "GET_SEQUENCE_PROGRESS"
    hash "0x00A9010CFE1E3533"
	jhash (0xA3419909)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
returned values:  
0 to 7 = task that's currently in progress, 0 meaning the first one.  
```
</summary>
	]]

native "GET_TASK_MOVE_NETWORK_EVENT"
    hash "0xB4F47213DF45A64C"
	jhash (0x72FA5EF2)
	arguments {
		Ped "ped",
		charPtr "eventName",
	}
	alias "0xB4F47213DF45A64C"
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "GET_TASK_MOVE_NETWORK_SIGNAL_BOOL"
    hash "0xA7FFBA498E4AAF67"
	jhash (0x1EBB6F3D)
	arguments {
		Ped "ped",
		charPtr "signalName",
	}
	alias "0xA7FFBA498E4AAF67"
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Found in scripts:  
if (AI::_A7FFBA498E4AAF67(l_9BC, "Run")) {  
if (AI::_A7FFBA498E4AAF67(l_9BC, "Escape")) {  
```
</summary>
	]]

native "_GET_TASK_MOVE_NETWORK_SIGNAL_FLOAT"
    hash "0x44AB0B3AFECCE242"
	arguments {
		Ped "ped",
		charPtr "signalName",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="ped">:</param>
<param name="signalName">:</param>
	]]

native "GET_TASK_MOVE_NETWORK_STATE"
    hash "0x717E4D1F2048376D"
	jhash (0x96C0277B)
	arguments {
		Ped "ped",
	}
	alias "0x717E4D1F2048376D"
	ns "BRAIN"
	returns "charPtr"
	doc [[!
<summary>
```
If the function fails, returns "Unknown".  
Could be task (sequence) name. Needs more research.  
```
</summary>
	]]

native "GET_VEHICLE_WAYPOINT_PROGRESS"
    hash "0x9824CFF8FC66E159"
	jhash (0xD3CCF64E)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_WAYPOINT_TARGET_POINT"
    hash "0x416B62AC8B9E5BBD"
	jhash (0x81049608)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
	]]

native "GET_WAYPOINT_DISTANCE_ALONG_ROUTE"
    hash "0xA5B769058763E497"
	jhash (0xE8422AC4)
	arguments {
		charPtr "p0",
		int "p1",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK"
    hash "0xA320EF046186FA3B"
	jhash (0x291E938C)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK"
    hash "0x8785E6E40C7A8818"
	jhash (0xB23F46E6)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOVE_BLEND_RATIO_SPRINTING"
    hash "0x24A2AD74FA9814E2"
	jhash (0xDD616893)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOVE_BLEND_RATIO_RUNNING"
    hash "0xD4D8636C0199A939"
	jhash (0xE76A2353)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOVE_BLEND_RATIO_STILL"
    hash "0x349CE7B56DAFD95C"
	jhash (0xE9DAF877)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE"
    hash "0xCCBA154209823057"
	jhash (0xBA4CAA56)
	arguments {
		Object "object",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_ACTIVE_IN_SCENARIO"
    hash "0xAA135F9482C82CC3"
	jhash (0x05038F1A)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOVE_BLEND_RATIO_WALKING"
    hash "0xF133BBBE91E1691F"
	jhash (0xD21639A8)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_CUFFED"
    hash "0x74E559B3BC910685"
	jhash (0x511CE741)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
l  
```
</summary>
	]]

native "IS_PED_BEING_ARRESTED"
    hash "0x90A09F3A45FED688"
	jhash (0x5FF6C2ED)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_PED_RUNNING"
    hash "0xC5286FFC176F28A2"
	jhash (0xE9A5578F)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_GETTING_UP"
    hash "0x2A74E1D5F2F00EEC"
	jhash (0x320813E6)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_RUNNING_ARREST_TASK"
    hash "0x3DC52677769B4AE0"
	jhash (0x6942DB7A)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_IN_WRITHE"
    hash "0xDEB6D52126E7D640"
	jhash (0x09E61921)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
returns true is the ped is on the ground whining like a little female dog from a gunshot wound  
```
</summary>
	]]

native "IS_PED_STILL"
    hash "0xAC29253EEF8F0180"
	jhash (0x09E3418D)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_WALKING"
    hash "0xDE4C184B2B9B071A"
	jhash (0x4B865C4A)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_SPRINTING"
    hash "0x57E457CD2C0FC168"
	jhash (0x4F3E0633)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCENARIO_GROUP_ENABLED"
    hash "0x367A09DED4E05B99"
	jhash (0x90991122)
	arguments {
		charPtr "scenarioGroup",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Occurrences in the b617d scripts:   
"ARMY_GUARD",  
"ARMY_HELI",  
"BLIMP",  
"Cinema_Downtown",  
"Cinema_Morningwood",  
"Cinema_Textile",  
"City_Banks",  
"Countryside_Banks",  
"DEALERSHIP",  
"KORTZ_SECURITY",  
"LSA_Planes",  
"MP_POLICE",  
"Observatory_Bikers",  
"POLICE_POUND1",  
"POLICE_POUND2",  
"POLICE_POUND3",  
"POLICE_POUND4",  
"POLICE_POUND5",  
"Rampage1",  
"SANDY_PLANES",  
"SCRAP_SECURITY",  
"SEW_MACHINE",  
"SOLOMON_GATE"  
		Sometimes used with DOES_SCENARIO_GROUP_EXIST:  
		if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {  
		else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {  
```
</summary>
	]]

native "IS_PED_STRAFING"
    hash "0xE45B7F222DE47E09"
	jhash (0xEFEED13C)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
What's strafing?  
```
</summary>
	]]

native "IS_SCENARIO_OCCUPIED"
    hash "0x788756D73AC2E07C"
	jhash (0x697FC008)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PLAYING_PHONE_GESTURE_ANIM"
    hash "0xB8EBB1E9D3588C10"
	jhash (0x500B6805)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_TASK_MOVE_NETWORK_ACTIVE"
    hash "0x921CE12C489C4C41"
	jhash (0x902656EB)
	arguments {
		Ped "ped",
	}
	alias "0x921CE12C489C4C41"
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCENARIO_TYPE_ENABLED"
    hash "0x3A815DB3EA088722"
	jhash (0xAE37E969)
	arguments {
		charPtr "scenarioType",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Occurrences in the b617d scripts:  
"PROP_HUMAN_SEAT_CHAIR",  
"WORLD_HUMAN_DRINKING",  
"WORLD_HUMAN_HANG_OUT_STREET",  
"WORLD_HUMAN_SMOKING",  
"WORLD_MOUNTAIN_LION_WANDER",  
"WORLD_HUMAN_DRINKING"  
Sometimes used together with GAMEPLAY::IS_STRING_NULL_OR_EMPTY in the scripts.  
scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.  
```
</summary>
	]]

native "IS_TASK_MOVE_NETWORK_READY_FOR_TRANSITION"
    hash "0x30ED88D5E0C56A37"
	jhash (0x92FDBAE6)
	arguments {
		Ped "ped",
	}
	alias "0x30ED88D5E0C56A37"
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE"
    hash "0xF5134943EA29868C"
	jhash (0x80DD15DB)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE"
    hash "0xC5042CC6F5E3D450"
	jhash (0x2CF305A0)
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Gets whether the world point the calling script is registered to is within desired range of the player.  
```
</summary>
	]]

native "IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED"
    hash "0xE03B3F2D3DC59B64"
	jhash (0x85B7725F)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "0x0B40ED49D7D6FF84"
    hash "0x0B40ED49D7D6FF84"
	jhash (0x19B27825)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "0x1F351CF1C6475734"
    hash "0x1F351CF1C6475734"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "0x4D953DF78EBF8158"
    hash "0x4D953DF78EBF8158"
	jhash (0xF3A3AB08)
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Something like flush_all_scripts   
Most of time comes after NETWORK_END_TUTORIAL_SESSION() or before TERMINATE_THIS_THREAD()  
```
</summary>
	]]

native "0x3E38E28A1D80DDF6"
    hash "0x3E38E28A1D80DDF6"
	jhash (0x54856309)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
IS_*
```
</summary>
	]]

native "0x621C6E4729388E41"
    hash "0x621C6E4729388E41"
	jhash (0xA0DA6B1D)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Used only once (am_mp_property_int)  
ped was PLAYER_PED_ID()  
```
</summary>
	]]

native "0x53DDC75BC3AC0A90"
    hash "0x53DDC75BC3AC0A90"
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
CLEAR_*

NativeDB Introduced: v1290
```
</summary>
<param name="vehicle">:</param>
	]]

native "0x6E91B04E08773030"
    hash "0x6E91B04E08773030"
	jhash (0x29CE8BAA)
	arguments {
		charPtr "action",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Looks like a cousin of above function _6D6840CEE8845831 as it was found among them. Must be similar  
Here are possible values of argument -   
"ob_tv"  
"launcher_Darts"  
```
</summary>
	]]

native "0x6D6840CEE8845831"
    hash "0x6D6840CEE8845831"
	jhash (0x949FE53E)
	arguments {
		charPtr "action",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Possible values:  
act_cinema  
am_mp_carwash_launch  
am_mp_carwash_control  
am_mp_property_ext  
chop  
fairgroundHub  
launcher_BasejumpHeli  
launcher_BasejumpPack  
launcher_CarWash  
launcher_golf  
launcher_Hunting_Ambient  
launcher_MrsPhilips  
launcher_OffroadRacing  
launcher_pilotschool  
launcher_Racing  
launcher_rampage  
launcher_rampage  
launcher_range  
launcher_stunts  
launcher_stunts  
launcher_tennis  
launcher_Tonya  
launcher_Triathlon  
launcher_Yoga  
ob_mp_bed_low  
ob_mp_bed_med  
```
</summary>
	]]

native "0x8423541E8B3A1589"
    hash "0x8423541E8B3A1589"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0x8634CEF2522D987B"
    hash "0x8634CEF2522D987B"
	arguments {
		Ped "ped",
		charPtr "p1",
		float "value",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="ped">:</param>
<param name="p1">:</param>
<param name="value">:</param>
	]]

native "0x88E32DB8C1A4AA4B"
    hash "0x88E32DB8C1A4AA4B"
	jhash (0x55E06443)
	arguments {
		Ped "ped",
		float "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
SET_PED_PATH_*  
Could be the move speed on the path. Needs testing.  
Default is 1.0 and maximum is 10.0  
```
</summary>
	]]

native "0xAB13A5565480B6D9"
    hash "0xAB13A5565480B6D9"
	jhash (0x1E58A7AD)
	arguments {
		Ped "ped",
		charPtr "p1",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
<summary>
```
Used only once in the scripts (fm_mission_controller) like so:

TASK::_0xAB13A5565480B6D9(iLocal_3160, "Cutting");

SET_*
```
</summary>
	]]

native "0xDBBC7A2432524127"
    hash "0xDBBC7A2432524127"
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
CLEAR_*

NativeDB Introduced: v1290
```
</summary>
<param name="vehicle">:</param>
	]]

native "0xFA83CA6776038F64"
    hash "0xFA83CA6776038F64"
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
REMOVE_*

NativeDB Introduced: v1493
```
</summary>
<param name="x">:</param>
<param name="y">:</param>
<param name="z">:</param>
	]]

native "OPEN_PATROL_ROUTE"
    hash "0xA36BFB5EE89F3D82"
	jhash (0xF33F83CA)
	arguments {
		charPtr "patrolRoute",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
patrolRoutes found in the b617d scripts:  
"miss_Ass0",  
"miss_Ass1",  
"miss_Ass2",  
"miss_Ass3",  
"miss_Ass4",  
"miss_Ass5",  
"miss_Ass6",  
"MISS_PATROL_6",  
"MISS_PATROL_7",  
"MISS_PATROL_8",  
"MISS_PATROL_9",  
"miss_Tower_01",  
"miss_Tower_02",  
"miss_Tower_03",  
"miss_Tower_04",  
"miss_Tower_05",  
"miss_Tower_06",  
"miss_Tower_07",  
"miss_Tower_08",  
"miss_Tower_10"  
```
</summary>
	]]

native "OPEN_SEQUENCE_TASK"
    hash "0xE8854A4326B9E12B"
	jhash (0xABA6923E)
	arguments {
		intPtr "taskSequenceId",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "PED_HAS_USE_SCENARIO_TASK"
    hash "0x295E3CCEC879CCD7"
	jhash (0x9BE9C691)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "PLAY_ANIM_ON_RUNNING_SCENARIO"
    hash "0x748040460F8DF5DC"
	jhash (0x1984A5D1)
	arguments {
		Ped "ped",
		charPtr "animDict",
		charPtr "animName",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "PLAY_ENTITY_SCRIPTED_ANIM"
    hash "0x77A1EEC547E7FCF1"
	jhash (0x02F72AE5)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		float "p4",
		float "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "REGISTER_OBJECT_SCRIPT_BRAIN"
    hash "0x0BE84C318BA6EC22"
	jhash (0xB6BCC608)
	arguments {
		charPtr "scriptName",
		Hash "modelHash",
		int "p2",
		float "activationRange",
		int "p4",
		int "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Registers a script for any object with a specific model hash.  
BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);  
```
</summary>
	]]

native "REMOVE_ALL_COVER_BLOCKING_AREAS"
    hash "0xDB6708C0B46F56D8"
	jhash (0xCF9221A7)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "REGISTER_WORLD_POINT_SCRIPT_BRAIN"
    hash "0x3CDC7136613284BD"
	jhash (0x725D91F7)
	arguments {
		AnyPtr "scriptName",
		float "activationRange",
		int "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: char* scriptName
```
</summary>
	]]

native "REMOVE_COVER_POINT"
    hash "0xAE287C923D891715"
	jhash (0x0776888B)
	arguments {
		ScrHandle "coverpoint",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "REMOVE_WAYPOINT_RECORDING"
    hash "0xFF1B8B4AA1C25DC8"
	jhash (0x624530B0)
	arguments {
		charPtr "name",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
```
</summary>
	]]

native "REQUEST_TASK_MOVE_NETWORK_STATE_TRANSITION"
    hash "0xD01015C7316AE176"
	jhash (0x885724DE)
	arguments {
		Ped "ped",
		charPtr "name",
	}
	alias "0xD01015C7316AE176"
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "REQUEST_WAYPOINT_RECORDING"
    hash "0x9EEFB62EB27B5792"
	jhash (0xAFABFB5D)
	arguments {
		charPtr "name",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
Max number of loaded recordings is 32.  
```
</summary>
	]]

native "RESET_EXCLUSIVE_SCENARIO_GROUP"
    hash "0x4202BBCB8684563D"
	jhash (0x17F9DFE8)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "RESET_SCENARIO_TYPES_ENABLED"
    hash "0x0D40EE2A7F2B2D6D"
	jhash (0xF58FDEB4)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "RESET_SCENARIO_GROUPS_ENABLED"
    hash "0xDD902D0349AFAD3A"
	jhash (0xBF55025D)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_ANIM_RATE"
    hash "0x032D49C5E359C847"
	jhash (0x6DB46584)
	arguments {
		Any "p0",
		float "p1",
		Any "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_DRIVE_TASK_CRUISE_SPEED"
    hash "0x5C9B84BD7D31D908"
	jhash (0x3CEC07B1)
	arguments {
		Ped "driver",
		float "cruiseSpeed",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_DRIVE_TASK_MAX_CRUISE_SPEED"
    hash "0x404A5AA9B9F0B746"
	jhash (0x7FDF6131)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_ANIM_LOOPED"
    hash "0x70033C3CC29A1FF4"
	jhash (0x095D61A4)
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT"
    hash "0x6C6B148586F934F7"
	jhash (0x2AFB14B8)
	arguments {
		float "height",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Birds will try to reach the given height.  
```
</summary>
	]]

native "SET_ANIM_WEIGHT"
    hash "0x207F1A47C0342F48"
	jhash (0x17229D98)
	arguments {
		Any "p0",
		float "p1",
		Any "p2",
		Any "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_HIGH_FALL_TASK"
    hash "0x8C825BDC7741D37C"
	jhash (0xBBB26172)
	arguments {
		Ped "ped",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the ped ragdoll like when falling from a great height  
```
</summary>
	]]

native "SET_NEXT_DESIRED_MOVE_STATE"
    hash "0xF1B9F16E89E2C93A"
	jhash (0x4E937D57)
	arguments {
		float "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**

```
Not used in the scripts.  
Bullshit! It's used in spawn_activities  
```
</summary>
	]]

native "SET_DRIVE_TASK_DRIVING_STYLE"
    hash "0xDACE1BE37D88AF67"
	jhash (0x59C5FAD7)
	arguments {
		Ped "ped",
		int "drivingStyle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
This native is used to set the driving style for specific ped.  
Driving styles id seems to be:  
786468  
262144  
786469  
http://gtaforums.com/topic/822314-guide-driving-styles/  
```
</summary>
	]]

native "SET_PARACHUTE_TASK_THRUST"
    hash "0x0729BAC1B8C64317"
	jhash (0xD07C8AAA)
	arguments {
		Ped "ped",
		float "thrust",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_DRIVEBY_TASK_TARGET"
    hash "0xE5B302114D8162EE"
	jhash (0xDA6A6FC1)
	arguments {
		Ped "shootingPed",
		Ped "targetPed",
		Vehicle "targetVehicle",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.  
```
</summary>
	]]

native "SET_PED_DESIRED_MOVE_BLEND_RATIO"
    hash "0x1E982AC8716912C5"
	jhash (0xC65FC712)
	arguments {
		Ped "ped",
		float "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_EXCLUSIVE_SCENARIO_GROUP"
    hash "0x535E97E1F7FC0C6A"
	jhash (0x59DB8F26)
	arguments {
		charPtr "scenarioGroup",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Groups found in the scripts used with this native:  
"AMMUNATION",  
"QUARRY",  
"Triathlon_1",  
"Triathlon_2",  
"Triathlon_3"  
```
</summary>
	]]

native "SET_PED_PATH_CAN_DROP_FROM_HEIGHT"
    hash "0xE361C5C71C431A4F"
	jhash (0x394B7AC9)
	arguments {
		Ped "ped",
		BOOL "Toggle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_MOUNTED_WEAPON_TARGET"
    hash "0xCCD892192C6D2BB9"
	jhash (0x98713C68)
	arguments {
		Ped "shootingPed",
		Ped "targetPed",
		Vehicle "targetVehicle",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.  
```

```
NativeDB Added Parameter 7: Any p6
NativeDB Added Parameter 8: Any p7
```
</summary>
	]]

native "SET_PED_PATH_CAN_USE_CLIMBOVERS"
    hash "0x8E06A6FE76C9EFF4"
	jhash (0xB7B7D442)
	arguments {
		Ped "ped",
		BOOL "Toggle",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "SET_PARACHUTE_TASK_TARGET"
    hash "0xC313379AF0FCEDA7"
	jhash (0x6ED3AD81)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATH_MAY_ENTER_WATER"
    hash "0xF35425A4204367EC"
	jhash (0x9C606EE3)
	arguments {
		Ped "ped",
		BOOL "mayEnterWater",
	}
	alias "SET_PED_PATHS_WIDTH_PLANT"
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_CAN_PLAY_AMBIENT_IDLES"
    hash "0x8FD89A6240813FD0"
	jhash (0xB5AD044E)
	arguments {
		Ped "ped",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x8FD89A6240813FD0"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Appears only in fm_mission_controller and used only 3 times.  
ped was always PLAYER_PED_ID()  
p1 was always true  
p2 was always true  
```
</summary>
	]]

native "SET_PED_PATH_PREFER_TO_AVOID_WATER"
    hash "0x38FE1EC73743793C"
	jhash (0x0EA39A29)
	arguments {
		Ped "ped",
		BOOL "avoidWater",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATH_AVOID_FIRE"
    hash "0x4455517B28441E60"
	jhash (0xDCC5B934)
	arguments {
		Ped "ped",
		BOOL "avoidFire",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_WAYPOINT_ROUTE_OFFSET"
    hash "0xED98E10B0AFCE4B4"
	jhash (0xF867F747)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "SET_PED_PATH_CAN_USE_LADDERS"
    hash "0x77A5B103C87F476E"
	jhash (0x53A879EE)
	arguments {
		Ped "ped",
		BOOL "Toggle",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "SET_SCENARIO_TYPE_ENABLED"
    hash "0xEB47EC4E34FB7EE1"
	jhash (0xDB18E5DE)
	arguments {
		charPtr "scenarioType",
		BOOL "toggle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
seems to enable/disable specific scenario-types from happening in the game world.  
Here are some scenario types from the scripts:  
"WORLD_MOUNTAIN_LION_REST"                                               
"WORLD_MOUNTAIN_LION_WANDER"                                              
"DRIVE"                                                                    
"WORLD_VEHICLE_POLICE_BIKE"                                               
"WORLD_VEHICLE_POLICE_CAR"                                               
"WORLD_VEHICLE_POLICE_NEXT_TO_CAR"                                          
"WORLD_VEHICLE_DRIVE_SOLO"                                                   
"WORLD_VEHICLE_BIKER"                                                        
"WORLD_VEHICLE_DRIVE_PASSENGERS"                                             
"WORLD_VEHICLE_SALTON_DIRT_BIKE"                                             
"WORLD_VEHICLE_BICYCLE_MOUNTAIN"                                             
"PROP_HUMAN_SEAT_CHAIR"                                               
"WORLD_VEHICLE_ATTRACTOR"                                               
"WORLD_HUMAN_LEANING"                                                   
"WORLD_HUMAN_HANG_OUT_STREET"                                          
"WORLD_HUMAN_DRINKING"                                                  
"WORLD_HUMAN_SMOKING"                                                  
"WORLD_HUMAN_GUARD_STAND"                                              
"WORLD_HUMAN_CLIPBOARD"                                                
"WORLD_HUMAN_HIKER"                                                    
"WORLD_VEHICLE_EMPTY"                                                        
"WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"                                        
"WORLD_HUMAN_PAPARAZZI"                                                 
"WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"                              
"WORLD_VEHICLE_PARK_PARALLEL"                                                
"WORLD_VEHICLE_CONSTRUCTION_SOLO"                                 
"WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"                                                                      
"WORLD_VEHICLE_TRUCK_LOGS"   
-alphazolam  
scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.  
```
</summary>
	]]

native "SET_TASK_MOVE_NETWORK_SIGNAL_BOOL"
    hash "0xB0A6CFD2C69C1088"
	jhash (0xF3538041)
	arguments {
		Ped "ped",
		charPtr "signalName",
		BOOL "value",
	}
	alias "0xB0A6CFD2C69C1088"
	alias "_SET_TASK_PROPERTY_BOOL"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Examples:  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 0);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 1);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isBlocked", sub_179027());  
```
</summary>
<param name="ped">The ped that's performing the task.</param>
<param name="signalName">The property name.</param>
<param name="value">The property value to set.</param>
	]]

native "SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT"
    hash "0xD5BB4025AE449A4E"
	jhash (0xA79BE783)
	arguments {
		Ped "ped",
		charPtr "signalName",
		float "value",
	}
	alias "0xD5BB4025AE449A4E"
	alias "_SET_TASK_PROPERTY_FLOAT"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p0 - PLAYER::PLAYER_PED_ID();  
p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".  
p2 - From what i can see it goes up to 1f (maybe).  
-LcGamingHD  
Example: AI::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);  
```
</summary>
<param name="ped">The ped on which the task is playing.</param>
<param name="signalName">The property name.</param>
<param name="value">The property value to set.</param>
	]]

native "SET_SCENARIO_GROUP_ENABLED"
    hash "0x02C8E5B49848664E"
	jhash (0x116997B1)
	arguments {
		charPtr "scenarioGroup",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Occurrences in the b617d scripts: pastebin.com/Tvg2PRHU  
```
</summary>
	]]

native "SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG"
    hash "0xCC665AAC360D31E7"
	jhash (0x2A83083F)
	arguments {
		Ped "ped",
		int "flag",
		BOOL "set",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_SEQUENCE_TO_REPEAT"
    hash "0x58C70CF3A41E4AE7"
	jhash (0xCDDF1508)
	arguments {
		int "taskSequenceId",
		BOOL "repeat",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "STOP_ANIM_PLAYBACK"
    hash "0xEE08C992D238C5D1"
	jhash (0xE5F16398)
	arguments {
		Ped "ped",
		int "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From re_drunkdriver:  
• AI::STOP_ANIM_PLAYBACK(l_5B[0/*1*/], 0, 0);  
Looks like p1 may be a flag, still need to do some research, though.  
```
</summary>
	]]

native "_SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT_2"
    hash "0x373EF409B82697A3"
	arguments {
		Ped "ped",
		charPtr "signalName",
		float "value",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="ped">:</param>
<param name="signalName">:</param>
<param name="value">:</param>
	]]

native "TASK_ACHIEVE_HEADING"
    hash "0x93B93A37987F1F3D"
	jhash (0x0A0E9B42)
	arguments {
		Ped "ped",
		float "heading",
		int "timeout",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped achieve the specified heading.  
pedHandle: The handle of the ped to assign the task to.  
heading: The desired heading.  
timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.  
```
</summary>
	]]

native "TASK_AIM_GUN_AT_COORD"
    hash "0x6671F3EEC681BDA1"
	jhash (0xFBF44AD3)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "time",
		BOOL "p5",
		BOOL "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE"
    hash "0x639B642FACBE4EDD"
	jhash (0x04FD3EE7)
	arguments {
		Ped "ped",
		float "distance",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_AIM_GUN_SCRIPTED"
    hash "0x7A192BE16D373D00"
	jhash (0x9D296BCD)
	arguments {
		Ped "ped",
		Hash "scriptTask",
		BOOL "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_ARREST_PED"
    hash "0xF3B9A78A178572B1"
	jhash (0xBC0F153D)
	arguments {
		Ped "ped",
		Ped "target",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example from "me_amanda1.ysc.c4":  
AI::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());  
Example from "armenian1.ysc.c4":  
if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {  
    AI::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID());  
}  
I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.  
Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.  
```
</summary>
	]]

native "STOP_ANIM_TASK"
    hash "0x97FF36A1D40EA00A"
	jhash (0x2B520A57)
	arguments {
		Ped "ped",
		charPtr "animDictionary",
		charPtr "animationName",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "TASK_CHAT_TO_PED"
    hash "0x8C338E0263E4FD19"
	jhash (0xA2BE1821)
	arguments {
		Ped "ped",
		Ped "target",
		Any "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p2 tend to be 16, 17 or 1  
p3 to p7 tend to be 0.0  
```
</summary>
	]]

native "_TASK_AGITATED_ACTION"
    hash "0x19D1B791CB3670FE"
	arguments {
		Ped "ped",
		Ped "ped2",
	}
	alias "0x19D1B791CB3670FE"
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_AIM_GUN_AT_ENTITY"
    hash "0x9B53BB6E8943AF53"
	jhash (0xBE32B3B6)
	arguments {
		Ped "ped",
		Entity "entity",
		int "duration",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
```
</summary>
	]]

native "TASK_CLEAR_LOOK_AT"
    hash "0x0F804F1DB19B9689"
	jhash (0x60EB4054)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Not clear what it actually does, but here's how script uses it -   
if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)   
{  
	if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID()))  
	{  
AI::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID());  
	}  
	...  
}  
Another one where it doesn't "look" at current player -   
AI::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0);  
PED::_2208438012482A1A(l_3ED, 0, 0);  
AI::TASK_CLEAR_LOOK_AT(l_3ED);  
```
</summary>
	]]

native "TASK_CLIMB"
    hash "0x89D9FCC2435112F1"
	jhash (0x90847790)
	arguments {
		Ped "ped",
		BOOL "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Climbs or vaults the nearest thing.  
```
</summary>
	]]

native "TASK_AIM_GUN_SCRIPTED_WITH_TARGET"
    hash "0x8605AF0DE8B3A5AC"
	jhash (0xFD517CE3)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_CLIMB_LADDER"
    hash "0xB6C987F9285A3814"
	jhash (0x35BB4EE0)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_BOAT_MISSION"
    hash "0x15C86013127CE63F"
	jhash (0x5865B031)
	arguments {
		Ped "pedDriver",
		Vehicle "boat",
		Any "p2",
		Any "p3",
		float "x",
		float "y",
		float "z",
		Any "p7",
		float "maxSpeed",
		int "drivingStyle",
		float "p10",
		Any "p11",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.  
Working example  
float vehicleMaxSpeed = VEHICLE::_GET_VEHICLE_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle));  
AI::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7);  
PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);  
P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation  
```
</summary>
	]]

native "TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED"
    hash "0x2BBA30B854534A0C"
	jhash (0xF127AD6A)
	arguments {
		Any "p0",
		float "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_COMBAT_PED"
    hash "0xF166E48407BAC484"
	jhash (0xCB0D8932)
	arguments {
		Ped "ped",
		Ped "targetPed",
		int "p2",
		int "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped attack the target ped.  
p2 should be 0  
p3 should be 16  
```
</summary>
	]]

native "TASK_CLEAR_DEFENSIVE_AREA"
    hash "0x95A6C46A31D1917D"
	jhash (0x7A05BF0D)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_COWER"
    hash "0x3EB1FE9E8E908E15"
	jhash (0x9CF1C19B)
	arguments {
		Ped "ped",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_COMBAT_HATED_TARGETS_AROUND_PED"
    hash "0x7BF835BB9E2698C8"
	jhash (0x2E7064E4)
	arguments {
		Ped "ped",
		float "radius",
		int "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Despite its name, it only attacks ONE hated target. The one closest hated target.  
p2 seems to be always 0  
```
</summary>
	]]

native "TASK_DRIVE_BY"
    hash "0x2F8AF0E82773A171"
	jhash (0x2B84D1C4)
	arguments {
		Ped "driverPed",
		Ped "targetPed",
		Vehicle "targetVehicle",
		float "targetX",
		float "targetY",
		float "targetZ",
		float "distanceToShoot",
		int "pedAccuracy",
		BOOL "p8",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:  
AI::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});  
Needs working example. Doesn't seem to do anything.  
I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.  
I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.  
I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.  
```
</summary>
	]]

native "TASK_COMBAT_HATED_TARGETS_IN_AREA"
    hash "0x4CF5F55DAC3280A0"
	jhash (0xDF099E18)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "radius",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Despite its name, it only attacks ONE hated target. The one closest to the specified position.  
```
</summary>
	]]

native "TASK_COMBAT_PED_TIMED"
    hash "0x944F30DCB7096BDE"
	jhash (0xF5CA2A45)
	arguments {
		Any "p0",
		Ped "ped",
		int "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_EVERYONE_LEAVE_VEHICLE"
    hash "0x7F93691AB4B92272"
	jhash (0xC1971F30)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_EXIT_COVER"
    hash "0x79B258E397854D29"
	jhash (0xC829FAC9)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_ENTER_VEHICLE"
    hash "0xC20E50AA46D09CA8"
	jhash (0xB8689B4E)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "timeout",
		int "seat",
		float "speed",
		int "flag",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
speed 1.0 = walk, 2.0 = run  
p5 1 = normal, 3 = teleport to vehicle, 16 = teleport directly into vehicle  
p6 is always 0  
Usage of seat   
-1 = driver  
0 = passenger  
1 = left back seat  
2 = right back seat  
3 = outside left  
4 = outside right  
```
</summary>
	]]

native "TASK_FLUSH_ROUTE"
    hash "0x841142A1376E9006"
	jhash (0x34219154)
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
MulleKD19: Clears the current point route. Call this before TASK_EXTEND_ROUTE and TASK_FOLLOW_POINT_ROUTE.  
```
</summary>
	]]

native "TASK_EXTEND_ROUTE"
    hash "0x1E7889778264843A"
	jhash (0x43271F69)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
MulleKD19: Adds a new point to the current point route. Call TASK_FLUSH_ROUTE before the first call to this. Call TASK_FOLLOW_POINT_ROUTE to make the Ped go the route.  
A maximum of 8 points can be added.  
```
</summary>
	]]

native "TASK_FOLLOW_NAV_MESH_TO_COORD"
    hash "0x15D3A79D4E44B913"
	jhash (0xFE4A10D9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "timeout",
		float "stoppingRange",
		BOOL "persistFollowing",
		float "unk",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
If no timeout, set timeout to -1.  
```
</summary>
	]]

native "TASK_FOLLOW_POINT_ROUTE"
    hash "0x595583281858626E"
	jhash (0xB837C816)
	arguments {
		Ped "ped",
		float "speed",
		int "unknown",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
MulleKD19: Makes the ped go on the created point route.  
ped: The ped to give the task to.  
speed: The speed to move at in m/s.  
int: Unknown. Can be 0, 1, 2 or 3.  
Example:  
TASK_FLUSH_ROUTE();  
TASK_EXTEND_ROUTE(0f, 0f, 70f);  
TASK_EXTEND_ROUTE(10f, 0f, 70f);  
TASK_EXTEND_ROUTE(10f, 10f, 70f);  
TASK_FOLLOW_POINT_ROUTE(GET_PLAYER_PED(), 1f, 0);  
```
</summary>
	]]

native "TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED"
    hash "0x17F58B88D085DBAC"
	jhash (0x6BF6E296)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "timeout",
		float "unkFloat",
		int "unkInt",
		float "unkX",
		float "unkY",
		float "unkZ",
		float "unk_40000f",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_FOLLOW_TO_OFFSET_OF_ENTITY"
    hash "0x304AE42E357B8C7E"
	jhash (0x2DF5A6AC)
	arguments {
		Ped "ped",
		Entity "entity",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "movementSpeed",
		int "timeout",
		float "stoppingRange",
		BOOL "persistFollowing",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p6 always -1  
p7 always 10.0  
p8 always 1  
```
</summary>
	]]

native "TASK_FORCE_MOTION_STATE"
    hash "0x4F056E1AFFEF17AB"
	jhash (0xCAD2EF77)
	arguments {
		Ped "ped",
		Hash "state",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p2 always false  
[30/03/2017] ins1de :  
See dev-c.com/nativedb/func/info/f28965d04f570dca  
```
</summary>
	]]

native "TASK_FOLLOW_WAYPOINT_RECORDING"
    hash "0x0759591819534F7B"
	jhash (0xADF9904D)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GET_OFF_BOAT"
    hash "0x9C00E77AF14B2DFF"
	jhash (0x4293601F)
	arguments {
		Ped "ped",
		Vehicle "boat",
	}
	alias "_TASK_GET_OFF_BOAT"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Jenkins of this native is 0x4293601F. This is the actual name.  
```
</summary>
	]]

native "TASK_GO_STRAIGHT_TO_COORD"
    hash "0xD76B57B44F1E6F8B"
	jhash (0x80A9E7A7)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "timeout",
		float "targetHeading",
		float "distanceToSlide",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY"
    hash "0x61E360B7E040D12E"
	jhash (0xD26CAC68)
	arguments {
		Entity "entity1",
		Entity "entity2",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD"
    hash "0xA55547801EB331FC"
	jhash (0x3F91358E)
	arguments {
		Ped "pedHandle",
		float "goToLocationX",
		float "goToLocationY",
		float "goToLocationZ",
		float "focusLocationX",
		float "focusLocationY",
		float "focusLocationZ",
		float "speed",
		BOOL "shootAtEnemies",
		float "distanceToStopAt",
		float "noRoadsDistance",
		BOOL "unkTrue",
		int "unkFlag",
		int "aimingFlag",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.  
If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.  
If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.  
The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.  
I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.  
I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.  
Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.  
The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).  
Example:  
enum AimFlag  
{  
   AimAtFocusLocation,  
   AimAtGoToLocation  
};  
Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.  
Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.  
Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground  
// 1st example  
AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f /*run*/, true /*shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtGoToLocation, -957453492 /*FullAuto pattern*/);  
// 2nd example  
AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f /*walk*/, false /*don't shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtFocusLocation, -957453492 /*FullAuto pattern*/);  
1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.  
2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.  
```
</summary>
	]]

native "TASK_GO_TO_COORD_ANY_MEANS"
    hash "0x5BC448CB78FA3E88"
	jhash (0xF91DF93B)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p5",
		BOOL "p6",
		int "walkingStyle",
		float "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
example from fm_mission_controller  
AI::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);  
```
</summary>
	]]

native "TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED"
    hash "0xB8ECD61F531A7B02"
	jhash (0x86DC03F9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p5",
		BOOL "p6",
		int "walkingStyle",
		float "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 14: Any p13
```
</summary>
	]]

native "TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS"
    hash "0x1DD45F9ECFDB1BC9"
	jhash (0x094B75EF)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p5",
		BOOL "p6",
		int "walkingStyle",
		float "p8",
		Any "p9",
		Any "p10",
		Any "p11",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 13: Any p12
```
</summary>
	]]

native "TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD"
    hash "0x11315AB3385B8AC0"
	jhash (0x1552DC91)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "aimAtX",
		float "aimAtY",
		float "aimAtZ",
		float "moveSpeed",
		BOOL "p8",
		float "p9",
		float "p10",
		BOOL "p11",
		Any "flags",
		BOOL "p13",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
movement_speed: mostly 2f, but also 1/1.2f, etc.  
p8: always false  
p9: 2f  
p10: 0.5f  
p11: true  
p12: 0 / 512 / 513, etc.  
p13: 0  
firing_pattern: ${firing_pattern_full_auto}, 0xC6EE6B4C  
```
</summary>
	]]

native "TASK_GO_TO_ENTITY"
    hash "0x6A071245EB0D1882"
	jhash (0x374827C2)
	arguments {
		Entity "entity",
		Entity "target",
		int "duration",
		float "distance",
		float "speed",
		float "p5",
		int "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0  
Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.  
Example: AI::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)  
Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).  
```
</summary>
	]]

native "TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD"
    hash "0x04701832B739DCE5"
	jhash (0xD896CD82)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		float "p7",
		float "p8",
		BOOL "p9",
		BOOL "p10",
		Any "p11",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY"
    hash "0xB2A16444EAD9AE47"
	jhash (0x9BD52ABD)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
		float "p5",
		BOOL "p6",
		float "p7",
		float "p8",
		BOOL "p9",
		Any "p10",
		BOOL "p11",
		Any "p12",
		Any "p13",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GOTO_ENTITY_AIMING"
    hash "0xA9DA48FAB8A76C12"
	jhash (0xF1C493CF)
	arguments {
		Ped "ped",
		Entity "target",
		float "distanceToStopAt",
		float "StartAimingDist",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
eg  
AI::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);  
		ped = Ped you want to perform this task.  
		target = the Entity they should aim at.  
		distanceToStopAt = distance from the target, where the ped should stop to aim.  
		StartAimingDist = distance where the ped should start to aim.  
```
</summary>
	]]

native "TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY"
    hash "0x97465886D35210E9"
	jhash (0x68E36B7A)
	arguments {
		Ped "ped",
		Entity "entityToWalkTo",
		Entity "entityToAimAt",
		float "speed",
		BOOL "shootatEntity",
		float "p5",
		float "p6",
		BOOL "p7",
		BOOL "p8",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
shootatEntity:  
If true, peds will shoot at Entity till it is dead.  
If false, peds will just walk till they reach the entity and will cease shooting.  
```
</summary>
	]]

native "TASK_GUARD_ASSIGNED_DEFENSIVE_AREA"
    hash "0xD2A207EEBDF9889B"
	jhash (0x7AF0133D)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GOTO_ENTITY_OFFSET"
    hash "0xE39B4FF4FDEBDE27"
	jhash (0x1A17A85E)
	arguments {
		Ped "ped",
		Any "p1",
		Any "p2",
		float "x",
		float "y",
		float "z",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GUARD_SPHERE_DEFENSIVE_AREA"
    hash "0xC946FE14BE0EB5E2"
	jhash (0x86B76CB7)
	arguments {
		Ped "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p0 - Guessing PedID  
p1, p2, p3 - XYZ?  
p4 - ???  
p5 - Maybe the size of sphere from XYZ?  
p6 - ???  
p7, p8, p9 - XYZ again?  
p10 - Maybe the size of sphere from second XYZ?  
```
</summary>
	]]

native "TASK_GOTO_ENTITY_OFFSET_XY"
    hash "0x338E7EF52B6095A9"
	jhash (0xBC1E3D0A)
	arguments {
		Ped "ped",
		Entity "entity",
		int "duration",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "moveBlendRatio",
		BOOL "useNavmesh",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_HANDS_UP"
    hash "0xF2EAB31979A7F910"
	jhash (0x8DCC19C5)
	arguments {
		Ped "ped",
		int "duration",
		Ped "facingPed",
		int "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
In the scripts, p3 was always -1.  
p3 seems to be duration or timeout of turn animation.  
Also facingPed can be 0 or -1 so ped will just raise hands up.  
```
</summary>
	]]

native "TASK_GUARD_CURRENT_POSITION"
    hash "0x4A58A47A72E3FCB4"
	jhash (0x2FB099E9)
	arguments {
		Ped "p0",
		float "p1",
		float "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From re_prisonvanbreak:  
AI::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);  
```
</summary>
	]]

native "TASK_HELI_MISSION"
    hash "0xDAD029E187A2BEB4"
	jhash (0x0C143E97)
	arguments {
		Ped "pilot",
		Vehicle "aircraft",
		Vehicle "targetVehicle",
		Ped "targetPed",
		float "destinationX",
		float "destinationY",
		float "destinationZ",
		int "missionFlag",
		float "maxSpeed",
		float "landingRadius",
		float "targetHeading",
		int "unk1",
		int "unk2",
		Hash "unk3",
		int "landingFlags",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
EDITED (8/16/2017)  
DESCRIPTION:  
Allow a ped to fly to a specific destination.  
USAGE:  
-- REQUIRED --  
• pilot = The ped flying the aircraft.  
• aircraft = The aircraft the pilot is flying.  
-- OPTIONAL -- [atleast 1 must be assigned]  
• targetVehicle = The vehicle the pilot will target.  
• targetPed = The ped the pilot will target.  
• destinationX, destinationY, destinationZ = The location the pilot will target.  
-- LOGIC --  
• missionFlag = The type of mission.  
• maxSpeed = The speed in mph that the pilot will limit his/her self to while flying.  
• landingRadius = The distance from the destination that the pilot must be to land.  
• targetHeading = The heading that the pilot will try to achieve while flying.  
• unk1, unk2 = Set to -1 and it will be okay.  
• unk3 = I'm almost sure this is a vehicle record/waypoint recording hash. A value of -1 is for none. Maybe it's a float? Idk.  
• landingFlags = Bit flags used for landing. All I know is:  
0 = Hover over the destination.  
32 = Land on destination.  
1024 = Erratic, crash into nearby obstacles.  
4096 = Rushed movement + Hover over destination  
Known Mission Types:  
4 = FlyToCoord  
8 = FleeFromPed  
9 = CircleAroundTarget  
10 = CopyTargetHeading  
20 = LandNearPed  
21 = Crash  
Example C#:  
Function.Call(Hash.TASK_HELI_MISSION, driver, heli, 0, 0, position.X, position.Y, position.Z, 4, 50.0, 10.0, (position - heli.Position).ToHeading(), -1, -1, -1, 32);  
OLD USAGE: pastebin.com/ndkSjaaW  
```
</summary>
	]]

native "TASK_HELI_CHASE"
    hash "0xAC83B1DB38D0ADA0"
	jhash (0xAC290A21)
	arguments {
		Ped "pilot",
		Entity "entityToFollow",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Ped pilot should be in a heli.  
EntityToFollow can be a vehicle or Ped.  
x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)  
NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.  
```
</summary>
	]]

native "_TASK_HELI_ESCORT_HELI"
    hash "0xB385523325077210"
	arguments {
		Ped "pilot",
		Vehicle "heli1",
		Vehicle "heli2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="pilot">:</param>
<param name="heli1">:</param>
<param name="heli2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
	]]

native "TASK_JUMP"
    hash "0x0AE4086104E067B1"
	jhash (0x0356E3CE)
	arguments {
		Ped "ped",
		BOOL "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).  
v350: Ped ped, bool unused  
v678: Ped ped, bool unused, bool flag1, bool flag2  
flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.  
```

```
NativeDB Added Parameter 3: Any p2
NativeDB Added Parameter 4: Any p3
```
</summary>
	]]

native "TASK_LEAVE_VEHICLE"
    hash "0xD3DBCE61A490BE02"
	jhash (0x7B1141C6)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "flags",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Flags from decompiled scripts:  
0 = normal exit and closes door.  
1 = normal exit and closes door.  
16 = teleports outside, door kept closed.  
64 = normal exit and closes door, maybe a bit slower animation than 0.  
256 = normal exit but does not close the door.  
4160 = ped is throwing himself out, even when the vehicle is still.  
262144 = ped moves to passenger seat first, then exits normally  
Others to be tried out: 320, 512, 131072.  
```
</summary>
	]]

native "TASK_LEAVE_ANY_VEHICLE"
    hash "0x504D54DF3F6F2247"
	jhash (0xDBDD79FA)
	arguments {
		Ped "ped",
		int "p1",
		int "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_LOOK_AT_COORD"
    hash "0x6FA46612594F7973"
	jhash (0x7B784DD8)
	arguments {
		Entity "entity",
		float "x",
		float "y",
		float "z",
		float "duration",
		Any "p5",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p5 = 0, p6 = 2  
```
</summary>
	]]

native "TASK_LOOK_AT_ENTITY"
    hash "0x69F4BE8C8CC4796C"
	jhash (0x991D6619)
	arguments {
		Ped "ped",
		Entity "lookAt",
		int "duration",
		int "unknown1",
		int "unknown2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
param3: duration in ms, use -1 to look forever  
param4: using 2048 is fine  
param5: using 3 is fine  
```
</summary>
	]]

native "TASK_MOVE_NETWORK_BY_NAME"
    hash "0x2D537BA194896636"
	jhash (0x6F5D215F)
	arguments {
		Ped "ped",
		charPtr "task",
		float "multiplier",
		BOOL "p3",
		charPtr "animDict",
		int "flags",
	}
	alias "0x2D537BA194896636"
	alias "_TASK_MOVE_NETWORK"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:  
AI::_2D537BA194896636(PLAYER::PLAYER_PED_ID(), "arm_wrestling_sweep_paired_a_rev3", 0.0, 1, "mini@arm_wrestling", 0);  
```
</summary>
	]]

native "_TASK_MOVE_NETWORK_SCRIPTED"
    hash "0x3D45B0B355C5E0C9"
	arguments {
		Ped "ped",
		charPtr "p1",
		AnyPtr "data",
		float "p3",
		BOOL "p4",
		charPtr "animDict",
		int "flags",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Used only once in the scripts (am_mp_nightclub)

NativeDB Introduced: v1493
```
</summary>
<param name="ped">:</param>
<param name="p1">:</param>
<param name="data">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="animDict">:</param>
<param name="flags">:</param>
	]]

native "TASK_MOVE_NETWORK_ADVANCED_BY_NAME"
    hash "0xD5B35BEA41919ACB"
	jhash (0x71A5C5DB)
	arguments {
		Ped "ped",
		charPtr "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		Any "p8",
		float "p9",
		BOOL "p10",
		charPtr "animDict",
		int "flags",
	}
	alias "0xD5B35BEA41919ACB"
	alias "_TASK_MOVE_NETWORK_ADVANCED"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:  
AI::_D5B35BEA41919ACB(PLAYER::PLAYER_PED_ID(), "minigame_tattoo_michael_parts", 324.13, 181.29, 102.6, 0.0, 0.0, 22.32, 2, 0, 0, 0, 0);  
```
</summary>
	]]

native "TASK_OPEN_VEHICLE_DOOR"
    hash "0x965791A9A488A062"
	jhash (0x8EE06BF4)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "timeOut",
		int "doorIndex",
		float "speed",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PARACHUTE"
    hash "0xD2F1C53C97EE81AB"
	jhash (0xEC3060A2)
	arguments {
		Ped "ped",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
This function has a third parameter as well (bool).  
Second parameter is unused.  
seconds parameter was for jetpack in the early stages of gta and the hard coded code is now removed  
```

```
NativeDB Added Parameter 3: BOOL p2
```
</summary>
	]]

native "TASK_PARACHUTE_TO_TARGET"
    hash "0xB33E291AFA6BD03A"
	jhash (0xE0104D6C)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED  
```
</summary>
	]]

native "TASK_PATROL"
    hash "0xBDA5DF49D080FE4E"
	jhash (0xB92E5AF6)
	arguments {
		Ped "ped",
		charPtr "p1",
		Any "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:  
"miss_Tower_01" (this went from 01 - 10)  
"miss_Ass0" (0, 4, 6, 3)  
"MISS_PATROL_8"  
I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.  
As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach.   
From the scripts  
    AI::OPEN_PATROL_ROUTE("miss_Ass0");  
    AI::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/*3*/], -139.4076690673828, -993.4732055664062, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
    AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/*3*/], -116.1391830444336, -987.4984130859375, 26.38541030883789, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
    AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/*3*/], -128.46847534179688, -979.0340576171875, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
    AI::ADD_PATROL_ROUTE_LINK(0, 1);  
    AI::ADD_PATROL_ROUTE_LINK(1, 2);  
    AI::ADD_PATROL_ROUTE_LINK(2, 0);  
    AI::CLOSE_PATROL_ROUTE();  
    AI::CREATE_PATROL_ROUTE();  
```
</summary>
	]]

native "TASK_PAUSE"
    hash "0xE73A266DB0CA9042"
	jhash (0x17A64668)
	arguments {
		Ped "ped",
		int "ms",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Stand still (?)  
```
</summary>
	]]

native "TASK_PED_SLIDE_TO_COORD"
    hash "0xD04FE6765D990A06"
	jhash (0x225380EF)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
		float "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PED_SLIDE_TO_COORD_HDG_RATE"
    hash "0x5A4A6A6D3DC64F52"
	jhash (0x38A995C1)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
		float "p5",
		float "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PERFORM_SEQUENCE"
    hash "0x5ABA3986D90D8A3B"
	jhash (0x4D9FBD11)
	arguments {
		Ped "ped",
		int "taskSequenceId",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "TASK_PERFORM_SEQUENCE_FROM_PROGRESS"
    hash "0x89221B16730234F0"
	jhash (0xFA60601B)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "_TASK_PERFORM_SEQUENCE_LOCALLY"
    hash "0x8C33220C8D78CA0D"
	arguments {
		Ped "ped",
		int "taskSequenceId",
	}
	alias "0x8C33220C8D78CA0D"
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PLANE_CHASE"
    hash "0x2D2386F273FF7A25"
	jhash (0x12FA1C28)
	arguments {
		Ped "pilot",
		Entity "entityToFollow",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PLANE_LAND"
    hash "0xBF19721FA34D32C0"
	jhash (0x5F7E23EA)
	arguments {
		Ped "pilot",
		Vehicle "plane",
		float "runwayStartX",
		float "runwayStartY",
		float "runwayStartZ",
		float "runwayEndX",
		float "runwayEndY",
		float "runwayEndZ",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Function.Call(Hash.TASK_PLANE_LAND, pilot, selectedAirplane, runwayStartPoint.X, runwayStartPoint.Y, runwayStartPoint.Z, runwayEndPoint.X, runwayEndPoint.Y, runwayEndPoint.Z);  
```
</summary>
	]]

native "_TASK_PLANE_GOTO_PRECISE_VTOL"
    hash "0xF7F9DCCA89E7505B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
<param name="p6">:</param>
<param name="p7">:</param>
<param name="p8">:</param>
<param name="p9">:</param>
	]]

native "TASK_PLANE_MISSION"
    hash "0x23703CD154E83B88"
	jhash (0x1D007E65)
	arguments {
		Ped "pilot",
		Vehicle "aircraft",
		Vehicle "targetVehicle",
		Ped "targetPed",
		float "destinationX",
		float "destinationY",
		float "destinationZ",
		int "missionFlag",
		float "angularDrag",
		float "unk",
		float "targetHeading",
		float "maxZ",
		float "minZ",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
EDITED (7/13/2017)  
NOTE: If you want air combat, AI::TASK_COMBAT_PED (while your pilot is in an aircraft) also does the same thing as this native.  
DESCRIPTION:  
Ever wish your buddy could shoot down one of your enemies for you? Ever wanted an auto-pilot? Well look no further! This is the native for you! (Ped intelligence may vary)  
USAGE:  
-- REQUIRED --  
• pilot = The ped flying the aircraft.  
• aircraft = The aircraft the pilot is flying  
-- OPTIONAL -- [atleast 1 must be assigned]  
• targetVehicle = The vehicle the pilot will target.  
• targetPed = The ped the pilot will target.  
• destinationX, destinationY, destinationZ = The location the pilot will target.  
-- LOGIC --  
• missionFlag = The type of mission. pastebin.com/R8x73dbv  
• angularDrag = The higher the value, the slower the plane will rotate. Value ranges from 0 - Infinity.  
• unk = Set to 0, and you'll be fine.  
• targetHeading = The target angle (from world space north) that the pilot will try to acheive before executing an attack/landing.  
• maxZ = Maximum Z coordinate height for flying.  
• minZ = Minimum Z coordinate height for flying.  
Z: 2,700 is the default max height a pilot will be able to fly. Anything greater and he will fly downward until reaching 2,700 again.  
Mission Types (incase you don't like links..):  
0 = None  
1 = Unk  
2 = CTaskVehicleRam  
3 = CTaskVehicleBlock  
4 = CTaskVehicleGoToPlane  
5 = CTaskVehicleStop  
6 = CTaskVehicleAttack  
7 = CTaskVehicleFollow  
8 = CTaskVehicleFleeAirborne  
9 = CTaskVehicleCircle  
10 = CTaskVehicleEscort  
15 = CTaskVehicleFollowRecording  
16 = CTaskVehiclePoliceBehaviour  
17 = CTaskVehicleCrash  
Example C#:  
Function.Call(Hash.TASK_PLANE_MISSION, pilot, vehicle, 0, Game.Player.Character, 0, 0, 0, 6, 0f, 0f, 0f, 2500.0f, -1500f);  
Example C++  
AI::TASK_PLANE_MISSION(pilot, vehicle, 0, PLAYER::GET_PLAYER_PED(PLAYER::GET_PLAYER_INDEX()), 0, 0, 0, 6, 0.0, 0.0, 0.0, 2500.0, -1500.0);  
[DEPRECATED] EXAMPLE USAGE:  
pastebin.com/gx7Finsk  
```

```
NativeDB Added Parameter 14: Any p13
```
</summary>
	]]

native "TASK_PLANT_BOMB"
    hash "0x965FEC691D55E9BF"
	jhash (0x33457535)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "_TASK_PLANE_TAXI"
    hash "0x92C360B5F15D2302"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	alias "0x92C360B5F15D2302"
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PLAY_ANIM_ADVANCED"
    hash "0x83CDB10EA29B370B"
	jhash (0x3DDEB0E6)
	arguments {
		Ped "ped",
		charPtr "animDict",
		charPtr "animName",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "speed",
		float "speedMultiplier",
		int "duration",
		Any "flag",
		float "animTime",
		Any "p14",
		Any "p15",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position). animTime is a float from 0.0 -> 1.0, lets you start an animation from given point. The rest as in AI::TASK_PLAY_ANIM.   
Rotation information : rotX and rotY don't seem to have any effect, only rotZ works.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "TASK_PLAY_ANIM"
    hash "0xEA47FE3719165B94"
	jhash (0x5AB552C6)
	arguments {
		Ped "ped",
		charPtr "animDictionary",
		charPtr "animationName",
		float "blendInSpeed",
		float "blendOutSpeed",
		int "duration",
		int "flag",
		float "playbackRate",
		BOOL "lockX",
		BOOL "lockY",
		BOOL "lockZ",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
float blendInSpeed > normal speed is 8.0f
----------------------  
float blendOutSpeed > normal speed is 8.0f
----------------------  
int duration: time in millisecond  
----------------------  
-1 _ _ _ _ _ _ _> Default (see flag)  
0 _ _ _ _ _ _ _ > Not play at all  
Small value _ _ > Slow down animation speed  
Other _ _ _ _ _ > freeze player control until specific time (ms) has   
_ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be   
_ _ _ _ _ _ _ _ _ controllable.)  
int flag:  
----------------------  
enum eAnimationFlags  
{  
 ANIM_FLAG_NORMAL = 0,  
   ANIM_FLAG_REPEAT = 1,  
   ANIM_FLAG_STOP_LAST_FRAME = 2,  
   ANIM_FLAG_UPPERBODY = 16,  
   ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,  
   ANIM_FLAG_CANCELABLE = 120,  
};  
Odd number : loop infinitely  
Even number : Freeze at last frame  
Multiple of 4: Freeze at last frame but controllable  
01 to 15 > Full body  
10 to 31 > Upper body  
32 to 47 > Full body > Controllable  
48 to 63 > Upper body > Controllable  
...  
001 to 255 > Normal  
256 to 511 > Garbled  
...  
playbackRate:  
values are between 0.0 and 1.0  
lockX:    
0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3  
> 1 for mini@sprunk  
lockY:  
0 in most cases   
1 for missfam5_yoga, missfra1mcs_2_crew_react  
lockZ:   
    0 for single player   
    Can be 1 but only for MP  
```
</summary>
	]]

native "TASK_PLAY_PHONE_GESTURE_ANIMATION"
    hash "0x8FBB6758B3B3E9EC"
	jhash (0x1582162C)
	arguments {
		Ped "ped",
		charPtr "animDict",
		charPtr "animation",
		charPtr "boneMaskType",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example from the scripts:  
AI::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);  
=========================================================  
^^ No offense, but Idk how that would really help anyone.  
As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.  
Known boneMaskTypes'  
"BONEMASK_HEADONLY"  
"BONEMASK_HEAD_NECK_AND_ARMS"  
"BONEMASK_HEAD_NECK_AND_L_ARM"  
"BONEMASK_HEAD_NECK_AND_R_ARM"  
p4 known args - 0.0f, 0.5f, 0.25f  
p5 known args - 0.0f, 0.25f  
p6 known args - 1 if a global if check is passed.  
p7 known args - 1 if a global if check is passed.  
The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode).  
=========================================================  
```
</summary>
	]]

native "TASK_PUT_PED_DIRECTLY_INTO_COVER"
    hash "0x4172393E6BE1FECE"
	jhash (0xC9F00E68)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		Any "timeout",
		BOOL "p5",
		float "p6",
		BOOL "p7",
		BOOL "p8",
		Any "p9",
		BOOL "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_RAPPEL_FROM_HELI"
    hash "0x09693B0312F91649"
	jhash (0x2C7ADB93)
	arguments {
		Ped "ped",
		int "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Only appears twice in the scripts.  
AI::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000);  
AI::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);  
Fixed, definitely not a float and since it's such a big number obviously not a bool. All though note when I thought it was a bool and set it to 1 it seemed to work that same as int 0x41200000.  
0x41200000 = 10.0 as float.  
Not all helicopters support rappelling.  
```

```
NativeDB Parameter 1: float unused
```
</summary>
	]]

native "TASK_PUT_PED_DIRECTLY_INTO_MELEE"
    hash "0x1C6CD14A876FFE39"
	jhash (0x79E1D27D)
	arguments {
		Ped "ped",
		Ped "meleeTarget",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
from armenian3.c4  
AI::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);  
```
</summary>
	]]

native "TASK_REACT_AND_FLEE_PED"
    hash "0x72C896464915D1B1"
	jhash (0x8A632BD8)
	arguments {
		Ped "ped",
		Ped "fleeTarget",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_RELOAD_WEAPON"
    hash "0x62D2916F56B9CD2D"
	jhash (0xCA6E91FD)
	arguments {
		Ped "ped",
		BOOL "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
The 2nd param (unused) is not implemented.  
-----------------------------------------------------------------------  
The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):  
            if (((v_3 < v_4) && (AI::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {  
                AI::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);  
            }  
```
</summary>
	]]

native "TASK_SEEK_COVER_FROM_PED"
    hash "0x84D32B3BEC531324"
	jhash (0xC1EC907E)
	arguments {
		Ped "ped",
		Ped "target",
		int "duration",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SCRIPTED_ANIMATION"
    hash "0x126EF75F1E17ABE5"
	jhash (0xFC2DCF47)
	arguments {
		Ped "ped",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		float "p4",
		float "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From fm_mission_controller.c:  
reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);  
	vVar28 = {0.094f, 0.02f, -0.005f};  
	vVar29 = {-92.24f, 63.64f, 150.24f};  
	func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);  
	set_entity_lod_dist(net_to_ent(uVar30), 500);  
	attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);  
	Var31.imm_4 = 1065353216;  
	Var31.imm_5 = 1065353216;  
	Var31.imm_9 = 1065353216;  
	Var31.imm_10 = 1065353216;  
	Var31.imm_14 = 1065353216;  
	Var31.imm_15 = 1065353216;  
	Var31.imm_17 = 1040187392;  
	Var31.imm_18 = 1040187392;  
	Var31.imm_19 = -1;  
	Var32.imm_4 = 1065353216;  
	Var32.imm_5 = 1065353216;  
	Var32.imm_9 = 1065353216;  
	Var32.imm_10 = 1065353216;  
	Var32.imm_14 = 1065353216;  
	Var32.imm_15 = 1065353216;  
	Var32.imm_17 = 1040187392;  
	Var32.imm_18 = 1040187392;  
	Var32.imm_19 = -1;  
	Var31 = 1;  
	Var31.imm_1 = "weapons@misc@jerrycan@mp_male";  
	Var31.imm_2 = "idle";  
	Var31.imm_20 = 1048633;  
	Var31.imm_4 = 0.5f;  
	Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");  
	task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);  
	set_model_as_no_longer_needed(joaat("prop_ld_case_01"));  
	remove_anim_dict("anim@heists@biolab@");  
```
</summary>
	]]

native "TASK_SEEK_COVER_TO_COORDS"
    hash "0x39246A6958EF072C"
	jhash (0xFFFE754E)
	arguments {
		Ped "ped",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		Any "p7",
		BOOL "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
from michael2:  
AI::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);  
appears to be shorter variation  
from michael3:  
AI::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);  
```
</summary>
	]]

native "TASK_SEEK_COVER_FROM_POS"
    hash "0x75AC2B60386D89F2"
	jhash (0x83F18EE9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "duration",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS"
    hash "0x90D2156198831D69"
	jhash (0x1B54FB6B)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
I cant believe I have to define this, this is one of the best natives.  
It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.  
Since it is a task, every time the native is called the ped will stop for a moment.  
```
</summary>
	]]

native "TASK_SEEK_COVER_TO_COVER_POINT"
    hash "0xD43D95C7A869447F"
	jhash (0x3D026B29)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
		BOOL "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SET_SPHERE_DEFENSIVE_AREA"
    hash "0x933C06518B52A9A4"
	jhash (0x9F3C5D6A)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SET_DECISION_MAKER"
    hash "0xEB8517DDA73720DA"
	jhash (0x830AD50C)
	arguments {
		Ped "ped",
		Hash "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used  
```
</summary>
	]]

native "TASK_SHOCKING_EVENT_REACT"
    hash "0x452419CBD838065B"
	jhash (0x9BD00ACF)
	arguments {
		Ped "ped",
		int "eventHandle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SHOOT_AT_COORD"
    hash "0x46A6CC01E0826106"
	jhash (0x601C22E3)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "duration",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SHOOT_AT_ENTITY"
    hash "0x08DA95E8298AE772"
	jhash (0xAC0631C9)
	arguments {
		Entity "entity",
		Entity "target",
		int "duration",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
//this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds  
Entity aimedentity;  
Player player = PLAYER::PLAYER_ID();  
PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);  
//bg is an array of peds  
AI::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, GAMEPLAY::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));  
in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.  
```
</summary>
	]]

native "TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT"
    hash "0x7AA80209BDA643EB"
	jhash (0xBEAF8F67)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped shuffle to the next vehicle seat.  
The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.  
```

```
NativeDB Added Parameter 3: Any p2
```
</summary>
	]]

native "TASK_SKY_DIVE"
    hash "0x601736CFE536B0A0"
	jhash (0xD3874AFA)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 2: BOOL p1
```
</summary>
	]]

native "TASK_SMART_FLEE_PED"
    hash "0x22B0D0E37CCB840D"
	jhash (0xE52EB560)
	arguments {
		Ped "ped",
		Ped "fleeTarget",
		float "distance",
		Any "fleeTime",
		BOOL "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes a ped run away from another ped (fleeTarget).  
distance = ped will flee this distance.  
fleeTime = ped will flee for this amount of time, set to "-1" to flee forever  
```
</summary>
	]]

native "TASK_SMART_FLEE_COORD"
    hash "0x94587F17E9C365D5"
	jhash (0xB2E686FC)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "distance",
		int "time",
		BOOL "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped flee the specified distance from the specified position.  
```
</summary>
	]]

native "TASK_STAND_STILL"
    hash "0x919BE13EED931959"
	jhash (0x6F80965D)
	arguments {
		Ped "ped",
		int "time",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped stand still for (time) milliseconds.  
```
</summary>
	]]

native "TASK_STAND_GUARD"
    hash "0xAE032F8BBA959E90"
	jhash (0xD130F636)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
		charPtr "scenarioName",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
scenarioName example: "WORLD_HUMAN_GUARD_STAND"  
```
</summary>
	]]

native "TASK_START_SCENARIO_AT_POSITION"
    hash "0xFA4EFC79F69D4F07"
	jhash (0xAA2C4AC2)
	arguments {
		Ped "ped",
		charPtr "scenarioName",
		float "x",
		float "y",
		float "z",
		float "heading",
		int "duration",
		BOOL "sittingScenario",
		BOOL "teleport",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
List of scenarioNames: pastebin.com/6mrYTdQv  
Also a few more listed at AI::TASK_START_SCENARIO_IN_PLACE just above.  
---------------  
The first parameter in every scenario has always been a Ped of some sort. The second like TASK_START_SCENARIO_IN_PLACE is the name of the scenario.   
The next 4 parameters were harder to decipher. After viewing "hairdo_shop_mp.ysc.c4", and being confused from seeing the case in other scripts, they passed the first three of the arguments as one array from a function, and it looked like it was obviously x, y, and z.  
I haven't seen the sixth parameter go to or over 360, making me believe that it is rotation, but I really can't confirm anything.  
I have no idea what the last 3 parameters are, but I'll try to find out.  
-going on the last 3 parameters, they appear to always be "0, 0, 1"  
p6 -1 also used in scrips  
p7 used for sitting scenarios  
p8 teleports ped to position  
```
</summary>
	]]

native "TASK_STAY_IN_COVER"
    hash "0xE5DA8615A6180789"
	jhash (0xA27A9413)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the ped run to take cover  
```
</summary>
	]]

native "TASK_STEALTH_KILL"
    hash "0xAA5DC05579D60BD9"
	jhash (0x0D64C2FA)
	arguments {
		Ped "killer",
		Ped "target",
		Hash "actionType",
		float "p3",
		Any "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Stealth kill action name hashes:  
stealth kills can be found here: Grand Theft Auto V\common.rpf\data\action\stealth_kills.meta  
...  
{  
    "ACT_stealth_kill_a",  
    "ACT_stealth_kill_weapon",  
    "ACT_stealth_kill_b",  
    "ACT_stealth_kill_c",  
    "ACT_stealth_kill_d",  
    "ACT_stealth_kill_a_gardener"  
}  
Only known script using this native: fbi4_prep2  
EXAMPLE:  
ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_a"), 1f, 0);ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_knife"), 1f, 0);  
Also it may be important to note, that each time this task is called, it's followed by AI::CLEAR_PED_TASKS on the target  
```
</summary>
	]]

native "TASK_START_SCENARIO_IN_PLACE"
    hash "0x142A02425FF02BD9"
	jhash (0xE50D6DDE)
	arguments {
		Ped "ped",
		charPtr "scenarioName",
		int "unkDelay",
		BOOL "playEnterAnim",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Plays a scenario on a Ped at their current location.  
unkDelay - Usually 0 or -1, doesn't seem to have any effect. Might be a delay between sequences.  
playEnterAnim - Plays the "Enter" anim if true, otherwise plays the "Exit" anim. Scenarios that don't have any "Enter" anims won't play if this is set to true.  
----  
From "am_hold_up.ysc.c4" at line 339:  
AI::TASK_START_SCENARIO_IN_PLACE(NETWORK::NET_TO_PED(l_8D._f4), sub_adf(), 0, 1);  
I'm unsure of what the last two parameters are, however sub_adf() randomly returns 1 of 3 scenarios, those being:  
WORLD_HUMAN_SMOKING  
WORLD_HUMAN_HANG_OUT_STREET  
WORLD_HUMAN_STAND_MOBILE  
This makes sense, as these are what I commonly see when going by a liquor store.  
-------------------------  
List of scenarioNames: pastebin.com/6mrYTdQv  
(^ Thank you so fucking much for this)  
Also these:  
WORLD_FISH_FLEE  
DRIVE  
WORLD_HUMAN_HIKER  
WORLD_VEHICLE_ATTRACTOR  
WORLD_VEHICLE_BICYCLE_MOUNTAIN  
WORLD_VEHICLE_BIKE_OFF_ROAD_RACE  
WORLD_VEHICLE_BIKER  
WORLD_VEHICLE_CONSTRUCTION_PASSENGERS  
WORLD_VEHICLE_CONSTRUCTION_SOLO  
WORLD_VEHICLE_DRIVE_PASSENGERS  
WORLD_VEHICLE_DRIVE_SOLO  
WORLD_VEHICLE_EMPTY  
WORLD_VEHICLE_PARK_PARALLEL  
WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN  
WORLD_VEHICLE_POLICE_BIKE  
WORLD_VEHICLE_POLICE_CAR  
WORLD_VEHICLE_POLICE_NEXT_TO_CAR  
WORLD_VEHICLE_SALTON_DIRT_BIKE  
WORLD_VEHICLE_TRUCK_LOGS  
```
</summary>
	]]

native "TASK_SWAP_WEAPON"
    hash "0xA21C51255B205245"
	jhash (0xDAF4F8FC)
	arguments {
		Ped "ped",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_STOP_PHONE_GESTURE_ANIMATION"
    hash "0x3FA00D4F4641BFAE"
	jhash (0x5A32D4B4)
	arguments {
		Ped "ped",
	}
	alias "_TASK_STOP_PHONE_GESTURE_ANIMATION"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
TODO: add hash from x360  
^^^  
I got you, x360 Hash: 0x5A32D4B4.   
Note: Whoever named this I just compared it and the hash matches, it was the correct name thanks.   
Note: Alexander Blade, needs to fix this site or his code one, as when we do find the right name the server throws an error saying the name is already in use. AB is a legend coder, so I'm sure this is a simple fix for him.  
```

```
NativeDB Added Parameter 2: float p1
```
</summary>
	]]

native "TASK_SWEEP_AIM_POSITION"
    hash "0x7AFE8FDC10BC07D2"
	jhash (0x1683FE66)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
		Any "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_THROW_PROJECTILE"
    hash "0x7285951DBF6B5A51"
	jhash (0xF65C20A7)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.  
The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.  
---  
It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).  
It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.  
----------------------------------------------------  
The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.  
```

```
NativeDB Added Parameter 5: Any p4
NativeDB Added Parameter 6: Any p5
```
</summary>
	]]

native "TASK_SWEEP_AIM_ENTITY"
    hash "0x2047C02158D6405A"
	jhash (0x4D210467)
	arguments {
		Ped "ped",
		charPtr "anim",
		charPtr "p2",
		charPtr "p3",
		charPtr "p4",
		int "p5",
		Vehicle "vehicle",
		float "p7",
		float "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
This function is called on peds in vehicles.  
anim: animation name  
p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high"  
p5: no idea what it does but is usually -1  
```
</summary>
	]]

native "TASK_SYNCHRONIZED_SCENE"
    hash "0xEEA929141F699854"
	jhash (0x4F217E7B)
	arguments {
		Ped "ped",
		int "scene",
		charPtr "animDictionary",
		charPtr "animationName",
		float "blendInSpeed",
		float "blendOutSpeed",
		int "duration",
		int "flag",
		float "playbackRate",
		Any "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
AI::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);  
Animations List : www.ls-multiplayer.com/dev/index.php?section=3  
```
</summary>
	]]

native "TASK_TURN_PED_TO_FACE_ENTITY"
    hash "0x5AD23D40115353AC"
	jhash (0x3C37C767)
	arguments {
		Ped "ped",
		Entity "entity",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
```
</summary>
	]]

native "TASK_USE_MOBILE_PHONE"
    hash "0xBD2A8EC3AF4DE7DB"
	jhash (0x225A38C8)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Actually has 3 params, not 2.  
p0: Ped  
p1: int (or bool?)  
p2: int  
```

```
NativeDB Added Parameter 3: Any p2
```
</summary>
	]]

native "TASK_TOGGLE_DUCK"
    hash "0xAC96609B9995EDF8"
	jhash (0x61CFBCBF)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
used in sequence task  
both parameters seems to be always 0  
```
</summary>
	]]

native "TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD"
    hash "0x9FDA1B3D7E7028B3"
	jhash (0xE32FFB22)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_TURN_PED_TO_FACE_COORD"
    hash "0x1DDA930A0AC38571"
	jhash (0x30463D73)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
duration in milliseconds  
```
</summary>
	]]

native "TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP"
    hash "0x97A28E63F0BA5631"
	jhash (0xBAB4C0AE)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_USE_MOBILE_PHONE_TIMED"
    hash "0x5EE02954A14C69DB"
	jhash (0xC99C19F5)
	arguments {
		Ped "ped",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP"
    hash "0x58E2E0F23F6B76C3"
	jhash (0x1BE9D65C)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "radius",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_USE_NEAREST_SCENARIO_TO_COORD"
    hash "0x277F471BA9DB000B"
	jhash (0x9C50FBF0)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "distance",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Updated variables  
An alternative to AI::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.  
```
</summary>
	]]

native "TASK_VEHICLE_CHASE"
    hash "0x3C08A8E30363B353"
	jhash (0x55634798)
	arguments {
		Ped "driver",
		Entity "targetEnt",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
chases targetEnt fast and aggressively  
--  
Makes ped (needs to be in vehicle) chase targetEnt.  
```
</summary>
	]]

native "TASK_VEHICLE_AIM_AT_COORD"
    hash "0x447C1E9EF844BC0F"
	jhash (0x010F47CE)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_DRIVE_TO_COORD"
    hash "0xE2A2AA2F659D77A7"
	jhash (0xE4AC0387)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p6",
		Hash "vehicleModel",
		int "drivingMode",
		float "stopRange",
		float "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/  
---------------------------------------------------------------  
Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.  
P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked.  
Here the e.g. code I used  
Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);  
```
</summary>
	]]

native "TASK_VEHICLE_AIM_AT_PED"
    hash "0xE41885592B08B097"
	jhash (0x920AE6DB)
	arguments {
		Ped "ped",
		Ped "target",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_DRIVE_WANDER"
    hash "0x480142959D337D00"
	jhash (0x36EC0EB0)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "speed",
		int "drivingStyle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_FOLLOW"
    hash "0xFC545A9F0626E3B6"
	jhash (0xA8B917D7)
	arguments {
		Ped "driver",
		Vehicle "vehicle",
		Entity "targetEntity",
		float "speed",
		int "drivingStyle",
		int "minDistance",
	}
	alias "_TASK_VEHICLE_FOLLOW"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)  
Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
AI::_TASK_VEHICLE_FOLLOW(l_244[3/*1*/], l_268[3/*1*/], l_278, 40.0, 262144, 10);  
What is this known as in the decompiled scripts ffs. I need more examples. I've searched in all scripts for keywords suchas,  
TASK_VEHICLE_FOLLOW, FC545A9F0626E3B6, 0xFC545A9F0626E3B6, all the parameters in the above example even just search the last few params '40.0, 262144, 10' and couldnt find where this native is used in scripts at all unless whoever decompiled the scripts gave it a whack a.. name.  
```
</summary>
	]]

native "TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE"
    hash "0x158BB33F920D360C"
	jhash (0x1490182A)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "driveMode",
		float "stopRange",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING"
    hash "0x3123FAA6DB1CF7ED"
	jhash (0x959818B6)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		charPtr "WPRecording",
		int "p3",
		int "p4",
		int "p5",
		int "p6",
		float "p7",
		BOOL "p8",
		float "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
task_vehicle_follow_waypoint_recording(Ped p0, Vehicle p1, string p2, int p3, int p4, int p5, int p6, float.x p7, float.Y p8, float.Z p9, bool p10, int p11)  
p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf  
p3 = 786468  
p4 = 0  
p5 = 16  
p6 = -1 (angle?)  
p7/8/9 = usually v3.zero  
p10 = bool (repeat?)  
p11 = 1073741824  
```
</summary>
	]]

native "TASK_VEHICLE_ESCORT"
    hash "0x0FA6E4B75F302400"
	jhash (0x9FDCB250)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		Vehicle "targetVehicle",
		int "mode",
		float "speed",
		int "drivingStyle",
		float "minDistance",
		int "p7",
		float "noRoadsDistance",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes a ped follow the targetVehicle with <minDistance> in between.  
note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.  
Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.  
-1 = behind  
0 = ahead  
1 = left  
2 = right  
3 = back left  
4 = back right  
if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.  
Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
```
</summary>
	]]

native "TASK_VEHICLE_MISSION"
    hash "0x659427E0EF36BCDE"
	jhash (0x20609E56)
	arguments {
		int "p0",
		int "p1",
		Vehicle "veh",
		Any "p3",
		float "p4",
		Any "p5",
		float "p6",
		float "p7",
		BOOL "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_MISSION_COORS_TARGET"
    hash "0xF0AF20AA7731F8C3"
	jhash (0x6719C109)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		int "p5",
		int "p6",
		int "p7",
		float "p8",
		float "p9",
		BOOL "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example from fm_mission_controller.c4:  
AI::TASK_VEHICLE_MISSION_COORS_TARGET(l_65E1, l_65E2, 324.84588623046875, 325.09619140625, 104.3525, 4, 15.0, 802987, 5.0, 5.0, 0);  
```
</summary>
	]]

native "TASK_VEHICLE_GOTO_NAVMESH"
    hash "0x195AEEB13CEFE2EE"
	jhash (0x55CF3BCD)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "behaviorFlag",
		float "stoppingRange",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.  
WARNING:  
A behaviorFlag value of 0 will result in a clunky, stupid driver!  
Recommended settings:  
speed = 30.0f,  
behaviorFlag = 156,   
stoppingRange = 5.0f;  
If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.   
If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.  
EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/  
```
</summary>
	]]

native "TASK_VEHICLE_PARK"
    hash "0x0F3E34E968EA374E"
	jhash (0x5C85FF90)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "heading",
		int "mode",
		float "radius",
		BOOL "keepEngineOn",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Modes:  
0 - ignore heading  
1 - park forward  
2 - park backwards  
Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.  
Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.  
```
</summary>
	]]

native "TASK_VEHICLE_SHOOT_AT_COORD"
    hash "0x5190796ED39C9B6D"
	jhash (0xA7AAA4D6)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_HELI_PROTECT"
    hash "0x1E09C32048FEFD1C"
	jhash (0x0CB415EE)
	arguments {
		Ped "pilot",
		Vehicle "vehicle",
		Entity "entityToFollow",
		float "targetSpeed",
		int "p4",
		float "radius",
		int "altitude",
		int "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
pilot, vehicle and altitude are rather self-explanatory.  
p4: is unused variable in the function.  
entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.  
'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.  
'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.  
NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.  
NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.  
```
</summary>
	]]

native "TASK_VEHICLE_TEMP_ACTION"
    hash "0xC429DCEEB339E129"
	jhash (0x0679DFB8)
	arguments {
		Ped "driver",
		Vehicle "vehicle",
		int "action",
		int "time",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
'1   
'3 - brake + reverse  
'4 - turn left 90 + braking  
'5 - turn right 90 + braking  
'6 - brake strong (handbrake?) until time ends  
'7 - turn left + accelerate  
'7 - turn right + accelerate  
'9 - weak acceleration  
'10 - turn left + restore wheel pos to center in the end  
'11 - turn right + restore wheel pos to center in the end  
'13 - turn left + go reverse  
'14 - turn left + go reverse  
'16 - crash the game after like 2 seconds :)  
'17 - keep actual state, game crashed after few tries  
'18 - game crash  
'19 - strong brake + turn left/right  
'20 - weak brake + turn left then turn right  
'21 - weak brake + turn right then turn left  
'22 - brake + reverse  
'23 - accelerate fast  
'24   
'25 - brake turning left then when almost stopping it turns left more  
'26 - brake turning right then when almost stopping it turns right more  
'27 - brake until car stop or until time ends  
'28 - brake + strong reverse acceleration  
'30 - performs a burnout (brake until stop + brake and accelerate)  
'31 - accelerate + handbrake  
'32 - accelerate very strong  
Seems to be this:  
Works on NPCs, but overrides their current task. If inside a task sequence (and not being the last task), "time" will work, otherwise the task will be performed forever until tasked with something else  
```
</summary>
	]]

native "TASK_VEHICLE_MISSION_PED_TARGET"
    hash "0x9454528DF15D657A"
	jhash (0xC81C4677)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		Ped "pedTarget",
		int "mode",
		float "maxSpeed",
		int "drivingStyle",
		float "minDistance",
		float "p7",
		BOOL "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Modes:  
8= flees  
1=drives around the ped  
4=drives and stops near  
7=follows  
10=follows to the left  
11=follows to the  right  
12 = follows behind  
13=follows ahead  
14=follows, stop when near  
```
</summary>
	]]

native "TASK_VEHICLE_PLAY_ANIM"
    hash "0x69F5C3BD0F3EBD89"
	jhash (0x2B28F598)
	arguments {
		Vehicle "vehicle",
		charPtr "animation_set",
		charPtr "animation_name",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Most probably plays a specific animation on vehicle. For example getting chop out of van etc...  
Here's how its used -   
AI::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");  
AI::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");  
FYI : Speedo is the name of van in which chop was put in the mission.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "TASK_WANDER_STANDARD"
    hash "0xBB9CE077274F6A1B"
	jhash (0xAF59151A)
	arguments {
		Ped "ped",
		float "p1",
		int "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes ped walk around the area.  
set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.  
```
</summary>
	]]

native "TASK_WRITHE"
    hash "0xCDDC2B77CE54AC6E"
	jhash (0x0FDC54FC)
	arguments {
		Ped "ped",
		Ped "target",
		int "time",
		int "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
EX: Function.Call(Ped1, Ped2, Time, 0);  
The last parameter is always 0 for some reason I do not know. The first parameter is the pedestrian who will writhe to the pedestrian in the other parameter. The third paremeter is how long until the Writhe task ends. When the task ends, the ped will die. If set to -1, he will not die automatically, and the task will continue until something causes it to end. This can be being touched by an entity, being shot, explosion, going into ragdoll, having task cleared. Anything that ends the current task will kill the ped at this point.  
MulleDK19: Third parameter does not appear to be time. The last parameter is not implemented (It's not used, regardless of value).  
```

```
NativeDB Added Parameter 5: Any p4
NativeDB Added Parameter 6: Any p5
```
</summary>
	]]

native "UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET"
    hash "0x9724FB59A3E72AD0"
	jhash (0x67E73525)
	arguments {
		Ped "p0",
		Ped "p1",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_SHOOT_AT_PED"
    hash "0x10AB107B887214D8"
	jhash (0x59677BA0)
	arguments {
		Ped "ped",
		Ped "target",
		float "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UPDATE_TASK_HANDS_UP_DURATION"
    hash "0xA98FCAFD7893C834"
	jhash (0x3AA39BE9)
	arguments {
		Ped "ped",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UPDATE_TASK_SWEEP_AIM_POSITION"
    hash "0xBB106883F5201FC4"
	jhash (0x6345EC80)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_WANDER_IN_AREA"
    hash "0xE054346CA3A0F315"
	jhash (0xC6981FB9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "radius",
		float "minimalLength",
		float "timeBetweenWalks",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_WARP_PED_INTO_VEHICLE"
    hash "0x9A7D091411C5F684"
	jhash (0x65D4A35D)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "seat",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Seat Numbers  
-------------------------------  
Driver = -1  
Any = -2  
Left-Rear = 1  
Right-Front = 0  
Right-Rear = 2  
Extra seats = 3-14(This may differ from vehicle type e.g. Firetruck Rear Stand, Ambulance Rear)  
```
</summary>
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED"
    hash "0x121F0593E0A431D7"
	jhash (0xBE1E7BB4)
	arguments {
		Vehicle "vehicle",
		float "speed",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_PAUSE"
    hash "0x8A4E6AC373666BC5"
	jhash (0x7C00B415)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UNCUFF_PED"
    hash "0x67406F2C8F87FC4F"
	jhash (0xA23A1D61)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_RESUME"
    hash "0xDC04FCAA7839D492"
	jhash (0xBEB14C82)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UPDATE_TASK_SWEEP_AIM_ENTITY"
    hash "0xE4973DBDBE6E44B3"
	jhash (0xF65F0F4F)
	arguments {
		Ped "ped",
		Entity "entity",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_GET_IS_PAUSED"
    hash "0x701375A7D43F01CB"
	jhash (0xA6BB5717)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE"
    hash "0x5A353B8E6B1095B5"
	jhash (0x4DFD5FEC)
	arguments {
		charPtr "name",
		BOOL "p1",
		float "p2",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<param name="name">Waypoint recording name.</param>
	]]

native "WAYPOINT_PLAYBACK_PAUSE"
    hash "0x0F342546AA06FED5"
	jhash (0xFE39ECF8)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED"
    hash "0x5CEB25A7D2848963"
	jhash (0x923C3AA4)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_START_AIMING_AT_PED"
    hash "0x20E330937C399D29"
	jhash (0x75E60CF6)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD"
    hash "0x057A25CFCC9DB671"
	jhash (0xCDDB44D5)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_OVERRIDE_SPEED"
    hash "0x7D7D2B47FA788E85"
	jhash (0x23E6BA96)
	arguments {
		Any "p0",
		float "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_START_SHOOTING_AT_PED"
    hash "0xE70BA7B90F8390DC"
	jhash (0xBD5F0EB8)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
		Any "p3",
	}
	alias "0xE70BA7B90F8390DC"
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_RESUME"
    hash "0x244F70C84C547D2D"
	jhash (0x50F392EF)
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED"
    hash "0x6599D834B12D0800"
	jhash (0x1BBB2CAC)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT"
    hash "0xB629A298081F876F"
	jhash (0xC4CD35AF)
	arguments {
		charPtr "name",
		float "x",
		float "y",
		float "z",
		intPtr "point",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
```
</summary>
	]]

native "WAYPOINT_PLAYBACK_START_AIMING_AT_COORD"
    hash "0x8968400D900ED8B3"
	jhash (0xF120A34E)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING"
    hash "0x47EFA040EBB8E2EA"
	jhash (0x6D7CF40C)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_RECORDING_GET_SPEED_AT_POINT"
    hash "0x005622AEBC33ACA9"
	jhash (0xC765633A)
	arguments {
		charPtr "name",
		int "point",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "WAYPOINT_RECORDING_GET_COORD"
    hash "0x2FB897405C90B361"
	jhash (0x19266913)
	arguments {
		charPtr "name",
		int "point",
		Vector3Ptr "coord",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
```
</summary>
	]]

native "WAYPOINT_RECORDING_GET_NUM_POINTS"
    hash "0x5343532C01A07234"
	jhash (0xF5F9B71E)
	arguments {
		charPtr "name",
		intPtr "points",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
```
</summary>
	]]

native "ADD_MINIMAP_OVERLAY"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Loads a minimap overlay from a GFx file in the current resource.
</summary>
<param name="name">The path to a `.gfx` file in the current resource. It has to be specified as a `file`.</param>
<returns>A minimap overlay ID.</returns>
	]]

native "ADD_TEXT_ENTRY"
	arguments {
		charPtr "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "CALL_MINIMAP_SCALEFORM_FUNCTION"
	arguments {
		int "miniMap",
		charPtr "fnName",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="fnName">A function in the overlay's TIMELINE.</param>
	]]

native "CANCEL_EVENT"
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Cancels the currently executing event.
</summary>
	]]

native "ADD_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
		charPtr "newTxd",
		charPtr "newTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "CREATE_DUI"
	arguments {
		charPtr "url",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
</summary>
<param name="url">The initial URL to load in the browser.</param>
<param name="width">The width of the backing surface.</param>
<param name="height">The height of the backing surface.</param>
<returns>A DUI object.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE"
	arguments {
		long "txd",
		charPtr "txn",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a blank runtime texture.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="width">The width of the new texture.</param>
<param name="height">The height of the new texture.</param>
<returns>A runtime texture handle.</returns>
	]]

native "ADD_TEXT_ENTRY_BY_HASH"
	arguments {
		Hash "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_IMAGE"
	arguments {
		long "txd",
		charPtr "txn",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from the specified file in the current resource.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="fileName">The file name of an image to load. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.</param>
<returns>A runtime texture handle.</returns>
	]]

native "CAN_PLAYER_START_COMMERCE_SESSION"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the specified player has enough information to start a commerce session for.
</summary>
<param name="playerSrc">The player handle</param>
<returns>True or false.</returns>
	]]

native "DELETE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "DELETE_RESOURCE_KVP"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "COMMIT_RUNTIME_TEXTURE"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Commits the backing pixels to the specified runtime texture.
</summary>
<param name="tex">The runtime texture handle.</param>
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE"
	arguments {
		long "txd",
		long "txn",
		charPtr "duiHandle",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from a DUI handle.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="duiHandle">The DUI handle returned from GET_DUI_HANDLE.</param>
<returns>The runtime texture handle.</returns>
	]]

native "DOES_PLAYER_OWN_SKU"
	arguments {
		charPtr "playerSrc",
		int "skuId",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the player owns the specified SKU.
</summary>
<param name="playerSrc">The player handle</param>
<param name="skuId">The ID of the SKU.</param>
<returns>A boolean.</returns>
	]]

native "DROP_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "CREATE_RUNTIME_TXD"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture dictionary with the specified name.
Example:

```lua
local txd = CreateRuntimeTxd('meow')
```
</summary>
<param name="name">The name for the runtime TXD.</param>
<returns>A handle to the runtime TXD.</returns>
	]]

native "DESTROY_DUI"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Destroys a DUI browser.
</summary>
<param name="duiObject">The DUI browser handle.</param>
	]]

native "DUPLICATE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "DOES_ENTITY_EXIST"
	arguments {
		Object "entity",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "END_FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_PED"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "ENABLE_ENHANCED_HOST_SUPPORT"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "END_FIND_VEHICLE"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_OBJECT"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "EXECUTE_COMMAND"
	arguments {
		charPtr "commandString",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "END_FIND_PICKUP"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "EXPERIMENTAL_LOAD_CLONE_SYNC"
	arguments {
		Entity "entity",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_SAVE_CLONE_SYNC"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_LOAD_CLONE_CREATE"
	arguments {
		charPtr "data",
		int "objectId",
		charPtr "tree",
	}
	ns "CFX"
    apiset "client"
	returns "Entity"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "FIND_FIRST_OBJECT"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "EXPERIMENTAL_SAVE_CLONE_CREATE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "FIND_FIRST_PED"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_VEHICLE"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
	]]

native "FIND_FIRST_PICKUP"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_NEXT_PICKUP"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_OBJECT"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FLAG_SERVER_AS_PRIVATE"
	arguments {
		BOOL "private_",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_ACTIVE_PLAYERS"
	ns "CFX"
    apiset "client"
	returns "object"
	doc [[!
<summary>
Returns all player indices for 'active' physical players known to the client.
The data returned adheres to the following layout:

```
[127, 42, 13, 37]
```
</summary>
<returns>An object containing a list of player indices.</returns>
	]]

native "FIND_NEXT_PED"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_VEHICLE"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "GET_CAM_MATRIX"
	arguments {
		Cam "camera",
		Vector3Ptr "rightVector",
		Vector3Ptr "forwardVector",
		Vector3Ptr "upVector",
		Vector3Ptr "position",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
</summary>
	]]

native "GET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_CURRENT_RESOURCE_NAME"
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the name of the currently executing resource.
</summary>
<returns>The name of the resource.</returns>
	]]

native "GET_ALL_VEHICLES"
	ns "CFX"
    apiset "server"
	returns "object"
	doc [[!
<summary>
Returns all vehicle handles known to the server.
The data returned adheres to the following layout:

```
[127, 42, 13, 37]
```
</summary>
<returns>An object containing a list of vehicle handles.</returns>
	]]

native "GET_CONSOLE_BUFFER"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
Returns the current console output buffer.
</summary>
<returns>The most recent game console output, as a string.</returns>
	]]

native "GET_CURRENT_SERVER_ENDPOINT"
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the peer address of the remote game server that the user is currently connected to.
</summary>
<returns>The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.</returns>
	]]

native "GET_ENTITY_COORDS"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_CONVAR_INT"
	arguments {
		charPtr "varName",
		int "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_MAX_HEALTH"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
Currently it only works with peds.
</summary>
	]]

native "GET_ENTITY_MODEL"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
	]]

native "GET_DUI_HANDLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the NUI window handle for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.</returns>
	]]

native "GET_ENTITY_HEADING"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_ENTITY_ROTATION"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_SCRIPT"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_ENTITY_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_HEALTH"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
Currently it only works with peds.
</summary>
	]]

native "GET_ENTITY_POPULATION_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_HASH_KEY"
	arguments {
		charPtr "model",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
<summary>
This native converts the passed string to a hash.
</summary>
	]]

native "GET_HOST_ID"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_ENTITY_ROTATION_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_INSTANCE_ID"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_INTERIOR_PORTAL_COUNT"
	arguments {
		int "interiorId",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>The amount of portals in interior.</returns>
	]]

native "GET_GAME_TIMER"
	ns "CFX"
    apiset "server"
	returns "long"
	doc [[!
<summary>
Gets the current game timer in milliseconds.
</summary>
<returns>The game time.</returns>
	]]

native "GET_INTERIOR_PORTAL_FLAG"
	arguments {
		int "interiorId",
		int "portalIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<returns>Portal's flag.</returns>
	]]

native "GET_INTERIOR_PORTAL_ROOM_TO"
	arguments {
		int "interiorId",
		int "portalIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<returns>Portal's room TO index.</returns>
	]]

native "GET_INTERIOR_ENTITIES_EXTENTS"
	arguments {
		int "interiorId",
		floatPtr "bbMinX",
		floatPtr "bbMinY",
		floatPtr "bbMinZ",
		floatPtr "bbMaxX",
		floatPtr "bbMaxY",
		floatPtr "bbMaxZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>Interior entities extents.</returns>
	]]

native "GET_INTERIOR_POSITION"
	arguments {
		int "interiorId",
		floatPtr "posX",
		floatPtr "posY",
		floatPtr "posZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>Interior position.</returns>
	]]

native "GET_INTERIOR_PORTAL_CORNER_POSITION"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "cornerIndex",
		floatPtr "posX",
		floatPtr "posY",
		floatPtr "posZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="cornerIndex">Portal's corner index.</param>
<returns>Portal corner position.</returns>
	]]

native "GET_INTERIOR_ROOM_FLAG"
	arguments {
		int "interiorId",
		int "roomIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room's flag.</returns>
	]]

native "GET_INTERIOR_PORTAL_ROOM_FROM"
	arguments {
		int "interiorId",
		int "portalIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<returns>Portal's room FROM index.</returns>
	]]

native "GET_INTERIOR_ROOM_INDEX_BY_HASH"
	arguments {
		int "interiorId",
		int "roomHash",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomHash">Interior room hash.</param>
<returns>Room index, -1 if failed.</returns>
	]]

native "GET_INTERIOR_ROOM_NAME"
	arguments {
		int "interiorId",
		int "roomIndex",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room's name.</returns>
	]]

native "GET_INTERIOR_ROOM_COUNT"
	arguments {
		int "interiorId",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>The amount of rooms in interior.</returns>
	]]

native "GET_INTERIOR_ROOM_EXTENTS"
	arguments {
		int "interiorId",
		int "roomIndex",
		floatPtr "bbMinX",
		floatPtr "bbMinY",
		floatPtr "bbMinZ",
		floatPtr "bbMaxX",
		floatPtr "bbMaxY",
		floatPtr "bbMaxZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room extents.</returns>
	]]

native "GET_INVOKING_RESOURCE"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_IS_VEHICLE_ENGINE_RUNNING"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "GET_INTERIOR_ROOM_TIMECYCLE"
	arguments {
		int "interiorId",
		int "roomIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room's timecycle hash.</returns>
	]]

native "GET_NUI_CURSOR_POSITION"
	arguments {
		intPtr "x",
		intPtr "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "GET_INTERIOR_ROTATION"
	arguments {
		int "interiorId",
		floatPtr "rotx",
		floatPtr "rotY",
		floatPtr "rotZ",
		floatPtr "rotW",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>Interior rotation in quaternion.</returns>
	]]

native "GET_NUM_PLAYER_INDICES"
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_NUM_RESOURCES"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_MAP_ZOOM_DATA_LEVEL"
	arguments {
		int "index",
		floatPtr "zoomScale",
		floatPtr "zoomSpeed",
		floatPtr "scrollSpeed",
		floatPtr "tilesX",
		floatPtr "tilesY",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns the zoom level data by index from mapzoomdata.meta file.
</summary>
<param name="index">Zoom level index.</param>
<param name="zoomScale">fZoomScale value.</param>
<param name="zoomSpeed">fZoomSpeed value.</param>
<param name="scrollSpeed">fScrollSpeed value.</param>
<param name="tilesX">vTiles X.</param>
<param name="tilesY">vTiles Y.</param>
<returns>A boolean indicating TRUE if the data was received successfully.</returns>
	]]

native "GET_NUM_PLAYER_IDENTIFIERS"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PASSWORD_HASH"
	arguments {
		charPtr "password",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_NUM_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key to look up in the resource manifest.</param>
	]]

native "GET_PED_CAUSE_OF_DEATH"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
	]]

native "GET_PED_ARMOUR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PED_FACE_FEATURE"
	arguments {
		Ped "ped",
		int "index",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [\_SET_PED_FACE_FEATURE](#_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
</summary>
<param name="ped">The target ped</param>
<param name="index">Face feature index</param>
<returns>Returns ped's face feature value, or 0.0 if fails to get.</returns>
	]]

native "GET_PED_EYE_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_EYE_COLOR](#_0x50B56988B170AFDF). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's eye colour, or -1 if fails to get.</returns>
	]]

native "GET_PED_HAIR_HIGHLIGHT_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's secondary hair colour.</returns>
	]]

native "GET_PED_HAIR_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's primary hair colour.</returns>
	]]

native "GET_PED_HEAD_OVERLAY_DATA"
	arguments {
		Ped "ped",
		int "index",
		intPtr "overlayValue",
		intPtr "colourType",
		intPtr "firstColour",
		intPtr "secondColour",
		floatPtr "overlayOpacity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
A getter for [SET_PED_HEAD_OVERLAY](#_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#_0x497BF74A7B9CB952) natives.
</summary>
<param name="ped">The target ped</param>
<param name="index">Overlay index</param>
<param name="overlayValue">Overlay value pointer</param>
<param name="colourType">Colour type pointer</param>
<param name="firstColour">First colour pointer</param>
<param name="secondColour">Second colour pointer</param>
<param name="overlayOpacity">Opacity pointer</param>
<returns>Returns ped's head overlay data.</returns>
	]]

native "GET_PED_MAX_HEALTH"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_FROM_INDEX"
	arguments {
		int "index",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_ENDPOINT"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_FROM_SERVER_ID"
	arguments {
		int "serverId",
	}
	ns "CFX"
    apiset "client"
	returns "Player"
	doc [[!
	]]

native "GET_PLAYER_IDENTIFIER"
	arguments {
		charPtr "playerSrc",
		int "identifier",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_GUID"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_NAME"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_LAST_MSG"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_PED"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "GET_REGISTERED_COMMANDS"
	ns "CFX"
    apiset "shared"
	returns "object"
	doc [[!
<summary>
Returns all commands that are registered in the command system.
The data returned adheres to the following layout:

```
[
{
"name": "cmdlist"
},
{
"name": "command1"
}
]
```
</summary>
<returns>An object containing registered commands.</returns>
	]]

native "GET_PLAYER_PING"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_PLAYER_SERVER_ID"
	arguments {
		Player "player",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_RESOURCE_BY_FIND_INDEX"
	arguments {
		int "findIndex",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_RESOURCE_KVP_STRING"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
	]]

native "GET_RESOURCE_PATH"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
Returns the physical on-disk path of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource directory name, possibly without trailing slash.</returns>
	]]

native "GET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_RUNTIME_TEXTURE_HEIGHT"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the height of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The height in pixels.</returns>
	]]

native "GET_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
		int "index",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Gets the metadata value at a specified key/index from a resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key in the resource manifest.</param>
<param name="index">The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].</param>
	]]

native "GET_RESOURCE_STATE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the current state of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.</returns>
	]]

native "GET_RUNTIME_TEXTURE_WIDTH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the width of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The width in pixels.</returns>
	]]

native "GET_RUNTIME_TEXTURE_PITCH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The row pitch in bytes.</returns>
	]]

native "GET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_TRAIN_CURRENT_TRACK_NODE"
	arguments {
		Vehicle "train",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="train">The target train.</param>
<returns>Train's current track node index.</returns>
	]]

native "GET_VEHICLE_BODY_HEALTH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_ACCELERATION"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DOOR_LOCK_STATUS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
```
enum VehicleLockStatus = {
    None = 0,
    Unlocked = 1,
    Locked = 2,
    LockedForPlayer = 3,
    StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
    CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
    CanBeBrokenIntoPersist = 8, -- Can be broken into persist
    CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
}
```
</summary>
	]]

native "GET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DOOR_STATUS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<returns>A number from 0 to 7.</returns>
	]]

native "GET_VEHICLE_ENGINE_HEALTH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DASHBOARD_SPEED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
Currently it only works when set to "all players".
</summary>
	]]

native "GET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a floating-point value.
Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>A floating-point value.</returns>
	]]

native "GET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as an integer value.
Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_HANDBRAKE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_HEADLIGHTS_COLOUR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_INDICATOR_LIGHTS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "Vector3"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a vector value.
Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_NEXT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_LIGHTS_STATE"
	arguments {
		Vehicle "vehicle",
		BOOLPtr "lightsOn",
		BOOLPtr "highbeamsOn",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_NUMBER_OF_WHEELS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_PETROL_TANK_HEALTH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_RADIO_STATION_INDEX"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_SPEED"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Gets speed of a wheel at the tyre.
Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the offset of the specified wheel relative to the wheel's axle center.
</summary>
	]]

native "GET_VEHICLE_WHEELIE_STATE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
List of known states:

```
1: Not wheeling.
65: Vehicle is ready to do wheelie (burnouting).
129: Vehicle is doing wheelie.
```
</summary>
<param name="vehicle">Vehicle</param>
<returns>Vehicle's current wheelie state.</returns>
	]]

native "GET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	alias "GET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "HAS_ENTITY_BEEN_MARKED_AS_NO_LONGER_NEEDED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "HAS_VEHICLE_BEEN_OWNED_BY_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "HAS_MINIMAP_OVERLAY_LOADED"
	arguments {
		int "id",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the specific minimap overlay has loaded.
</summary>
<param name="id">A minimap overlay ID.</param>
<returns>A boolean indicating load status.</returns>
	]]

native "INVOKE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
		charPtr "argsSerialized",
		int "argsLength",
		intPtr "retvalLength",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "IS_ACE_ALLOWED"
	arguments {
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_BIGMAP_FULL"
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
<!-- Native implemented by Disquse. 0x66EE14B2 -->

Returns true if the full map is currently revealed on the minimap. 
Use [`IsBigmapActive`](#_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
</summary>
<returns>Returns true if the full map is currently revealed on the minimap.</returns>
	]]

native "IS_BIGMAP_ACTIVE"
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
<!-- Native implemented by Disquse. 0xFFF65C63 -->

Returns true if the minimap is currently expanded. False if it's the normal minimap state.
Use [`IsBigmapFull`](#_0x66EE14B2) to check if the full map is currently revealed on the minimap.
</summary>
<returns>A bool indicating if the minimap is currently expanded or normal state.</returns>
	]]

native "IS_DUPLICITY_VERSION"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Gets whether or not this is the CitizenFX server.
</summary>
<returns>A boolean value.</returns>
	]]

native "IS_DUI_AVAILABLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not a browser is created for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>A boolean indicating TRUE if the browser is created.</returns>
	]]

native "IS_PLAYER_COMMERCE_INFO_LOADED"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the commerce data for the specified player has loaded.
</summary>
<param name="playerSrc">The player handle</param>
<returns>A boolean.</returns>
	]]

native "IS_PLAYER_ACE_ALLOWED"
	arguments {
		charPtr "playerSrc",
		charPtr "object",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_STREAMING_FILE_READY"
	arguments {
		charPtr "registerAs",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Returns whether an asynchronous streaming file registration completed.
</summary>
<param name="registerAs">The file name to check, for example `asset.ydr`.</param>
<returns>Whether or not the streaming file has been registered.</returns>
	]]

native "IS_PRINCIPAL_ACE_ALLOWED"
	arguments {
		charPtr "principal",
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_ALARM_SET"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_ENGINE_STARTING"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_NEEDS_TO_BE_HOTWIRED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_INTERIOR_LIGHT_ON"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_PREVIOUSLY_OWNED_BY_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_TYRE_BURST"
	arguments {
		Vehicle "vehicle",
		int "wheelID",
		BOOL "completely",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_WANTED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_SIREN_ON"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "LOAD_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Reads the contents of a text file in a specified resource.
If executed on the client, this file has to be included in `files` in the resource manifest.
Example: `local data = LoadResourceFile("devtools", "data.json")`
</summary>
<param name="resourceName">The resource name.</param>
<param name="fileName">The file in the resource.</param>
<returns>The file contents</returns>
	]]

native "LOAD_PLAYER_COMMERCE_DATA"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
</summary>
<param name="playerSrc">The player handle</param>
	]]

native "NETWORK_GET_ENTITY_FROM_NETWORK_ID"
	arguments {
		int "netId",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_OWNER"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Returns the owner ID of the specified entity.
</summary>
<param name="entity">The entity to get the owner for.</param>
<returns>On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.</returns>
	]]

native "PERFORM_HTTP_REQUEST_INTERNAL"
	arguments {
		charPtr "requestData",
		int "requestDataLength",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_NETWORK_ID_FROM_ENTITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "PROFILER_EXIT_SCOPE"
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Scope exit for profiler.
</summary>
	]]

native "PROFILER_ENTER_SCOPE"
	arguments {
		charPtr "scopeName",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Scope entry for profiler.
</summary>
<param name="scopeName">Scope name.</param>
	]]

native "REGISTER_ARCHETYPES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
</summary>
<param name="factory">A function returning a list of archetypes.</param>
	]]

native "PROFILER_IS_RECORDING"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Returns true if the profiler is active.
</summary>
<returns>True or false.</returns>
	]]

native "REGISTER_CONSOLE_LISTENER"
	arguments {
		func "listener",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Registers a listener for console output messages.
</summary>
<param name="listener">A function of `(channel: string, message: string) => void`. The message might contain `\n`.</param>
	]]

native "REGISTER_COMMAND"
	arguments {
		charPtr "commandName",
		func "handler",
		BOOL "restricted",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.

Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#_0x561C060B).

The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).

**Example result**:

![](https://i.imgur.com/TaCnG09.png)
</summary>
<param name="commandName">The command you want to register.</param>
<param name="handler">A handler function that gets called whenever the command is executed.</param>
<param name="restricted">If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.</param>
	]]

native "REGISTER_FONT_FILE"
	arguments {
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Registers a specified .gfx file as GFx font library.
The .gfx file has to be registered with the streamer already.
</summary>
<param name="fileName">The name of the .gfx file, without extension.</param>
	]]

native "REGISTER_ENTITIES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
At this time, this function **should not be used in a live environment**.
</summary>
<param name="factory">A function returning a list of entities.</param>
	]]

native "REGISTER_FONT_ID"
	arguments {
		charPtr "fontName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Registers a specified font name for use with text draw commands.
</summary>
<param name="fontName">The name of the font in the GFx font library.</param>
<returns>An index to use with [SET_TEXT_FONT](#_0x66E0276CC5F6B9DA) and similar natives.</returns>
	]]

native "REGISTER_NUI_CALLBACK_TYPE"
	arguments {
		charPtr "callbackType",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "REGISTER_RESOURCE_ASSET"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<returns>A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.</returns>
	]]

native "REGISTER_RESOURCE_BUILD_TASK_FACTORY"
	arguments {
		charPtr "factoryId",
		func "factoryFn",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Registers a build task factory for resources.
The function should return an object (msgpack map) with the following fields:

```
{
// returns whether the specific resource should be built
shouldBuild = func(resourceName: string): bool,

// asynchronously start building the specific resource.
// call cb when completed
build = func(resourceName: string, cb: func(success: bool, status: string): void): void
}
```
</summary>
<param name="factoryId">The identifier for the build task.</param>
<param name="factoryFn">The factory function.</param>
	]]

native "REGISTER_RESOURCE_AS_EVENT_HANDLER"
	arguments {
		charPtr "eventName",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
</summary>
<param name="eventName">An event name, or "\*" to disable HLL event filtering for this resource.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_KVS"
	arguments {
		charPtr "kvsKey",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
</summary>
<param name="kvsKey">The KVP key in the current resource to register as an asset.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_CACHE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "cacheString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a dynamic streaming asset from the server with the GTA streaming module system.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<param name="cacheString">The string returned from `REGISTER_RESOURCE_ASSET` on the server.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_URL"
	arguments {
		charPtr "registerAs",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.

Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
</summary>
<param name="registerAs">The file name to register as, for example `asset.ydr`.</param>
<param name="url">The URL to fetch the asset from.</param>
	]]

native "REQUEST_PLAYER_COMMERCE_SESSION"
	arguments {
		charPtr "playerSrc",
		int "skuId",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
will open the browser prompting further purchase details.
</summary>
<param name="playerSrc">The player handle</param>
<param name="skuId">The ID of the SKU.</param>
	]]

native "REMOVE_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "RESET_MAP_ZOOM_DATA_LEVEL"
	arguments {
		int "index",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
</summary>
<param name="index">Zoom level index.</param>
	]]

native "SCHEDULE_RESOURCE_TICK"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
</summary>
<param name="resourceName">The resource to tick.</param>
	]]

native "SAVE_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "data",
		int "dataLength",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Writes the specified data to a file in the specified resource.
Using a length of `-1` will automatically detect the length assuming the data is a C string.
</summary>
<param name="resourceName">The name of the resource.</param>
<param name="fileName">The name of the file.</param>
<param name="data">The data to write to the file.</param>
<param name="dataLength">The length of the written data.</param>
<returns>A value indicating if the write succeeded.</returns>
	]]

native "SEND_DUI_MOUSE_DOWN"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_DUI_MESSAGE"
	arguments {
		long "duiObject",
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="jsonString">The message, encoded as JSON.</param>
	]]

native "SEND_DUI_MOUSE_UP"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_DUI_MOUSE_MOVE"
	arguments {
		long "duiObject",
		int "x",
		int "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="x">The mouse X position.</param>
<param name="y">The mouse Y position.</param>
	]]

native "SEND_LOADING_SCREEN_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
</summary>
<param name="jsonString">The JSON-encoded message.</param>
<returns>A success value.</returns>
	]]

native "SEND_DUI_MOUSE_WHEEL"
	arguments {
		long "duiObject",
		int "deltaY",
		int "deltaX",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse wheel' event for a DUI object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="deltaY">The wheel Y delta.</param>
<param name="deltaX">The wheel X delta.</param>
	]]

native "SET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SEND_NUI_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_CONVAR_SERVER_INFO"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_CONVAR_REPLICATED"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_DISCORD_APP_ID"
	arguments {
		charPtr "appId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the app id for the discord rich presence implementation.
</summary>
<param name="appId">A valid Discord API App Id, can be generated at <https://discordapp.com/developers/applications/></param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the small image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the small image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.</param>
	]]

native "SET_DUI_URL"
	arguments {
		long "duiObject",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Navigates the specified DUI browser to a different URL.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="url">The new URL.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.</param>
	]]

native "SET_GAME_TYPE"
	arguments {
		charPtr "gametypeName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_HANDLING_FIELD"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_HANDLING_FLOAT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_HANDLING_INT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_HANDLING_VECTOR"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_HTTP_HANDLER"
	arguments {
		func "handler",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_INTERIOR_PORTAL_CORNER_POSITION"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "cornerIndex",
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="cornerIndex">Interior corner index.</param>
<param name="posX">:</param>
<param name="posY">:</param>
<param name="posZ">:</param>
	]]

native "SET_INTERIOR_PORTAL_FLAG"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "flag",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="flag">New flag value.</param>
	]]

native "SET_INTERIOR_PORTAL_ROOM_FROM"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "roomFrom",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="roomFrom">New value.</param>
	]]

native "SET_INTERIOR_PORTAL_ROOM_TO"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "roomTo",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="roomTo">New value.</param>
	]]

native "SET_INTERIOR_ROOM_EXTENTS"
	arguments {
		int "interiorId",
		int "roomIndex",
		float "bbMinX",
		float "bbMinY",
		float "bbMinZ",
		float "bbMaxX",
		float "bbMaxY",
		float "bbMaxZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<param name="bbMinX">:</param>
<param name="bbMinY">:</param>
<param name="bbMinZ">:</param>
<param name="bbMaxX">:</param>
<param name="bbMaxY">:</param>
<param name="bbMaxZ">:</param>
	]]

native "SET_INTERIOR_ROOM_FLAG"
	arguments {
		int "interiorId",
		int "roomIndex",
		int "flag",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<param name="flag">New flag value.</param>
	]]

native "SET_INTERIOR_ROOM_TIMECYCLE"
	arguments {
		int "interiorId",
		int "roomIndex",
		int "timecycleHash",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<param name="timecycleHash">Timecycle hash.</param>
	]]

native "SET_MAP_NAME"
	arguments {
		charPtr "mapName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_MANUAL_SHUTDOWN_LOADING_SCREEN_NUI"
	arguments {
		BOOL "manualShutdown",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
</summary>
<param name="manualShutdown">TRUE to manually shut down the loading screen NUI.</param>
	]]

native "SET_MAP_ZOOM_DATA_LEVEL"
	arguments {
		int "index",
		float "zoomScale",
		float "zoomSpeed",
		float "scrollSpeed",
		float "tilesX",
		float "tilesY",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets values to the zoom level data by index.
</summary>
<param name="index">Zoom level index.</param>
<param name="zoomScale">fZoomScale value.</param>
<param name="zoomSpeed">fZoomSpeed value.</param>
<param name="scrollSpeed">fScrollSpeed value.</param>
<param name="tilesX">vTiles X.</param>
<param name="tilesY">vTiles Y.</param>
	]]

native "SET_MILLISECONDS_PER_GAME_MINUTE"
	arguments {
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Overrides how many real ms are equal to one game minute.
A setter for [`GetMillisecondsPerGameMinute`](#_0x2F8B4D1C595B11DB).
</summary>
<param name="value">Milliseconds.</param>
	]]

native "SET_MINIMAP_OVERLAY_DISPLAY"
	arguments {
		int "miniMap",
		float "x",
		float "y",
		float "xScale",
		float "yScale",
		float "alpha",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the display info for a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="x">The X position for the overlay. This is equivalent to a game coordinate X.</param>
<param name="y">The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).</param>
<param name="xScale">The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.</param>
<param name="yScale">The Y scale for the overlay. This is equivalent to the Flash \_yscale property.</param>
<param name="alpha">The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.</param>
	]]

native "SET_MODEL_HEADLIGHT_CONFIGURATION"
	arguments {
		Hash "modelHash",
		float "ratePerSecond",
		float "headlightRotation",
		BOOL "invertRotation",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_NUI_FOCUS"
	arguments {
		BOOL "hasFocus",
		BOOL "hasCursor",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RESOURCE_KVP"
	arguments {
		charPtr "key",
		charPtr "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_PLAYER_TALKING_OVERRIDE"
	arguments {
		Player "player",
		BOOL "state",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
This function doesn't need to be called every frame, it works like a switcher.
</summary>
<param name="player">The target player.</param>
<param name="state">Overriding state.</param>
	]]

native "SET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RICH_PRESENCE"
	arguments {
		charPtr "presenceState",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the player's rich presence detail state for social platform providers to a specified string.
</summary>
<param name="presenceState">The rich presence string to set.</param>
	]]

native "SET_RUNTIME_TEXTURE_ARGB_DATA"
	arguments {
		long "tex",
		charPtr "buffer",
		int "length",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_RUNTIME_TEXTURE_PIXEL"
	arguments {
		long "tex",
		int "x",
		int "y",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<param name="x">The X position of the pixel to change.</param>
<param name="y">The Y position of the pixel to change.</param>
<param name="r">The new R value (0-255).</param>
<param name="g">The new G value (0-255).</param>
<param name="b">The new B value (0-255).</param>
<param name="a">The new A value (0-255).</param>
	]]

native "SET_SNAKEOIL_FOR_ENTRY"
	arguments {
		charPtr "name",
		charPtr "path",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_CHAT_ENABLED"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
		int "time",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_AUTO_REPAIR_DISABLED"
	arguments {
		Vehicle "vehicle",
		BOOL "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Disables the vehicle from being repaired when a vehicle extra is enabled.
</summary>
<param name="vehicle">The vehicle to set disable auto vehicle repair.</param>
<param name="value">Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.</param>
	]]

native "SET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
		float "clutch",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
		float "rpm",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
		float "temperature",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
		float "gravity",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HANDLING_FIELD"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
		int "gear",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
		float "angle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
		float "scale",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
		float "pressure",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "health",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "offset",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Adjusts the offset of the specified wheel relative to the wheel's axle center.
Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
This function can be especially useful to set the track width of a vehicle, for example:

```
function SetVehicleFrontTrackWidth(vehicle, width)
SetVehicleWheelXOffset(vehicle, 0, -width/2)
SetVehicleWheelXOffset(vehicle, 1, width/2)
end
```
</summary>
	]]

native "SET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "value",
	}
	alias "SET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEELIE_STATE"
	arguments {
		Vehicle "vehicle",
		int "state",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Example script: <https://pastebin.com/J6XGbkCW>

List of known states:

```
1: Not wheeling.
65: Vehicle is ready to do wheelie (burnouting).
129: Vehicle is doing wheelie.
```
</summary>
<param name="vehicle">Vehicle</param>
<param name="state">Wheelie state</param>
	]]

native "SET_VISUAL_SETTING_FLOAT"
	arguments {
		charPtr "name",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Overrides a floating point value from `visualsettings.dat` temporarily.
</summary>
<param name="name">The name of the value to set, such as `pedLight.color.red`.</param>
<param name="value">The value to write.</param>
	]]

native "SHUTDOWN_LOADING_SCREEN_NUI"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
</summary>
	]]

native "START_FIND_KVP"
	arguments {
		charPtr "prefix",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "START_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "TEMP_BAN_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "STOP_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "TRIGGER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerEvent.
</summary>
	]]

native "TRIGGER_CLIENT_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventTarget",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerClientEvent.
</summary>
	]]

native "TRIGGER_LATENT_CLIENT_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventTarget",
		charPtr "eventPayload",
		int "payloadLength",
		int "bps",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerLatentClientEvent.
</summary>
	]]

native "TRIGGER_SERVER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerServerEvent.
</summary>
	]]

native "TRIGGER_LATENT_SERVER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
		int "bps",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerLatentServerEvent.
</summary>
	]]

native "VERIFY_PASSWORD_HASH"
	arguments {
		charPtr "password",
		charPtr "hash",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "WAS_EVENT_CANCELED"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the currently executing event was canceled.
</summary>
<returns>A boolean.</returns>
	]]

native "ADD_TO_CLOCK_TIME"
    hash "0xD716F30D8C8980E2"
	jhash (0xCC40D20D)
	arguments {
		int "hours",
		int "minutes",
		int "seconds",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "GET_CLOCK_DAY_OF_MONTH"
    hash "0x3D10BC92A4DB1D35"
	jhash (0xC7A5ACB7)
	ns "CLOCK"
	returns "int"
	doc [[!
	]]

native "ADVANCE_CLOCK_TIME_TO"
    hash "0xC8CA9670B9D83B3B"
	jhash (0x57B8DA7C)
	arguments {
		int "hour",
		int "minute",
		int "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "GET_CLOCK_HOURS"
    hash "0x25223CA6B4D20B7F"
	jhash (0x7EF8316F)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)  
```
</summary>
	]]

native "GET_CLOCK_DAY_OF_WEEK"
    hash "0xD972E4BD7AEB235F"
	jhash (0x84E4A289)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current day of the week.  
0: Sunday  
1: Monday  
2: Tuesday  
3: Wednesday  
4: Thursday  
5: Friday  
6: Saturday  
```
</summary>
	]]

native "GET_CLOCK_MINUTES"
    hash "0x13D2B8ADD79640F2"
	jhash (0x94AAC486)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current ingame clock minute.  
```
</summary>
	]]

native "GET_CLOCK_MONTH"
    hash "0xBBC72712E80257A1"
	jhash (0x3C48A3D5)
	ns "CLOCK"
	returns "int"
	doc [[!
	]]

native "GET_CLOCK_SECONDS"
    hash "0x494E97C2EF27C470"
	jhash (0x099C927E)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.  
```
</summary>
	]]

native "GET_CLOCK_YEAR"
    hash "0x961777E64BDAF717"
	jhash (0xB8BECF15)
	ns "CLOCK"
	returns "int"
	doc [[!
	]]

native "GET_LOCAL_TIME"
    hash "0x50C7A99057A69748"
	jhash (0x124BCFA2)
	arguments {
		intPtr "year",
		intPtr "month",
		intPtr "day",
		intPtr "hour",
		intPtr "minute",
		intPtr "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
Gets local system time as year, month, day, hour, minute and second.  
Example usage:  
int year;  
int month;  
int day;  
int hour;  
int minute;  
int second;  
or use std::tm struct  
TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);  
```
</summary>
	]]

native "GET_MILLISECONDS_PER_GAME_MINUTE"
    hash "0x2F8B4D1C595B11DB"
	jhash (0x3B74095C)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
Returns how many real ms are equal to one game minute.
A getter for [`SetMillisecondsPerGameMinute`](#_0x36CA2554).
</summary>
<returns>A number of milliseconds that equals to one game minute.</returns>
	]]

native "GET_POSIX_TIME"
    hash "0xDA488F299A5B164E"
	jhash (0xE15A5281)
	arguments {
		intPtr "year",
		intPtr "month",
		intPtr "day",
		intPtr "hour",
		intPtr "minute",
		intPtr "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
Gets system time as year, month, day, hour, minute and second.  
Example usage:  
	int year;  
	int month;  
	int day;  
	int hour;  
	int minute;  
	int second;  
	TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);  
```
</summary>
	]]

native "GET_UTC_TIME"
    hash "0x8117E09A19EEF4D3"
	jhash (0xC589CD7D)
	arguments {
		intPtr "year",
		intPtr "month",
		intPtr "day",
		intPtr "hour",
		intPtr "minute",
		intPtr "second",
	}
	alias "_GET_LOCAL_TIME"
	alias "_GET_UTC_TIME"
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
gets current UTC time  
```
</summary>
	]]

native "SET_CLOCK_DATE"
    hash "0xB096419DF0D06CE7"
	jhash (0x96891C94)
	arguments {
		int "day",
		int "month",
		int "year",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "PAUSE_CLOCK"
    hash "0x4055E40BD2DBEC1D"
	jhash (0xB02D6124)
	arguments {
		BOOL "toggle",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "SET_CLOCK_TIME"
    hash "0x47C3B5848C3E45D8"
	jhash (0x26F6AF14)
	arguments {
		int "hour",
		int "minute",
		int "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
SET_CLOCK_TIME(12, 34, 56);  
```
</summary>
	]]

native "CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY"
    hash "0xB56BBBCC2955D9CB"
	jhash (0xDD8878E9)
	alias "0xB56BBBCC2955D9CB"
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
"Can request assets for cutscene entity"? (found in decompiled scripts)  
```
</summary>
	]]

native "CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY"
    hash "0x645D0B458D8E17B5"
	jhash (0x55C30B26)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
modelHash (p1) was always 0 in R* scripts  
```
</summary>
	]]

native "CAN_SET_EXIT_STATE_FOR_CAMERA"
    hash "0xB2CBCD0930DFB420"
	jhash (0xEDAE6C02)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "DOES_CUTSCENE_ENTITY_EXIST"
    hash "0x499EF20C5DB25C59"
	jhash (0x58E67409)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY"
    hash "0x4C6A6451C79E4662"
	jhash (0x8FF5D3C4)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "GET_CUTSCENE_SECTION_PLAYING"
    hash "0x49010A6A396553D8"
	jhash (0x1026F0D6)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "_GET_CUT_FILE_NUM_SECTIONS"
    hash "0x0ABC54DE641DC0FC"
	arguments {
		charPtr "cutsceneName",
	}
	alias "0x0ABC54DE641DC0FC"
	ns "CUTSCENE"
	returns "int"
	doc [[!
<summary>
```
Jenkins hash probably is 0xFD8B1AC2
```
</summary>
	]]

native "GET_CUTSCENE_TOTAL_DURATION"
    hash "0xEE53B14A19E480D4"
	jhash (0x0824EBE8)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "GET_CUTSCENE_TIME"
    hash "0xE625BEABBAFFDAB9"
	jhash (0x53F5B5AB)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY"
    hash "0x0A2E9FDB9A8C62F6"
	jhash (0x1D09ABC7)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "Entity"
	doc [[!
	]]

native "HAS_CUT_FILE_LOADED"
    hash "0xA1C996C2A744262E"
	jhash (0x56D5B144)
	arguments {
		charPtr "cutsceneName",
	}
	alias "0xA1C996C2A744262E"
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
```
</summary>
	]]

native "GET_ENTITY_INDEX_OF_REGISTERED_ENTITY"
    hash "0xC0741A26499654CD"
	jhash (0x46D18755)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "Entity"
	doc [[!
	]]

native "HAS_CUTSCENE_LOADED"
    hash "0xC59F528E9AB9F339"
	jhash (0xF9998582)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "HAS_CUTSCENE_FINISHED"
    hash "0x7C0A893088881D57"
	jhash (0x5DED14B4)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "HAS_THIS_CUTSCENE_LOADED"
    hash "0x228D3D94F8A11C3C"
	jhash (0x3C5619F2)
	arguments {
		charPtr "cutsceneName",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "IS_CUTSCENE_PLAYBACK_FLAG_SET"
    hash "0x71B74D2AE19338D0"
	jhash (0x7B93CDAA)
	arguments {
		int "flag",
	}
	alias "0x71B74D2AE19338D0"
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
It's 100% an IS_CUTSCENE_* native.  
```
</summary>
	]]

native "IS_CUTSCENE_ACTIVE"
    hash "0x991251AFC3981F84"
	jhash (0xCCE2FE9D)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "IS_CUTSCENE_PLAYING"
    hash "0xD3C2E180A40F031E"
	jhash (0xA3A78392)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "0x011883F41211432A"
    hash "0x011883F41211432A"
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "p6",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x06EE9048FD080382"
    hash "0x06EE9048FD080382"
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x2F137B508DE238F2"
    hash "0x2F137B508DE238F2"
	jhash (0x8338DA1D)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x20746F7B1032A3C7"
    hash "0x20746F7B1032A3C7"
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x4CEBC1ED31E8925E"
    hash "0x4CEBC1ED31E8925E"
	arguments {
		charPtr "cutsceneName",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0x41FAA8FB2ECE8720"
    hash "0x41FAA8FB2ECE8720"
	jhash (0x28D54A7F)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x4FCD976DA686580C"
    hash "0x4FCD976DA686580C"
	arguments {
		Any "p0",
	}
	ns "CUTSCENE"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0x583DF8E3D4AFBD98"
    hash "0x583DF8E3D4AFBD98"
	jhash (0x5AE68AE6)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "0x708BDD8CD795B043"
    hash "0x708BDD8CD795B043"
	jhash (0x4315A7C5)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
HAS_CUTSCENE_*

Possibly HAS_CUTSCENE_CUT_THIS_FRAME, needs more research.
```
</summary>
	]]

native "0x5EDEF0CF8C1DAB3C"
    hash "0x5EDEF0CF8C1DAB3C"
	jhash (0xDBD88708)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "0x7F96F23FA9B73327"
    hash "0x7F96F23FA9B73327"
	arguments {
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
SET_VEHICLE_*
```
</summary>
	]]

native "0x8D9DF6ECA8768583"
    hash "0x8D9DF6ECA8768583"
	jhash (0x25A2CABC)
	arguments {
		int "threadId",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Example of usage:  
v_2 = SCRIPT::_30B4FA1C82DD4B9F(); // int _GET_ID_OF_NEXT_SCRIPT_IN_ENUMERATION()  
CUTSCENE::_8D9DF6ECA8768583(v_2);  
```
</summary>
	]]

native "0xA0FE76168A189DDB"
    hash "0xA0FE76168A189DDB"
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "0xC61B86C9F61EB404"
    hash "0xC61B86C9F61EB404"
	jhash (0x35721A08)
	arguments {
		BOOL "toggle",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Toggles a value (bool) for cutscenes.  
```
</summary>
	]]

native "0xE36A98D8AB3D3C66"
    hash "0xE36A98D8AB3D3C66"
	jhash (0x04377C10)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "REGISTER_ENTITY_FOR_CUTSCENE"
    hash "0xE40C1C56DF95C2E8"
	jhash (0x7CBC3EC7)
	arguments {
		Ped "cutscenePed",
		charPtr "cutsceneEntName",
		int "p2",
		Hash "modelHash",
		int "p4",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "REGISTER_SYNCHRONISED_SCRIPT_SPEECH"
    hash "0x2131046957F31B04"
	jhash (0xB60CFBB9)
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "REMOVE_CUT_FILE"
    hash "0xD00D76A7DFC9D852"
	jhash (0xB70D7C6D)
	arguments {
		charPtr "cutsceneName",
	}
	alias "0xD00D76A7DFC9D852"
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
```
</summary>
	]]

native "REMOVE_CUTSCENE"
    hash "0x440AF51A3462B86F"
	jhash (0x8052F533)
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "REQUEST_CUT_FILE"
    hash "0x06A3524161C502BA"
	jhash (0x0D732CD6)
	arguments {
		charPtr "cutsceneName",
	}
	alias "0x06A3524161C502BA"
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
```
</summary>
	]]

native "REQUEST_CUTSCENE"
    hash "0x7A86743F475D9E09"
	jhash (0xB5977853)
	arguments {
		charPtr "cutsceneName",
		int "flags",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
p1: usually 8  
Cutscene list: pastebin.com/Bbj7ANpQ  
```
</summary>
	]]

native "REQUEST_CUTSCENE_WITH_PLAYBACK_LIST"
    hash "0xC23DE0E91C30B58C"
	jhash (0xD98F656A)
	arguments {
		charPtr "cutsceneName",
		int "playbackFlags",
		int "flags",
	}
	alias "0xC23DE0E91C30B58C"
	alias "_REQUEST_CUTSCENE_EX"
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Example:  
CUTSCENE::_0xC23DE0E91C30B58C("JOSH_1_INT_CONCAT", 13, 8);  
Cutscene list: pastebin.com/Bbj7ANpQ  
```
</summary>
	]]

native "SET_CUTSCENE_FADE_VALUES"
    hash "0x8093F23ABACCC7D4"
	jhash (0xD19EF0DD)
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_ENTITY_STREAMING_FLAGS"
    hash "0x4C61C75BEE8184C2"
	jhash (0x47DB08A9)
	arguments {
		charPtr "cutsceneEntName",
		int "p1",
		int "p2",
	}
	alias "0x4C61C75BEE8184C2"
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_PED_COMPONENT_VARIATION"
    hash "0xBA01E7B6DEEFBBC9"
	jhash (0x6AF994A1)
	arguments {
		charPtr "cutsceneEntName",
		int "p1",
		int "p2",
		int "p3",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_ORIGIN"
    hash "0xB812B3FD1C01CF27"
	jhash (0xB0AD7792)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		int "p4",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
p3 could be heading. Needs more research.  
```
</summary>
	]]

native "SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED"
    hash "0x2A56C06EBEF2B0D9"
	jhash (0x1E7DA95E)
	arguments {
		charPtr "cutsceneEntName",
		Ped "ped",
		Hash "modelHash",
	}
	alias "0x2A56C06EBEF2B0D9"
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_PED_PROP_VARIATION"
    hash "0x0546524ADE2E9723"
	jhash (0x22E9A9DE)
	arguments {
		charPtr "cutsceneEntName",
		int "p1",
		int "p2",
		int "p3",
		Hash "modelHash",
	}
	alias "0x0546524ADE2E9723"
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Thanks R*! ;)  
if ((l_161 == 0) || (l_161 == 2)) {  
    sub_2ea27("Trying to set Jimmy prop variation");  
    CUTSCENE::_0546524ADE2E9723("Jimmy_Boston", 1, 0, 0, 0);  
}  
```
</summary>
	]]

native "START_CUTSCENE"
    hash "0x186D5CB5E7B0FF7B"
	jhash (0x210106F6)
	arguments {
		int "flags",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
some kind of flag. Usually 0.  
```
</summary>
	]]

native "SET_CUTSCENE_TRIGGER_AREA"
    hash "0x9896CE4721BE84BA"
	jhash (0x9D76D9DE)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Only used twice in R* scripts  
```
</summary>
	]]

native "START_CUTSCENE_AT_COORDS"
    hash "0x1C9ADDA3244A1FBF"
	jhash (0x58BEA436)
	arguments {
		float "x",
		float "y",
		float "z",
		int "flags",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
p3: some kind of flag. Usually 0.  
```
</summary>
	]]

native "STOP_CUTSCENE"
    hash "0xC7272775B4DC786E"
	jhash (0x5EE84DC7)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "STOP_CUTSCENE_IMMEDIATELY"
    hash "0xD220BDD222AC4A1E"
	jhash (0xF528A2AD)
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "WAS_CUTSCENE_SKIPPED"
    hash "0x40C8656EDAEDD569"
	jhash (0xC9B6949D)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_BOOLEAN"
    hash "0xF8B0F5A43E928C76"
	jhash (0x08174B90)
	arguments {
		AnyPtr "arrayData",
		BOOL "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_FLOAT"
    hash "0x57A995FD75D37F56"
	jhash (0xE4302123)
	arguments {
		AnyPtr "arrayData",
		float "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_INTEGER"
    hash "0xCABDB751D86FE93B"
	jhash (0xF29C0B36)
	arguments {
		AnyPtr "arrayData",
		int "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_OBJECT"
    hash "0x6889498B3E19C797"
	jhash (0xC174C71B)
	arguments {
		AnyPtr "arrayData",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_STRING"
    hash "0x2F0661C155AEEEAA"
	jhash (0xF3C01350)
	arguments {
		AnyPtr "arrayData",
		charPtr "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_VECTOR3"
    hash "0x407F8D034F70F0C2"
	jhash (0x16F464B6)
	arguments {
		AnyPtr "arrayData",
		float "valueX",
		float "valueY",
		float "valueZ",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_BOOLEAN"
    hash "0x50C1B2874E50C114"
	jhash (0xA2E5F921)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_FLOAT"
    hash "0xC0C527B525D7CFB5"
	jhash (0x08AD2CC2)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "float"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_OBJECT"
    hash "0x8B5FADCC4E3A145F"
	jhash (0xECE81278)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_INTEGER"
    hash "0x3E5AE19425CD74BE"
	jhash (0xBB120CFC)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_STRING"
    hash "0xD3F2FFEB8D836F52"
	jhash (0x93F985A6)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "charPtr"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_SIZE"
    hash "0x065DB281590CEA2D"
	jhash (0xA8A21766)
	arguments {
		AnyPtr "arrayData",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_VECTOR3"
    hash "0x8D2064E5B64A628A"
	jhash (0x80E3DA55)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "Vector3"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_TYPE"
    hash "0x3A0014ADB172A3C5"
	jhash (0xFA2402C8)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
<summary>
```
Types:  
1 = Boolean  
2 = Integer  
3 = Float  
4 = String  
5 = Vector3  
6 = Object  
7 = Array  
```
</summary>
	]]

native "DATAFILE_CREATE"
    hash "0xD27058A1CA2B13EE"
	jhash (0x95F8A221)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "DATAFILE_CLEAR_WATCH_LIST"
    hash "0x6CC86E78358D5119"
	jhash (0x5B39D0AC)
	alias "0x6CC86E78358D5119"
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "DATAFILE_GET_FILE_DICT"
    hash "0x906B778CA1DC72B6"
	jhash (0x86DDF9C2)
	alias "0x906B778CA1DC72B6"
	ns "DATAFILE"
	returns "charPtr"
	doc [[!
	]]

native "DATAFILE_DELETE"
    hash "0x9AB9C1CFC8862DFB"
	jhash (0xDEF31B0A)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "DATAFILE_IS_SAVE_PENDING"
    hash "0xBEDB96A7584AA8CF"
	jhash (0x5DCD0796)
	alias "0xBEDB96A7584AA8CF"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
if (!DATAFILE::_BEDB96A7584AA8CF())  
{  
    if (!g_109E3)  
	{  
        if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS()))  
{  
            if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE())  
	{  
                g_17A8B = 0;  
            }  
            if (!g_D52C)  
	{  
                sub_730();  
            }  
        }  
    }  
}  
```
</summary>
	]]

native "DATAFILE_START_SAVE_TO_CLOUD"
    hash "0x83BCCE3224735F05"
	jhash (0x768CBB35)
	arguments {
		charPtr "filename",
	}
	alias "0x83BCCE3224735F05"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
Saves a JSON file? It might even be saving it to the Rockstar Cloud, but I have no way of verifying this  
"shrinkletter.c4", line ~378:  
DATAFILE::DATAFILE_CREATE();  
v_5 = DATAFILE::_GET_ROOT_OBJECT();  
DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "in", a_2);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "st", &a_2._f1);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "mp", &a_2._f2);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "ms", &a_2._f3);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sc", &a_2._f5);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "pr", &a_2._f6);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fa", &a_2._f7);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sm", &a_2._f8);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "kp", &a_2._f9);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sv", &a_2._fA);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "yo", &a_2._fB);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fi", &a_2._fC);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "rc", &a_2._fD);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "co", &a_2._fE);  
DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "su", a_2._fF);  
DATAFILE::_83BCCE3224735F05("gta5/psych/index.json"); // saves the file?  
```
</summary>
	]]

native "DATAFILE_WATCH_REQUEST_ID"
    hash "0xAD6875BBC0FC899C"
	jhash (0x621388FF)
	arguments {
		int "id",
	}
	alias "0xAD6875BBC0FC899C"
	ns "DATAFILE"
	returns "void"
	doc [[!
<summary>
```
Adds the given request ID to the watch list.
```
</summary>
	]]

native "_LOAD_UGC_FILE"
    hash "0xC5238C011AF405E4"
	jhash (0x660C468E)
	arguments {
		charPtr "filename",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.  
Returns whether or not the file was successfully loaded.  
Example:  
DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"  
```
</summary>
	]]

native "0x01095C95CD46B624"
    hash "0x01095C95CD46B624"
	jhash (0xB8515B2F)
	arguments {
		int "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
if ((NETWORK::_597F8DBA9B206FC7() > 0) && DATAFILE::_01095C95CD46B624(0)) {  
v_10 = DATAFILE::_GET_ROOT_OBJECT();  
v_11 = DATAFILE::_OBJECT_VALUE_GET_INTEGER(v_10, "pt");  
sub_20202(2, v_11);  
a_0 += 1;  
		} else {   
a_0 += 1;  
		}  
```
</summary>
	]]

native "0x15FF52B809DB2353"
    hash "0x15FF52B809DB2353"
	jhash (0x36FB8B3F)
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x22DA66936E0FFF37"
    hash "0x22DA66936E0FFF37"
	jhash (0xB41064A4)
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x2ED61456317B8178"
    hash "0x2ED61456317B8178"
	jhash (0x4E03F632)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "0x4DFDD9EB705F8140"
    hash "0x4DFDD9EB705F8140"
	jhash (0x0B4087F7)
	arguments {
		BOOLPtr "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x52818819057F2B40"
    hash "0x52818819057F2B40"
	jhash (0xA4D1B30E)
	arguments {
		int "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x9CB0BFA7A9342C3D"
    hash "0x9CB0BFA7A9342C3D"
	jhash (0xCB6A351E)
	arguments {
		int "p0",
		BOOL "p1",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0xC55854C7D7274882"
    hash "0xC55854C7D7274882"
	jhash (0xF11F956F)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "0x8F5EA1C01D65A100"
    hash "0x8F5EA1C01D65A100"
	jhash (0x9DB63CFF)
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0xFCCAE5B92A830878"
    hash "0xFCCAE5B92A830878"
	jhash (0x01393D16)
	arguments {
		int "index",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
DATAFILE_IS_*
```
</summary>
	]]

native "0xA69AC4ADE82B57A4"
    hash "0xA69AC4ADE82B57A4"
	jhash (0xE8D56DA2)
	arguments {
		int "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_BOOLEAN"
    hash "0x35124302A556A325"
	jhash (0x9B29D99B)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		BOOL "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "0xF8CC1EBE0B62E29F"
    hash "0xF8CC1EBE0B62E29F"
	jhash (0x2A9411DA)
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_INTEGER"
    hash "0xE7E035450A7948D5"
	jhash (0xEFCF554A)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		int "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_ARRAY"
    hash "0x5B11728527CA6E5F"
	jhash (0x03939B8D)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_FLOAT"
    hash "0xC27E1CC2D795105E"
	jhash (0xE972CACF)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		float "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_STRING"
    hash "0x8FF3847DADD8E30C"
	jhash (0xD437615C)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		charPtr "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_OBJECT"
    hash "0xA358F56F10732EE1"
	jhash (0x96A8E05F)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_ARRAY"
    hash "0x7A983AA9DA2659ED"
	jhash (0x1F2F7D00)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_VECTOR3"
    hash "0x4CD49B76338C7DEE"
	jhash (0x75FC6C3C)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		float "valueX",
		float "valueY",
		float "valueZ",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_BOOLEAN"
    hash "0x1186940ED72FFEEC"
	jhash (0x8876C872)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_FLOAT"
    hash "0x06610343E73B9727"
	jhash (0xA92C1AF4)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "float"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_INTEGER"
    hash "0x78F06F6B1FB5A80C"
	jhash (0xA6C68693)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_OBJECT"
    hash "0xB6B9DDC412FCEEE2"
	jhash (0xC9C13D8D)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_STRING"
    hash "0x3D2FD9E763B24472"
	jhash (0x942160EC)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "charPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_TYPE"
    hash "0x031C55ED33227371"
	jhash (0x2678342A)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
<summary>
```
Types:  
1 = Boolean  
2 = Integer  
3 = Float  
4 = String  
5 = Vector3  
6 = Object  
7 = Array  
```
</summary>
	]]

native "UGC_CREATE_MISSION"
    hash "0xA5EFC3E847D60507"
	jhash (0xD96860FC)
	arguments {
		charPtr "contentName",
		charPtr "description",
		charPtr "tagsCsv",
		charPtr "contentTypeName",
		BOOL "publish",
	}
	alias "0xA5EFC3E847D60507"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
NOTE: 'p1' might be some kind of array.  
```
</summary>
	]]

native "_OBJECT_VALUE_GET_VECTOR3"
    hash "0x46CD3CB66E0825CC"
	jhash (0xE84A127A)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "Vector3"
	doc [[!
	]]

native "UGC_UPDATE_CONTENT"
    hash "0x648E7A5434AF7969"
	jhash (0x459F2683)
	arguments {
		charPtr "contentId",
		AnyPtr "data",
		BOOL "dataCount",
		charPtr "contentName",
		charPtr "description",
		charPtr "tagsCsv",
		charPtr "contentTypeName",
	}
	alias "0x648E7A5434AF7969"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 2: int dataCount
```
</summary>
	]]

native "UGC_CREATE_CONTENT"
    hash "0xC84527E235FCA219"
	jhash (0xF09157B0)
	arguments {
		charPtr "data",
		BOOL "dataCount",
		charPtr "contentName",
		charPtr "description",
		charPtr "tagsCsv",
		charPtr "contentTypeName",
		BOOL "publish",
	}
	alias "0xC84527E235FCA219"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 1: int dataCount
```
</summary>
	]]

native "UGC_SET_PLAYER_DATA"
    hash "0x692D808C34A82143"
	jhash (0xBB6321BD)
	arguments {
		charPtr "contentId",
		float "rating",
		charPtr "contentTypeName",
	}
	alias "0x692D808C34A82143"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "UGC_UPDATE_MISSION"
    hash "0x4645DE9980999E93"
	jhash (0xDBB83E2B)
	arguments {
		charPtr "contentId",
		charPtr "contentName",
		charPtr "description",
		charPtr "tagsCsv",
		charPtr "contentTypeName",
	}
	alias "0x4645DE9980999E93"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
NOTE: 'p2' might be some kind of array.  
```
</summary>
	]]

native "DECOR_EXIST_ON"
    hash "0x05661B80A8C9165F"
	jhash (0x74EF9C40)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not the specified property is set for the entity.  
```
</summary>
	]]

native "DECOR_GET_FLOAT"
    hash "0x6524A2F114706F43"
	jhash (0x8DE5382F)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	alias "_DECOR_GET_FLOAT"
	ns "DECORATOR"
	returns "float"
	doc [[!
<summary>
```
The native name is correct but the db automatically prefixes "_" to unknown natives when changed.  
```
</summary>
	]]

native "DECOR_GET_INT"
    hash "0xA06C969B02A97298"
	jhash (0xDDDE59B5)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "int"
	doc [[!
	]]

native "DECOR_GET_BOOL"
    hash "0xDACE671663F2F5DB"
	jhash (0xDBCE51E0)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
	]]

native "DECOR_REGISTER"
    hash "0x9FD90732F56403CE"
	jhash (0x68BD42A9)
	arguments {
		charPtr "propertyName",
		int "type",
	}
	ns "DECORATOR"
	returns "void"
	doc [[!
<summary>
```
Found this in standard_global_init.c4 line 1898  
void sub_523a() {  
    DECORATOR::DECOR_REGISTER("Player_Vehicle", 3);  
    DECORATOR::DECOR_REGISTER("PV_Slot", 3);  
    DECORATOR::DECOR_REGISTER("Previous_Owner", 3);  
    DECORATOR::DECOR_REGISTER("Sprayed_Vehicle_Decorator", 2);  
    DECORATOR::DECOR_REGISTER("Sprayed_Vehicle_Timer_Dec", 5);  
    DECORATOR::DECOR_REGISTER("Vehicle_Reward", 3);  
    DECORATOR::DECOR_REGISTER("Vehicle_Reward_Teams", 3);  
    DECORATOR::DECOR_REGISTER("Skill_Blocker", 2);  
    DECORATOR::DECOR_REGISTER("TargetPlayerForTeam", 3);  
    DECORATOR::DECOR_REGISTER("XP_Blocker", 2);  
    DECORATOR::DECOR_REGISTER("CrowdControlSetUp", 3);  
    DECORATOR::DECOR_REGISTER("Bought_Drugs", 2);  
    DECORATOR::DECOR_REGISTER("HeroinInPossession", 1);  
    DECORATOR::DECOR_REGISTER("CokeInPossession", 1);  
    DECORATOR::DECOR_REGISTER("WeedInPossession", 1);  
    DECORATOR::DECOR_REGISTER("MethInPossession", 1);  
    DECORATOR::DECOR_REGISTER("bombdec", 3);  
    DECORATOR::DECOR_REGISTER("bombdec1", 3);  
    DECORATOR::DECOR_REGISTER("bombowner", 3);  
    DECORATOR::DECOR_REGISTER("noPlateScan", 2);  
    DECORATOR::DECOR_REGISTER("prisonBreakBoss", 2);  
    DECORATOR::DECOR_REGISTER("cashondeadbody", 3);  
    DECORATOR::DECOR_REGISTER("MissionType", 3);  
    DECORATOR::DECOR_REGISTER("MatchId", 3);  
    DECORATOR::DECOR_REGISTER("TeamId", 3);  
    DECORATOR::DECOR_REGISTER("Not_Allow_As_Saved_Veh", 3);  
    DECORATOR::DECOR_REGISTER("Veh_Modded_By_Player", 3);  
    DECORATOR::DECOR_REGISTER("MPBitset", 3);  
    DECORATOR::DECOR_REGISTER("MC_EntityID", 3);  
    DECORATOR::DECOR_REGISTER("MC_ChasePedID", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team0_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team1_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team2_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team3_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("AttributeDamage", 3);  
    DECORATOR::DECOR_REGISTER("GangBackup", 3);  
    DECORATOR::DECOR_REGISTER("CreatedByPegasus", 2);  
    DECORATOR::DECOR_REGISTER("BeforeCorona_0", 2);  
}  
-----------------------------------------------------------------------  
Defines type of property for property name.  
enum eDecorType  
{  
	DECOR_TYPE_FLOAT = 1,  
	DECOR_TYPE_BOOL,  
	DECOR_TYPE_INT,  
	DECOR_TYPE_UNK,  
	DECOR_TYPE_TIME  
};  
```
</summary>
	]]

native "DECOR_IS_REGISTERED_AS_TYPE"
    hash "0x4F14F9F870D6FBC8"
	jhash (0x7CF0971D)
	arguments {
		charPtr "propertyName",
		int "type",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
Is property of that type.  
enum eDecorType  
{  
	DECOR_TYPE_FLOAT = 1,  
	DECOR_TYPE_BOOL,  
	DECOR_TYPE_INT,  
	DECOR_TYPE_UNK,  
	DECOR_TYPE_TIME  
};  
```
</summary>
	]]

native "DECOR_REMOVE"
    hash "0x00EE9F297C738720"
	jhash (0xE0E2640B)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
	]]

native "DECOR_REGISTER_LOCK"
    hash "0xA9D14EEA259F9248"
	jhash (0x7F3F1C02)
	ns "DECORATOR"
	returns "void"
	doc [[!
<summary>
```
Called after all decorator type initializations.  
```
</summary>
	]]

native "DECOR_SET_BOOL"
    hash "0x6B1E8E2ED1335B71"
	jhash (0x8E101F5C)
	arguments {
		Entity "entity",
		charPtr "propertyName",
		BOOL "value",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
This function sets metadata of type bool to specified entity.  
```
</summary>
	]]

native "DECOR_SET_FLOAT"
    hash "0x211AB1DD8D0F363A"
	jhash (0xBC7BD5CB)
	arguments {
		Entity "entity",
		charPtr "propertyName",
		float "value",
	}
	alias "_DECOR_SET_FLOAT"
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
The native name is correct but the db automatically prefixes "_" to unknown natives when changed.  
```
</summary>
	]]

native "DECOR_SET_INT"
    hash "0x0CE3AA5E1CA19E10"
	jhash (0xDB718B21)
	arguments {
		Entity "entity",
		charPtr "propertyName",
		int "value",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
Sets property to int.  
```
</summary>
	]]

native "DECOR_SET_TIME"
    hash "0x95AED7B8E39ECAA4"
	jhash (0xBBAEEF94)
	arguments {
		Entity "entity",
		charPtr "propertyName",
		int "timestamp",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
	]]

native "0x241FCA5B1AA14F75"
    hash "0x241FCA5B1AA14F75"
	jhash (0x0AF83036)
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
------------------------  
| Belongs in DLC2 |  
------------------------  
Only used once in scripts, in maintransition.  
maintransition.c4, line ~82432:  
if (PED::_7350823473013C02(PLAYER::PLAYER_PED_ID()) && (DECORATOR::_241FCA5B1AA14F75() == 0)) {  
    g_2542A5 = a_1; // 'g_2542A5' used in 'building_controller.ysc' for IPL stuff?  
    return 1;  
}  
Likely used solely for the players ped. The function it's in seems to only be used for initialization/quitting. Called among natives to discard scaleforms, disable frontend, fading in/out, etc. Neighboring strings to some calls include "HUD_JOINING", "HUD_QUITTING".  
```
</summary>
	]]

native "_GET_EXTRA_CONTENT_PACK_HAS_BEEN_INSTALLED"
    hash "0x8D30F648014A92B5"
	jhash (0xF69B729C)
	alias "0x8D30F648014A92B5"
	ns "DLC"
	returns "BOOL"
	doc [[!
	]]

native "HAS_CLOUD_REQUESTS_FINISHED"
    hash "0x46E2B844905BC5F0"
	jhash (0x6087C10C)
	arguments {
		AnyPtr "variable",
		Any "unused",
	}
	alias "_NULLIFY"
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
Sets the value of the specified variable to 0.  
Always returns true.  
bool _NULLIFY(void* variable, int unused)  
{  
    *variable = NULL;  
    return true;  
}  
```

```
NativeDB Parameter 0: BOOL* variable
```
</summary>
	]]

native "GET_IS_LOADING_SCREEN_ACTIVE"
    hash "0x10D0A8F259E93EC9"
	jhash (0x517B601B)
	ns "DLC"
	returns "BOOL"
	doc [[!
	]]

native "_LOAD_MP_DLC_MAPS"
    hash "0x0888C3502DBBEEF5"
	jhash (0xC65586A9)
	ns "DLC"
	returns "void"
	doc [[!
<summary>
```
This loads the GTA:O dlc map parts (high end garages, apartments).  
Works in singleplayer.  
In order to use GTA:O heist IPL's you have to call this native with the following params: _9BAE5AD2508DF078(1);  
```
</summary>
	]]

native "0x9489659372A81585"
    hash "0x9489659372A81585"
	jhash (0xC2169164)
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_DLC_PRESENT"
    hash "0x812595A0644CE1DE"
	jhash (0x1F321943)
	arguments {
		Hash "dlcHash",
	}
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
DLC2::IS_DLC_PRESENT($\mpbusiness2\);  
($ = gethashkey)  
bruteforce these:  
0xB119F6D  
0x96F02EE6  
```
</summary>
	]]

native "0xF2E07819EF1A5289"
    hash "0xF2E07819EF1A5289"
	jhash (0x881B1FDB)
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "_LOAD_SP_DLC_MAPS"
    hash "0xD7C10C4A637992C9"
	jhash (0x8BF60FC3)
	alias "0xD7C10C4A637992C9"
	ns "DLC"
	returns "void"
	doc [[!
<summary>
```
Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, 0888C3502DBBEEF5 is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).  
The original (and wrong) definition is below:  
This unload the GTA:O DLC map parts (like high end garages/apartments).  
Works in singleplayer.  
```
</summary>
	]]

native "0xA213B11DFF526300"
    hash "0xA213B11DFF526300"
	jhash (0xF79A97F5)
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS"
    hash "0x18FF00FC7EFF559E"
	jhash (0x28924E98)
	arguments {
		Entity "entity",
		int "forceType",
		float "x",
		float "y",
		float "z",
		BOOL "p5",
		BOOL "isDirectionRel",
		BOOL "isForceRel",
		BOOL "p8",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "ATTACH_ENTITY_TO_ENTITY_PHYSICALLY"
    hash "0xC3675780C92F90F9"
	jhash (0x0547417F)
	arguments {
		Entity "entity1",
		Entity "entity2",
		int "boneIndex1",
		int "boneIndex2",
		float "xPos1",
		float "yPos1",
		float "zPos1",
		float "xPos2",
		float "yPos2",
		float "zPos2",
		float "xRot",
		float "yRot",
		float "zRot",
		float "breakForce",
		BOOL "fixedRot",
		BOOL "p15",
		BOOL "collision",
		BOOL "teleport",
		int "p18",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
breakForce is the amount of force required to break the bond.  
fixedRot - if false it ignores entity vector  
p15 - is 1 or 0 in scripts - unknoun what it does  
collision - controls collision between the two entities (FALSE disables collision).  
teleport - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)  
p18 - is always 2 in scripts.  
-------------------------  
teleport is not exactly "doNotTeleport". What it actually does is the following:  
if true, entities will be attached as if loosely tethered, up to the maximum offset position specified. Almost as if attached by an invisible rope.  
if false, entities will be attached in a fixed position as specified in the offset position.  
When p15 = true, it seems to force teleport to false.  
It also lets the Rotation params actually work.  
```
</summary>
	]]

native "CREATE_FORCED_OBJECT"
    hash "0x150E808B375A385A"
	jhash (0x335190A2)
	arguments {
		float "x",
		float "y",
		float "z",
		Any "p3",
		Hash "modelHash",
		BOOL "p5",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "APPLY_FORCE_TO_ENTITY"
    hash "0xC5F68BE9613E2D18"
	jhash (0xC1C0855A)
	arguments {
		Entity "entity",
		int "forceType",
		float "x",
		float "y",
		float "z",
		float "offX",
		float "offY",
		float "offZ",
		int "boneIndex",
		BOOL "isDirectionRel",
		BOOL "ignoreUpVec",
		BOOL "isForceRel",
		BOOL "p12",
		BOOL "p13",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
Applies a force to the specified entity.

**List of force types (p1)**:

```
public enum ForceType
{
    MinForce = 0,
    MaxForceRot = 1,
    MinForce2 = 2,
    MaxForceRot2 = 3,
    ForceNoRot = 4,
    ForceRotPlusForce = 5
}
```

Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
</summary>
<param name="entity">The entity you want to apply a force on</param>
<param name="forceType">See native description above for a list of commonly used values</param>
<param name="x">Force amount (X)</param>
<param name="y">Force amount (Y)</param>
<param name="z">Force amount (Z)</param>
<param name="offX">Rotation/offset force (X)</param>
<param name="offY">Rotation/offset force (Y)</param>
<param name="offZ">Rotation/offset force (Z)</param>
<param name="boneIndex">(Often 0) Entity bone index</param>
<param name="isDirectionRel">(Usually false) Vector defined in local (body-fixed) coordinate frame</param>
<param name="ignoreUpVec">(Usually true)</param>
<param name="isForceRel">(Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration</param>
<param name="p12">(Usually false)</param>
<param name="p13">(Usually true)</param>
	]]

native "CREATE_MODEL_HIDE"
    hash "0x8A97BCA30A0CE478"
	jhash (0x7BD5CF2F)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "model",
		BOOL "p5",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
p5 = sets as true in scripts  
Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  
Network players do not see changes done with this.  
```
</summary>
	]]

native "ATTACH_ENTITY_TO_ENTITY"
    hash "0x6B9BBD38AB0796DF"
	jhash (0xEC024237)
	arguments {
		Entity "entity1",
		Entity "entity2",
		int "boneIndex",
		float "xPos",
		float "yPos",
		float "zPos",
		float "xRot",
		float "yRot",
		float "zRot",
		BOOL "p9",
		BOOL "useSoftPinning",
		BOOL "collision",
		BOOL "isPed",
		int "vertexIndex",
		BOOL "fixedRot",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Attaches entity1 to bone (boneIndex) of entity2.  
boneIndex - this is different to boneID, use GET_PED_BONE_INDEX to get the index from the ID. use the index for attaching to specific bones. entity1 will be attached to entity2's centre if bone index given doesn't correspond to bone indexes for that entity type.  
useSoftPinning - when 2 entities with collision collide and form into a ball they will break the attachment of the entity that they were attached to. Or when an entity is attached far away and then the resets.  
collision - controls collision between the two entities (FALSE disables collision).  
isPed - pitch doesnt work when false and roll will only work on negative numbers (only peds)  
vertexIndex - position of vertex  
fixedRot - if false it ignores entity vector  
```
</summary>
	]]

native "CREATE_MODEL_SWAP"
    hash "0x92C47782FDA8B2A3"
	jhash (0x0BC12F9E)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "originalModel",
		Hash "newModel",
		BOOL "p6",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Only works with objects!  
Network players do not see changes done with this.  
```
</summary>
	]]

native "CLEAR_ENTITY_LAST_DAMAGE_ENTITY"
    hash "0xA72CD9CA74A5ECBA"
	jhash (0x2B83F43B)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "DETACH_ENTITY"
    hash "0x961AC54BF0613F5D"
	jhash (0xC8EFCB41)
	arguments {
		Entity "entity",
		BOOL "p1",
		BOOL "collision",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
p1 and p2 have no effect   
maybe a quick disassembly will tell us what they do  
the statement below seems to be false. when I tried it with 2 vehicles:  
if p2 is set to true, the both entities won't collide with the other until the distance between them is above 4 meters.  
```
</summary>
	]]

native "CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS"
    hash "0x3A52AE588830BF7F"
	jhash (0x07AAF22C)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "model",
		BOOL "p5",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "DOES_ENTITY_EXIST"
    hash "0x7239B21A38F536BA"
	jhash (0x3AC90869)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "DOES_ENTITY_HAVE_PHYSICS"
    hash "0xDA95EA3317CC5064"
	jhash (0x9BCD2979)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "DELETE_ENTITY"
    hash "0xAE3CBE5BF394C9C9"
	jhash (0xFAA3D236)
	arguments {
		EntityPtr "entity",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Deletes the specified entity, then sets the handle pointed to by the pointer to NULL.  
```
</summary>
	]]

native "_ENABLE_ENTITY_UNK"
    hash "0x6CE177D014502E8A"
	arguments {
		Entity "entity",
	}
	alias "0x6CE177D014502E8A"
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
ENABLE_*
```
</summary>
	]]

native "DOES_ENTITY_BELONG_TO_THIS_SCRIPT"
    hash "0xDDE6DF5AE89981D2"
	jhash (0xACFEB3F9)
	arguments {
		Entity "entity",
		BOOL "p2",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "FORCE_ENTITY_AI_AND_ANIMATION_UPDATE"
    hash "0x40FDEDB72F8293B2"
	jhash (0x58D9775F)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.  
```
</summary>
	]]

native "FREEZE_ENTITY_POSITION"
    hash "0x428CA6DBD1094446"
	jhash (0x65C16D57)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
No, this should be called SET_ENTITY_KINEMATIC. It does more than just "freeze" it's position.  
^Rockstar Devs named it like that, Now cry about it.  
```
</summary>
	]]

native "DOES_ENTITY_HAVE_DRAWABLE"
    hash "0x060D6E96F8B8E48D"
	jhash (0xA5B33300)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "FIND_ANIM_EVENT_PHASE"
    hash "0x07F1BE2BCCAA27A7"
	jhash (0xC41DDA62)
	arguments {
		charPtr "animDictionary",
		charPtr "animName",
		charPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
In the script "player_scene_t_bbfight.c4":  
"if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))"  
-- &l_16E (p0) is requested as an anim dictionary earlier in the script.  
-- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param.  
-- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim  
--v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:   
"if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))"  
Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though  
-alphazolam  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_ENTITY_ALPHA"
    hash "0x5A47B3B5E63E94C6"
	jhash (0x1560B017)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_ANIM_CURRENT_TIME"
    hash "0x346D81500D088F42"
	jhash (0x83943F41)
	arguments {
		Entity "entity",
		charPtr "animDict",
		charPtr "animName",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  
Example:  
0.000000 - mark the starting of animation.  
0.500000 - mark the midpoint of the animation.  
1.000000 - mark the end of animation.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_ANIM_DURATION"
    hash "0xFEDDF04D62B8D790"
	jhash (0x8B5E3E3D)
	arguments {
		charPtr "animDict",
		charPtr "animName",
	}
	alias "_GET_ANIM_DURATION"
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_ENTITY_ATTACHED_TO"
    hash "0x48C2BED9180FE123"
	jhash (0xFE1589F9)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Entity"
	doc [[!
	]]

native "GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY"
    hash "0xE465D4AB7CA6AE72"
	jhash (0xAB415C07)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
	]]

native "_GET_ENTITY_CAN_BE_DAMAGED"
    hash "0xD95CC5D2AB15A09F"
	arguments {
		Entity "entity",
	}
	alias "0xD95CC5D2AB15A09F"
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "GET_ENTITY_COORDS"
    hash "0x3FEF770D40960D5A"
	jhash (0x1647F1CB)
	arguments {
		Entity "entity",
		BOOL "alive",
	}
	ns "ENTITY"
    apiset "client"
	returns "Vector3"
	doc [[!
<summary>
Gets the current coordinates for a specified entity.
</summary>
<param name="entity">The entity to get the coordinates from.</param>
<param name="alive">Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.</param>
<returns>The current entity coordinates.</returns>
	]]

native "GET_ENTITY_ANIM_TOTAL_TIME"
    hash "0x50BD2730B191E360"
	jhash (0x433A9D18)
	arguments {
		Entity "entity",
		charPtr "animDict",
		charPtr "animName",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Returns a float value representing animation's total playtime in milliseconds.  
Example:  
GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")   
return 20800.000000  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_ENTITY_BONE_INDEX_BY_NAME"
    hash "0xFB71170B7E76ACBA"
	jhash (0xE4ECAC22)
	arguments {
		Entity "entity",
		charPtr "boneName",
	}
	ns "ENTITY"
	returns "int"
	doc [[!
<summary>
```
Returns the index of the bone. If the bone was not found, -1 will be returned.   
list:  
pastebin.com/D7JMnX1g  
BoneNames:  
	chassis,  
	windscreen,  
	seat_pside_r,  
	seat_dside_r,  
	bodyshell,  
	suspension_lm,  
	suspension_lr,  
	platelight,  
	attach_female,  
	attach_male,  
	bonnet,  
	boot,  
	chassis_dummy,	//Center of the dummy  
	chassis_Control,	//Not found yet  
	door_dside_f,	//Door left, front  
	door_dside_r,	//Door left, back  
	door_pside_f,	//Door right, front  
	door_pside_r,	//Door right, back  
	Gun_GripR,  
	windscreen_f,  
	platelight,	//Position where the light above the numberplate is located  
	VFX_Emitter,  
	window_lf,	//Window left, front  
	window_lr,	//Window left, back  
	window_rf,	//Window right, front  
	window_rr,	//Window right, back  
	engine,	//Position of the engine  
	gun_ammo,  
	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".  
	wheel_lf,	//Wheel left, front  
	wheel_lr,	//Wheel left, back  
	wheel_rf,	//Wheel right, front  
	wheel_rr,	//Wheel right, back  
	exhaust,	//Exhaust. shows only the position of the stock-exhaust  
	overheat,	//A position on the engine(not exactly sure, how to name it)  
	misc_e,	//Not a car-bone.  
	seat_dside_f,	//Driver-seat  
	seat_pside_f,	//Seat next to driver  
	Gun_Nuzzle,  
	seat_r  
I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.  
```
</summary>
	]]

native "GET_ENTITY_FORWARD_X"
    hash "0x8BB4EF4214E0E6D5"
	jhash (0x49FAE914)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Gets the X-component of the entity's forward vector.  
```
</summary>
	]]

native "GET_ENTITY_COLLISION_DISABLED"
    hash "0xCCF1E97BEFDAE480"
	jhash (0xE8C0C629)
	arguments {
		Entity "entity",
	}
	alias "0xCCF1E97BEFDAE480"
	alias "_GET_ENTITY_COLLISON_DISABLED"
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "GET_ENTITY_FORWARD_Y"
    hash "0x866A4A5FAE349510"
	jhash (0x9E2F917C)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Gets the Y-component of the entity's forward vector.  
```
</summary>
	]]

native "GET_ENTITY_HEALTH"
    hash "0xEEF059FAD016D209"
	jhash (0x8E3222B7)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "int"
	doc [[!
<summary>
```
Returns an integer value of entity's current health.  
Example of range for ped:  
- Player [0 to 200]  
- Ped [100 to 200]  
- Vehicle [0 to 1000]  
- Object [0 to 1000]  
Health is actually a float value but this native casts it to int.  
In order to get the actual value, do:  
float health = *(float *)(entityAddress + 0x280);  
```
</summary>
	]]

native "GET_ENTITY_FORWARD_VECTOR"
    hash "0x0A794A5A57F8DF91"
	jhash (0x84DCECBF)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
<summary>
```
Gets the entity's forward vector.  
```
</summary>
	]]

native "GET_ENTITY_HEIGHT_ABOVE_GROUND"
    hash "0x1DD55701034110E5"
	jhash (0x57F56A4D)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Return height (z-dimension) above ground.   
Example: The pilot in a titan plane is 1.844176 above ground.  
How can i convert it to meters?  
Everything seems to be in meters, probably this too.  
```
</summary>
	]]

native "GET_ENTITY_LOD_DIST"
    hash "0x4159C2762B5791D6"
	jhash (0x4DA3D51F)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "int"
	doc [[!
<summary>
```
Returns the LOD distance of an entity.  
```
</summary>
	]]

native "GET_ENTITY_HEADING"
    hash "0xE83D4F9BA2A38914"
	jhash (0x972CC383)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.  
```
</summary>
	]]

native "GET_ENTITY_HEIGHT"
    hash "0x5A504562485944DD"
	jhash (0xEE443481)
	arguments {
		Entity "entity",
		float "X",
		float "Y",
		float "Z",
		BOOL "atTop",
		BOOL "inWorldCoords",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
	]]

native "GET_ENTITY_MODEL"
    hash "0x9F47B058362C84B5"
	jhash (0xDAFCB3EC)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Hash"
	doc [[!
<summary>
```
Returns the model hash from the entity  
Sometimes throws an exception, idk what causes it though.  
```
</summary>
	]]

native "_GET_ENTITY_PHYSICS_HEADING"
    hash "0x846BF6291198A71E"
	jhash (0x9320E642)
	arguments {
		Entity "entity",
	}
	alias "0x846BF6291198A71E"
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Gets the heading of the entity physics in degrees, which tends to be more accurate than just "GET_ENTITY_HEADING". This can be clearly seen while, for example, ragdolling a ped/player.  
NOTE: The name and description of this native are based on independent research. If you find this native to be more suitable under a different name and/or described differently, please feel free to do so.  
```
</summary>
	]]

native "GET_ENTITY_MATRIX"
    hash "0xECB2FC7235A7D137"
	jhash (0xEB9EB001)
	arguments {
		Entity "entity",
		Vector3Ptr "rightVector",
		Vector3Ptr "forwardVector",
		Vector3Ptr "upVector",
		Vector3Ptr "position",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "GET_ENTITY_PITCH"
    hash "0xD45DC2893621E1FE"
	jhash (0xFCE6ECE5)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
	]]

native "GET_ENTITY_MAX_HEALTH"
    hash "0x15D757606D170C3C"
	jhash (0xC7AE6AA1)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "int"
	doc [[!
<summary>
```
Return an integer value of entity's maximum health.  
Example:  
- Player = 200  
```
</summary>
	]]

native "_GET_ENTITY_PROOFS"
    hash "0xBE8CD9BE829BBEBF"
	arguments {
		Entity "entity",
		BOOLPtr "bulletProof",
		BOOLPtr "fireProof",
		BOOLPtr "explosionProof",
		BOOLPtr "collisionProof",
		BOOLPtr "meleeProof",
		BOOLPtr "p6",
		BOOLPtr "p7",
		BOOLPtr "drownProof",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="entity">:</param>
<param name="bulletProof">:</param>
<param name="fireProof">:</param>
<param name="explosionProof">:</param>
<param name="collisionProof">:</param>
<param name="meleeProof">:</param>
<param name="p6">:</param>
<param name="p7">:</param>
<param name="drownProof">:</param>
	]]

native "GET_ENTITY_QUATERNION"
    hash "0x7B3703D2D32DFA18"
	jhash (0x5154EC90)
	arguments {
		Entity "entity",
		floatPtr "x",
		floatPtr "y",
		floatPtr "z",
		floatPtr "w",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
w is the correct parameter name!  
```
</summary>
	]]

native "_GET_ENTITY_PICKUP"
    hash "0x1F922734E259BD26"
	arguments {
		Entity "entity",
		Hash "modelHash",
	}
	ns "ENTITY"
	returns "Entity"
	doc [[!
<summary>
```
GET_ENTITY_*

Seems to return the handle of the entity's portable pickup.

NativeDB Introduced: v1180
```
</summary>
<param name="entity">:</param>
<param name="modelHash">:</param>
	]]

native "GET_ENTITY_POPULATION_TYPE"
    hash "0xF6F5161F4534EDFF"
	jhash (0xFC30DDFF)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "int"
	doc [[!
<summary>
Gets an entity's population type.

**Valid population types:**

```cpp
enum ePopulationType
{
	POPTYPE_UNKNOWN = 0,
	POPTYPE_RANDOM_PERMANENT,
	POPTYPE_RANDOM_PARKED,
	POPTYPE_RANDOM_PATROL,
	POPTYPE_RANDOM_SCENARIO,
	POPTYPE_RANDOM_AMBIENT,
	POPTYPE_PERMANENT,
	POPTYPE_MISSION,
	POPTYPE_REPLAY,
	POPTYPE_CACHE,
	POPTYPE_TOOL
};
```
</summary>
<param name="entity">The entity to obtain the population type from.</param>
<returns>A population type, from the enumeration above.</returns>
	]]

native "GET_ENTITY_ROTATION_VELOCITY"
    hash "0x213B91045D09B983"
	jhash (0x9BF8A73F)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_SPEED"
    hash "0xD5037BA82E12416F"
	jhash (0x9E1E4798)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
result is in meters per second  
------------------------------------------------------------  
So would the conversion to mph and km/h, be along the lines of this.  
float speed = GET_ENTITY_SPEED(veh);  
float kmh = (speed * 3.6);  
float mph = (speed * 2.236936);  
```
</summary>
	]]

native "GET_ENTITY_ROLL"
    hash "0x831E0242595560DF"
	jhash (0x36610842)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Displays the current ROLL axis of the entity [-180.0000/180.0000+]  
(Sideways Roll) such as a vehicle tipped on its side  
```
</summary>
	]]

native "GET_ENTITY_SPEED_VECTOR"
    hash "0x9A8D700A51CB7B0D"
	jhash (0x3ED2B997)
	arguments {
		Entity "entity",
		BOOL "relative",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
<summary>
```
Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).  
```
</summary>
	]]

native "GET_ENTITY_ROTATION"
    hash "0xAFBD61CC738D9EB9"
	jhash (0x8FF45B04)
	arguments {
		Entity "entity",
		int "rotationOrder",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
<summary>
```
rotationOrder refers to the order yaw pitch roll is applied  
value ranges from 0 to 5. What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.   
Unsure what value corresponds to what rotation order, more testing will be needed for that.  
------  
rotationOrder is usually 2 in scripts  
------  
ENTITY::GET_ENTITY_ROTATION(Any p0, false or true);  
if false than return from -180 to 180  
if true than return from -90 to 90  
---  
As said above, the value of p1 affects the outcome. R* uses 1 and 2 instead of 0 and 1, so I marked it as an int.  
What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll:  
www.allstar.fiu.edu/aero/images/pic5-1.gif  
I don't know why it returns a Vec3, but sometimes the values x and y go negative, yet they're always zero. Just use GET_ENTITY_PITCH and GET_ENTITY_ROLL for pitch and roll.  
```
</summary>
	]]

native "GET_ENTITY_TYPE"
    hash "0x8ACD366038D14505"
	jhash (0x0B1BD08D)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "int"
	doc [[!
<summary>
```
Returns:  
0 = no entity  
1 = ped  
2 = vehicle  
3 = object  
This is weird, because in memory atleast on xbox360 it stores it from testing with a variety of (ped, vehicle, and objects).  
03   
04   
05   
The above is more then likely true for the native's return, but if you were to skip using the native it's a bit weird it returns different results.  
```
</summary>
	]]

native "GET_ENTITY_SCRIPT"
    hash "0xA6E9C38DB51D7748"
	jhash (0xB7F70784)
	arguments {
		Entity "entity",
		ScrHandlePtr "script",
	}
	ns "ENTITY"
	returns "charPtr"
	doc [[!
<summary>
```
All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.  
```
</summary>
	]]

native "GET_ENTITY_UPRIGHT_VALUE"
    hash "0x95EED5A694951F9F"
	jhash (0xF4268190)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
	]]

native "GET_NEAREST_PLAYER_TO_ENTITY"
    hash "0x7196842CB375CDB3"
	jhash (0xCE17FDEC)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Player"
	doc [[!
	]]

native "GET_ENTITY_SUBMERGED_LEVEL"
    hash "0xE81AFC1BC4CC41CE"
	jhash (0x0170F68C)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "float"
	doc [[!
<summary>
```
Get how much of the entity is submerged.  1.0f is whole entity.  
```
</summary>
	]]

native "GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM"
    hash "0x4DC9A62F844D9337"
	jhash (0xB1808F56)
	arguments {
		Entity "entity",
		int "team",
	}
	ns "ENTITY"
	returns "Player"
	doc [[!
	]]

native "GET_ENTITY_VELOCITY"
    hash "0x4805D2B1D8CF94A9"
	jhash (0xC14C9B6B)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
<summary>
```
the unit is m/s along each axis  
GET_ENTITY_VELOCITY(aEntity) is the same as GET_ENTITY_SPEED_VECTOR(aEntity,false)  
```
</summary>
	]]

native "GET_LAST_MATERIAL_HIT_BY_ENTITY"
    hash "0x5C3D0A935F535C4C"
	jhash (0xC0E3AA47)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Hash"
	doc [[!
	]]

native "GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS"
    hash "0x2274BC1C4885E333"
	jhash (0x6477EC9E)
	arguments {
		Entity "entity",
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
<summary>
```
Converts world coords (posX - Z) to coords relative to the entity  
Example:  
posX = 50  
posY = 1000  
posZ = 60  
Entity's coords are: x=30, y=1000, z=60.  
All three returned coords will then be in range of [-20,20] depending on rotation of the entity.  
```
</summary>
	]]

native "GET_PED_INDEX_FROM_ENTITY_INDEX"
    hash "0x04A2A40C73395041"
	jhash (0xC46F74AC)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Ped"
	doc [[!
<summary>
```
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
```
</summary>
	]]

native "GET_OBJECT_INDEX_FROM_ENTITY_INDEX"
    hash "0xD7E3B9735C0F89D6"
	jhash (0xBC5A9C58)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Object"
	doc [[!
<summary>
```
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
```
</summary>
	]]

native "GET_VEHICLE_INDEX_FROM_ENTITY_INDEX"
    hash "0x4B53F92932ADFAC0"
	jhash (0xC69CF43D)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Vehicle"
	doc [[!
<summary>
```
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
```
</summary>
	]]

native "GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS"
    hash "0x1899F328B0E12848"
	jhash (0xABCF043A)
	arguments {
		Entity "entity",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
<summary>
```
Offset values are relative to the entity.  
x = left/right  
y = forward/backward  
z = up/down  
```
</summary>
	]]

native "GET_WORLD_POSITION_OF_ENTITY_BONE"
    hash "0x44A8FCB8ED227738"
	jhash (0x7C6339DF)
	arguments {
		Entity "entity",
		int "boneIndex",
	}
	ns "ENTITY"
	returns "Vector3"
	doc [[!
<summary>
```
Returns the coordinates of an entity-bone.  
```
</summary>
	]]

native "_GET_WORLD_ROTATION_OF_ENTITY_BONE"
    hash "0xCE6294A232D03786"
	arguments {
		Entity "entity",
		int "boneIndex",
	}
	alias "0xCE6294A232D03786"
	ns "ENTITY"
	returns "Vector3"
	doc [[!
	]]

native "_GET_WORLD_POSITION_OF_ENTITY_BONE_2"
    hash "0x46F8696933A63C9B"
	arguments {
		Entity "entity",
		int "boneIndex",
	}
	alias "0x46F8696933A63C9B"
	ns "ENTITY"
	returns "Vector3"
	doc [[!
	]]

native "HAS_ANIM_EVENT_FIRED"
    hash "0xEAF4CD9EA3E7E922"
	jhash (0x66571CA0)
	arguments {
		Entity "entity",
		Hash "actionHash",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("CreateObject")))  
```
</summary>
	]]

native "HAS_ENTITY_ANIM_FINISHED"
    hash "0x20B711662962B472"
	jhash (0x1D9CAB92)
	arguments {
		Entity "entity",
		charPtr "animDict",
		charPtr "animName",
		int "p3",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
P3 is always 3 as far as i cant tell  
Animations List : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "HAS_COLLISION_LOADED_AROUND_ENTITY"
    hash "0xE9676F61BC0B3321"
	jhash (0x851687F9)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED"
    hash "0x605F5A140F202491"
	jhash (0x53FD4A25)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT"
    hash "0x95EB9964FF5C5C65"
	jhash (0x6B74582E)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE"
    hash "0xDFD5033FDBA0A9C8"
	jhash (0x878C2CE0)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY"
    hash "0xC86D67D52A707CF8"
	jhash (0x07FC77E0)
	arguments {
		Entity "entity1",
		Entity "entity2",
		BOOL "p2",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Entity 1 = Victim  
Entity 2 = Attacker  
p2 seems to always be 1  
```
</summary>
	]]

native "HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT"
    hash "0x0267D00AF114F17A"
	jhash (0x210D87C8)
	arguments {
		Entity "entity1",
		Entity "entity2",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.  
This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops  
```
</summary>
	]]

native "HAS_ENTITY_CLEAR_LOS_TO_ENTITY"
    hash "0xFCDFF7B72D23A1AC"
	jhash (0x53576FA7)
	arguments {
		Entity "entity1",
		Entity "entity2",
		int "traceType",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
traceType is always 17 in the scripts.  
There is other codes used for traceType:  
19 - in jewelry_prep1a  
126 - in am_hunt_the_beast  
256 & 287 - in fm_mission_controller  
```
</summary>
	]]

native "IS_AN_ENTITY"
    hash "0x731EC8A916BD11A1"
	jhash (0xD4B9715A)
	arguments {
		int "handle",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "HAS_ENTITY_COLLIDED_WITH_ANYTHING"
    hash "0x8BAD02F0368D9E14"
	jhash (0x662A2F41)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Called on tick.  
Tested with vehicles, returns true whenever the vehicle is touching any entity.  
Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.  
```
</summary>
	]]

native "IS_ENTITY_A_MISSION_ENTITY"
    hash "0x0A7B270912999B3C"
	jhash (0x2632E124)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_A_PED"
    hash "0x524AC5ECEA15343E"
	jhash (0x55D33EAB)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_A_VEHICLE"
    hash "0x6AC7003FA6E5575E"
	jhash (0xBE800B01)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_AN_OBJECT"
    hash "0x8D68C8FD0FACA94E"
	jhash (0x3F52E561)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_AT_ENTITY"
    hash "0x751B70C3D034E187"
	jhash (0xDABDCB52)
	arguments {
		Entity "entity1",
		Entity "entity2",
		float "xSize",
		float "ySize",
		float "zSize",
		BOOL "p5",
		BOOL "p6",
		int "p7",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if entity1 is within the box defined by x/y/zSize of entity2.  
Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0  
```
</summary>
	]]

native "IS_ENTITY_AT_COORD"
    hash "0x20B60995556D004F"
	jhash (0xD749B606)
	arguments {
		Entity "entity",
		float "xPos",
		float "yPos",
		float "zPos",
		float "xSize",
		float "ySize",
		float "zSize",
		BOOL "p7",
		BOOL "p8",
		int "p9",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if entity is within x/y/zSize distance of x/y/z.   
Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0  
```
</summary>
	]]

native "IS_ENTITY_ATTACHED"
    hash "0xB346476EF1A64897"
	jhash (0xEC1479D5)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_ATTACHED_TO_ANY_PED"
    hash "0xB1632E9A5F988D11"
	jhash (0x9D7A609C)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_ATTACHED_TO_ANY_OBJECT"
    hash "0xCF511840CEEDE0CC"
	jhash (0x0B5DE340)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_ATTACHED_TO_ANY_VEHICLE"
    hash "0x26AA915AD89BFB4B"
	jhash (0xDE5C995E)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_DEAD"
    hash "0x5F9532F3B5CC2551"
	jhash (0xB6F7CBAC)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Added Parameter 2: BOOL p1
```
</summary>
	]]

native "IS_ENTITY_ATTACHED_TO_ENTITY"
    hash "0xEFBE71898A993728"
	jhash (0xB0ABFEA8)
	arguments {
		Entity "from",
		Entity "to",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_IN_ANGLED_AREA"
    hash "0x51210CED3DA1C78A"
	jhash (0x883622FA)
	arguments {
		Entity "entity",
		float "originX",
		float "originY",
		float "originZ",
		float "edgeX",
		float "edgeY",
		float "edgeZ",
		float "angle",
		BOOL "p8",
		BOOL "p9",
		Any "p10",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Creates a spherical cone at origin that extends to surface with the angle specified. Then returns true if the entity is inside the spherical cone  
Angle is measured in degrees.  
These values are constant, most likely bogus:  
p8 = 0, p9 = 1, p10 = 0  
This method can also take two float<3> instead of 6 floats.  
```
</summary>
	]]

native "IS_ENTITY_IN_AIR"
    hash "0x886E37EC497200B6"
	jhash (0xA4157987)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_IN_AREA"
    hash "0x54736AA40E271165"
	jhash (0x8C2DFA9D)
	arguments {
		Entity "entity",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "p7",
		BOOL "p8",
		Any "p9",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_IN_WATER"
    hash "0xCFB0A0D8EDD145A3"
	jhash (0x4C3C2508)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_IN_ZONE"
    hash "0xB6463CF6AF527071"
	jhash (0x45C82B21)
	arguments {
		Entity "entity",
		charPtr "zone",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_OCCLUDED"
    hash "0xE31C2C72B8692B64"
	jhash (0x46BC5B40)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_ON_SCREEN"
    hash "0xE659E47AF827484B"
	jhash (0xC1FEC5ED)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.   
This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.   
Chipping  
```
</summary>
	]]

native "IS_ENTITY_STATIC"
    hash "0x1218E6886D3D8327"
	jhash (0x928E12E9)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
A static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  
^ Attach a phCollider to the ped.  
```
</summary>
	]]

native "IS_ENTITY_PLAYING_ANIM"
    hash "0x1F0B79228E461EC9"
	jhash (0x0D130D34)
	arguments {
		Entity "entity",
		charPtr "animDict",
		charPtr "animName",
		int "taskFlag",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
See also PED::IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM 0x6EC47A344923E1ED 0x3C30B447  
Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  
p4 is always 3 in the scripts.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
taskFlag:  
2 - Check synchronized scene  
```
</summary>
	]]

native "IS_ENTITY_UPRIGHT"
    hash "0x5333F526F6AB19AA"
	jhash (0x3BCDF4E1)
	arguments {
		Entity "entity",
		float "angle",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
// add this to your CSS to view code with formatting intact.  
// pre + hr + p { white-space: pre; } // -  
bool isEntityUpright(Entity e, float angle) {  
    bool bIsUpright; // bl@1  
    CDynamicEntity* pEntity; // rdi@1  
    bIsUpright = 0;  
    pEntity = getEntityAddressIfPhysical(e);  
    if (pEntity) {  
        bIsUpright = 0;  
        if (pEntity->Matrix.up.z >= cosf(angle * 0.017453292)) // radians(angle)  
            bIsUpright = 1;  
    }  
    return bIsUpright;  
}  
```
</summary>
	]]

native "IS_ENTITY_TOUCHING_ENTITY"
    hash "0x17FFC1B2BA35A494"
	jhash (0x6B931477)
	arguments {
		Entity "entity",
		Entity "targetEntity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_UPSIDEDOWN"
    hash "0x1DBD58820FA61D71"
	jhash (0x5ACAA48F)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_TOUCHING_MODEL"
    hash "0x0F42323798A58C8C"
	jhash (0x307E7611)
	arguments {
		Entity "entity",
		Hash "modelHash",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_VISIBLE_TO_SCRIPT"
    hash "0xD796CB5BA8F20E32"
	jhash (0x5D240E9D)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_VISIBLE"
    hash "0x47D6F43D77935C75"
	jhash (0x120B4ED5)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_WAITING_FOR_WORLD_COLLISION"
    hash "0xD05BFF0C0A12C68F"
	jhash (0x00AB7A4A)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "0x352E2B5CF420BF3B"
    hash "0x352E2B5CF420BF3B"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "0x1A092BB0C3808B96"
    hash "0x1A092BB0C3808B96"
	arguments {
		Entity "entity",
		BOOL "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
SET_ENTITY_*  
```
</summary>
	]]

native "0x490861B88F4FD846"
    hash "0x490861B88F4FD846"
	arguments {
		Any "p0",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Does nothing (essentially a nullsub).
```
</summary>
	]]

native "0x2C2E3DC128F44309"
    hash "0x2C2E3DC128F44309"
	arguments {
		Entity "entity",
		BOOL "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
SET_ENTITY_*  
```
</summary>
	]]

native "0x5C48B75732C8456C"
    hash "0x5C48B75732C8456C"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "0x36F32DE87082343E"
    hash "0x36F32DE87082343E"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "0x694E00132F2823ED"
    hash "0x694E00132F2823ED"
	jhash (0x40C84A74)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
what does it do?  
```
</summary>
	]]

native "0x5C3B791D580E0BC2"
    hash "0x5C3B791D580E0BC2"
	arguments {
		Entity "entity",
		float "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Only called once in the scripts.  
Related to weapon objects.  
```
</summary>
	]]

native "0xA80AE305E0A3044F"
    hash "0xA80AE305E0A3044F"
	jhash (0xE224A6A5)
	arguments {
		Entity "entity",
		BOOL "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
p1 always false.  
```
</summary>
	]]

native "0x68B562E124CC0AEF"
    hash "0x68B562E124CC0AEF"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xB17BC6453F6CF5AC"
    hash "0xB17BC6453F6CF5AC"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "0xC34BC448DA29F5E9"
    hash "0xC34BC448DA29F5E9"
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
SET_ENTITY_*
```
</summary>
	]]

native "0x78E8E3A640178255"
    hash "0x78E8E3A640178255"
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Related to cutscene entities. Unsure about the use.  
```
</summary>
	]]

native "0xD7B80E7C3BEFC396"
    hash "0xD7B80E7C3BEFC396"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xB328DCC3A3AA401B"
    hash "0xB328DCC3A3AA401B"
	arguments {
		Any "p0",
	}
	ns "ENTITY"
	returns "Any"
	doc [[!
	]]

native "0xE12ABE5E3A389A6C"
    hash "0xE12ABE5E3A389A6C"
	jhash (0x44767B31)
	arguments {
		Entity "entity",
		BOOL "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
p1 always false.  
```
</summary>
	]]

native "PLAY_ENTITY_ANIM"
    hash "0x7FB218262B810701"
	jhash (0x878753D5)
	arguments {
		Entity "entity",
		charPtr "animName",
		charPtr "animDict",
		float "p3",
		BOOL "loop",
		BOOL "stayInAnim",
		BOOL "p6",
		float "delta",
		Any "bitset",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  
The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "0xCEA7C8E1B48FF68C"
    hash "0xCEA7C8E1B48FF68C"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "PLAY_SYNCHRONIZED_ENTITY_ANIM"
    hash "0xC77720A12FE14A86"
	jhash (0x012760AA)
	arguments {
		Entity "entity",
		int "syncedScene",
		charPtr "animation",
		charPtr "propName",
		float "p4",
		float "p5",
		Any "p6",
		float "p7",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
p4 and p7 are usually 1000.0f.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "0xDC6F8601FAF2E893"
    hash "0xDC6F8601FAF2E893"
	jhash (0xA0466A69)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
SET_ENTITY_*  
x360 Hash: 0xA0466A69  
Only called within 1 script for x360. 'fm_mission_controller' and it used on an object.   
Ran after these 2 natives,  
set_object_targettable(uParam0, 0);  
set_entity_invincible(uParam0, 1);  
```
</summary>
	]]

native "PROCESS_ENTITY_ATTACHMENTS"
    hash "0xF4080490ADC51C6F"
	jhash (0x6909BA59)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Called to update entity attachments.  
When using ATTACH_ENTITY_TO_ENTITY and using bone '0' then you set the first entity invisible. The attachments will mess up, use bone '-1' to fix that issue  
```
</summary>
	]]

native "0xFD1695C5D3B05439"
    hash "0xFD1695C5D3B05439"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "REMOVE_MODEL_HIDE"
    hash "0xD9E3006FB3CBD765"
	jhash (0x993DBC10)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM"
    hash "0xB9C54555ED30FBC4"
	jhash (0xEB4CBA74)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
		Any "p5",
		AnyPtr "p6",
		AnyPtr "p7",
		float "p8",
		float "p9",
		Any "p10",
		float "p11",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "RESET_ENTITY_ALPHA"
    hash "0x9B1E824FFBB7027A"
	jhash (0x8A30761C)
	arguments {
		Entity "entity",
	}
	ns "ENTITY"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "REMOVE_FORCED_OBJECT"
    hash "0x61B6775E83C0DB6F"
	jhash (0xAED73ADD)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_ALWAYS_PRERENDER"
    hash "0xACAD101E1FB66689"
	jhash (0xD8FF798A)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "REMOVE_MODEL_SWAP"
    hash "0x033C0F9A64E229AE"
	jhash (0xCE0AA8BC)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "originalModel",
		Hash "newModel",
		BOOL "p6",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_ANIM_SPEED"
    hash "0x28D1A16553C51776"
	jhash (0x3990C90A)
	arguments {
		Entity "entity",
		charPtr "animDictionary",
		charPtr "animName",
		float "speedMultiplier",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "SET_ENTITY_AS_MISSION_ENTITY"
    hash "0xAD738C3085FE7E11"
	jhash (0x5D1F9E0F)
	arguments {
		Entity "entity",
		BOOL "p1",
		BOOL "p2",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Makes the specified entity (ped, vehicle or object) persistent. Persistent entities will not automatically be removed by the engine.  
p1 has no effect when either its on or off   
maybe a quick disassembly will tell us what it does  
p2 has no effect when either its on or off   
maybe a quick disassembly will tell us what it does  
```
</summary>
	]]

native "SET_ENTITY_ALPHA"
    hash "0x44A0870B7E92D7C0"
	jhash (0xAE667CB0)
	arguments {
		Entity "entity",
		int "alphaLevel",
		int "skin",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
skin - everything alpha except skin  
Set entity alpha level. Ranging from 0 to 255 but chnages occur after every 20 percent (after every 51).  
```

```
NativeDB Parameter 2: BOOL skin
```
</summary>
	]]

native "SET_ENTITY_CAN_BE_DAMAGED"
    hash "0x1760FFA8AB074D66"
	jhash (0x60B6E744)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_ANIM_CURRENT_TIME"
    hash "0x4487C259F0F70977"
	jhash (0x99D90735)
	arguments {
		Entity "entity",
		charPtr "animDictionary",
		charPtr "animName",
		float "time",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS"
    hash "0xD3997889736FD899"
	jhash (0x3B13797C)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Sets whether the entity can be targeted without being in line-of-sight.  
```
</summary>
	]]

native "SET_ENTITY_COLLISION"
    hash "0x1A9205C1B9EE827F"
	jhash (0x139FD37D)
	arguments {
		Entity "entity",
		BOOL "toggle",
		BOOL "keepPhysics",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_COORDS"
    hash "0x06843DA7060A026B"
	jhash (0xDF70B41B)
	arguments {
		Entity "entity",
		float "xPos",
		float "yPos",
		float "zPos",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
		BOOL "clearArea",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities.   
Often ends with 1, 0, 0, 1); in the scripts. It works.   
Axis - Invert Axis Flags  
```
</summary>
	]]

native "SET_ENTITY_AS_NO_LONGER_NEEDED"
    hash "0xB736A491E64A32CF"
	jhash (0xADF2267C)
	arguments {
		EntityPtr "entity",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Marks the specified entity (ped, vehicle or object) as no longer needed.  
Entities marked as no longer needed, will be deleted as the engine sees fit.  
```
</summary>
	]]

native "SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP"
    hash "0xE22D8FDE858B8119"
	jhash (0x34165B5D)
	arguments {
		Entity "entity",
		BOOL "bCanBeDamaged",
		int "relGroup",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "_SET_ENTITY_COORDS_2"
    hash "0x621873ECE1178967"
	jhash (0x749B282E)
	arguments {
		Entity "entity",
		float "xPos",
		float "yPos",
		float "zPos",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
		BOOL "clearArea",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
does the same as SET_ENTITY_COORDS.  
```
</summary>
	]]

native "SET_ENTITY_COMPLETELY_DISABLE_COLLISION"
    hash "0x9EBC85ED0FFFE51C"
	jhash (0xBD0D4831)
	arguments {
		Entity "entity",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x9EBC85ED0FFFE51C"
	alias "_SET_ENTITY_COLLISION_2"
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
internally it calls the same function as 'SET_ENTITY_COLLISION'. but uses a hard coded parameter that only activates when p1 is set to true   
=============================  
Weirdly enough in the 3 scripts it's used in on PC,  
- director_mode (2 hits)  
- re_duel (2 hits)  
- re_seaplane (1 hit)  
Most of the time in the hits its actually used after the normal SET_ENTITY_COLLISION. Example from re_seaplane,  
Local_49[iParam0 /*6*/] = create_ped(26, iVar4, vVar0, fVar3, 1, true);  
set_entity_collision(Local_49[iParam0 /*6*/], iVar42, 0);  
_0x9EBC85ED0FFFE51C(Local_49[iParam0 /*6*/], !iVar66, 0); (_SET_ENTITY_COLLISION_2)  
iVar42 being true so the normal collision native is true, 0  
iVar66 being false so !false so it's true, 0  
Gonna ignore the 'vars' for the create_ped no point in defining them.  
```
</summary>
	]]

native "SET_ENTITY_HAS_GRAVITY"
    hash "0x4A4722448F18EEF5"
	jhash (0xE2F262BF)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_COORDS_NO_OFFSET"
    hash "0x239A3351AC1DA385"
	jhash (0x4C83DE8D)
	arguments {
		Entity "entity",
		float "xPos",
		float "yPos",
		float "zPos",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Axis - Invert Axis Flags  
```
</summary>
	]]

native "SET_ENTITY_HEALTH"
    hash "0x6B76DC1F3AE6E6A3"
	jhash (0xFBCD1831)
	arguments {
		Entity "entity",
		int "health",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
health >= 0  
```

```
NativeDB Added Parameter 3: int p2
```
</summary>
	]]

native "SET_ENTITY_DYNAMIC"
    hash "0x1718DE8E3F2823CA"
	jhash (0x236F525B)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_IS_TARGET_PRIORITY"
    hash "0xEA02E132F5C68722"
	jhash (0x9729EE32)
	arguments {
		Entity "entity",
		BOOL "p1",
		float "p2",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_LOAD_COLLISION_FLAG"
    hash "0x0DC7CABAB1E9B67E"
	jhash (0xC52F295B)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.  
```

```
NativeDB Added Parameter 3: Any p2
```
</summary>
	]]

native "SET_ENTITY_HEADING"
    hash "0x8E2530AA8ADA980E"
	jhash (0xE0FF064D)
	arguments {
		Entity "entity",
		float "heading",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_LOD_DIST"
    hash "0x5927F96A78577363"
	jhash (0xD7ACC7AD)
	arguments {
		Entity "entity",
		int "value",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).  
```
</summary>
	]]

native "SET_ENTITY_MAX_SPEED"
    hash "0x0E46A3FCBDE2A1B1"
	jhash (0x46AFFED3)
	arguments {
		Entity "entity",
		float "speed",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_INVINCIBLE"
    hash "0x3882114BDE571AD4"
	jhash (0xC1213A21)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  
If you use this for a ped and you want Ragdoll to stay enabled, then do:  
*(DWORD *)(pedAddress + 0x188) |= (1 << 9);  
Use this if you want to get the invincibility status:  
	bool IsPedInvincible(Ped ped)  
	{  
auto addr = getScriptHandleBaseAddress(ped);	  
if (addr)  
{  
	DWORD flag = *(DWORD *)(addr + 0x188);  
	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
}  
return false;  
	}  
```
</summary>
	]]

native "SET_ENTITY_LIGHTS"
    hash "0x7CFBA6A80BDF3874"
	jhash (0xE8FC85AF)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_NO_COLLISION_ENTITY"
    hash "0xA53ED5520C07654A"
	jhash (0x1E11BFE9)
	arguments {
		Entity "entity1",
		Entity "entity2",
		BOOL "thisFrameOnly",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Calling this function disables collision between two entities.
The importance of the order for entity1 and entity2 is unclear.
The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
```
</summary>
	]]

native "SET_ENTITY_MAX_HEALTH"
    hash "0x166E7CF68597D8B5"
	jhash (0x96F84DF8)
	arguments {
		Entity "entity",
		int "value",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849  
```
</summary>
	]]

native "SET_ENTITY_ONLY_DAMAGED_BY_PLAYER"
    hash "0x79F020FF9EDC0748"
	jhash (0x4B707F50)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_MOTION_BLUR"
    hash "0x295D82A8559F9150"
	jhash (0xE90005B8)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP"
    hash "0x7022BD828FA0B082"
	jhash (0x202237E2)
	arguments {
		Entity "entity",
		BOOL "p1",
		Hash "relationshipHash",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_RECORDS_COLLISIONS"
    hash "0x0A50A1EEDAD01E65"
	jhash (0x6B189A1A)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_PROOFS"
    hash "0xFAEE099C6F890BB8"
	jhash (0x7E9EAB66)
	arguments {
		Entity "entity",
		BOOL "bulletProof",
		BOOL "fireProof",
		BOOL "explosionProof",
		BOOL "collisionProof",
		BOOL "meleeProof",
		BOOL "p6",
		BOOL "p7",
		BOOL "drownProof",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Enable / disable each type of damage.  
--------------  
p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);  
```
</summary>
	]]

native "SET_ENTITY_ROTATION"
    hash "0x8524A8B0171D5E07"
	jhash (0x0A345EFE)
	arguments {
		Entity "entity",
		float "pitch",
		float "roll",
		float "yaw",
		int "rotationOrder",
		BOOL "p5",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
rotationOrder refers to the order yaw pitch roll is applied  
value ranges from 0 to 5. What you use for rotationOrder when setting must be the same as rotationOrder when getting the rotation.   
Unsure what value corresponds to what rotation order, more testing will be needed for that.  
For the most part R* uses 1 or 2 as the order.  
p5 is usually set as true  
```
</summary>
	]]

native "SET_ENTITY_QUATERNION"
    hash "0x77B21BE7AC540F07"
	jhash (0x83B6046F)
	arguments {
		Entity "entity",
		float "x",
		float "y",
		float "z",
		float "w",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
w is the correct parameter name!  
```
</summary>
	]]

native "SET_ENTITY_TRAFFICLIGHT_OVERRIDE"
    hash "0x57C5DB656185EAC4"
	jhash (0xC47F5B91)
	arguments {
		Entity "entity",
		int "state",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340  
0 = green  
1 = red  
2 = yellow  
changing lights may not change the behavior of vehicles  
```
</summary>
	]]

native "SET_ENTITY_RENDER_SCORCHED"
    hash "0x730F5F8D3F0F2050"
	jhash (0xAAC9317B)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_VISIBLE"
    hash "0xEA1C610A04DB6BBB"
	jhash (0xD043E8E1)
	arguments {
		Entity "entity",
		BOOL "toggle",
		BOOL "unk",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
unk was always 0.  
```
</summary>
	]]

native "_SET_ENTITY_SOMETHING"
    hash "0x3910051CCECDB00C"
	jhash (0xD3850671)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	alias "0x3910051CCECDB00C"
	alias "_SET_ENTITY_REGISTER"
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
what does this native do?  
bool IsEntitySomething(Entity entity)  
{  
	auto addr = getScriptHandleBaseAddress(entity);  
	printf("addr: 0x%X \n", addr);  
	if (addr)  
	{  
DWORD flag = *(DWORD *)(addr + 0x48D);  
printf("flag: 0x%X \n", flag);  
return ((flag & (1 << 3)) != 0) || ((flag & (1 << 30)) != 0);  
	}  
	return false;  
}  
wot ?  
```
</summary>
	]]

native "SET_OBJECT_AS_NO_LONGER_NEEDED"
    hash "0x3AE22DEB5BA5A3E6"
	jhash (0x3F6B949F)
	arguments {
		ObjectPtr "object",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
```
</summary>
	]]

native "SET_VEHICLE_AS_NO_LONGER_NEEDED"
    hash "0x629BFA74418D6239"
	jhash (0x9B0E10BE)
	arguments {
		VehiclePtr "vehicle",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
```
</summary>
	]]

native "SET_ENTITY_VELOCITY"
    hash "0x1C99BB7B6E96D16F"
	jhash (0xFF5A1988)
	arguments {
		Entity "entity",
		float "x",
		float "y",
		float "z",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
Note that the third parameter(denoted as z) is "up and down" with positive ment.  
```
</summary>
	]]

native "STOP_ENTITY_ANIM"
    hash "0x28004F88151E03E0"
	jhash (0xC4769830)
	arguments {
		Entity "entity",
		charPtr "animation",
		charPtr "animGroup",
		float "p3",
	}
	ns "ENTITY"
	returns "Any"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm  
```
</summary>
	]]

native "WOULD_ENTITY_BE_OCCLUDED"
    hash "0xEE5D2A122E09EC42"
	jhash (0xEA127CBC)
	arguments {
		Hash "entityModelHash",
		float "x",
		float "y",
		float "z",
		BOOL "p4",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
First parameter was previously an Entity but after further research it is definitely a hash.  
```
</summary>
	]]

native "SET_PED_AS_NO_LONGER_NEEDED"
    hash "0x2595DD4236549CE3"
	jhash (0x9A388380)
	arguments {
		PedPtr "ped",
	}
	ns "ENTITY"
	returns "void"
	doc [[!
<summary>
```
This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
```
</summary>
	]]

native "STOP_SYNCHRONIZED_ENTITY_ANIM"
    hash "0x43D3807C077261E3"
	jhash (0xE27D2FC1)
	arguments {
		Entity "entity",
		float "p1",
		BOOL "p2",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
<summary>
```
p1 sync task id?  
```
</summary>
	]]

native "STOP_SYNCHRONIZED_MAP_ENTITY_ANIM"
    hash "0x11E79CAB7183B6F5"
	jhash (0x7253D5B2)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
		float "p5",
	}
	ns "ENTITY"
	returns "BOOL"
	doc [[!
	]]

native "ADD_SHOCKING_EVENT_FOR_ENTITY"
    hash "0x7FD8F3BE76F89422"
	jhash (0xA81B5B71)
	arguments {
		int "type",
		Entity "entity",
		float "duration",
	}
	ns "EVENT"
	returns "ScrHandle"
	doc [[!
<summary>
```
duration is float here  
Event types - camx.me/gtav/tasks/shockingevents.txt  
```
</summary>
	]]

native "CLEAR_DECISION_MAKER_EVENT_RESPONSE"
    hash "0x4FC9381A7AEE8968"
	jhash (0x07ABD94D)
	arguments {
		Hash "name",
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "IS_SHOCKING_EVENT_IN_SPHERE"
    hash "0x1374ABB7C15BAB92"
	jhash (0x2F98823E)
	arguments {
		int "type",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "EVENT"
	returns "BOOL"
	doc [[!
<summary>
```
Some events that i found, not sure about them, but seems to have logic based on my tests:  
'82 - dead body  
'86   
'87   
'88 - shooting, fire extinguisher in use  
'89   
'93 - ped using horn  
'95 - ped receiving melee attack  
'102 - living ped receiving shot  
'104 - player thrown grenade, tear gas, smoke grenade, jerry can dropping gasoline  
'105 - melee attack against veh  
'106 - player running  
'108 - vehicle theft  
'112 - melee attack  
'113 - veh rollover ped  
'114 - dead ped receiving shot  
'116 - aiming at ped  
'121   
		Here is full dump of shocking event types from the exe camx.me/gtav/tasks/shockingevents.txt  
```
</summary>
	]]

native "ADD_SHOCKING_EVENT_AT_POSITION"
    hash "0xD9F8455409B525E9"
	jhash (0x0B30F779)
	arguments {
		int "type",
		float "x",
		float "y",
		float "z",
		float "duration",
	}
	ns "EVENT"
	returns "ScrHandle"
	doc [[!
<summary>
```
duration is float here  
Event types- camx.me/gtav/tasks/shockingevents.txt  
```
</summary>
	]]

native "REMOVE_SHOCKING_EVENT"
    hash "0x2CDA538C44C6CCE5"
	jhash (0xF82D5A87)
	arguments {
		ScrHandle "event",
	}
	ns "EVENT"
	returns "BOOL"
	doc [[!
	]]

native "BLOCK_DECISION_MAKER_EVENT"
    hash "0xE42FCDFD0E4196F7"
	jhash (0x57506EA6)
	arguments {
		Hash "name",
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "REMOVE_ALL_SHOCKING_EVENTS"
    hash "0xEAABE8FDFA21274C"
	jhash (0x64DF6282)
	arguments {
		BOOL "p0",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SET_DECISION_MAKER"
    hash "0xB604A2942ADED0EE"
	jhash (0x19CEAC9E)
	arguments {
		Ped "ped",
		Hash "name",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS"
    hash "0x340F1415B68AEADE"
	jhash (0xA0CE89C8)
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME"
    hash "0x3FD2EC8BF1F1CF30"
	jhash (0xA0FDCB82)
	arguments {
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SUPPRESS_AGITATION_EVENTS_NEXT_FRAME"
    hash "0x5F3B7749C112D552"
	jhash (0x80340396)
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "UNBLOCK_DECISION_MAKER_EVENT"
    hash "0xD7CD9CF34F2C99E8"
	jhash (0x62A3161D)
	arguments {
		Hash "name",
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME"
    hash "0x2F9A292AD0A3BD89"
	jhash (0x4CC674B5)
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "GET_DLC_VEHICLE_FLAGS"
    hash "0x5549EE11FA22FCF2"
	jhash (0xAB12738C)
	arguments {
		int "dlcVehicleIndex",
	}
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "GET_DLC_VEHICLE_DATA"
    hash "0x33468EDC08E371F6"
	jhash (0xCF428FA4)
	arguments {
		int "dlcVehicleIndex",
		intPtr "outData",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
dlcVehicleIndex takes a number from 0 - GET_NUM_DLC_VEHICLES() - 1.  
outData is a struct of 3 8-byte items.  
The Second item in the struct *(Hash *)(outData + 1) is the vehicle hash.  
```
</summary>
	]]

native "GET_DLC_VEHICLE_MOD_LOCK_HASH"
    hash "0xC098810437312FFF"
	jhash (0x59352658)
	arguments {
		int "hash",
	}
	alias "0xC098810437312FFF"
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Use _GET_VEHICLE_MOD_DATA for modData  
Appears to be a GET_DLC_VEHICLE_MOD_* native.  
```

```
NativeDB Parameter 0: Hash hash
NativeDB Return Type: Hash
```
</summary>
	]]

native "GET_DLC_WEAPON_COMPONENT_DATA"
    hash "0x6CF598A2957C2BF8"
	jhash (0x4B83FCAF)
	arguments {
		int "dlcWeaponIndex",
		int "dlcWeapCompIndex",
		AnyPtr "ComponentDataPtr",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
p0 seems to be the weapon index  
p1 seems to be the weapon component index  
struct DlcComponentData{  
int attachBone;  
int padding1;  
int bActiveByDefault;  
int padding2;  
int unk;  
int padding3;  
int componentHash;  
int padding4;  
int unk2;  
int padding5;  
int componentCost;  
int padding6;  
char nameLabel[64];  
char descLabel[64];  
};  
```

```
NativeDB Parameter 2: int* ComponentDataPtr
```
</summary>
	]]

native "GET_FORCED_COMPONENT"
    hash "0x6C93ED8C2F74859B"
	jhash (0x382C70BE)
	arguments {
		Hash "componentHash",
		int "componentId",
		AnyPtr "nameHash",
		AnyPtr "enumValue",
		AnyPtr "componentType",
	}
	ns "FILE"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 2: Hash* nameHash
NativeDB Parameter 3: int* enumValue
NativeDB Parameter 4: int* componentType
```
</summary>
	]]

native "GET_DLC_VEHICLE_MODEL"
    hash "0xECC01B7C5763333C"
	jhash (0xA2201E09)
	arguments {
		int "dlcVehicleIndex",
	}
	ns "FILE"
	returns "Hash"
	doc [[!
<summary>
```
dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()  
```
</summary>
	]]

native "GET_HASH_NAME_FOR_PROP"
    hash "0x5D6160275CAEC8DD"
	jhash (0x7D876DC0)
	arguments {
		Entity "entity",
		int "componentId",
		int "propIndex",
		int "propTextureIndex",
	}
	ns "FILE"
	returns "Hash"
	doc [[!
	]]

native "GET_DLC_WEAPON_DATA"
    hash "0x79923CD21BECE14E"
	jhash (0xD88EC8EA)
	arguments {
		int "dlcWeaponIndex",
		intPtr "outData",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.  
struct DlcWeaponData  
{  
int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this  
int padding1;  
int weaponHash;  
int padding2;  
int unk;  
int padding3;  
int weaponCost;  
int padding4;  
int ammoCost;  
int padding5;  
int ammoType;  
int padding6;  
int defaultClipSize;  
int padding7;  
char nameLabel[64];  
char descLabel[64];  
char desc2Label[64]; // usually "the" + name  
char upperCaseNameLabel[64];  
};  
```
</summary>
	]]

native "GET_NUM_DLC_VEHICLES"
    hash "0xA7A866D21CD2329B"
	jhash (0x8EAF9CF6)
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "GET_NUM_DLC_WEAPONS"
    hash "0xEE47635F352DA367"
	jhash (0x2B757E6C)
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Gets the total number of DLC weapons.  
```
</summary>
	]]

native "GET_HASH_NAME_FOR_COMPONENT"
    hash "0x0368B3A838070348"
	jhash (0xC8A4BF12)
	arguments {
		Entity "entity",
		int "componentId",
		int "drawableVariant",
		int "textureVariant",
	}
	ns "FILE"
	returns "Hash"
	doc [[!
	]]

native "_GET_NUM_DECORATIONS"
    hash "0x278F76C3B0A8F109"
	jhash (0x71D0CF3E)
	arguments {
		int "character",
	}
	alias "0x278F76C3B0A8F109"
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
only documented to be continued...  
```
</summary>
	]]

native "_GET_NUM_FORCED_COMPONENTS"
    hash "0xC6B9DB42C04DD8C3"
	jhash (0xCE70F183)
	arguments {
		Hash "componentHash",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Returns number of possible values of the componentId argument of GET_FORCED_COMPONENT.  
```
</summary>
	]]

native "GET_SHOP_PED_COMPONENT"
    hash "0x74C0E2A57EC66760"
	jhash (0xB39677C5)
	arguments {
		Hash "componentHash",
		AnyPtr "outComponent",
	}
	ns "FILE"
	returns "void"
	doc [[!
<summary>
```
More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
```
</summary>
	]]

native "GET_NUM_DLC_WEAPON_COMPONENTS"
    hash "0x405425358A7D61FE"
	jhash (0x476B23A9)
	arguments {
		int "dlcWeaponIndex",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Allowed Values from 0 - DLC1::GET_NUM_DLC_WEAPONS()  
```
</summary>
	]]

native "GET_SHOP_PED_OUTFIT_COMPONENT_VARIANT"
    hash "0x19F2A026EDF0013F"
	jhash (0x818534AC)
	arguments {
		Any "outfit",
		int "slot",
		AnyPtr "item",
	}
	alias "_GET_PROP_FROM_OUTFIT"
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
outfit = a structure passing though it - see GET_SHOP_PED_QUERY_OUTFIT  
slot - outfit slot  
item - hold 3 ints in a struct, you can use Vector3 structure  
```
</summary>
	]]

native "GET_SHOP_PED_OUTFIT_PROP_VARIANT"
    hash "0xA9F9C2E0FDE11CBB"
	jhash (0x6641A864)
	arguments {
		Any "outfit",
		int "slot",
		AnyPtr "item",
	}
	alias "0xA9F9C2E0FDE11CBB"
	ns "FILE"
	returns "BOOL"
	doc [[!
	]]

native "_GET_NUM_PROPS_FROM_OUTFIT"
    hash "0x9BDF59818B1E38C1"
	jhash (0x594E862C)
	arguments {
		int "character",
		int "p1",
		int "p2",
		BOOL "p3",
		int "p4",
		int "componentId",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.  
componentId is between 0 and 11 and corresponds to the usual component slots.  
p1 could be the outfit number; unsure.  
p2 is usually -1; unknown function.  
p3 appears to be a boolean flag; unknown function.  
p4 is usually -1; unknown function.  
```
</summary>
	]]

native "GET_SHOP_PED_PROP"
    hash "0x5D5CAFF661DDF6FC"
	jhash (0xDB0A7A58)
	arguments {
		Any "componentHash",
		AnyPtr "outProp",
	}
	alias "0x5D5CAFF661DDF6FC"
	ns "FILE"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash componentHash
```
</summary>
	]]

native "GET_SHOP_PED_OUTFIT"
    hash "0xB7952076E444979D"
	jhash (0xCAFE9209)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "GET_SHOP_PED_OUTFIT_LOCATE"
    hash "0x073CA26B079F956E"
	jhash (0x2798F56F)
	arguments {
		Any "p0",
	}
	alias "0x073CA26B079F956E"
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "GET_SHOP_PED_QUERY_PROP"
    hash "0xDE44A00999B2837D"
	jhash (0x1D3C1466)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "GET_SHOP_PED_QUERY_COMPONENT"
    hash "0x249E310B2D920699"
	jhash (0xC0718904)
	arguments {
		int "componentId",
		intPtr "outComponent",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "_GET_TATTOO_COLLECTION_DATA"
    hash "0xFF56381874F82086"
	jhash (0x2E9D628C)
	arguments {
		int "characterType",
		int "decorationIndex",
		AnyPtr "outComponent",
	}
	alias "0xFF56381874F82086"
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
Character types:

```
0 = Michael, 
1 = Franklin, 
2 = Trevor, 
3 = MPMale, 
4 = MPFemale
```

```csharp
enum TattooZoneData  
{  
    ZONE_TORSO = 0,  
    ZONE_HEAD = 1,  
    ZONE_LEFT_ARM = 2,  
    ZONE_RIGHT_ARM = 3,  
    ZONE_LEFT_LEG = 4,  
    ZONE_RIGHT_LEG = 5,  
    ZONE_UNKNOWN = 6,
    ZONE_NONE = 7,  
};

struct outComponent
{
    // these vars are suffixed with 4 bytes of padding each.
    uint unk;
    int unk2;
    uint tattooCollectionHash;
    uint tattooNameHash;
    int unk3;
    TattooZoneData zoneId;
    uint unk4;
    uint unk5;
    // maybe more, not sure exactly, decompiled scripts are very vague around this part.
}
```
</summary>
<param name="characterType">Character types 0 = Michael, 1 = Franklin, 2 = Trevor, 3 = MPMale, 4 = MPFemale.</param>
<param name="decorationIndex">Tattoo index, value between 0 and GetNumDecorations(characterType).</param>
<param name="outComponent">The referenced struct.</param>
<returns>A bool indicating that the tattoo data could be fetched(?)</returns>
	]]

native "INIT_SHOP_PED_COMPONENT"
    hash "0x1E8C308FD312C036"
	jhash (0xB818C7FC)
	arguments {
		intPtr "outComponent",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "GET_SHOP_PED_QUERY_OUTFIT"
    hash "0x6D793F03A631FE56"
	jhash (0x2F8013A1)
	arguments {
		Any "p0",
		AnyPtr "outfit",
	}
	ns "FILE"
	returns "void"
	doc [[!
<summary>
```
struct Outfit_s  
{  
	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;  
	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,   
		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;  
};  
```
</summary>
	]]

native "IS_CONTENT_ITEM_LOCKED"
    hash "0xD4D7B033C3AA243C"
	jhash (0x06396058)
	arguments {
		AnyPtr "itemHash",
	}
	alias "_IS_OUTFIT_EMPTY"
	alias "_IS_DLC_DATA_EMPTY"
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash itemHash
```
</summary>
	]]

native "GET_VARIANT_COMPONENT"
    hash "0x6E11F282F11863B6"
	jhash (0xE4FF7103)
	arguments {
		Hash "componentHash",
		int "componentId",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "IS_DLC_VEHICLE_MOD"
    hash "0x0564B9FF9631B82C"
	jhash (0x35BCA844)
	arguments {
		Any "hash",
	}
	alias "0x0564B9FF9631B82C"
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
Use _GET_VEHICLE_MOD_DATA for modData  
```

```
NativeDB Parameter 0: Hash hash
```
</summary>
	]]

native "INIT_SHOP_PED_PROP"
    hash "0xEB0A2B758F7B850F"
	jhash (0xF5659E50)
	arguments {
		intPtr "outProp",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "0x50F457823CE6EB5F"
    hash "0x50F457823CE6EB5F"
	jhash (0xC937FF3D)
	arguments {
		int "p0",
		int "p1",
		int "p2",
		int "p3",
	}
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "0x017568A8182D98A6"
    hash "0x017568A8182D98A6"
	jhash (0xC560D7C0)
	arguments {
		Any "p0",
	}
	ns "FILE"
	returns "Any"
	doc [[!
	]]

native "0xC17AD0E5752BECDA"
    hash "0xC17AD0E5752BECDA"
	jhash (0x159751B4)
	arguments {
		Hash "componentHash",
	}
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "0x341DE7ED1D2A1BFD"
    hash "0x341DE7ED1D2A1BFD"
	jhash (0x8E2C7FD5)
	arguments {
		Hash "componentHash",
		Hash "drawableSlotHash",
		int "componentId",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
6,000+ calls from scripts, all with either 0 or 1 for p2, that's a boolean in my book  
---  
 ^ The last one is the componentId  
iVar8 = dlc1::get_hash_name_for_component(iParam0, 8, ped::get_ped_drawable_variation(iParam0, 8), ped::get_ped_texture_variation(iParam0, 8));  
	if (dlc1::_0x341DE7ED1D2A1BFD(iVar8, 240476421, 8))  
```
</summary>
	]]

native "0xF3FBE2D50A6A8C28"
    hash "0xF3FBE2D50A6A8C28"
	jhash (0x1ECD23E7)
	arguments {
		int "character",
		BOOL "p1",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
characters  
0: Michael  
1: Franklin  
2: Trevor  
3: MPMale  
4: MPFemale  
```
</summary>
	]]

native "0xE1CA84EBF72E691D"
    hash "0xE1CA84EBF72E691D"
	jhash (0x22DAE257)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "_LOAD_CONTENT_CHANGE_SET_GROUP"
    hash "0x6BEDF5769AC2DC07"
	arguments {
		Hash "hash",
	}
	ns "FILES"
	returns "void"
	doc [[!
<summary>
```
From fm_deathmatch_creator and fm_race_creator:

FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));

NativeDB Introduced: v1604
```
</summary>
<param name="hash">:</param>
	]]

native "0xD81B7F27BC773E66"
    hash "0xD81B7F27BC773E66"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "FILES"
	returns "void"
	doc [[!
	]]

native "0xD40AAC51E8E4C663"
    hash "0xD40AAC51E8E4C663"
	arguments {
		Hash "propHash",
	}
	ns "FILES"
	returns "int"
	doc [[!
<summary>
Decompiled scripts have this listed as `FILES::_GET_NUM_DLC_PED_PROPS_UNK`, but that seems wrong.

Has something to do with ped (dlc) helmet props.

This native returns 1/true when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled, 0/false if there's no alternative version with a visor for this helmet prop.

So something like `_DOES_HELMET_HASH_HAVE_A_VISOR`, anyone that knows the joaat hash?

Decompiled scripts handle this as an int. But the result is always 0 or 1 (after testing every prop hash on freemode peds). So might actually be a bool?

```
iVar16 = PED::GET_PED_PROP_INDEX(PLAYER::PLAYER_PED_ID(), 0);
iVar17 = PED::GET_PED_PROP_TEXTURE_INDEX(PLAYER::PLAYER_PED_ID(), 0);
iVar18 = FILES::GET_HASH_NAME_FOR_PROP(PLAYER::PLAYER_PED_ID(), 0, iVar16, iVar17);
if (FILES::_GET_NUM_DLC_PED_PROPS_UNK(iVar18) > 0) // _0xD40AAC51E8E4C663
{
    HUD::BEGIN_TEXT_COMMAND_DISPLAY_HELP("VISOR_TOGGLE");
    HUD::END_TEXT_COMMAND_DISPLAY_HELP(0, 0, true, 6000);
    iVar15++;
    func_12660(7668, iVar15, -1, 1);
    MISC::SET_BIT(&(Global_2512581.f_1710), 24);
}
```
</summary>
<param name="propHash">Ped helmet prop hash</param>
<returns>This native returns 1 when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled. 0 if there's no alternative version with a visor for this helmet prop.</returns>
	]]

native "_UNLOAD_CONTENT_CHANGE_SET_GROUP"
    hash "0x3C1978285B036B25"
	arguments {
		Hash "hash",
	}
	ns "FILES"
	returns "void"
	doc [[!
<summary>
```
From fm_deathmatch_creator and fm_race_creator:

FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));

NativeDB Introduced: v1604
```
</summary>
<param name="hash">:</param>
	]]

native "ADD_EXPLOSION_WITH_USER_VFX"
    hash "0x36DD3FE58B5E5212"
	jhash (0xCF358946)
	arguments {
		float "x",
		float "y",
		float "z",
		int "explosionType",
		Hash "explosionFx",
		float "damageScale",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "cameraShake",
	}
	alias "_ADD_SPECFX_EXPLOSION"
	ns "FIRE"
	returns "void"
	doc [[!
	]]

native "ADD_EXPLOSION"
    hash "0xE3AD2BDBAEE269AC"
	jhash (0x10AF5258)
	arguments {
		float "x",
		float "y",
		float "z",
		int "explosionType",
		float "damageScale",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "cameraShake",
	}
	ns "FIRE"
	returns "void"
	doc [[!
<summary>
```
BOOL isAudible = If explosion makes a sound.  
BOOL isInvisible = If the explosion is invisible or not.  
this native is missing a new argument: noDamage  
nodamage = false: damage || nodamage = true: no damage  
enum ExplosionTypes  
{  
	EXPLOSION_GRENADE,  
	EXPLOSION_GRENADELAUNCHER,  
	EXPLOSION_STICKYBOMB,  
	EXPLOSION_MOLOTOV,  
	EXPLOSION_ROCKET,  
	EXPLOSION_TANKSHELL,  
	EXPLOSION_HI_OCTANE,  
	EXPLOSION_CAR,  
	EXPLOSION_PLANE,  
	EXPLOSION_PETROL_PUMP,  
	EXPLOSION_BIKE,  
	EXPLOSION_DIR_STEAM,  
	EXPLOSION_DIR_FLAME,  
	EXPLOSION_DIR_WATER_HYDRANT,  
	EXPLOSION_DIR_GAS_CANISTER,  
	EXPLOSION_BOAT,  
	EXPLOSION_SHIP_DESTROY,  
	EXPLOSION_TRUCK,  
	EXPLOSION_BULLET,  
	EXPLOSION_SMOKEGRENADELAUNCHER,  
	EXPLOSION_SMOKEGRENADE,  
	EXPLOSION_BZGAS,  
	EXPLOSION_FLARE,  
	EXPLOSION_GAS_CANISTER,  
	EXPLOSION_EXTINGUISHER,  
	EXPLOSION_PROGRAMMABLEAR,  
	EXPLOSION_TRAIN,  
	EXPLOSION_BARREL,  
	EXPLOSION_PROPANE,  
	EXPLOSION_BLIMP,  
	EXPLOSION_DIR_FLAME_EXPLODE,  
	EXPLOSION_TANKER,  
	EXPLOSION_PLANE_ROCKET,  
	EXPLOSION_VEHICLE_BULLET,  
	EXPLOSION_GAS_TANK,  
	EXPLOSION_BIRD_CRAP  
};  
```

```
NativeDB Added Parameter 9: BOOL noDamage
```
</summary>
	]]

native "GET_CLOSEST_FIRE_POS"
    hash "0x352A9F6BCF90081F"
	jhash (0xC4977B47)
	arguments {
		Vector3Ptr "outPosition",
		float "x",
		float "y",
		float "z",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
<summary>
```
Returns TRUE if it found something. FALSE if not.  
```
</summary>
	]]

native "_GET_ENTITY_INSIDE_EXPLOSION_AREA"
    hash "0x14BA4BA137AF6CEC"
	jhash (0xAEC0D176)
	arguments {
		int "explosionType",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "radius",
	}
	alias "_GET_PED_INSIDE_EXPLOSION_AREA"
	ns "FIRE"
	returns "Entity"
	doc [[!
<summary>
```
Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius. It could return a ped or an entity, but the scripts expect a ped, but still check if it's a ped.  
```
</summary>
	]]

native "ADD_OWNED_EXPLOSION"
    hash "0x172AA1B624FA1013"
	jhash (0x27EE0D67)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "explosionType",
		float "damageScale",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "cameraShake",
	}
	ns "FIRE"
	returns "void"
	doc [[!
<summary>
```
enum ExplosionTypes  
{  
	EXPLOSION_GRENADE,  
	EXPLOSION_GRENADELAUNCHER,  
	EXPLOSION_STICKYBOMB,  
	EXPLOSION_MOLOTOV,  
	EXPLOSION_ROCKET,  
	EXPLOSION_TANKSHELL,  
	EXPLOSION_HI_OCTANE,  
	EXPLOSION_CAR,  
	EXPLOSION_PLANE,  
	EXPLOSION_PETROL_PUMP,  
	EXPLOSION_BIKE,  
	EXPLOSION_DIR_STEAM,  
	EXPLOSION_DIR_FLAME,  
	EXPLOSION_DIR_WATER_HYDRANT,  
	EXPLOSION_DIR_GAS_CANISTER,  
	EXPLOSION_BOAT,  
	EXPLOSION_SHIP_DESTROY,  
	EXPLOSION_TRUCK,  
	EXPLOSION_BULLET,  
	EXPLOSION_SMOKEGRENADELAUNCHER,  
	EXPLOSION_SMOKEGRENADE,  
	EXPLOSION_BZGAS,  
	EXPLOSION_FLARE,  
	EXPLOSION_GAS_CANISTER,  
	EXPLOSION_EXTINGUISHER,  
	EXPLOSION_PROGRAMMABLEAR,  
	EXPLOSION_TRAIN,  
	EXPLOSION_BARREL,  
	EXPLOSION_PROPANE,  
	EXPLOSION_BLIMP,  
	EXPLOSION_DIR_FLAME_EXPLODE,  
	EXPLOSION_TANKER,  
	EXPLOSION_PLANE_ROCKET,  
	EXPLOSION_VEHICLE_BULLET,  
	EXPLOSION_GAS_TANK,  
	EXPLOSION_BIRD_CRAP  
};  
BOOL isAudible = If explosion makes a sound.  
BOOL isInvisible = If the explosion is invisible or not.  
```
</summary>
	]]

native "GET_NUMBER_OF_FIRES_IN_RANGE"
    hash "0x50CAD495A460B305"
	jhash (0x654D93B7)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "FIRE"
	returns "int"
	doc [[!
	]]

native "_GET_ENTITY_INSIDE_EXPLOSION_SPHERE"
    hash "0xB3CD51E3DB86F176"
	arguments {
		int "explosionType",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "FIRE"
	returns "Entity"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="explosionType">:</param>
<param name="x">:</param>
<param name="y">:</param>
<param name="z">:</param>
<param name="radius">:</param>
	]]

native "IS_EXPLOSION_ACTIVE_IN_AREA"
    hash "0x6070104B699B2EF4"
	jhash (0x37C388DB)
	arguments {
		int "explosionType",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	alias "0x6070104B699B2EF4"
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "IS_ENTITY_ON_FIRE"
    hash "0x28D3FED7190D3A0B"
	jhash (0x8C73E64F)
	arguments {
		Entity "entity",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "IS_EXPLOSION_IN_AREA"
    hash "0x2E2EBA0EE7CED0E0"
	jhash (0xFB40075B)
	arguments {
		int "explosionType",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "IS_EXPLOSION_IN_ANGLED_AREA"
    hash "0xA079A6C51525DC4B"
	jhash (0x0128FED9)
	arguments {
		int "explosionType",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "angle",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "REMOVE_SCRIPT_FIRE"
    hash "0x7FF548385680673F"
	jhash (0x6B21FE26)
	arguments {
		FireId "fireHandle",
	}
	ns "FIRE"
	returns "void"
	doc [[!
	]]

native "START_SCRIPT_FIRE"
    hash "0x6B83617E04503888"
	jhash (0xE7529357)
	arguments {
		float "X",
		float "Y",
		float "Z",
		int "maxChildren",
		BOOL "isGasFire",
	}
	ns "FIRE"
	returns "FireId"
	doc [[!
<summary>
```
Starts a fire:  
xyz: Location of fire  
maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.  
isGasFire: Whether or not the fire is powered by gasoline.  
```
</summary>
	]]

native "IS_EXPLOSION_IN_SPHERE"
    hash "0xAB0F816885B0E483"
	jhash (0xD455A7F3)
	arguments {
		int "explosionType",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "STOP_FIRE_IN_RANGE"
    hash "0x056A8A219B8E829F"
	jhash (0x725C7205)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "FIRE"
	returns "void"
	doc [[!
<summary>
```
This doesn't stop fire nor the fire propagation in a loop... for some reasons.  
```
</summary>
	]]

native "START_ENTITY_FIRE"
    hash "0xF6A9D9708F6F23DF"
	jhash (0x8928428E)
	arguments {
		Entity "entity",
	}
	ns "FIRE"
	returns "FireId"
	doc [[!
	]]

native "STOP_ENTITY_FIRE"
    hash "0x7F0DD2EBBB651AFF"
	jhash (0xCE8C9066)
	arguments {
		Entity "entity",
	}
	ns "FIRE"
	returns "void"
	doc [[!
	]]

native "ADD_DECAL"
    hash "0xB302244A1839BDAD"
	jhash (0xEAD0C412)
	arguments {
		int "decalType",
		float "posX",
		float "posY",
		float "posZ",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		float "width",
		float "height",
		float "rCoef",
		float "gCoef",
		float "bCoef",
		float "opacity",
		float "timeout",
		BOOL "p17",
		BOOL "p18",
		BOOL "p19",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
decal types:  
public enum DecalTypes  
{  
    splatters_blood = 1010,  
    splatters_blood_dir = 1015,  
    splatters_blood_mist = 1017,  
    splatters_mud = 1020,  
    splatters_paint = 1030,  
    splatters_water = 1040,  
    splatters_water_hydrant = 1050,  
    splatters_blood2 = 1110,  
    weapImpact_metal = 4010,  
    weapImpact_concrete = 4020,  
    weapImpact_mattress = 4030,  
    weapImpact_mud = 4032,  
    weapImpact_wood = 4050,  
    weapImpact_sand = 4053,  
    weapImpact_cardboard = 4040,  
    weapImpact_melee_glass = 4100,  
    weapImpact_glass_blood = 4102,  
    weapImpact_glass_blood2 = 4104,  
    weapImpact_shotgun_paper = 4200,  
    weapImpact_shotgun_mattress,  
    weapImpact_shotgun_metal,  
    weapImpact_shotgun_wood,  
    weapImpact_shotgun_dirt,  
    weapImpact_shotgun_tvscreen,  
    weapImpact_shotgun_tvscreen2,  
    weapImpact_shotgun_tvscreen3,  
    weapImpact_melee_concrete = 4310,  
    weapImpact_melee_wood = 4312,  
    weapImpact_melee_metal = 4314,  
    burn1 = 4421,  
    burn2,  
    burn3,  
    burn4,  
    burn5,  
    bang_concrete_bang = 5000,  
    bang_concrete_bang2,  
    bang_bullet_bang,  
    bang_bullet_bang2 = 5004,  
    bang_glass = 5031,  
    bang_glass2,  
    solidPool_water = 9000,  
    solidPool_blood,  
    solidPool_oil,  
    solidPool_petrol,  
    solidPool_mud,  
    porousPool_water,  
    porousPool_blood,  
    porousPool_oil,  
    porousPool_petrol,  
    porousPool_mud,  
    porousPool_water_ped_drip,  
    liquidTrail_water = 9050  
}  
```
</summary>
	]]

native "ADD_TCMODIFIER_OVERRIDE"
    hash "0x1A8E2C8B9CF4549C"
	jhash (0xE8F538B5)
	arguments {
		charPtr "modifierName1",
		charPtr "modifierName2",
	}
	alias "0x1A8E2C8B9CF4549C"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "ADD_ENTITY_ICON"
    hash "0x9CD43EEE12BF4DD0"
	jhash (0xF3027D21)
	arguments {
		Entity "entity",
		charPtr "icon",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
Example:  
GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");  
I tried this and nothing happened...  
```
</summary>
	]]

native "_ANIMPOSTFX_GET_UNK"
    hash "0xE35B38A27E8E7179"
	arguments {
		charPtr "effectName",
	}
	alias "0xE35B38A27E8E7179"
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "ADD_PETROL_DECAL"
    hash "0x4F5212C7AD880DF8"
	jhash (0x1259DF42)
	arguments {
		float "x",
		float "y",
		float "z",
		float "groundLvl",
		float "width",
		float "transparency",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "ANIMPOSTFX_IS_RUNNING"
    hash "0x36AD3E690DA5ACEB"
	jhash (0x089D5921)
	arguments {
		charPtr "effectName",
	}
	alias "_GET_SCREEN_EFFECT_IS_ACTIVE"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the specified screen effect is active.  
See the effects list in _START_SCREEN_EFFECT  
Example and list of screen FX: www.pastebin.com/dafBAjs0  
```
</summary>
	]]

native "ADD_VEHICLE_CREW_EMBLEM"
    hash "0x428BDCB9DA58DA53"
	jhash (0x12077738)
	arguments {
		Vehicle "vehicle",
		Ped "ped",
		int "boneIndex",
		float "x1",
		float "x2",
		float "x3",
		float "y1",
		float "y2",
		float "y3",
		float "z1",
		float "z2",
		float "z3",
		float "scale",
		Any "p13",
		int "alpha",
	}
	alias "_ADD_CLAN_DECAL_TO_VEHICLE"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Now has 15 parameters, previous declaration:  
BOOL _0x428BDCB9DA58DA53(Any p0, Any p1, Any p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, Any p13)  
boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone. They are usually rotations and measurements. Haven't reversed which are what yet.  
Scale is how big the decal will be.  
p13 is always 0.  
For alpha, 200 seems to match what the game is doing, I think. I don't have access to the new scripts to see what this parameter is, but based on guessing this seems (kind of) accurate.  
```
</summary>
	]]

native "ANIMPOSTFX_STOP"
    hash "0x068E835A1D0DC0E3"
	jhash (0x06BB5CDA)
	arguments {
		charPtr "effectName",
	}
	alias "_STOP_SCREEN_EFFECT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Example and list of screen FX: www.pastebin.com/dafBAjs0  
```
</summary>
	]]

native "_ANIMPOSTFX_STOP_AND_DO_UNK"
    hash "0xD2209BE128B5418C"
	arguments {
		charPtr "effectName",
	}
	alias "0xD2209BE128B5418C"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
"SwitchHUDFranklinOut",  
"SwitchHUDMichaelOut",  
"SwitchHUDOut",  
"SwitchHUDTrevorOut",  
"SwitchOpenFranklinOut",  
"SwitchOpenMichaelIn",  
"SwitchOpenNeutral"  
```
</summary>
	]]

native "ANIMPOSTFX_PLAY"
    hash "0x2206BF9A37B7F724"
	jhash (0x1D980479)
	arguments {
		charPtr "effectName",
		int "duration",
		BOOL "looped",
	}
	alias "_START_SCREEN_EFFECT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
playLength - is how long to play the effect for in milliseconds. If 0, it plays the default length  
if loop is true, the effect wont stop until you call _STOP_SCREEN_EFFECT on it. (only loopable effects)  
Example and list of screen FX: www.pastebin.com/dafBAjs0  
```
</summary>
	]]

native "ANIMPOSTFX_STOP_ALL"
    hash "0xB4EDDC19532BFB85"
	jhash (0x4E6D875B)
	alias "_STOP_ALL_SCREEN_EFFECTS"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "BEGIN_SCALEFORM_MOVIE_METHOD"
    hash "0xF6E48914C7A8694E"
	jhash (0x215ABBE8)
	arguments {
		int "scaleform",
		charPtr "methodName",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Push a function from the Scaleform onto the stack  
```
</summary>
	]]

native "ATTACH_TV_AUDIO_TO_ENTITY"
    hash "0x845BAD77CC770633"
	jhash (0x784944DB)
	arguments {
		Entity "entity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Might be more appropriate in AUDIO?  
```
</summary>
	]]

native "BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER"
    hash "0xB9449845F73F5E9C"
	jhash (0x5E219B67)
	arguments {
		charPtr "functionName",
	}
	alias "0xB9449845F73F5E9C"
	alias "_BEGIN_SCALEFORM_MOVIE_METHOD_V"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
Starts frontend (pause menu) scaleform movie methods for header options.

Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
</summary>
<param name="functionName">Scaleform function name.</param>
	]]

native "BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND"
    hash "0xAB58C27C2E6123C6"
	jhash (0xF6015178)
	arguments {
		charPtr "functionName",
	}
	alias "0xAB58C27C2E6123C6"
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_N"
	alias "_BEGIN_SCALEFORM_MOVIE_METHOD_N"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
Starts frontend (pause menu) scaleform movie methods.
This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.

Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#_0xB9449845F73F5E9C) for header scaleform functions.
</summary>
<param name="functionName">The function name of the scaleform to call.</param>
	]]

native "BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD"
    hash "0x98C494FD5BDFBFD5"
	jhash (0x5D66CE1E)
	arguments {
		int "hudComponent",
		charPtr "methodName",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_FROM_HUD_COMPONENT"
	alias "_BEGIN_SCALEFORM_MOVIE_METHOD_HUD_COMPONENT"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::_PUSH_SCALEFORM_MOVIE_FUNCTION, just a hud component id instead of a Scaleform.  
Known components:  
19   
20   
This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".  
```
</summary>
	]]

native "CALL_SCALEFORM_MOVIE_METHOD"
    hash "0xFBD96D87AC96D533"
	jhash (0x7AB77B57)
	arguments {
		int "scaleform",
		charPtr "method",
	}
	alias "_CALL_SCALEFORM_MOVIE_FUNCTION_VOID"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function.  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_SCALEFORM_STRING"
    hash "0x80338406F3475E55"
	jhash (0x3AC9CB55)
	arguments {
		charPtr "componentType",
	}
	alias "_BEGIN_TEXT_COMPONENT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Previously called _BEGIN_TEXT_COMPONENT  
Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.  
Examples:  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");  
UI::ADD_TEXT_COMPONENT_INTEGER(GAMEPLAY::ABSI(a_1));  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");  
UI::_ADD_TEXT_COMPONENT_STRING(a_2);  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");  
UI::_0x17299B63C7683A2B(v_3);  
UI::_0x17299B63C7683A2B(v_4);  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");  
UI::_0x17299B63C7683A2B(v_3);  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
```
</summary>
	]]

native "CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER"
    hash "0xD0837058AE2E4BEE"
	jhash (0x557EDA1D)
	arguments {
		int "scaleform",
		charPtr "methodName",
		float "param1",
		float "param2",
		float "param3",
		float "param4",
		float "param5",
	}
	alias "_CALL_SCALEFORM_MOVIE_FUNCTION_FLOAT_PARAMS"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function and passes the parameters as floats.  
The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.  
```
</summary>
	]]

native "CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING"
    hash "0xEF662D8D57E290B1"
	jhash (0x6EAF56DE)
	arguments {
		int "scaleform",
		charPtr "methodName",
		float "floatParam1",
		float "floatParam2",
		float "floatParam3",
		float "floatParam4",
		float "floatParam5",
		charPtr "stringParam1",
		charPtr "stringParam2",
		charPtr "stringParam3",
		charPtr "stringParam4",
		charPtr "stringParam5",
	}
	alias "_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function and passes both float and string parameters (in their respective order).  
The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
Examples:  
// function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
// function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
```
</summary>
	]]

native "CALL_SCALEFORM_MOVIE_METHOD_WITH_STRING"
    hash "0x51BC1ED3CC44E8F7"
	jhash (0x91A7FCEB)
	arguments {
		int "scaleform",
		charPtr "methodName",
		charPtr "param1",
		charPtr "param2",
		charPtr "param3",
		charPtr "param4",
		charPtr "param5",
	}
	alias "_CALL_SCALEFORM_MOVIE_FUNCTION_STRING_PARAMS"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function and passes the parameters as strings.  
The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).  
```
</summary>
	]]

native "_CASCADESHADOWS_RESET_TYPE"
    hash "0x27CB772218215325"
	alias "0x27CB772218215325"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "CLEAR_DRAW_ORIGIN"
    hash "0xFF0B610F6BE0D7AF"
	jhash (0xDD76B263)
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Resets the screen's draw-origin which was changed by the function GRAPHICS::SET_DRAW_ORIGIN(...) back to x=0,y=0.  
See GRAPHICS::SET_DRAW_ORIGIN(...) for further information.  
```
</summary>
	]]

native "CLEAR_TIMECYCLE_MODIFIER"
    hash "0x0F07E7745A236711"
	jhash (0x8D8DF8EE)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_CASCADESHADOWS_SET_TYPE"
    hash "0xB11D94BC55F41932"
	jhash (0xDE10BA1F)
	arguments {
		charPtr "type",
	}
	alias "0xB11D94BC55F41932"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Has something to do with player switch.  
Only possible values:  
- "CSM_ST_BOX3x3"  
```
</summary>
	]]

native "_CLEAR_EXTRA_TIMECYCLE_MODIFIER"
    hash "0x92CCC17A7A2285DA"
	jhash (0x6776720A)
	alias "0x92CCC17A7A2285DA"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Clears the secondary timecycle modifier usually set with [`SetExtraTimecycleModifier`](#_0x5096FD9CCB49056D)
</summary>
	]]

native "CREATE_CHECKPOINT"
    hash "0x0134F0835AB6BFCB"
	jhash (0xF541B690)
	arguments {
		int "type",
		float "posX1",
		float "posY1",
		float "posZ1",
		float "posX2",
		float "posY2",
		float "posZ2",
		float "radius",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		int "reserved",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Creates a checkpoint. Returns the handle of the checkpoint.  
20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.  
Parameters:  
* type - The type of checkpoint to create. See below for a list of checkpoint types.  
* pos1 - The position of the checkpoint.  
* pos2 - The position of the next checkpoint to point to.  
* radius - The radius of the checkpoint.  
* color - The color of the checkpoint.  
* reserved - Special parameter, see below for details. Usually set to 0 in the scripts.  
Checkpoint types:  
0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker        
20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker      
30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
35-38-------Ring: Airplane Up, Left, Right, UpsideDown  
39----------?  
40----------Ring: just a ring  
41----------?  
42-44-------Cylinder w/ number (uses 'reserved' parameter)  
45-47-------Cylinder no arrow or number  
If using type 42-44, reserved sets number / number and shape to display  
0-99------------Just numbers (0-99)  
100-109-----------------Arrow (0-9)  
110-119------------Two arrows (0-9)  
120-129----------Three arrows (0-9)  
130-139----------------Circle (0-9)  
140-149------------CycleArrow (0-9)  
150-159----------------Circle (0-9)  
160-169----Circle  w/ pointer (0-9)  
170-179-------Perforated ring (0-9)  
180-189----------------Sphere (0-9)  
```
</summary>
	]]

native "CLEAR_TV_CHANNEL_PLAYLIST"
    hash "0xBEB3D46BB7F043C0"
	jhash (0xCBE7068F)
	arguments {
		int "tvChannel",
	}
	alias "0xBEB3D46BB7F043C0"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "CREATE_TRACKED_POINT"
    hash "0xE2C9439ED45DEA60"
	jhash (0x3129C31A)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Creates a tracked point, useful for checking the visibility of a 3D point on screen.  
```
</summary>
	]]

native "DELETE_CHECKPOINT"
    hash "0xF5ED37F54CD4D52E"
	jhash (0xB66CF3CA)
	arguments {
		int "checkpoint",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DISABLE_OCCLUSION_THIS_FRAME"
    hash "0x3669F1B198DCAA4F"
	jhash (0x0DCC0B8B)
	alias "0x3669F1B198DCAA4F"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DESTROY_TRACKED_POINT"
    hash "0xB25DC90BAD56CA42"
	jhash (0x14AC675F)
	arguments {
		int "point",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DOES_PARTICLE_FX_LOOPED_EXIST"
    hash "0x74AFEF0D2E1E409B"
	jhash (0xCBF91D2A)
	arguments {
		int "ptfxHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "DISABLE_VEHICLE_DISTANTLIGHTS"
    hash "0xC9F98AC1884E73A2"
	jhash (0x7CFAE36F)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_DRAW_BINK_MOVIE"
    hash "0x7118E83EEB9F7238"
	arguments {
		int "binkMovie",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="binkMovie">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
<param name="r">:</param>
<param name="g">:</param>
<param name="b">:</param>
<param name="a">:</param>
	]]

native "DOES_VEHICLE_HAVE_CREW_EMBLEM"
    hash "0x060D935D3981A275"
	jhash (0x6D58F73B)
	arguments {
		Vehicle "vehicle",
		int "p1",
	}
	alias "_HAS_VEHICLE_GOT_DECAL"
	alias "_DOES_VEHICLE_HAVE_DECAL"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
This function is called before ADD_CLAN_DECAL_TO_VEHICLE to see if it needs to run. IDK if it's for clan decal or not, but the 2nd parameter might be decal index? It's always passed 0. Not sure what this function really does. But it does return 0 if the clan tag is not on, and 1 if it is.  
```
</summary>
	]]

native "DRAW_BOX"
    hash "0xD3A9971CADAC7252"
	jhash (0xCD4D9DD5)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
x,y,z = start pos  
x2,y2,z2 = end pos  
Draw's a 3D Box between the two x,y,z coords.  
--------------  
Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere.  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawBox(Vector3 a, Vector3 b, Color col)  
{  
    Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A);  
}  
```
</summary>
	]]

native "DRAW_DEBUG_BOX"
    hash "0x083A2CA4F2E573BD"
	jhash (0x8524A848)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_LINE"
    hash "0x7FDFADE676AA3CB0"
	jhash (0xABF783AB)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_CROSS"
    hash "0x73B1189623049839"
	jhash (0xB6DF3709)
	arguments {
		float "x",
		float "y",
		float "z",
		float "size",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_SPHERE"
    hash "0xAAD68E1AB39DA632"
	jhash (0x304D0EEF)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_LINE_WITH_TWO_COLOURS"
    hash "0xD8B9A8AC5608FF94"
	jhash (0xE8BFF632)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "r1",
		int "g1",
		int "b1",
		int "r2",
		int "g2",
		int "b2",
		int "alpha1",
		int "alpha2",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_TEXT"
    hash "0x3903E216620488E8"
	jhash (0x269B006F)
	arguments {
		charPtr "text",
		float "x",
		float "y",
		float "z",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_TEXT_2D"
    hash "0xA3BB2E9555C05A8F"
	jhash (0x528B973B)
	arguments {
		charPtr "text",
		float "x",
		float "y",
		float "z",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "_DRAW_INTERACTIVE_SPRITE"
    hash "0x2BC54A8188768488"
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		float "screenX",
		float "screenY",
		float "width",
		float "height",
		float "heading",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	alias "0x2BC54A8188768488"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Similar to [\_DRAW_SPRITE](#_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
These seem to be the only dicts ever requested by this native:

```
prop_screen_biker_laptop
Prop_Screen_GR_Disruption
Prop_Screen_TaleOfUs
prop_screen_nightclub
Prop_Screen_IE_Adhawk
prop_screen_sm_free_trade_shipping
prop_screen_hacker_truck
MPDesktop
Prop_Screen_Nightclub
And a few others
```
</summary>
<param name="textureDict">Name of texture dictionary to load texture from</param>
<param name="textureName">Name of texture to load from texture dictionary</param>
<param name="screenX">Screen X</param>
<param name="screenY">Screen Y</param>
<param name="width">Scale X</param>
<param name="height">Scale Y</param>
<param name="heading">Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees</param>
<param name="red">Color</param>
<param name="green">Color</param>
<param name="blue">Color</param>
<param name="alpha">Opacity level</param>
	]]

native "_DRAW_LIGHT_WITH_RANGE_AND_SHADOW"
    hash "0xF49E9A9716A04595"
	arguments {
		float "x",
		float "y",
		float "z",
		int "r",
		int "g",
		int "b",
		float "range",
		float "intensity",
		float "shadow",
	}
	alias "_DRAW_LIGHT_WITH_RANGE_WITH_SHADOW"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DRAW_LIGHT_WITH_RANGE"
    hash "0xF2A1B2771A01DBD4"
	jhash (0x6A396E9A)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		int "colorR",
		int "colorG",
		int "colorB",
		float "range",
		float "intensity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DRAW_LINE"
    hash "0x6B7256074AE34680"
	jhash (0xB3426BCC)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Draws a depth-tested line from one point to another.  
----------------  
x1, y1, z1 : Coordinates for the first point  
x2, y2, z2 : Coordinates for the second point  
r, g, b, alpha : Color with RGBA-Values  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawLine(Vector3 from, Vector3 to, Color col)  
{  
    Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A);  
}  
```
</summary>
	]]

native "DRAW_MARKER"
    hash "0x28477EC23D892089"
	jhash (0x48D84A02)
	arguments {
		int "type",
		float "posX",
		float "posY",
		float "posZ",
		float "dirX",
		float "dirY",
		float "dirZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "scaleX",
		float "scaleY",
		float "scaleZ",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		BOOL "bobUpAndDown",
		BOOL "faceCamera",
		int "p19",
		BOOL "rotate",
		charPtr "textureDict",
		charPtr "textureName",
		BOOL "drawOnEnts",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.

There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.
</summary>
<param name="type">The marker type to draw.</param>
<param name="posX">The X coordinate to draw the marker at.</param>
<param name="posY">The Y coordinate to draw the marker at.</param>
<param name="posZ">The Z coordinate to draw the marker at.</param>
<param name="dirX">The X component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.</param>
<param name="dirY">The Y component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.</param>
<param name="dirZ">The Z component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.</param>
<param name="rotX">The X rotation for the marker. Only used if the direction vector is 0.0.</param>
<param name="rotY">The Y rotation for the marker. Only used if the direction vector is 0.0.</param>
<param name="rotZ">The Z rotation for the marker. Only used if the direction vector is 0.0.</param>
<param name="scaleX">The scale for the marker on the X axis.</param>
<param name="scaleY">The scale for the marker on the Y axis.</param>
<param name="scaleZ">The scale for the marker on the Z axis.</param>
<param name="red">The red component of the marker color, on a scale from 0-255.</param>
<param name="green">The green component of the marker color, on a scale from 0-255.</param>
<param name="blue">The blue component of the marker color, on a scale from 0-255.</param>
<param name="alpha">The alpha component of the marker color, on a scale from 0-255.</param>
<param name="bobUpAndDown">Whether or not the marker should slowly animate up/down.</param>
<param name="faceCamera">Whether the marker should be a 'billboard', as in, should constantly face the camera.</param>
<param name="p19">Typically set to `2`. Does not seem to matter directly.</param>
<param name="rotate">Rotations only apply to the heading.</param>
<param name="textureDict">A texture dictionary to draw the marker with, or NULL. Example: 'GolfPutting'</param>
<param name="textureName">A texture name in `textureDict` to draw the marker with, or NULL. Example: 'PuttingMarker'</param>
<param name="drawOnEnts">Whether or not the marker should draw on intersecting entities.</param>
	]]

native "DRAW_POLY"
    hash "0xAC26716048436851"
	jhash (0xABD19253)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "x3",
		float "y3",
		float "z3",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
x/y/z - Location of a vertex (in world coords), presumably.  
----------------  
x1, y1, z1     : Coordinates for the first point  
x2, y2, z2     : Coordinates for the second point  
x3, y3, z3     : Coordinates for the third point  
r, g, b, alpha : Color with RGBA-Values  
Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).  
But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)  
{  
    Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);  
}  
BTW: Intersecting triangles are not supported: They overlap in the order they were called.  
```
</summary>
	]]

native "DRAW_RECT"
    hash "0x3A618A217E5154F0"
	jhash (0xDD2BFC77)
	arguments {
		float "x",
		float "y",
		float "width",
		float "height",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Draws a rectangle on the screen.  
-x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
-y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  
-width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  
-height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  
-R: Red part of the color. (0-255)  
-G: Green part of the color. (0-255)  
-B: Blue part of the color. (0-255)  
-A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  
The total number of rectangles to be drawn in one frame is apparently limited to 399.  
```

```
NativeDB Added Parameter 9: BOOL p8
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE_FULLSCREEN"
    hash "0x0DF606929C105BE1"
	jhash (0x7B48E696)
	arguments {
		int "scaleform",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		int "unk",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
unk is not used so no need  
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE"
    hash "0x54972ADAF0294A93"
	jhash (0x48DA6A58)
	arguments {
		int "scaleformHandle",
		float "x",
		float "y",
		float "width",
		float "height",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		int "unk",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
GTA V Scaleforms Decompiled  
pastebin.com/mmNdjX2k  
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED"
    hash "0xCF537FDE4FBD4CE5"
	jhash (0x9C59FC06)
	arguments {
		int "scaleform1",
		int "scaleform2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DRAW_SCALEFORM_MOVIE_3D"
    hash "0x87D51D72255D4E78"
	jhash (0xC4F63A89)
	arguments {
		int "scaleform",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "p7",
		float "sharpness",
		float "p9",
		float "scaleX",
		float "scaleY",
		float "scaleZ",
		Any "p13",
	}
	alias "0x87D51D72255D4E78"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
sharpness goes from 0.0 to 1.0  
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE_3D_SOLID"
    hash "0x1CE592FDC749D6F5"
	jhash (0x899933C8)
	arguments {
		int "scaleform",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "p7",
		float "p8",
		float "p9",
		float "scaleX",
		float "scaleY",
		float "scaleZ",
		Any "p13",
	}
	alias "0x1CE592FDC749D6F5"
	alias "_DRAW_SCALEFORM_MOVIE_3D_NON_ADDITIVE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
what the heck does this one do differently from the one above?  
```
</summary>
	]]

native "_DRAW_SHOWROOM"
    hash "0x98C4FE6EC34154CA"
	jhash (0x9A0E3BFE)
	arguments {
		charPtr "p0",
		Ped "ped",
		int "p2",
		float "posX",
		float "posY",
		float "posZ",
	}
	alias "0x98C4FE6EC34154CA"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A  
p0 was always "CELEBRATION_WINNER"  
```
</summary>
	]]

native "DRAW_SPOT_LIGHT"
    hash "0xD0F64B265C8C8B33"
	jhash (0xBDBC410C)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "dirX",
		float "dirY",
		float "dirZ",
		int "colorR",
		int "colorG",
		int "colorB",
		float "distance",
		float "brightness",
		float "hardness",
		float "radius",
		float "falloff",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Parameters:  
* pos - coordinate where the spotlight is located  
* dir - the direction vector the spotlight should aim at from its current position  
* r,g,b - color of the spotlight  
* distance - the maximum distance the light can reach  
* brightness - the brightness of the light  
* roundness - "smoothness" of the circle edge  
* radius - the radius size of the spotlight  
* falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  
Example in C# (spotlight aims at the closest vehicle):  
Vector3 myPos = Game.Player.Character.Position;  
Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);  
Vector3 destinationCoords = nearest.Position;  
Vector3 dirVector = destinationCoords - myPos;  
dirVector.Normalize();  
Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);  
```
</summary>
	]]

native "_DRAW_SPOT_LIGHT_WITH_SHADOW"
    hash "0x5BCA583A583194DB"
	jhash (0x32BF9598)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "dirX",
		float "dirY",
		float "dirZ",
		int "colorR",
		int "colorG",
		int "colorB",
		float "distance",
		float "brightness",
		float "roundness",
		float "radius",
		float "falloff",
		int "shadowId",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
shadowId: each call to this native in the same tick should have a different value passed to this parameter, if two or more calls have the same values, only the first one will render its shadow properly  
```
</summary>
	]]

native "DRAW_SPRITE"
    hash "0xE7FFAE5EBF23D890"
	jhash (0x1FEC16B0)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		float "screenX",
		float "screenY",
		float "width",
		float "height",
		float "heading",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Draws a 2D sprite on the screen.  
Parameters:  
textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)  
textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)  
screenX/Y - Screen offset (0.5 = center)  
scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)  
heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees  
red,green,blue - Sprite color (default = 255/255/255)  
alpha - opacity level  
```

```
NativeDB Added Parameter 12: BOOL p11
```
</summary>
	]]

native "DRAW_TV_CHANNEL"
    hash "0xFDDC2B4ED3C69DF0"
	jhash (0x8129EF89)
	arguments {
		float "xPos",
		float "yPos",
		float "xScale",
		float "yScale",
		float "rotation",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.  
"act_cinema.ysc", line 1483:  
UI::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);  
UI::SET_TEXT_RENDER_ID(l_AE);  
GRAPHICS::_0x61BB1D9B3A95D802(4);  
GRAPHICS::_0xC6372ECD45D73BCD(1);  
if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {  
    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);  
} else {   
    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);  
}  
"am_mp_property_int.ysc", line 102545:  
if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {  
    if (UI::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {  
        UI::SET_TEXT_RENDER_ID(a_2._f1);  
        GRAPHICS::_0x61BB1D9B3A95D802(4);  
        GRAPHICS::_0xC6372ECD45D73BCD(1);  
        GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);  
        if (GRAPHICS::GET_TV_CHANNEL() == -1) {  
            sub_a8fa5(a_2, 1);  
        } else {   
            sub_a8fa5(a_2, 1);  
            GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);  
        }  
        UI::SET_TEXT_RENDER_ID(UI::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());  
    }  
}  
```
</summary>
	]]

native "ENABLE_ALIEN_BLOOD_VFX"
    hash "0x9DCE1F0F78260875"
	jhash (0xCE8B8748)
	arguments {
		BOOL "toggle",
	}
	alias "0x9DCE1F0F78260875"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Creates a motion-blur sort of effect, this native does not seem to work, however by using the [`START_SCREEN_EFFECT`](#_0x2206BF9A37B7F724) native with `"DrugsMichaelAliensFight"` as the effect parameter, you should be able to get the effect.

This native does not seem to work, however by using the [START_SCREEN_EFFECT](https://runtime.fivem.net/doc/natives/#_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
</summary>
	]]

native "ENABLE_CLOWN_BLOOD_VFX"
    hash "0xD821490579791273"
	jhash (0xC61C75E9)
	arguments {
		BOOL "toggle",
	}
	alias "SET_CAMERA_ENDTIME"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Creates cartoon effect when Michel smokes the weed  
```
</summary>
	]]

native "ENABLE_MOVIE_KEYFRAME_WAIT"
    hash "0x74C180030FDE4B69"
	jhash (0x796DE696)
	arguments {
		BOOL "toggle",
	}
	alias "0x74C180030FDE4B69"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "ENABLE_MOVIE_SUBTITLES"
    hash "0x873FA65C778AD970"
	jhash (0xC2DEBA3D)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE"
    hash "0xC50AA39A577AF886"
	jhash (0x2F38B526)
	alias "_POP_SCALEFORM_MOVIE_FUNCTION"
	alias "_END_SCALEFORM_MOVIE_METHOD_RETURN"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Pops and calls the Scaleform movie on the stack. Returns data from the function (not sure if this is a string).  
```
</summary>
	]]

native "END_SCALEFORM_MOVIE_METHOD"
    hash "0xC6796A8FFA375E53"
	jhash (0x02DBF2D7)
	alias "_POP_SCALEFORM_MOVIE_FUNCTION_VOID"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pops and calls the Scaleform function on the stack  
```
</summary>
	]]

native "END_TEXT_COMMAND_SCALEFORM_STRING"
    hash "0x362E2D3FE93A9959"
	jhash (0x386CE0B8)
	alias "_END_TEXT_COMPONENT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Previously called _END_TEXT_COMPONENT  
```
</summary>
	]]

native "_END_TEXT_COMMAND_SCALEFORM_STRING_2"
    hash "0xAE4E8157D9ECF087"
	jhash (0x2E80DB52)
	alias "0xAE4E8157D9ECF087"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
```
</summary>
	]]

native "_ENTITY_DESCRIPTION_TEXT"
    hash "0xDEADC0DEDEADC0DE"
	jhash (0xC12AC47A)
	arguments {
		Entity "entity",
	}
	alias "0xDEADC0DEDEADC0DE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only found twice in decompiled scripts. Something to do with an entity/object?  
On a side note, it's very interesting how the hash for this native is "DEADC0DE" - this is usually used as padding for initializing a buffer of some sort. I wonder if this native is actually "dead"?  
"carmod_shop.ysc", line 9520:  
if (ENTITY::DOES_ENTITY_EXIST(l_324._f6)) {  
    GRAPHICS::_0xDEADC0DEDEADC0DE(l_324._f6);  
}  
"fm_mission_controller.ysc", line 189641:  
if (GAMEPLAY::IS_BIT_SET(g_1870E1._f7B64[a_0/*104*/]._f25, 28)) {  
    GRAPHICS::_0xDEADC0DEDEADC0DE(NETWORK::NET_TO_OBJ(l_4064._f26A._f87[a_0/*1*/]));  
    if (!GAMEPLAY::IS_BIT_SET(g_1870E1._f7B64[a_0/*104*/]._f25, 31)) {  
        if (!ENTITY::IS_ENTITY_DEAD(v_7)) {  
            AUDIO::PLAY_SOUND_FROM_ENTITY(-1, "EMP_Vehicle_Hum", v_7, "DLC_HEIST_BIOLAB_DELIVER_EMP_SOUNDS", 0, 0);  
            GAMEPLAY::SET_BIT(&g_1870E1._f7B64[a_0/*104*/]._f25, 31);  
        }  
    }  
}  
----------  
It's most likely named UPDATE_* (like UPDATE_ENTITY_SHIT_OR_SOMETHING).  
```
</summary>
	]]

native "FADE_DECALS_IN_RANGE"
    hash "0xD77EDADB0420E6E0"
	jhash (0xF81E884A)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Fades nearby decals within the range specified  
```
</summary>
	]]

native "_GET_ASPECT_RATIO"
    hash "0xF1307EF624A80D87"
	arguments {
		BOOL "b",
	}
	alias "_GET_SCREEN_ASPECT_RATIO"
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "_GET_ACTIVE_SCREEN_RESOLUTION"
    hash "0x873C9F3104101DD3"
	arguments {
		intPtr "x",
		intPtr "y",
	}
	alias "_GET_SCREEN_ACTIVE_RESOLUTION"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Returns current screen resolution.  
```
</summary>
	]]

native "_GET_CURRENT_NUMBER_OF_PHOTOS"
    hash "0x473151EBC762C6DA"
	jhash (0x21DBF0C9)
	alias "0x473151EBC762C6DA"
	alias "_GET_NUMBER_OF_PHOTOS"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
GET_CURRENT_*
```
</summary>
	]]

native "_GET_EXTRA_TIMECYCLE_MODIFIER_INDEX"
    hash "0xBB0527EC6341496D"
	alias "0xBB0527EC6341496D"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
See [`GetTimecycleModifierIndex`](#_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
</summary>
<returns>An integer representing the Timecycle modifier</returns>
	]]

native "GET_DECAL_WASH_LEVEL"
    hash "0x323F647679A09103"
	jhash (0x054448EF)
	arguments {
		int "decal",
	}
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "GET_IS_HIDEF"
    hash "0x84ED31191CC5D2C9"
	jhash (0x1C340359)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
false = Any resolution < 1280x720  
true = Any resolution >= 1280x720  
```
</summary>
	]]

native "GET_IS_PETROL_DECAL_IN_RANGE"
    hash "0x2F09F7976C512404"
	jhash (0x242C6A04)
	arguments {
		float "xCoord",
		float "yCoord",
		float "zCoord",
		float "radius",
	}
	alias "0x2F09F7976C512404"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
only documented. to be continued...  
```
</summary>
	]]

native "GET_MAXIMUM_NUMBER_OF_CLOUD_PHOTOS"
    hash "0xDC54A7AF8B3A14EF"
	jhash (0x239272BD)
	alias "0xDC54A7AF8B3A14EF"
	alias "_GET_MAXIMUM_NUMBER_OF_PHOTOS_2"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
This is the "actual" GET_MAXIMUM_NUMBER_OF_PHOTOS native. Always returns 96.  
```
</summary>
	]]

native "GET_IS_WIDESCREEN"
    hash "0x30CF4BDA4FCB1905"
	jhash (0xEC717AEF)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Setting Aspect Ratio Manually in game will return:  
false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. )  
true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )  
Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.  
```
</summary>
	]]

native "GET_REQUESTINGNIGHTVISION"
    hash "0x35FB78DC42B7BD21"
	jhash (0xF3A6309E)
	alias "0x35FB78DC42B7BD21"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "GET_MAXIMUM_NUMBER_OF_PHOTOS"
    hash "0x34D23450F028B0BF"
	jhash (0x727AA63F)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
Limit is 96, see _GET_MAXIMUM_NUMBER_OF_PHOTOS_2 (0xDC54A7AF8B3A14EF).  
```
</summary>
	]]

native "GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT"
    hash "0x2DE7EFA66B906036"
	jhash (0x2CFB0E6D)
	arguments {
		int "method_return",
	}
	alias "0x2DE7EFA66B906036"
	alias "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_INT"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
Used to get a return value from a scaleform function.
Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.

Old description:

```
Needs a bit more research, but it seems to return an int.  
Testing with the scaleform "HACKING_PC" it seems to return an int depending on the clicked App/Program ID  
"agency_heist3b.ysc", line 71836:  
if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
    GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD(l_46, "SET_INPUT_EVENT_SELECT");  
    l_45 = GRAPHICS::_END_SCALEFORM_MOVIE_METHOD_RETURN();  
}  
if (GRAPHICS::IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(l_45)) {  
    v_13 = GRAPHICS::GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(l_45);  
    if (v_13 == 6) {  
        sub_73269(a_0);  
    }  
}  
```
</summary>
<param name="method_return">The return value of this native: `EndScaleformMovieMethodReturn`</param>
<returns>Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.</returns>
	]]

native "GET_SAFE_ZONE_SIZE"
    hash "0xBAF107B6BB2C97F0"
	jhash (0x3F0D1A6F)
	ns "GRAPHICS"
	returns "float"
	doc [[!
<summary>
```
Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.  
```
</summary>
	]]

native "GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING"
    hash "0xE1E258829A885245"
	jhash (0x516862EB)
	arguments {
		int "method_return",
	}
	alias "SITTING_TV"
	alias "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_STRING"
	ns "GRAPHICS"
	returns "charPtr"
	doc [[!
<summary>
Used to get a return value from a scaleform function.
Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
</summary>
<param name="method_return">The return value of this native: `EndScaleformMovieMethodReturn`</param>
<returns>Returns a string in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT` returns an int.</returns>
	]]

native "_GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_BOOL"
    hash "0xD80A80346A45D761"
	arguments {
		int "returnValueData",
	}
	alias "0xD80A80346A45D761"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "GET_SCREEN_RESOLUTION"
    hash "0x888D57E407E63624"
	jhash (0x29F3572F)
	arguments {
		intPtr "x",
		intPtr "y",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
int screenresx,screenresy;  
GET_SCREEN_RESOLUTION(&screenresx,&screenresy);  
Hardcoded to always return 1280 x 720  
```
</summary>
	]]

native "GET_SCREEN_COORD_FROM_WORLD_COORD"
    hash "0x34E82F05DF2974F5"
	jhash (0x1F950E4B)
	arguments {
		float "worldX",
		float "worldY",
		float "worldZ",
		floatPtr "screenX",
		floatPtr "screenY",
	}
	alias "_WORLD3D_TO_SCREEN2D"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)  
Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.  
For .NET users...  
VB:  
Public Shared Function World3DToScreen2d(pos as vector3) As Vector2  
        Dim x2dp, y2dp As New Native.OutputArgument  
        Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)  
        Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))  
    End Function  
C#:  
Vector2 World3DToScreen2d(Vector3 pos)  
    {  
        var x2dp = new OutputArgument();  
        var y2dp = new OutputArgument();  
        Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);  
        return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());  
    }  
//USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.  
Used to be called _WORLD3D_TO_SCREEN2D  
I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.  
```
</summary>
	]]

native "GET_TEXTURE_RESOLUTION"
    hash "0x35736EE65BD00C11"
	jhash (0x096DAA4D)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
	}
	ns "GRAPHICS"
	returns "Vector3"
	doc [[!
<summary>
```
Returns the texture resolution of the passed texture dict+name.  
Note: Most texture resolutions are doubled compared to the console version of the game.  
```
</summary>
	]]

native "GET_TIMECYCLE_TRANSITION_MODIFIER_INDEX"
    hash "0x459FD2C8D0AB78BC"
	jhash (0x03C44E4B)
	alias "0x459FD2C8D0AB78BC"
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "_GET_SCRIPT_GFX_POSITION"
    hash "0x6DD8F5AA635EB4B2"
	arguments {
		float "x",
		float "y",
		floatPtr "calculatedX",
		floatPtr "calculatedY",
	}
	alias "0x6DD8F5AA635EB4B2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
`SET_SCRIPT_GFX_ALIGN_PARAMS`.
</summary>
<param name="x">The input X coordinate.</param>
<param name="y">The input Y coordinate.</param>
<param name="calculatedX">A pointer to the calculated X value.</param>
<param name="calculatedY">A pointer to the calculated Y value.</param>
	]]

native "GET_TV_CHANNEL"
    hash "0xFC1E275A90D39995"
	jhash (0x6B96145A)
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "GET_TIMECYCLE_MODIFIER_INDEX"
    hash "0xFDF3D97C674AFB66"
	jhash (0x594FEEC4)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Only use for this in the PC scripts is:  
if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)  
For a full list, see here: pastebin.com/cnk7FTF2  
can someone update this pastebin???  
```
</summary>
	]]

native "GET_TV_VOLUME"
    hash "0x2170813D3DD8661B"
	jhash (0x39555CF0)
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "GET_TOGGLE_PAUSED_RENDERPHASES_STATUS"
    hash "0xEB3DAC2C86001E5E"
	jhash (0xD4F5D07D)
	alias "0xEB3DAC2C86001E5E"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "GET_USINGNIGHTVISION"
    hash "0x2202A3F42C8E5F79"
	jhash (0x62619061)
	alias "_IS_NIGHTVISION_INACTIVE"
	alias "_IS_NIGHTVISION_ACTIVE"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Gets whether or not NIGHTVISION is Active.  
Note:  When nightvision is actually active, this native will return TRUE!  
```
</summary>
	]]

native "GET_VEHICLE_CREW_EMBLEM_REQUEST_STATE"
    hash "0xFE26117A5841B2FF"
	jhash (0x4F4D76E8)
	arguments {
		Vehicle "vehicle",
		int "p1",
	}
	alias "0xFE26117A5841B2FF"
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "GET_USINGSEETHROUGH"
    hash "0x44B80ABAB9D80BD3"
	jhash (0x1FE547F2)
	alias "_IS_SEETHROUGH_ACTIVE"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not SEETHROUGH is active.  
```
</summary>
	]]

native "GOLF_TRAIL_SET_COLOUR"
    hash "0x12995F2E53FFA601"
	jhash (0x804F444C)
	arguments {
		int "p0",
		int "p1",
		int "p2",
		int "p3",
		int "p4",
		int "p5",
		int "p6",
		int "p7",
		int "p8",
		int "p9",
		int "p10",
		int "p11",
	}
	alias "0x12995F2E53FFA601"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only used in the golf and golf_mp script  
```
</summary>
	]]

native "GOLF_TRAIL_SET_ENABLED"
    hash "0xA51C4B86B71652AE"
	jhash (0x5D3BFFC9)
	arguments {
		BOOL "toggle",
	}
	alias "0xA51C4B86B71652AE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "GOLF_TRAIL_SET_FACING"
    hash "0x06F761EA47C1D3ED"
	jhash (0x0D830DC7)
	arguments {
		BOOL "p0",
	}
	alias "0x06F761EA47C1D3ED"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "GOLF_TRAIL_SET_PATH"
    hash "0x312342E1A4874F3F"
	jhash (0xD9653728)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		BOOL "p8",
	}
	alias "0x312342E1A4874F3F"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
p8 seems to always be false.  
```
</summary>
	]]

native "GOLF_TRAIL_SET_RADIUS"
    hash "0x2485D34E50A22E84"
	jhash (0x72BA8A14)
	arguments {
		float "p0",
		float "p1",
		float "p2",
	}
	alias "0x2485D34E50A22E84"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "GOLF_TRAIL_SET_SHADER_PARAMS"
    hash "0x9CFDD90B2B844BF7"
	jhash (0x4EA70FB4)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	alias "0x9CFDD90B2B844BF7"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only appeared in Golf & Golf_mp. Parameters were all ptrs  
```
</summary>
	]]

native "GOLF_TRAIL_SET_TESSELLATION"
    hash "0xDBAA5EC848BA2D46"
	jhash (0xBB1A1294)
	arguments {
		int "p0",
		int "p1",
	}
	alias "0xDBAA5EC848BA2D46"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT"
    hash "0x8217150E1217EBFD"
	jhash (0x1DFE8D8A)
	arguments {
		int "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "HAS_SCALEFORM_MOVIE_FILENAME_LOADED"
    hash "0x0C1C5D756FB5F337"
	jhash (0x494A9E50)
	arguments {
		charPtr "scaleformName",
	}
	alias "0x0C1C5D756FB5F337"
	alias "_HAS_NAMED_SCALEFORM_MOVIE_LOADED"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Pretty sure it's the real name (not 100% sure so I added the _ prefix); can someone else confirm it?  
Only values used in the scripts are:  
"heist_mp"  
"heistmap_mp"  
"instructional_buttons"  
"heist_pre"  
```
</summary>
	]]

native "HAS_SCALEFORM_SCRIPT_HUD_MOVIE_LOADED"
    hash "0xDF6E5987D2B4D140"
	jhash (0x79B43255)
	arguments {
		int "hudComponent",
	}
	alias "_HAS_HUD_SCALEFORM_LOADED"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Check to see if hud component Scaleform has loaded?  
```
</summary>
	]]

native "HAS_SCALEFORM_MOVIE_LOADED"
    hash "0x85F01B8D5B90570E"
	jhash (0xDDFB6448)
	arguments {
		int "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "HAS_STREAMED_TEXTURE_DICT_LOADED"
    hash "0x0145F696AAAAD2E4"
	jhash (0x3F436EEF)
	arguments {
		charPtr "textureDict",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "IS_DECAL_ALIVE"
    hash "0xC694D74949CAFD0C"
	jhash (0xCDD4A61A)
	arguments {
		int "decal",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "IS_PARTICLE_FX_DELAYED_BLINK"
    hash "0x5CCABFFCA31DDE33"
	jhash (0xEA432A94)
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "_IS_PLAYLIST_UNK"
    hash "0x1F710BFF7DAE6261"
	arguments {
		int "tvChannel",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="tvChannel">:</param>
<param name="p1">:</param>
	]]

native "IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY"
    hash "0x768FF8961BA904D6"
	jhash (0x5CD7C3C0)
	arguments {
		int "method_return",
	}
	alias "0x768FF8961BA904D6"
	alias "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_BOOL"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
Returns true if the return value of a scaleform function is ready to be collected (using `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` or `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT`).

Old description/example:

```
Seems to take data that is returned from "_POP_SCALEFORM_MOVIE_FUNCTION" and checks to see if it's not null/empty.  
"agency_heist3b.ysc", line 71836:  
if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
    GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD(l_46, "SET_INPUT_EVENT_SELECT");  
    l_45 = GRAPHICS::_END_SCALEFORM_MOVIE_METHOD_RETURN();  
}  
if (GRAPHICS::IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(l_45)) {  
    v_13 = GRAPHICS::GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(l_45);  
    if (v_13 == 6) {  
        sub_73269(a_0);  
    }  
}  
```
</summary>
<param name="method_return">The return value of this native: `EndScaleformMovieMethodReturn`</param>
<returns>Returns true if the return value of a scaleform function is ready to be collected</returns>
	]]

native "IS_TRACKED_POINT_VISIBLE"
    hash "0xC45CCDAAC9221CA8"
	jhash (0x0BFC4F64)
	arguments {
		int "point",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "LOAD_MOVIE_MESH_SET"
    hash "0xB66064452270E8F1"
	jhash (0x9627905C)
	arguments {
		charPtr "movieMeshSetName",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "_IS_TV_PLAYLIST_ITEM_PLAYING"
    hash "0x0AD973CA1E077B60"
	jhash (0x4D1EB0FB)
	arguments {
		Hash "videoCliphash",
	}
	alias "0x0AD973CA1E077B60"
	alias "_LOAD_TV_CHANNEL"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
IS_*
```
</summary>
	]]

native "0x0218BA067D249DEA"
    hash "0x0218BA067D249DEA"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "MOVE_VEHICLE_DECALS"
    hash "0x84C8D7C2D30D3280"
	jhash (0xCE9E6CF2)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x02369D5C8A51FDCF"
    hash "0x02369D5C8A51FDCF"
	jhash (0xFDF6D8DA)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
DISABLE_S*
```
</summary>
	]]

native "0x02AC28F3A01FA04A"
    hash "0x02AC28F3A01FA04A"
	jhash (0xB19B2764)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x03FC694AE06C5A20"
    hash "0x03FC694AE06C5A20"
	jhash (0x48F16186)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x03300B57FCAC6DDB"
    hash "0x03300B57FCAC6DDB"
	jhash (0x60F72371)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0A123435A26C36CD"
    hash "0x0A123435A26C36CD"
	jhash (0xCCCA6855)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0A46AF8A78DC5E0A"
    hash "0x0A46AF8A78DC5E0A"
	jhash (0x9E553002)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0AE73D8DF3A762B2"
    hash "0x0AE73D8DF3A762B2"
	jhash (0x342FA2B4)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0C0C4E81E1AC60A0"
    hash "0x0C0C4E81E1AC60A0"
	jhash (0xEC5D0317)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x0E4299C549F0D1F1"
    hash "0x0E4299C549F0D1F1"
	jhash (0x9BABCBA4)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0D6CA79EEEBD8CA3"
    hash "0x0D6CA79EEEBD8CA3"
	jhash (0x65376C9B)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x108BE26959A9D9BB"
    hash "0x108BE26959A9D9BB"
	jhash (0x24A7A7F6)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
UI3DSCENE_*
```
</summary>
	]]

native "0x1072F115DAB0717E"
    hash "0x1072F115DAB0717E"
	jhash (0xE9F2B68F)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x14FC5833464340A8"
    hash "0x14FC5833464340A8"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x15E33297C3E8DC60"
    hash "0x15E33297C3E8DC60"
	jhash (0x805BAB08)
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
CLEAR_A*
```
</summary>
	]]

native "0x1612C45F9E3E0D44"
    hash "0x1612C45F9E3E0D44"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1670F8D05056F257"
    hash "0x1670F8D05056F257"
	jhash (0x226B08EA)
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x1BBC135A4D25EDDE"
    hash "0x1BBC135A4D25EDDE"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Only one instance across all scripts. (maintransition)  
May not be a bool, it could be one of these 0-2 values that are returned just about 500 god damn times.  
```
</summary>
	]]

native "0x1CBA05AE7BD7EE05"
    hash "0x1CBA05AE7BD7EE05"
	jhash (0x56345F6B)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
SET_TRA*
```
</summary>
	]]

native "0x1DD2139A9A20DCE8"
    hash "0x1DD2139A9A20DCE8"
	jhash (0xBA9AD458)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x22A249A53034450A"
    hash "0x22A249A53034450A"
	jhash (0x932FDB81)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x23BA6B0C2AD7B0D3"
    hash "0x23BA6B0C2AD7B0D3"
	jhash (0xC44C2F44)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Found only in all creator scripts. (fm_capture_creator, fm_deathmatch_creator, fm_lts_creator, fm_mission_controller, fm_race_creator)  
Used in-between DRAW_* calls (DRAW_POLY specifically).  
```
</summary>
	]]

native "0x259BA6D4E6F808F1"
    hash "0x259BA6D4E6F808F1"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x27CFB1B1E078CB2D"
    hash "0x27CFB1B1E078CB2D"
	jhash (0xC2703B88)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x25FC3E33A31AD0C9"
    hash "0x25FC3E33A31AD0C9"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x27E32866E9A5C416"
    hash "0x27E32866E9A5C416"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x27FEB5254759CDE3"
    hash "0x27FEB5254759CDE3"
	jhash (0xD63FCB3E)
	arguments {
		charPtr "textureDict",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x2A251AA48B2B46DB"
    hash "0x2A251AA48B2B46DB"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
	]]

native "0x29280002282F1928"
    hash "0x29280002282F1928"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
		Any "p13",
		Any "p14",
		Any "p15",
		Any "p16",
		Any "p17",
		Any "p18",
		Any "p19",
		Any "p20",
		Any "p21",
		Any "p22",
		Any "p23",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
DRAW_*
```
</summary>
	]]

native "0x2B40A97646381508"
    hash "0x2B40A97646381508"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x2A893980E96B659A"
    hash "0x2A893980E96B659A"
	jhash (0x199FABF0)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
2 matches across 2 scripts. Only showed in appcamera & appmedia. Both were 0.  
Dr. Underscore (1/6/18):  
I've found a reference in maintransition with 1, plus in appcamera and appmedia.  
Takes and returns a bool.  
```
</summary>
	]]

native "0x2C42340F916C5930"
    hash "0x2C42340F916C5930"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x2D3B147AFAD49DE0"
    hash "0x2D3B147AFAD49DE0"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
		Any "p10",
		Any "p11",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
<param name="p6">:</param>
<param name="p7">:</param>
<param name="p8">:</param>
<param name="p9">:</param>
<param name="p10">:</param>
<param name="p11">:</param>
	]]

native "0x302C91AB2D477F7E"
    hash "0x302C91AB2D477F7E"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x2FCB133CA50A49EB"
    hash "0x2FCB133CA50A49EB"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0x32F34FF7F617643B"
    hash "0x32F34FF7F617643B"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x30432A0118736E00"
    hash "0x30432A0118736E00"
	ns "GRAPHICS"
	returns "Hash"
	doc [[!
<summary>
```
GET_CURRENT_*

NativeDB Introduced: v1493
```
</summary>
	]]

native "0x346EF3ECAAAB149E"
    hash "0x346EF3ECAAAB149E"
	jhash (0x88EAF398)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x36F6626459D91457"
    hash "0x36F6626459D91457"
	jhash (0xC07C64C9)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x393BD2275CEB7793"
    hash "0x393BD2275CEB7793"
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x3C788E7F6438754D"
    hash "0x3C788E7F6438754D"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "0x43FA7CBE20DAB219"
    hash "0x43FA7CBE20DAB219"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0x3DEC726C25A11BAC"
    hash "0x3DEC726C25A11BAC"
	jhash (0x3B15D33C)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
1 match in 1 script. cellphone_controller.  
p0 is -1 in scripts.  
Dr. Underscore (1/6/18):  
I have two uses in two scripts; and it's called with -1 in maintransition, not cellphone_controller. Are you using x360 scripts, or an older version of PC scripts?  
Also returns bool.  
```
</summary>
	]]

native "0x46D1A61A21F566FC"
    hash "0x46D1A61A21F566FC"
	jhash (0x2056A015)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x44621483FF966526"
    hash "0x44621483FF966526"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x4AF92ACD3141D96C"
    hash "0x4AF92ACD3141D96C"
	jhash (0xC9EF81ED)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x4862437A486F91B0"
    hash "0x4862437A486F91B0"
	jhash (0x56C1E488)
	arguments {
		charPtr "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		BOOL "p3",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Possibly some unknown structures.  
```
</summary>
	]]

native "0x4B5CFC83122DF602"
    hash "0x4B5CFC83122DF602"
	jhash (0xA706E84D)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x54E22EA2C1956A8D"
    hash "0x54E22EA2C1956A8D"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x5B0316762AFD4A64"
    hash "0x5B0316762AFD4A64"
	jhash (0xA9DC8558)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x5E657EF1099EDD65"
    hash "0x5E657EF1099EDD65"
	jhash (0x91A081A1)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
DOES_*
```
</summary>
	]]

native "0x5DBF05DB5926D089"
    hash "0x5DBF05DB5926D089"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x5DEBD9C4DC995692"
    hash "0x5DEBD9C4DC995692"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x5F0F3F56635809EF"
    hash "0x5F0F3F56635809EF"
	jhash (0x13D4ABC0)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x615D3925E87A3B26"
    hash "0x615D3925E87A3B26"
	jhash (0x1E3A3126)
	arguments {
		int "checkpoint",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Unknown. Called after creating a checkpoint (type: 51) in the creators.  
```
</summary>
	]]

native "0x5E9DAF5A20F15908"
    hash "0x5E9DAF5A20F15908"
	jhash (0xD2157428)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x61F95E5BB3E0A8C6"
    hash "0x61F95E5BB3E0A8C6"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x5F6DF3D92271E8A1"
    hash "0x5F6DF3D92271E8A1"
	jhash (0x18136DE0)
	arguments {
		BOOL "toggle",
	}
	alias "SET_PARTICLE_FX_BLOOD_SCALE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
DISABLE_*
```
</summary>
	]]

native "0x6805D58CAA427B72"
    hash "0x6805D58CAA427B72"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x649C97D52332341A"
    hash "0x649C97D52332341A"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x6A51F78772175A51"
    hash "0x6A51F78772175A51"
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
SET_F*
```
</summary>
	]]

native "0x6A12D88881435DCA"
    hash "0x6A12D88881435DCA"
	jhash (0x108F36CC)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x6D955F6A9E0295B1"
    hash "0x6D955F6A9E0295B1"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x6DDBF9DFFC4AC080"
    hash "0x6DDBF9DFFC4AC080"
	jhash (0x9F470BE3)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x759650634F07B6B4"
    hash "0x759650634F07B6B4"
	jhash (0x25D569EB)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x7A42B2E236E71415"
    hash "0x7A42B2E236E71415"
	jhash (0x431AA036)
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
UI3DSCENE_*
```
</summary>
	]]

native "0x736D7AA1B750856B"
    hash "0x736D7AA1B750856B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
		Any "p13",
		Any "p14",
		Any "p15",
		Any "p16",
		Any "p17",
		Any "p18",
		Any "p19",
		Any "p20",
		Any "p21",
		Any "p22",
		Any "p23",
		Any "p24",
		Any "p25",
		Any "p26",
		Any "p27",
		Any "p28",
		Any "p29",
		Any "p30",
		Any "p31",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x7B226C785A52A0A9"
    hash "0x7B226C785A52A0A9"
	jhash (0x926B8734)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
IS_SC*
```
</summary>
	]]

native "0x799017F9E3B10112"
    hash "0x799017F9E3B10112"
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "r",
		int "g",
		int "b",
		float "opacity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Draws the sphere typically seen in the GTA:O freemode event, Penned In. Example: [Image](https://images.illusivetea.me/6654p9.png)
</summary>
<param name="x">X co-ordinate of the sphere</param>
<param name="y">Y co-ordinate of the sphere</param>
<param name="z">Z co-ordinate of the sphere</param>
<param name="radius">Size of the sphere</param>
<param name="r">Color</param>
<param name="g">Color</param>
<param name="b">Color</param>
<param name="opacity">Opacity from `0.0`-`1.0`</param>
	]]

native "0x7FA5D82B8F58EC06"
    hash "0x7FA5D82B8F58EC06"
	jhash (0x1F3CADB0)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x7AC24EAB6D74118D"
    hash "0x7AC24EAB6D74118D"
	jhash (0xB2410EAB)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x851CD923176EBA7C"
    hash "0x851CD923176EBA7C"
	jhash (0xDCBA251B)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x814AF7DCAACC597B"
    hash "0x814AF7DCAACC597B"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x86255B1FC929E33E"
    hash "0x86255B1FC929E33E"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0x82ACC484FFA3B05F"
    hash "0x82ACC484FFA3B05F"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x908311265D42A820"
    hash "0x908311265D42A820"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="p0">:</param>
	]]

native "0x8CDE909A0370BB3A"
    hash "0x8CDE909A0370BB3A"
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Used only once in the scripts (taxi_clowncar)

SET_PARTICLE_FX_*
```
</summary>
	]]

native "0x949F397A288B28B3"
    hash "0x949F397A288B28B3"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x90A78ECAA4E78453"
    hash "0x90A78ECAA4E78453"
	jhash (0xADBBA287)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x9641588DAB93B4B5"
    hash "0x9641588DAB93B4B5"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x95EB5E34F821BABE"
    hash "0x95EB5E34F821BABE"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x967278682CB6967A"
    hash "0x967278682CB6967A"
	jhash (0xBAEC6ADD)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x98EDF76A7271E4F2"
    hash "0x98EDF76A7271E4F2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
REQUEST_*
```
</summary>
	]]

native "0x99AC7F0D8B9C893D"
    hash "0x99AC7F0D8B9C893D"
	jhash (0xE3938B0B)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
START_*
```
</summary>
	]]

native "0x98D18905BF723B99"
    hash "0x98D18905BF723B99"
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
	]]

native "0x9B079E5221D984D3"
    hash "0x9B079E5221D984D3"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
FORCE_*
```
</summary>
	]]

native "0x9B6E70C5CEEF4EEB"
    hash "0x9B6E70C5CEEF4EEB"
	jhash (0x9D5D9B38)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xA44FF770DFBC5DAE"
    hash "0xA44FF770DFBC5DAE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
REGISTER_*
```
</summary>
	]]

native "0xA46B73FAA3460AE1"
    hash "0xA46B73FAA3460AE1"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xA4664972A9B8F8BA"
    hash "0xA4664972A9B8F8BA"
	jhash (0xECD470F0)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Vector3"
	doc [[!
	]]

native "0xA4819F5E23E2FFAD"
    hash "0xA4819F5E23E2FFAD"
	jhash (0xA08B46AD)
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xA67C35C56EB1BD9D"
    hash "0xA67C35C56EB1BD9D"
	jhash (0x47B0C137)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Only one instances in two scripts. (cellphone_controller, maintransition)  
```
</summary>
	]]

native "0xAAE9BE70EC7C69AB"
    hash "0xAAE9BE70EC7C69AB"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
<param name="p6">:</param>
<param name="p7">:</param>
	]]

native "0xAE51BC858F32BA66"
    hash "0xAE51BC858F32BA66"
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xB1BB03742917A5D6"
    hash "0xB1BB03742917A5D6"
	jhash (0x3BB12B75)
	arguments {
		int "type",
		float "xPos",
		float "yPos",
		float "zPos",
		float "p4",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
12 matches across 4 scripts. All 4 scripts were job creators.  
type ranged from 0 - 2.  
p4 was always 0.2f. Likely scale.  
assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).  
Tested but noticed nothing.  
```
</summary>
	]]

native "0xB2EBE8CBC58B90E9"
    hash "0xB2EBE8CBC58B90E9"
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xB569F41F3E7E83A4"
    hash "0xB569F41F3E7E83A4"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xB3C641F3630BF6DA"
    hash "0xB3C641F3630BF6DA"
	jhash (0xF6B837F0)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Setter for 0xE59343E9E96529E7

SET_M*
```
</summary>
	]]

native "0xBA0127DA25FD54C9"
    hash "0xBA0127DA25FD54C9"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBA3D194057C79A7B"
    hash "0xBA3D194057C79A7B"
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
SET_PARTICLE_FX_*
```
</summary>
	]]

native "0xBA3D65906822BED5"
    hash "0xBA3D65906822BED5"
	jhash (0x513D444B)
	arguments {
		BOOL "p0",
		BOOL "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Every p2 - p5 occurrence was 0f.  
```
</summary>
	]]

native "0xBCEDB009461DA156"
    hash "0xBCEDB009461DA156"
	jhash (0x5AB94128)
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xBB90E12CAC1DAB25"
    hash "0xBB90E12CAC1DAB25"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBE197EAA669238F4"
    hash "0xBE197EAA669238F4"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0xC0416B061F2B7E5E"
    hash "0xC0416B061F2B7E5E"
	jhash (0x1A1A72EF)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
GOLF_TRAIL_SET_*
```
</summary>
	]]

native "0xC35A6D07C93802B2"
    hash "0xC35A6D07C93802B2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xC9B18B4619F48F7B"
    hash "0xC9B18B4619F48F7B"
	jhash (0x93628786)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xC5C8F970D4EDFF71"
    hash "0xC5C8F970D4EDFF71"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xCA465D9CC0D231BA"
    hash "0xCA465D9CC0D231BA"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xCA4AE345A153D573"
    hash "0xCA4AE345A153D573"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xCB82A0BF0E3E3265"
    hash "0xCB82A0BF0E3E3265"
	jhash (0xCFCDC518)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "0xD1C55B110E4DF534"
    hash "0xD1C55B110E4DF534"
	jhash (0xD99EC000)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
SET_TV_???  
```
</summary>
	]]

native "0xD2936CAB8B58FCBD"
    hash "0xD2936CAB8B58FCBD"
	jhash (0x84F05943)
	arguments {
		Any "p0",
		BOOL "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		float "p7",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD1C7CB175E012964"
    hash "0xD1C7CB175E012964"
	jhash (0xE9183D3A)
	arguments {
		int "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0xD801CC02177FA3F1"
    hash "0xD801CC02177FA3F1"
	jhash (0x9CBA682A)
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
4 matches across 2 scripts.  
appcamera:  
called after UI::HIDE_HUD_AND_RADAR_THIS_FRAME() and before GRAPHICS::0x108F36CC();  
cellphone_controller:  
called after GRAPHICS::0xE9F2B68F(0, 0) and before GRAPHICS::0x108F36CC();  
```
</summary>
	]]

native "0xD39D13C9FEBF0511"
    hash "0xD39D13C9FEBF0511"
	jhash (0x4A124267)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD9454B5752C857DC"
    hash "0xD9454B5752C857DC"
	jhash (0xEAB6417C)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xDE81239437E8C5A8"
    hash "0xDE81239437E8C5A8"
	jhash (0xDB7AECDA)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xDB1EA9411C8911EC"
    hash "0xDB1EA9411C8911EC"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
	]]

native "0xDC459CFA0CCE245B"
    hash "0xDC459CFA0CCE245B"
	jhash (0x7E946E87)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
FORCE_*
```
</summary>
	]]

native "0xE2892E7E55D7073A"
    hash "0xE2892E7E55D7073A"
	jhash (0x455F1084)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xE59343E9E96529E7"
    hash "0xE59343E9E96529E7"
	jhash (0xD906A3A9)
	ns "GRAPHICS"
	returns "float"
	doc [[!
<summary>
```
Getter for 0xB3C641F3630BF6DA

GET_M*
```
</summary>
	]]

native "0xE1C8709406F2C41C"
    hash "0xE1C8709406F2C41C"
	jhash (0x0113EAE4)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xE6A9F00D4240B519"
    hash "0xE6A9F00D4240B519"
	arguments {
		int "scaleform",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This native is used in some casino scripts to fit the scaleform in the rendertarget.
</summary>
	]]

native "0xE3E2C1B4C59DBC77"
    hash "0xE3E2C1B4C59DBC77"
	jhash (0xD8CC7221)
	arguments {
		int "unk",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets an unknown value related to timecycles.  
```
</summary>
	]]

native "0xE63D7C6EECECB66B"
    hash "0xE63D7C6EECECB66B"
	jhash (0xD34A6CBA)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
TOGGLE_*
```
</summary>
	]]

native "0xE791DF1F73ED2C8B"
    hash "0xE791DF1F73ED2C8B"
	jhash (0x9D84554C)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0xEC72C258667BE5EA"
    hash "0xEC72C258667BE5EA"
	jhash (0x9C106AD9)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0xE82728F0DE75D13A"
    hash "0xE82728F0DE75D13A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
		Any "p13",
		Any "p14",
		Any "p15",
		Any "p16",
		Any "p17",
		Any "p18",
		Any "p19",
		Any "p20",
		Any "p21",
		Any "p22",
		Any "p23",
		Any "p24",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 26: Any p25
```
</summary>
	]]

native "0xEFD97FF47B745B8D"
    hash "0xEFD97FF47B745B8D"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xEF398BEEE4EF45F9"
    hash "0xEF398BEEE4EF45F9"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xF3F776ADA161E47D"
    hash "0xF3F776ADA161E47D"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xEFABC7722293DA7C"
    hash "0xEFABC7722293DA7C"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
AD*
```
</summary>
	]]

native "0xF5BED327CEA362B1"
    hash "0xF5BED327CEA362B1"
	jhash (0x596B900D)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
3 matches across 3 scripts. First 2 were 0, 3rd was 1. Possibly a bool.  
appcamera, appmedia, and cellphone_controller.  
```
</summary>
	]]

native "0xF51D36185993515D"
    hash "0xF51D36185993515D"
	jhash (0x20EABD0F)
	arguments {
		int "checkpoint",
		float "posX",
		float "posY",
		float "posZ",
		float "unkX",
		float "unkY",
		float "unkZ",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
This does not move an existing checkpoint... so wtf.  
```
</summary>
	]]

native "_OVERRIDE_DECAL_TEXTURE"
    hash "0x8A35C742130C6080"
	jhash (0x335695CF)
	arguments {
		int "decalType",
		charPtr "textureDict",
		charPtr "textureName",
	}
	alias "0x8A35C742130C6080"
	alias "_ADD_DECAL_TO_MARKER"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
*uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
_0x8A35C742130C6080(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
```
</summary>
	]]

native "0xF78B803082D4386F"
    hash "0xF78B803082D4386F"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "OVERRIDE_INTERIOR_SMOKE_END"
    hash "0xEFB55E7C25D3B3BE"
	jhash (0xE29EE145)
	alias "0xEFB55E7C25D3B3BE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "OVERRIDE_INTERIOR_SMOKE_LEVEL"
    hash "0x1600FD8CF72EBC12"
	jhash (0xD87CC710)
	arguments {
		float "level",
	}
	alias "0x1600FD8CF72EBC12"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_PLAY_BINK_MOVIE"
    hash "0x70D2CC8A542A973C"
	arguments {
		int "binkMovie",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="binkMovie">:</param>
	]]

native "OVERRIDE_INTERIOR_SMOKE_NAME"
    hash "0x2A2A52824DB96700"
	jhash (0x0F486429)
	arguments {
		charPtr "name",
	}
	alias "0x2A2A52824DB96700"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "POP_TIMECYCLE_MODIFIER"
    hash "0x3C8938D7D872211E"
	jhash (0x79D7D235)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "PUSH_TIMECYCLE_MODIFIER"
    hash "0x58F735290861E6B4"
	jhash (0x7E082045)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_PRESET_INTERIOR_AMBIENT_CACHE"
    hash "0xD7021272EB0A451E"
	arguments {
		charPtr "timecycleModifierName",
	}
	alias "0xD7021272EB0A451E"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only one match in the scripts:  
GRAPHICS::_D7021272EB0A451E("int_carrier_hanger");  
```
</summary>
	]]

native "_RELEASE_BINK_MOVIE"
    hash "0x04D950EEFA4EED8C"
	arguments {
		int "binkMovie",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="binkMovie">:</param>
	]]

native "REMOVE_DECAL"
    hash "0xED3F346429CCD659"
	jhash (0xA4363188)
	arguments {
		int "decal",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECALS_FROM_OBJECT"
    hash "0xCCF71CBDDF5B6CB9"
	jhash (0x8B67DCA7)
	arguments {
		Object "obj",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "RELEASE_MOVIE_MESH_SET"
    hash "0xEB119AA014E89183"
	jhash (0x4FA5501D)
	arguments {
		int "movieMeshSet",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECALS_FROM_VEHICLE"
    hash "0xE91F1B65F2B48D57"
	jhash (0x831D06CA)
	arguments {
		Vehicle "vehicle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECALS_FROM_OBJECT_FACING"
    hash "0xA6F6F70FDC6D144C"
	jhash (0xF4999A55)
	arguments {
		Object "obj",
		float "x",
		float "y",
		float "z",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_PARTICLE_FX"
    hash "0xC401503DFE8D53CF"
	jhash (0x6BA48C7E)
	arguments {
		int "ptfxHandle",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECALS_IN_RANGE"
    hash "0x5D6B2D4830A67C62"
	jhash (0x06A619A0)
	arguments {
		float "x",
		float "y",
		float "z",
		float "range",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...  
```
</summary>
	]]

native "REMOVE_PARTICLE_FX_IN_RANGE"
    hash "0xDD19FA1C6D657305"
	jhash (0x7EB8F275)
	arguments {
		float "X",
		float "Y",
		float "Z",
		float "radius",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_PARTICLE_FX_FROM_ENTITY"
    hash "0xB8FEAEEBCC127425"
	jhash (0xCEDE52E9)
	arguments {
		Entity "entity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_VEHICLE_CREW_EMBLEM"
    hash "0xD2300034310557E4"
	jhash (0x667046A8)
	arguments {
		Vehicle "vehicle",
		int "p1",
	}
	alias "0xD2300034310557E4"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_SCALEFORM_SCRIPT_HUD_MOVIE"
    hash "0xF44A5456AC3F4F97"
	jhash (0x03D87600)
	arguments {
		int "hudComponent",
	}
	alias "0xF44A5456AC3F4F97"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Another function related to "HUD scaleforms"  
```
</summary>
	]]

native "REQUEST_SCALEFORM_MOVIE_INSTANCE"
    hash "0xC514489CFB8AF806"
	jhash (0x7CC8057D)
	arguments {
		charPtr "scaleformName",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Also used by 0x67D02A194A2FC2BD  
```
</summary>
	]]

native "REQUEST_SCALEFORM_MOVIE"
    hash "0x11FE353CF9733E6F"
	jhash (0xC67E3DCB)
	arguments {
		charPtr "scaleformName",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
GTA V Scaleforms Decompiled  
pastebin.com/mmNdjX2k  
Gets a new native after almost every update.  
Update 1.0.393.2  
0x67D02A194A2FC2BD  
Update 1.0.463.1  
0xC97D787CE7726A2F  
Update 1.0.505.2  
0x36ECDA4DD9A3F08D  
Update 1.0.573.1  
0xE3C796DC28BC3254  
Update 1.0.678.1  
0x2F14983962462691  
```
</summary>
	]]

native "_REQUEST_SCALEFORM_MOVIE_2"
    hash "0x65E7E78842E74CDB"
	arguments {
		charPtr "scaleformName",
	}
	alias "0x65E7E78842E74CDB"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
Another [REQUEST_SCALEFORM_MOVIE](#_0x11FE353CF9733E6F) equivalent.
</summary>
	]]

native "_REQUEST_SCALEFORM_MOVIE_INTERACTIVE"
    hash "0xBD06C611BB9048C2"
	arguments {
		charPtr "scaleformName",
	}
	alias "_REQUEST_SCALEFORM_MOVIE3"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Similar to REQUEST_SCALEFORM_MOVIE, but seems to be some kind of "interactive" scaleform movie?  
These seem to be the only scaleforms ever requested by this native:  
"breaking_news"  
"desktop_pc"  
"ECG_MONITOR"  
"Hacking_PC"  
"TEETH_PULLING"  
Note: Unless this hash is out-of-order, this native is next-gen only.  
```
</summary>
	]]

native "REQUEST_STREAMED_TEXTURE_DICT"
    hash "0xDFA2EF8E04127DD5"
	jhash (0x4C9B035F)
	arguments {
		charPtr "textureDict",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
last param seems to be unused in disassembly  
```
</summary>
	]]

native "REQUEST_SCALEFORM_SCRIPT_HUD_MOVIE"
    hash "0x9304881D6F6537EA"
	jhash (0x7AF85862)
	arguments {
		int "hudComponent",
	}
	alias "0x9304881D6F6537EA"
	alias "_REQUEST_HUD_SCALEFORM"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
http://gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/?p=1068285912  
```
</summary>
	]]

native "_RESET_EXTRA_TIMECYCLE_MODIFIER_STRENGTH"
    hash "0x2BF72AD5B41AA739"
	alias "0x2BF72AD5B41AA739"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Resets the extra timecycle modifier strength normally set with [`SetExtraTimecycleModifierStrength`](#_0x2C328AF17210F009)
</summary>
	]]

native "RESET_PARTICLE_FX_OVERRIDE"
    hash "0x89C8553DD3274AAE"
	jhash (0x9E8D8B72)
	arguments {
		charPtr "name",
	}
	alias "0x89C8553DD3274AAE"
	alias "_RESET_PARTICLE_FX_ASSET_OLD_TO_NEW"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Resets the effect of _SET_PARTICLE_FX_ASSET_OLD_TO_NEW  
```
</summary>
	]]

native "_RETURN_TWO"
    hash "0x40AFB081F8ADD4EE"
	jhash (0x762E5C5F)
	arguments {
		int "p0",
	}
	alias "0x40AFB081F8ADD4EE"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
It returns two lol  
li r3, 2  
blr  
thats all it does.  
mov dword ptr [rax], 2  
Заебись функционал  
```
</summary>
	]]

native "RESET_SCRIPT_GFX_ALIGN"
    hash "0xE3A3DB414A373DAB"
	jhash (0x3FE33BD6)
	alias "0xE3A3DB414A373DAB"
	alias "_SCREEN_DRAW_POSITION_END"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
any other scripts attempting to draw.
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL"
    hash "0xC58424BA936EB458"
	jhash (0x0D4AE8CB)
	arguments {
		BOOL "value",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_BOOL"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_BOOL"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pushes a boolean for the Scaleform function onto the stack.  
```
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT"
    hash "0xD69736AAE04DB51A"
	jhash (0x9A01FFDA)
	arguments {
		float "value",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_FLOAT"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_FLOAT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pushes a float for the Scaleform function onto the stack.  
```
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT"
    hash "0xC3D0841A0CC546A6"
	jhash (0x716777CB)
	arguments {
		int "value",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_INT"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_INT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pushes an integer for the Scaleform function onto the stack.  
```
</summary>
	]]

native "_SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT_STRING"
    hash "0xEC52C631A1831C03"
	jhash (0x83A9811D)
	arguments {
		int "value",
	}
	alias "0xEC52C631A1831C03"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
_push_scaleform_movie_function(iLocal_117, "SET_TEXT");  
if (bParam0)  
{  
	_0xEC52C631A1831C03(2);  
}  
else  
{  
	_0xEC52C631A1831C03(1);  
}  
_pop_scaleform_movie_function_void();  
```
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING"
    hash "0xE83A3E3557A56640"
	jhash (0xCCBF0334)
	arguments {
		charPtr "string",
	}
	alias "0xE83A3E3557A56640"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_BUTTON_NAME"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
When switching with a controller, the icons update and become the controller's icons.  
```
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING"
    hash "0xBA7148484BD90365"
	jhash (0x4DAAD55B)
	arguments {
		charPtr "string",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_STRING"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SEETHROUGH_GET_MAX_THICKNESS"
    hash "0x43DBAE39626CE83F"
	ns "GRAPHICS"
	returns "float"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
	]]

native "_SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING_2"
    hash "0x77FE3402004CD1B0"
	arguments {
		charPtr "string",
	}
	alias "0x77FE3402004CD1B0"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_STRING_2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
GRAPHICS::\_0x77FE3402004CD1B0(HUD::\_GET_LABEL_TEXT("YACHT_GSY"));
GRAPHICS::\_0x77FE3402004CD1B0(PLAYER::GET_PLAYER_NAME(PLAYER::PLAYER_ID()));

Both \_0xBA7148484BD90365 / \_0x77FE3402004CD1B0 works, but \_0x77FE3402004CD1B0 is usually used for "name" (organisation, players..).
</summary>
	]]

native "SEETHROUGH_RESET"
    hash "0x70A64C0234EF522C"
	jhash (0x310E9B67)
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
	]]

native "_SEETHROUGH_SET_COLOR_NEAR"
    hash "0x1086127B3A63505E"
	arguments {
		int "red",
		int "green",
		int "blue",
	}
	alias "0x1086127B3A63505E"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SEETHROUGH_SET_FADE_END_DISTANCE"
    hash "0x9D75795B9DC6EBBF"
	arguments {
		float "distance",
	}
	alias "0x9D75795B9DC6EBBF"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SEETHROUGH_SET_FADE_START_DISTANCE"
    hash "0xA78DE25577300BA1"
	arguments {
		float "distance",
	}
	alias "0xA78DE25577300BA1"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SEETHROUGH_SET_HI_LIGHT_INTENSITY"
    hash "0x19E50EB6E33E1D28"
	arguments {
		float "intensity",
	}
	alias "0x19E50EB6E33E1D28"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SEETHROUGH_SET_HEATSCALE"
    hash "0xD7D0B00177485411"
	jhash (0x654F0287)
	arguments {
		int "index",
		float "heatScale",
	}
	alias "0xD7D0B00177485411"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<param name="heatScale">min: 0.0 max: 0.75</param>
	]]

native "_SEETHROUGH_SET_MAX_THICKNESS"
    hash "0x0C8FAC83902A62DF"
	arguments {
		float "thickness",
	}
	alias "0x0C8FAC83902A62DF"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<param name="thickness">min: 1.0 max: 10000.0</param>
	]]

native "_SEETHROUGH_SET_HI_LIGHT_NOISE"
    hash "0x1636D7FC127B10D2"
	arguments {
		float "noise",
	}
	alias "0x1636D7FC127B10D2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SEETHROUGH_SET_NOISE_AMOUNT_MAX"
    hash "0xFEBFBFDFB66039DE"
	arguments {
		float "amount",
	}
	alias "0xFEBFBFDFB66039DE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SEETHROUGH_SET_NOISE_AMOUNT_MIN"
    hash "0xFF5992E1C9E65D05"
	arguments {
		float "amount",
	}
	alias "0xFF5992E1C9E65D05"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SET_BINK_MOVIE_PROGRESS"
    hash "0x0CB6B3446855B57A"
	arguments {
		int "binkMovie",
		float "progress",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
In percentage: 0.0 - 100.0

NativeDB Introduced: v1290
```
</summary>
<param name="binkMovie">:</param>
<param name="progress">:</param>
	]]

native "SET_ARTIFICIAL_LIGHTS_STATE"
    hash "0x1268615ACE24D504"
	jhash (0xAA2A0EAF)
	arguments {
		BOOL "state",
	}
	alias "_SET_BLACKOUT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Does not affect weapons, particles, fire/explosions, flashlights or the sun.

When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.

Used in Humane Labs Heist for EMP.
</summary>
<param name="state">True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.</param>
	]]

native "_SET_BINK_MOVIE_UNK"
    hash "0xAFF33B1178172223"
	arguments {
		int "binkMovie",
		float "value",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="binkMovie">:</param>
<param name="value">:</param>
	]]

native "_SET_BINK_MOVIE_REQUESTED"
    hash "0x338D9F609FD632DB"
	arguments {
		charPtr "name",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="name">:</param>
	]]

native "_SET_CHECKPOINT_ICON_RGBA"
    hash "0xB9EA40907C680580"
	jhash (0xA5456DBB)
	arguments {
		int "checkpoint",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the checkpoint icon color.  
```
</summary>
	]]

native "SET_CHECKPOINT_CYLINDER_HEIGHT"
    hash "0x2707AAE9D9297D89"
	jhash (0xFF0F9B22)
	arguments {
		int "checkpoint",
		float "nearHeight",
		float "farHeight",
		float "radius",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the cylinder height of the checkpoint.  
Parameters:  
* nearHeight - The height of the checkpoint when inside of the radius.  
* farHeight - The height of the checkpoint when outside of the radius.  
* radius - The radius of the checkpoint.  
```
</summary>
	]]

native "_SET_CHECKPOINT_SCALE"
    hash "0x4B5B4DA5D79F1943"
	jhash (0x80151CCF)
	arguments {
		int "checkpoint",
		float "p0",
	}
	alias "0x4B5B4DA5D79F1943"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
p0 - Scale? Looks to be a normalized value (0.0 - 1.0)  
offroad_races.c4, line ~67407:  
a_3._f7 = GRAPHICS::CREATE_CHECKPOINT(v_D, v_A, a_4, a_7, v_E, v_F, v_10, sub_62b2(v_A, 220, 255), 0);  
UI::GET_HUD_COLOUR(134, &v_E, &v_F, &v_10, &v_11);  
GRAPHICS::_SET_CHECKPOINT_ICON_RGBA(a_3._f7, v_E, v_F, v_10, sub_62b2(v_A, 70, 210));  
GRAPHICS::_4B5B4DA5D79F1943(a_3._f7, 0.95);  
GRAPHICS::SET_CHECKPOINT_CYLINDER_HEIGHT(a_3._f7, 4.0, 4.0, 100.0);  
```
</summary>
	]]

native "SET_CHECKPOINT_RGBA"
    hash "0x7167371E8AD747F7"
	jhash (0xEF9C8CB3)
	arguments {
		int "checkpoint",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the checkpoint color.  
```
</summary>
	]]

native "SET_CURRENT_PLAYER_TCMODIFIER"
    hash "0xBBF327DED94E4DEB"
	jhash (0x85BA15A4)
	arguments {
		charPtr "modifierName",
	}
	alias "0xBBF327DED94E4DEB"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE"
    hash "0x175B6BFC15CDD0C5"
	jhash (0x1418CA37)
	arguments {
		BOOL "enabled",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "SET_ENTITY_ICON_COLOR"
    hash "0x1D5F595CCAE2E238"
	jhash (0x6EE1E946)
	arguments {
		Entity "entity",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_DRAW_ORIGIN"
    hash "0xAA0008F3BBB8F416"
	jhash (0xE10198D5)
	arguments {
		float "x",
		float "y",
		float "z",
		Any "p3",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the on-screen drawing origin for draw-functions (which is normally x=0,y=0 in the upper left corner of the screen) to a world coordinate.  
From now on, the screen coordinate which displays the given world coordinate on the screen is seen as x=0,y=0.  
Example in C#:  
Vector3 boneCoord = somePed.GetBoneCoord(Bone.SKEL_Head);  
Function.Call(Hash.SET_DRAW_ORIGIN, boneCoord.X, boneCoord.Y, boneCoord.Z, 0);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, -0.015, 0.013, 0.013, 0.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, -0.015, 0.013, 0.013, 90.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, 0.015, 0.013, 0.013, 270.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, 0.015, 0.013, 0.013, 180.0, 255, 0, 0, 200);  
Function.Call(Hash.CLEAR_DRAW_ORIGIN);  
Result: www11.pic-upload.de/19.06.15/bkqohvil2uao.jpg  
If the pedestrian starts walking around now, the sprites are always around her head, no matter where the head is displayed on the screen.  
This function also effects the drawing of texts and other UI-elements.  
The effect can be reset by calling GRAPHICS::CLEAR_DRAW_ORIGIN().  
```
</summary>
	]]

native "_SET_EXTRA_TIMECYCLE_MODIFIER"
    hash "0x5096FD9CCB49056D"
	jhash (0x908A335E)
	arguments {
		charPtr "modifierName",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets a secondary timecycle modifier.
</summary>
	]]

native "SET_ENTITY_ICON_VISIBILITY"
    hash "0xE0E8BEECCA96BA31"
	jhash (0xD1D2FD52)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SET_EXTRA_TIMECYCLE_MODIFIER_STRENGTH"
    hash "0x2C328AF17210F009"
	arguments {
		float "strength",
	}
	alias "0x2C328AF17210F009"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
The same as [`SetTimecycleModifierStrength`](#_0x82E7FFCD5B2326B3) but for the secondary tiemcycle modifier.
</summary>
<param name="strength">:</param>
	]]

native "_SET_FAR_SHADOWS_SUPPRESSED"
    hash "0x80ECBC0C856D3B0B"
	jhash (0xFE903D0F)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
When this is set to ON, shadows only draw as you get nearer.  
When OFF, they draw from a further distance. (((BUT))) f*ck up nearer shadows quality.  
```
</summary>
	]]

native "SET_FLASH"
    hash "0x0AB84296FED9CFC6"
	jhash (0x7E55A1EE)
	arguments {
		float "p0",
		float "p1",
		float "fadeIn",
		float "duration",
		float "fadeOut",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Purpose of p0 and p1 unknown.  
```
</summary>
	]]

native "_SET_FORCE_PED_FOOTSTEPS_TRACKS"
    hash "0xAEEDAD1420C65CC0"
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Forces footstep tracks on all surfaces.  
```
</summary>
	]]

native "_SET_FORCE_VEHICLE_TRAILS"
    hash "0x4CC7F0FEA5283FE0"
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Forces vehicle trails on all surfaces.  
```
</summary>
	]]

native "SET_NEXT_PLAYER_TCMODIFIER"
    hash "0xBF59707B3E5ED531"
	jhash (0x554BA16E)
	arguments {
		charPtr "modifierName",
	}
	alias "0xBF59707B3E5ED531"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Something to do with timecycles.  
```
</summary>
	]]

native "SET_NIGHTVISION"
    hash "0x18F621F7A5B1F85D"
	jhash (0xD1E5565F)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Enables Night Vision.  
Example:  
C#: Function.Call(Hash.SET_NIGHTVISION, true);  
C++: GRAPHICS::SET_NIGHTVISION(true);  
BOOL toggle:  
true = turns night vision on for your player.  
false = turns night vision off for your player.  
```
</summary>
	]]

native "SET_NOISEOVERIDE"
    hash "0xE787BF1C5CF823C9"
	jhash (0xD576F5DD)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_NOISINESSOVERIDE"
    hash "0xCB6A7C3BB17A0C67"
	jhash (0x046B62D9)
	arguments {
		float "value",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE"
    hash "0xACEE6F360FC1F6B6"
	jhash (0x6B125A02)
	arguments {
		Vehicle "vehicle",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_CAM_INSIDE_VEHICLE"
    hash "0xEEC4047028426510"
	jhash (0x19EC0001)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_LOOPED_ALPHA"
    hash "0x726845132380142E"
	jhash (0x5ED49BE1)
	arguments {
		int "ptfxHandle",
		float "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_LOOPED_COLOUR"
    hash "0x7F8F65877F88783B"
	jhash (0x5219D530)
	arguments {
		int "ptfxHandle",
		float "r",
		float "g",
		float "b",
		BOOL "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
only works on some fx's  
p4 = 0  
```
</summary>
	]]

native "SET_PARTICLE_FX_LOOPED_EVOLUTION"
    hash "0x5F0C4B5B1C393BE2"
	jhash (0x1CBC1373)
	arguments {
		int "ptfxHandle",
		charPtr "propertyName",
		float "amount",
		BOOL "noNetwork",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Should be named SET_PARTICLE_FX_LOOPED_PROPERTY. "Evolution" doesn't make much sense...  
--------  
p4 seems to be always 0.  
Usage:  
if (!GRAPHICS::DOES_PARTICLE_FX_LOOPED_EXIST(l_25C7)) {  
      l_25C7 = GRAPHICS::_DDE23F30CC5A0F03("scr_veh_plane_gen_damage", l_8B9, l_25C4, 0.0, 0.0, 0.0, ENTITY::_GET_ENTITY_BONE_INDEX(l_8B9, "exhaust"), 1.0, 0, 0, 0);  
      GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_smoke", 0.5, 0);  
      GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_fire", 0.2, 0);  
      }  
```
</summary>
	]]

native "SET_PARTICLE_FX_LOOPED_FAR_CLIP_DIST"
    hash "0xDCB194B85EF7B541"
	jhash (0x233DE879)
	arguments {
		int "ptfxHandle",
		float "range",
	}
	alias "_SET_PARTICLE_FX_LOOPED_RANGE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_LOOPED_OFFSETS"
    hash "0xF7DDEBEC43483C43"
	jhash (0x641F7790)
	arguments {
		int "ptfxHandle",
		float "x",
		float "y",
		float "z",
		float "rotX",
		float "rotY",
		float "rotZ",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_LOOPED_SCALE"
    hash "0xB44250AAA456492D"
	jhash (0x099B8B49)
	arguments {
		int "ptfxHandle",
		float "scale",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_NON_LOOPED_ALPHA"
    hash "0x77168D722C58B2FC"
	jhash (0x497EAFF2)
	arguments {
		float "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Usage example for C#:  
Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });  
		Note: the argument alpha ranges from 0.0f-1.0f !  
```
</summary>
	]]

native "SET_PARTICLE_FX_NON_LOOPED_COLOUR"
    hash "0x26143A59EF48B262"
	jhash (0x7B689E20)
	arguments {
		float "r",
		float "g",
		float "b",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
only works on some fx's  
```
</summary>
	]]

native "SET_PARTICLE_FX_OVERRIDE"
    hash "0xEA1E2D93F6F75ED9"
	jhash (0xC92719A7)
	arguments {
		charPtr "oldAsset",
		charPtr "newAsset",
	}
	alias "_SET_PTFX_ASSET_OLD_2_NEW"
	alias "_SET_PARTICLE_FX_ASSET_OLD_TO_NEW"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_SHOOTOUT_BOAT"
    hash "0x96EF97DAEB89BEF5"
	jhash (0xD938DEE0)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PLAYER_TCMODIFIER_TRANSITION"
    hash "0xBDEB86F4D5809204"
	jhash (0x9559BB38)
	arguments {
		float "value",
	}
	alias "0xBDEB86F4D5809204"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED"
    hash "0x1D132D614DD86811"
	jhash (0x5FED3BA1)
	arguments {
		intPtr "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME"
    hash "0x6D8EB211944DCE08"
	jhash (0x18C9DE8D)
	arguments {
		int "scaleform",
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_SCRIPT_GFX_ALIGN_PARAMS"
    hash "0xF5A2C681787E579D"
	jhash (0x76C641E4)
	arguments {
		float "x",
		float "y",
		float "w",
		float "h",
	}
	alias "0xF5A2C681787E579D"
	alias "_SCREEN_DRAW_POSITION_RATIO"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
expects the width/height to be configured using this native in order to get a proper starting position for the draw
command.
</summary>
<param name="x">The X offset for the item to be drawn.</param>
<param name="y">The Y offset for the item to be drawn.</param>
<param name="w">The width of the item to be drawn.</param>
<param name="h">The height of the item to be drawn.</param>
	]]

native "SET_SCRIPT_GFX_ALIGN"
    hash "0xB8A850F20A067EB6"
	jhash (0x228A2598)
	arguments {
		int "horizontalAlign",
		int "verticalAlign",
	}
	alias "_SET_SCREEN_DRAW_POSITION"
	alias "_SCREEN_DRAW_POSITION_BEGIN"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
independent of the player's safe zone configuration.

These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
for default alignment.

Valid values for `horizontalAlign`, from original documentation:

-   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
    the right side of the screen.
-   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
    centered.
-   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
    from the right side of the screen, both move with the right side of the screen.

Valid values for `verticalAlign`, from original documentation:

-   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
    rather centered.
-   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
    different from 66.
-   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.

Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
canonical value for this is 'I' (73).

For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
axis.

To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
</summary>
<param name="horizontalAlign">The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').</param>
<param name="verticalAlign">The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').</param>
	]]

native "SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU"
    hash "0xC6372ECD45D73BCD"
	jhash (0xF8FBCC25)
	arguments {
		BOOL "flag",
	}
	alias "0xC6372ECD45D73BCD"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets a flag defining whether or not script draw commands should continue being drawn behind the pause
menu. This is usually used for TV channels and other draw commands that are used with a world render target.
</summary>
<param name="flag">A boolean value.</param>
	]]

native "SET_SCRIPT_GFX_DRAW_ORDER"
    hash "0x61BB1D9B3A95D802"
	jhash (0xADF81D24)
	arguments {
		int "order",
	}
	alias "0x61BB1D9B3A95D802"
	alias "_SET_2D_LAYER"
	alias "_SET_UI_LAYER"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets the draw order for script draw commands.

Examples from decompiled scripts:  

```cpp
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);  
GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v_4, v_5, v_6, a_0._f172, 0);  
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);  
GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);  
```
</summary>
<param name="order">The intended draw order/layer.</param>
	]]

native "SET_SEETHROUGH"
    hash "0x7E08924259E08CE0"
	jhash (0x74D4995C)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Toggles Heatvision on/off.  
```
</summary>
	]]

native "SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED"
    hash "0xBE2CACCF5A8AA805"
	jhash (0xF07DDA38)
	arguments {
		charPtr "textureDict",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TIMECYCLE_MODIFIER_STRENGTH"
    hash "0x82E7FFCD5B2326B3"
	jhash (0x458F4F45)
	arguments {
		float "strength",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TIMECYCLE_MODIFIER"
    hash "0x2C933ABF17A1DF41"
	jhash (0xA81F3638)
	arguments {
		charPtr "modifierName",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")  
Parameters:  
modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)  
For a full list, see here: pastebin.com/kVPwMemE  
```
</summary>
	]]

native "SET_TV_AUDIO_FRONTEND"
    hash "0x113D2C5DC57E1774"
	jhash (0x2E0DFA35)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Might be more appropriate in AUDIO?  
Rockstar made it like this.  
Probably changes tvs from being a 3d audio to being "global" audio  
```
</summary>
	]]

native "SET_TRANSITION_TIMECYCLE_MODIFIER"
    hash "0x3BCF567485E1971C"
	jhash (0xBB2BA72A)
	arguments {
		charPtr "modifierName",
		float "transition",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/kVPwMemE  
```
</summary>
	]]

native "SET_TRACKED_POINT_INFO"
    hash "0x164ECBB3CF750CB0"
	jhash (0x28689AA4)
	arguments {
		int "point",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TV_CHANNEL"
    hash "0xBAABBB23EB6E484E"
	jhash (0x41A8A627)
	arguments {
		int "channel",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TV_CHANNEL_PLAYLIST_AT_HOUR"
    hash "0x2201C576FACAEBE8"
	jhash (0x78C4DCBE)
	arguments {
		int "tvChannel",
		charPtr "playlistName",
		int "hour",
	}
	alias "0x2201C576FACAEBE8"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TV_CHANNEL_PLAYLIST"
    hash "0xF7B38B8305F1FE8B"
	jhash (0xB262DE67)
	arguments {
		int "tvChannel",
		charPtr "playlistName",
		BOOL "restart",
	}
	alias "0xF7B38B8305F1FE8B"
	alias "_LOAD_TV_CHANNEL_SEQUENCE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Loads specified video sequence into the TV Channel  
TV_Channel ranges from 0-2  
VideoSequence can be any of the following:  
"PL_STD_CNT" CNT Standard Channel  
"PL_STD_WZL" Weazel Standard Channel  
"PL_LO_CNT"   
"PL_LO_WZL"   
"PL_SP_WORKOUT"  
"PL_SP_INV" - Jay Norris Assassination Mission Fail   
"PL_SP_INV_EXP" - Jay Norris Assassination Mission Success  
"PL_LO_RS" - Righteous Slaughter Ad  
"PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene  
"PL_SP_PLSH1_INTRO"   
"PL_LES1_FAME_OR_SHAME"  
"PL_STD_WZL_FOS_EP2"  
"PL_MP_WEAZEL" - Weazel Logo on loop  
"PL_MP_CCTV" - Generic CCTV loop  
Restart   
0=video sequence continues as normal  
1=sequence restarts from beginning every time that channel is selected  
```
</summary>
	]]

native "START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY"
    hash "0x6F60E89A7B64EE1D"
	jhash (0x110752B2)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	alias "0x6F60E89A7B64EE1D"
	alias "_START_PARTICLE_FX_LOOPED_ON_ENTITY_2"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
network fx  
```

```
NativeDB Added Parameter 13: Any p12
NativeDB Added Parameter 14: Any p13
NativeDB Added Parameter 15: Any p14
NativeDB Added Parameter 16: Any p15
```
</summary>
	]]

native "SET_TV_VOLUME"
    hash "0x2982BF73F66E9DDC"
	jhash (0xF3504F4D)
	arguments {
		float "volume",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE"
    hash "0xDDE23F30CC5A0F03"
	jhash (0xF478EFCF)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		int "boneIndex",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	alias "0xDDE23F30CC5A0F03"
	alias "_START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE_2"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
network fx  
```

```
NativeDB Added Parameter 14: Any p13
NativeDB Added Parameter 15: Any p14
NativeDB Added Parameter 16: Any p15
NativeDB Added Parameter 17: Any p16
```
</summary>
	]]

native "START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD"
    hash "0xF56B8137DF10135D"
	jhash (0x633F8C48)
	arguments {
		charPtr "effectName",
		float "xPos",
		float "yPos",
		float "zPos",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	alias "_START_PARTICLE_FX_NON_LOOPED_AT_COORD_2"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
network fx  
```

```
NativeDB Added Parameter 12: BOOL p11
```
</summary>
	]]

native "START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE"
    hash "0xA41B6A43642AC2CF"
	jhash (0x161780C1)
	arguments {
		charPtr "effectName",
		Ped "ped",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		int "boneIndex",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	alias "_START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE_2"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
network fx  
```
</summary>
	]]

native "START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY"
    hash "0xC95EB1DB6E92113D"
	jhash (0x469A2B4A)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	alias "_START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_2"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
network fx  
```
</summary>
	]]

native "START_PARTICLE_FX_LOOPED_ON_ENTITY"
    hash "0x1AE42C1660FD6517"
	jhash (0x0D06FF62)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
list: pastebin.com/N9unUFWY  
```
</summary>
	]]

native "START_PARTICLE_FX_LOOPED_AT_COORD"
    hash "0xE184F4F0DC5910E7"
	jhash (0xD348E3E6)
	arguments {
		charPtr "effectName",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
		BOOL "p11",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)  
p11 seems to be always 0  
```
</summary>
	]]

native "START_PARTICLE_FX_LOOPED_ON_PED_BONE"
    hash "0xF28DA9F38CD1787C"
	jhash (0xF8FC196F)
	arguments {
		charPtr "effectName",
		Ped "ped",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		int "boneIndex",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE"
    hash "0xC6EB449E33977F0B"
	jhash (0x23BF0F9B)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		int "boneIndex",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "START_PARTICLE_FX_NON_LOOPED_ON_ENTITY"
    hash "0x0D53A3B8DA0809D2"
	jhash (0x9604DAD4)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Starts a particle effect on an entity for example your player.  
List: pastebin.com/N9unUFWY  
Example:  
C#:  
Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  
Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE  
however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native  
```
</summary>
	]]

native "START_PARTICLE_FX_NON_LOOPED_AT_COORD"
    hash "0x25129531F77B9ED3"
	jhash (0xDD79D679)
	arguments {
		charPtr "effectName",
		float "xPos",
		float "yPos",
		float "zPos",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  
Axis - Invert Axis Flags  
list: pastebin.com/N9unUFWY  
-------------------------------------------------------------------  
C#  
Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  
char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  
float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  
float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  
float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  
bool xaxis, yaxis, zaxis = To bool the axis values.  
example:  
Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);  
```
</summary>
	]]

native "START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE"
    hash "0x0E7E72961BA18619"
	jhash (0x53DAEF4E)
	arguments {
		charPtr "effectName",
		Ped "ped",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		int "boneIndex",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);  
Axis - Invert Axis Flags  
list: pastebin.com/N9unUFWY  
```
</summary>
	]]

native "_STOP_BINK_MOVIE"
    hash "0x63606A61DE68898A"
	arguments {
		int "binkMovie",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="binkMovie">:</param>
	]]

native "TERRAINGRID_ACTIVATE"
    hash "0xA356990E161C9E65"
	jhash (0xA1CB6C94)
	arguments {
		BOOL "toggle",
	}
	alias "0xA356990E161C9E65"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This native enables/disables the gold putting grid display (<https://i.imgur.com/TC6cku6.png>).
This requires these two natives to be called as well to configure the grid: [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#_0x1C4FC5752BCD8E48) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#_0x5CE62918F8D703C7).
</summary>
<param name="toggle">Enables or disables the golf putting grid display.</param>
	]]

native "STOP_PARTICLE_FX_LOOPED"
    hash "0x8F75998877616996"
	jhash (0xD245455B)
	arguments {
		int "ptfxHandle",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
p1 is always 0 in the native scripts  
```
</summary>
	]]

native "TERRAINGRID_SET_PARAMS"
    hash "0x1C4FC5752BCD8E48"
	jhash (0x3B637AA7)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		float "rotation",
		float "p5",
		float "width",
		float "height",
		float "p8",
		float "scale",
		float "glowIntensity",
		float "normalHeight",
		float "heightDiff",
	}
	alias "0x1C4FC5752BCD8E48"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#_0xA356990E161C9E65) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#_0x5CE62918F8D703C7). 

This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.

All those natives combined they will output something like this: <https://i.imgur.com/TC6cku6.png>
</summary>
<param name="x">Grid center x coord.</param>
<param name="y">Grid center y coord.</param>
<param name="z">Grid center z coord.</param>
<param name="p3">Not sure, but seems to be the amount of lines top/bottom there are in the grid. -1.0 works best.</param>
<param name="rotation">Grid rotation (keep between 0.0 and 1.0).</param>
<param name="p5">Offset top/bottom (? not sure about this one, seems weird).</param>
<param name="width">Grid width (usually 15.0).</param>
<param name="height">Grid height (usually 15.0).</param>
<param name="p8">Not sure, but seems to be the amount of lines left/right there are in the grid. -1.0 works best.</param>
<param name="scale">Zoom / scale (higher values = smaller (more) squares) (lower values = bigger (less) squares).</param>
<param name="glowIntensity">glow intensity / opacity (40.0 is fine for daylight, 15.0 is fine for night time).</param>
<param name="normalHeight">The z coord for 'normal' height (white grid lines level).</param>
<param name="heightDiff">This is the height difference/margin used for line color changes. 0.2 works fine (normalHeight + 0.2 = yellow, normalHeight - 0.2 = red).</param>
	]]

native "TERRAINGRID_SET_COLOURS"
    hash "0x5CE62918F8D703C7"
	jhash (0xDF552973)
	arguments {
		int "lowR",
		int "lowG",
		int "lowB",
		int "lowAlpha",
		int "R",
		int "G",
		int "B",
		int "Alpha",
		int "highR",
		int "highG",
		int "highB",
		int "highAlpha",
	}
	alias "0x5CE62918F8D703C7"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#_0xA356990E161C9E65) and [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#_0x1C4FC5752BCD8E48). 
This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
All those natives combined they will output something like this: <https://i.imgur.com/TC6cku6.png>

Old description:
Only called in golf and golf_mp  
parameters used are  
GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
</summary>
<param name="lowR">red value for the lower level</param>
<param name="lowG">green value for the lower level</param>
<param name="lowB">blue value for the lower level</param>
<param name="lowAlpha">alpha value for the lower level</param>
<param name="R">red value for the normal level</param>
<param name="G">green value for the normal level</param>
<param name="B">blue value for the normal level</param>
<param name="Alpha">alpha value for the normal level</param>
<param name="highR">red value for the upper level</param>
<param name="highG">green value for the upper level</param>
<param name="highB">blue value for the upper level</param>
<param name="highAlpha">alpha value for the upper level</param>
	]]

native "TOGGLE_PAUSED_RENDERPHASES"
    hash "0xDFC252D8A3E15AB7"
	jhash (0x30ADE541)
	arguments {
		BOOL "toggle",
	}
	alias "_ENABLE_GAMEPLAY_CAM"
	alias "_SET_FROZEN_RENDERING_DISABLED"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_TRANSITION_FROM_BLURRED"
    hash "0xEFACC8AEF94430D5"
	jhash (0x46617502)
	arguments {
		float "transitionTime",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
time in ms to transition from fully blurred to normal  
```
</summary>
	]]

native "UI3DSCENE_IS_AVAILABLE"
    hash "0xD3A10FC7FD8D98CD"
	jhash (0xE40A0F1A)
	alias "0xD3A10FC7FD8D98CD"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "_TRANSITION_TO_BLURRED"
    hash "0xA328A24AAA6B7FDC"
	jhash (0x5604B890)
	arguments {
		float "transitionTime",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
time in ms to transition to fully blurred screen  
```
</summary>
	]]

native "UI3DSCENE_PUSH_PRESET"
    hash "0xF1CEA8A4198D8E9A"
	jhash (0x2E7D9B98)
	arguments {
		charPtr "presetName",
	}
	alias "0xF1CEA8A4198D8E9A"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
All presets can be found in common\data\ui\uiscenes.meta
```
</summary>
	]]

native "_UNDO_DECAL_TEXTURE_OVERRIDE"
    hash "0xB7ED70C49521A61D"
	jhash (0x7B786555)
	arguments {
		int "decalType",
	}
	alias "0xB7ED70C49521A61D"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
GRAPHICS::_0xB7ED70C49521A61D(9123);  
GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
```
</summary>
	]]

native "WASH_DECALS_FROM_VEHICLE"
    hash "0x5B712761429DBC14"
	jhash (0x2929F11A)
	arguments {
		Vehicle "vehicle",
		float "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "USE_PARTICLE_FX_ASSET"
    hash "0x6C38AF3693A69A91"
	jhash (0x9C720B61)
	arguments {
		charPtr "name",
	}
	alias "_SET_PTFX_ASSET_NEXT_CALL"
	alias "_USE_PARTICLE_FX_ASSET_NEXT_CALL"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
From the b678d decompiled scripts:  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");  
```
</summary>
	]]

native "WASH_DECALS_IN_RANGE"
    hash "0x9C30613D50A6ADEF"
	jhash (0xDEECBC57)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "ACTIVATE_INTERIOR_ENTITY_SET"
    hash "0x55E86AF2712B36A1"
	jhash (0xC80A5DDF)
	arguments {
		int "interior",
		charPtr "entitySetName",
	}
	alias "0x55E86AF2712B36A1"
	alias "_ENABLE_INTERIOR_PROP"
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
```
</summary>
	]]

native "ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME"
    hash "0x3F6167F351168730"
	jhash (0xA2A73564)
	arguments {
		Pickup "pickup",
		charPtr "roomName",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "_ARE_COORDS_COLLIDING_WITH_EXTERIOR"
    hash "0xEEA5AC2EDA7C33E8"
	jhash (0x7762249C)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	alias "0xEEA5AC2EDA7C33E8"
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the coords are colliding with the outdoors, and false if they collide with an interior.  
```
</summary>
	]]

native "CLEAR_ROOM_FOR_ENTITY"
    hash "0xB365FC0C4E27FFA7"
	jhash (0x7DDADB92)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "CAP_INTERIOR"
    hash "0xD9175F941610DB54"
	jhash (0x34E735A6)
	arguments {
		int "interiorID",
		BOOL "toggle",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Does something similar to INTERIOR::DISABLE_INTERIOR  
```
</summary>
	]]

native "DEACTIVATE_INTERIOR_ENTITY_SET"
    hash "0x420BD37289EEE162"
	jhash (0xDBA768A1)
	arguments {
		int "interior",
		charPtr "entitySetName",
	}
	alias "0x420BD37289EEE162"
	alias "_DISABLE_INTERIOR_PROP"
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "CLEAR_ROOM_FOR_GAME_VIEWPORT"
    hash "0x23B59D8912F94246"
	jhash (0x617DC75D)
	alias "0x23B59D8912F94246"
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "DISABLE_INTERIOR"
    hash "0x6170941419D7D8EC"
	jhash (0x093ADEA5)
	arguments {
		int "interiorID",
		BOOL "toggle",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Example:   
This removes the interior from the strip club and when trying to walk inside the player just falls:  
INTERIOR::DISABLE_INTERIOR(118018, true);  
```
</summary>
	]]

native "FORCE_ROOM_FOR_ENTITY"
    hash "0x52923C4710DD9907"
	jhash (0x10BD4435)
	arguments {
		Entity "entity",
		int "interior",
		Hash "roomHashKey",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Forces the particular room in an interior to load incase not teleporting into the portal.
```
</summary>
	]]

native "FORCE_ROOM_FOR_GAME_VIEWPORT"
    hash "0x920D853F3E17F1DA"
	jhash (0xD79803B5)
	arguments {
		int "interiorID",
		Hash "roomHashKey",
	}
	alias "0x920D853F3E17F1DA"
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "GET_INTERIOR_AT_COORDS"
    hash "0xB0F7F8663821D9C3"
	jhash (0xA17FBF37)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.  
Example for VB.NET  
Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)  
```
</summary>
	]]

native "GET_INTERIOR_AT_COORDS_WITH_TYPE"
    hash "0x05B7A89BD78797FC"
	jhash (0x96525B06)
	arguments {
		float "x",
		float "y",
		float "z",
		charPtr "interiorType",
	}
	alias "0x05B7A89BD78797FC"
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
```
</summary>
	]]

native "GET_INTERIOR_AT_COORDS_WITH_TYPEHASH"
    hash "0xF0F77ADB9F67E79D"
	jhash (0x11718507)
	arguments {
		float "x",
		float "y",
		float "z",
		int "typeHash",
	}
	alias "0xF0F77ADB9F67E79D"
	alias "_UNK_GET_INTERIOR_AT_COORDS"
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the interior ID at the given coords, but only if the unknown variable is set to 0, otherwise it will return 0.  
```

```
NativeDB Parameter 3: Hash typeHash
```
</summary>
	]]

native "GET_INTERIOR_FROM_COLLISION"
    hash "0xEC4CF9FCB29A4424"
	jhash (0x7ED33DC1)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
	]]

native "GET_INTERIOR_FROM_ENTITY"
    hash "0x2107BA504071A6BB"
	jhash (0x5C644614)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the handle of the interior that the entity is in. Returns 0 if outside.  
```
</summary>
	]]

native "_GET_INTERIOR_HEADING"
    hash "0xF49B58631D9E22D9"
	arguments {
		int "interior",
	}
	ns "INTERIOR"
	returns "float"
	doc [[!
<summary>
```
GET_INTERIOR_*

NativeDB Introduced: v1493
```
</summary>
<param name="interior">:</param>
	]]

native "GET_INTERIOR_GROUP_ID"
    hash "0xE4A84ABF135EF91A"
	jhash (0x09D6376F)
	arguments {
		int "interior",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.  
```
</summary>
	]]

native "_GET_INTERIOR_INFO"
    hash "0x252BDC06B73FA6EA"
	arguments {
		int "interior",
		Vector3Ptr "position",
		HashPtr "nameHash",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
GET_INTERIOR_*

NativeDB Introduced: v1290
```
</summary>
<param name="interior">:</param>
<param name="position">:</param>
<param name="nameHash">:</param>
	]]

native "GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS"
    hash "0x9E3B3E6D66F6E22F"
	jhash (0x7D8F26A1)
	arguments {
		int "interior",
		float "x",
		float "y",
		float "z",
	}
	ns "INTERIOR"
	returns "Vector3"
	doc [[!
	]]

native "GET_KEY_FOR_ENTITY_IN_ROOM"
    hash "0x399685DB942336BC"
	jhash (0x91EA80EF)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "Hash"
	doc [[!
<summary>
```
Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY  
```
</summary>
	]]

native "GET_ROOM_KEY_FOR_GAME_VIEWPORT"
    hash "0xA6575914D2A0B450"
	jhash (0x4FF3D3F5)
	alias "0xA6575914D2A0B450"
	alias "_GET_ROOM_KEY_FROM_GAMEPLAY_CAM"
	ns "INTERIOR"
	returns "Hash"
	doc [[!
<summary>
```
Returns the room hash key from the current gameplay cam.  
```
</summary>
	]]

native "GET_ROOM_KEY_FROM_ENTITY"
    hash "0x47C2A06D4F5F424B"
	jhash (0xE4ACF8C3)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "Hash"
	doc [[!
<summary>
```
Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.  
```
</summary>
	]]

native "_HIDE_MAP_OBJECT_THIS_FRAME"
    hash "0xA97F257D0151A6AB"
	jhash (0x1F375B4C)
	arguments {
		Hash "mapObjectHash",
	}
	alias "0xA97F257D0151A6AB"
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.  
More info: http://gtaforums.com/topic/836301-hiding-gta-online-apartment-exteriors/  
```
</summary>
	]]

native "IS_INTERIOR_DISABLED"
    hash "0xBC5115A5A939DD15"
	jhash (0x81F34C71)
	arguments {
		int "interior",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "IS_INTERIOR_CAPPED"
    hash "0x92BAC8ACF88CEC26"
	jhash (0x18B17C80)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "IS_INTERIOR_READY"
    hash "0x6726BDCCC1932F0E"
	jhash (0xE1EF6450)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "IS_INTERIOR_ENTITY_SET_ACTIVE"
    hash "0x35F7DD45E8C0A16D"
	jhash (0x39A3CC6F)
	arguments {
		int "interior",
		charPtr "entitySetName",
	}
	alias "0x35F7DD45E8C0A16D"
	alias "_IS_INTERIOR_PROP_ENABLED"
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "IS_INTERIOR_SCENE"
    hash "0xBC72B5D7A1CBD54D"
	jhash (0x55226C13)
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "IS_VALID_INTERIOR"
    hash "0x26B0E73D7EAAF4D3"
	jhash (0x39C0B635)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
<summary>
```
Return if interior is valid.  
```
</summary>
	]]

native "0x38C1CB1CB119A016"
    hash "0x38C1CB1CB119A016"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x405DC2AEF6AF95B9"
    hash "0x405DC2AEF6AF95B9"
	jhash (0x0E9529CC)
	arguments {
		Hash "roomHashKey",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Usage: INTERIOR::_0x405DC2AEF6AF95B9(INTERIOR::GET_KEY_FOR_ENTITY_IN_ROOM(PLAYER::PLAYER_PED_ID()));  
```
</summary>
	]]

native "0x4C2330E61D3DEB56"
    hash "0x4C2330E61D3DEB56"
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "Any"
	doc [[!
<summary>
```
Only used once in the entire game scripts, probably useless. Always returns 0.  
```
</summary>
	]]

native "0x483ACA1176CA93F1"
    hash "0x483ACA1176CA93F1"
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x50C375537449F369"
    hash "0x50C375537449F369"
	arguments {
		Any "p0",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x7241CCB7D020DB69"
    hash "0x7241CCB7D020DB69"
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Jenkins hash _might_ be 0xFC227584.
```
</summary>
	]]

native "0x82EBB79E258FA2B7"
    hash "0x82EBB79E258FA2B7"
	jhash (0xE645E162)
	arguments {
		Entity "entity",
		int "interiorID",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x7ECDF98587E92DEC"
    hash "0x7ECDF98587E92DEC"
	arguments {
		Any "p0",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
	]]

native "0x9E6542F0CE8E70A3"
    hash "0x9E6542F0CE8E70A3"
	jhash (0x5EF9C5C2)
	arguments {
		BOOL "toggle",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Only found 4 times in Rockstar scripts.  
Clearly has something to do with Cutscenes.  
```
</summary>
	]]

native "0xE7D267EC6CA966C3"
    hash "0xE7D267EC6CA966C3"
	ns "INTERIOR"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
	]]

native "0xAF348AFCB575A441"
    hash "0xAF348AFCB575A441"
	jhash (0x1F6B4B13)
	arguments {
		charPtr "roomName",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Exemple of use(carmod_shop.c4)  
INTERIOR::_AF348AFCB575A441("V_CarModRoom");  
```
</summary>
	]]

native "PIN_INTERIOR_IN_MEMORY"
    hash "0x2CA429C029CCF247"
	jhash (0x3ADA414E)
	arguments {
		int "interior",
	}
	alias "0x2CA429C029CCF247"
	alias "_LOAD_INTERIOR"
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Load interior  
```
</summary>
	]]

native "_SET_INTERIOR_ENTITY_SET_COLOR"
    hash "0xC1F1920BAF281317"
	arguments {
		int "interior",
		charPtr "entitySetName",
		int "color",
	}
	alias "_SET_INTERIOR_PROP_COLOR"
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "REFRESH_INTERIOR"
    hash "0x41F37C3427C75AE0"
	jhash (0x9A29ACE6)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "UNPIN_INTERIOR"
    hash "0x261CCE7EED010641"
	jhash (0xFCFF792A)
	arguments {
		int "interior",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Does something similar to INTERIOR::DISABLE_INTERIOR.  
You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.  
```
</summary>
	]]

native "ADD_TO_ITEMSET"
    hash "0xE3945201F14637DD"
	jhash (0x6B0FE61B)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "BOOL"
	doc [[!
	]]

native "CREATE_ITEMSET"
    hash "0x35AD299F50D91B24"
	jhash (0x0A113B2C)
	arguments {
		Vehicle "distri",
	}
	ns "ITEMSET"
	returns "Vehicle"
	doc [[!
<summary>
```
NativeDB Parameter 0: BOOL distri
```
</summary>
	]]

native "DESTROY_ITEMSET"
    hash "0xDE18220B1C183EDA"
	jhash (0x83CE1A4C)
	arguments {
		Any "p0",
	}
	ns "ITEMSET"
	returns "void"
	doc [[!
	]]

native "CLEAN_ITEMSET"
    hash "0x41BC0D722FC04221"
	jhash (0x919A4858)
	arguments {
		Any "p0",
	}
	ns "ITEMSET"
	returns "void"
	doc [[!
	]]

native "GET_ITEMSET_SIZE"
    hash "0xD9127E83ABF7C631"
	jhash (0x2B31F41A)
	arguments {
		ScrHandle "x",
	}
	ns "ITEMSET"
	returns "Any"
	doc [[!
	]]

native "GET_INDEXED_ITEM_IN_ITEMSET"
    hash "0x7A197E2521EE2BAB"
	jhash (0x3F712874)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "Any"
	doc [[!
	]]

native "REMOVE_FROM_ITEMSET"
    hash "0x25E68244B0177686"
	jhash (0xA9565228)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "void"
	doc [[!
	]]

native "IS_IN_ITEMSET"
    hash "0x2D0FC594D1E9C107"
	jhash (0x0D4B9730)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "BOOL"
	doc [[!
	]]

native "IS_ITEMSET_VALID"
    hash "0xB1B1EA596344DFAB"
	jhash (0xD201FC29)
	arguments {
		Any "p0",
	}
	ns "ITEMSET"
	returns "BOOL"
	doc [[!
	]]

native "_LOCALIZATION_GET_SYSTEM_LANGUAGE"
    hash "0x497420E022796B3F"
	alias "0x497420E022796B3F"
	ns "LOCALE"
	returns "int"
	doc [[!
	]]

native "ABSI"
    hash "0xF0D31AD191A74F87"
	jhash (0xB44677C5)
	arguments {
		int "value",
	}
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "ADD_HOSPITAL_RESTART"
    hash "0x1F464EF988465A81"
	jhash (0x4F3E3104)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		Any "p4",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Returns the index of the newly created hospital spawn point.  
p3 might be radius?  
```
</summary>
	]]

native "ABSF"
    hash "0x73D57CFFDD12C355"
	jhash (0xAF6F6E0B)
	arguments {
		float "value",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "ADD_POLICE_RESTART"
    hash "0x452736765B31FC4B"
	jhash (0xE96C29FE)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "ACOS"
    hash "0x1D08B970013C34B6"
	jhash (0xF4038776)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns arccos value of p0.  
```
</summary>
	]]

native "ADD_POP_MULTIPLIER_AREA"
    hash "0x67F6413D3220E18D"
	jhash (0x42BF09B3)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "p6",
		float "p7",
		BOOL "p8",
	}
	alias "0x67F6413D3220E18D"
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
NativeDB Added Parameter 10: BOOL p9
```
</summary>
	]]

native "ADD_POP_MULTIPLIER_SPHERE"
    hash "0x32C7A7E8C43A1F80"
	jhash (0xCE4A3D20)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
	}
	alias "0x32C7A7E8C43A1F80"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "ADD_REPLAY_STAT_VALUE"
    hash "0x69FE6DC87BD2A5E9"
	jhash (0x81216EE0)
	arguments {
		Any "value",
	}
	alias "0x69FE6DC87BD2A5E9"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "ADD_STUNT_JUMP"
    hash "0x1A992DA297A4630C"
	jhash (0xB630E5FF)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "x3",
		float "y3",
		float "z3",
		float "x4",
		float "y4",
		float "z4",
		float "camX",
		float "camY",
		float "camZ",
		int "unk1",
		int "unk2",
		int "unk3",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
See description of [`ADD_STUNT_JUMP_ANGLED`](#_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
</summary>
<param name="x1">Jump entry left far bottom corner coordinate X.</param>
<param name="y1">Jump entry left far bottom corner coordinate Y.</param>
<param name="z1">Jump entry left far bottom corner coordinate Z.</param>
<param name="x2">Jump entry right near top corner coordinate X.</param>
<param name="y2">Jump entry right near top corner coordinate Y.</param>
<param name="z2">Jump entry right near top corner coordinate Z.</param>
<param name="x3">Landing zone end coordinate X.</param>
<param name="y3">Landing zone end coordinate Y.</param>
<param name="z3">Landing zone end coordinate Z.</param>
<param name="x4">Landing zone start coordinate X.</param>
<param name="y4">Landing zone start coordinate Y.</param>
<param name="z4">Landing zone start coordinate Z.</param>
<param name="camX">Stuntcam (cinematic) coordinate x.</param>
<param name="camY">Stuntcam (cinematic) coordinate y.</param>
<param name="camZ">Stuntcam (cinematic) coordinate z.</param>
<param name="unk1">Unknown, always 150.</param>
<param name="unk2">Unknown, always 0.</param>
<param name="unk3">Unknown, always 0.</param>
<returns>The ID of the stunt jump that was added.</returns>
	]]

native "ALLOW_MISSION_CREATOR_WARP"
    hash "0xDEA36202FC3382DF"
	jhash (0x082BA6F2)
	arguments {
		BOOL "toggle",
	}
	alias "0xDEA36202FC3382DF"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Most references of this native come from the creator scripts. (creator, fm_capture_creator, fm_deathmatch_creator, fm_lts_creator, fm_race_creator).  
Seems to have something to do with initializing/destroying creator shit.  
```
</summary>
	]]

native "ADD_STUNT_JUMP_ANGLED"
    hash "0xBBE5D803A5360CBF"
	jhash (0xB9B7E777)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "radius1",
		float "x3",
		float "y3",
		float "z3",
		float "x4",
		float "y4",
		float "z4",
		float "radius2",
		float "camX",
		float "camY",
		float "camZ",
		int "unk1",
		int "unk2",
		int "unk3",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
Creates a new stunt jump. 

The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP\_**ANGLED**.

Info about the specific 'parameter sections':

**x1, y1, z1, x2, y2, z2 and radius1:**

First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.

**x3, y3, z3, x4, y4, z4 and radius2:**

Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).

**camX, camY and camZ:**

The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.

**unk1, unk2 and unk3:**

Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.

Visualized example in-game:

![](https://d.fivem.dev/2019-03-15_18-24_c7802_846.png)

Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): <https://pastebin.com/EW1jBPkY>
</summary>
<param name="x1">Entry zone bottom left corner x.</param>
<param name="y1">Entry zone bottom left corner y.</param>
<param name="z1">Entry zone bottom left corner z.</param>
<param name="x2">Entry zone top right corner x.</param>
<param name="y2">Entry zone top right corner y.</param>
<param name="z2">Entry zone top right corner z.</param>
<param name="radius1">Probably a "feather" radius for entry zone, you need to enter the jump within the min/max coordinates, or within this radius of those two coordinates.</param>
<param name="x3">Landing zone start corner coordinate x.</param>
<param name="y3">Landing zone start corner coordinate y.</param>
<param name="z3">Landing zone start corner coordinate z.</param>
<param name="x4">Landing zone end corner coordinate x.</param>
<param name="y4">Landing zone end corner coordinate y.</param>
<param name="z4">Landing zone end corner coordinate z.</param>
<param name="radius2">Probably a "feather" radius for landing zone, you need to land within the min/max coordinates, or within this radius of those two coordinates.</param>
<param name="camX">Stunt (cinematic) camera x position.</param>
<param name="camY">Stunt (cinematic) camera y position.</param>
<param name="camZ">Stunt (cinematic) camera z position.</param>
<param name="unk1">always 150</param>
<param name="unk2">always 0</param>
<param name="unk3">always 0</param>
<returns>The ID of the stuntjump that was created.</returns>
	]]

native "ARE_STRINGS_EQUAL"
    hash "0x0C515FAB3FF9EA92"
	jhash (0x877C0BC5)
	arguments {
		charPtr "string1",
		charPtr "string2",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
is this like strcmp??  
```
</summary>
	]]

native "ARE_PROFILE_SETTINGS_VALID"
    hash "0x5AA3BEFA29F03AD4"
	jhash (0x46B5A15C)
	alias "0x5AA3BEFA29F03AD4"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "ATAN2"
    hash "0x8927CBF9D22261A4"
	jhash (0x2508AC81)
	arguments {
		float "p0",
		float "p1",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "ASIN"
    hash "0xC843060B5765DCE7"
	jhash (0x998E5CAD)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns arcsin value of p0.  
```
</summary>
	]]

native "BEGIN_REPLAY_STATS"
    hash "0xE0E500246FF73D66"
	jhash (0x17F4F44D)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "BLOCK_DISPATCH_SERVICE_RESOURCE_CREATION"
    hash "0x9B2BD3773123EA2F"
	jhash (0xE0F0684F)
	arguments {
		int "dispatchService",
		BOOL "toggle",
	}
	alias "0x9B2BD3773123EA2F"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "ATAN"
    hash "0xA9D1795CD5043663"
	jhash (0x7A03CC8E)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns arctan value of p0.  
```
</summary>
	]]

native "_CANCEL_ONSCREEN_KEYBOARD"
    hash "0x58A39BE597CE99CD"
	jhash (0x196444BB)
	alias "0x58A39BE597CE99CD"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Cancels an onscreen keyboard, if available.
```
</summary>
	]]

native "_CLEANUP_ASYNC_INSTALL"
    hash "0xC79AE21974B01FB2"
	alias "0xC79AE21974B01FB2"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CANCEL_STUNT_JUMP"
    hash "0xE6B7B0ACD4E4B75E"
	jhash (0xF43D9821)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CLEAR_ANGLED_AREA_OF_VEHICLES"
    hash "0x11DB3500F042A8AA"
	jhash (0xF11A3018)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
		BOOL "p10",
		BOOL "p11",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 13: Any p12
```
</summary>
	]]

native "CLEAR_AREA"
    hash "0xA56F01F3765B93A0"
	jhash (0x854E9AB8)
	arguments {
		float "X",
		float "Y",
		float "Z",
		float "radius",
		BOOL "p4",
		BOOL "ignoreCopCars",
		BOOL "ignoreObjects",
		BOOL "p7",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);  
```
</summary>
	]]

native "_CLEAR_AREA_OF_EVERYTHING"
    hash "0x957838AAF91BD12D"
	jhash (0x20E4FFD9)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
	}
	alias "0x957838AAF91BD12D"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
GAMEPLAY::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.  
```
</summary>
	]]

native "CLEAR_AREA_OF_COPS"
    hash "0x04F8FC8FCF58F88D"
	jhash (0x95C53824)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "flags",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
flags appears to always be 0
```
</summary>
	]]

native "CLEAR_AREA_OF_PEDS"
    hash "0xBE31FD6CE464AC59"
	jhash (0x25BE7FA8)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "flags",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Example: 		CLEAR_AREA_OF_PEDS(0, 0, 0, 10000, 1);  
```
</summary>
	]]

native "CLEAR_AREA_OF_OBJECTS"
    hash "0xDD9B9B385AAC7F5B"
	jhash (0xBB720FE7)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "flags",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.  
```
</summary>
	]]

native "CLEAR_AREA_OF_VEHICLES"
    hash "0x01C7B9B38428AEB6"
	jhash (0x63320F3C)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);  
```

```
NativeDB Added Parameter 10: BOOL p9
```
</summary>
	]]

native "CLEAR_AREA_OF_PROJECTILES"
    hash "0x0A1CB9094635D1A6"
	jhash (0x18DB5434)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "flags",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 4: int flags
```
</summary>
	]]

native "CLEAR_BIT"
    hash "0xE80492A9AC099A93"
	jhash (0x8BC9E618)
	arguments {
		intPtr "address",
		int "offset",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This sets bit [offset] of [address] to off.  
Example:  
GAMEPLAY::CLEAR_BIT(&bitAddress, 1);  
To check if this bit has been enabled:  
GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards  
```
</summary>
	]]

native "_CLEAR_CLOUD_HAT"
    hash "0x957E790EA1727B64"
	jhash (0x2D7787BC)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CLEAR_OVERRIDE_WEATHER"
    hash "0x338D2E3477711050"
	jhash (0x7740EA4E)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CLEAR_REPLAY_STATS"
    hash "0x1B1AB132A16FDA55"
	jhash (0xC47DFF02)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_CLEAR_RESTART_CUSTOM_POSITION"
    hash "0xA2716D40842EAF79"
	alias "0xA2716D40842EAF79"
	alias "_SET_NEXT_RESPAWN_TO_CUSTOM"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets the next spawn location to the position supplied to _SET_CUSTOM_RESPAWN_POSITION.  
```
</summary>
	]]

native "CLEAR_WEATHER_TYPE_PERSIST"
    hash "0xCCC39339BEF76CF5"
	jhash (0x6AB757D8)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "COMPARE_STRINGS"
    hash "0x1E34710ECD4AB0EB"
	jhash (0xFE25A58F)
	arguments {
		charPtr "str1",
		charPtr "str2",
		BOOL "matchCase",
		int "maxLength",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Compares two strings up to a specified number of characters.  
Parameters:  
str1 - String to be compared.  
str2 - String to be compared.  
matchCase - Comparison will be case-sensitive.  
maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.  
Returns:  
A value indicating the relationship between the strings:  
<0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)  
0 - The contents of both strings are equal.  
>0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)  
Examples:  
GAMEPLAY::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal  
GAMEPLAY::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal  
GAMEPLAY::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal  
GAMEPLAY::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'  
GAMEPLAY::COMPARE_STRINGS("A", "A", true, 1); // 0; equal  
When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:  
GAMEPLAY::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'  
GAMEPLAY::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'  
```
</summary>
	]]

native "_COPY_MEMORY"
    hash "0x213AEB2B90CBA7AC"
	arguments {
		AnyPtr "dst",
		Any "src",
		int "size",
	}
	alias "0x213AEB2B90CBA7AC"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CREATE_INCIDENT"
    hash "0x3F892CAF67444AE7"
	jhash (0xFC5FF7B3)
	arguments {
		int "dispatchService",
		float "x",
		float "y",
		float "z",
		int "numUnits",
		float "radius",
		intPtr "outIncidentID",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
enum IncidentTypes  
{  
    FireDepartment = 3,  
    Paramedics = 5,  
    Police = 7,  
    PedsInCavalcades = 11,   
    Merryweather = 14  
};  
As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
Side Note 2: I say it breaks as if you call this proper,  
if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
=====================================================  
```

```
NativeDB Added Parameter 8: Any p7
NativeDB Added Parameter 9: Any p8
```
</summary>
	]]

native "DELETE_INCIDENT"
    hash "0x556C1AA270D5A207"
	jhash (0x212BD0DC)
	arguments {
		int "incidentId",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Delete an incident with a given id.  
=======================================================  
Correction, I have change this to int, instead of int*  
as it doesn't use a pointer to the createdIncident.  
If you try it you will crash (or) freeze.  
=======================================================  
```
</summary>
	]]

native "CREATE_INCIDENT_WITH_ENTITY"
    hash "0x05983472F0494E60"
	jhash (0xBBC35B03)
	arguments {
		int "dispatchService",
		Ped "ped",
		int "numUnits",
		float "radius",
		intPtr "outIncidentID",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
p0 could be type (valueused in scripts: 14, 7, 5, 3, 11)  
p1 is a return from get_player_ped() in am_gang_call.c, but player_ped_id() in other (non am) scripts.  
p3 is usually 0f or 3f  
=====================================================  
enum IncidentTypes  
{  
    FireDepartment = 3,  
    Paramedics = 5,  
    Police = 7,  
    PedsInCavalcades = 11,   
    Merryweather = 14  
};  
As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
Side Note 2: I say it breaks as if you call this proper,  
if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
=====================================================  
```

```
NativeDB Added Parameter 6: Any p5
NativeDB Added Parameter 7: Any p6
```
</summary>
	]]

native "DISABLE_HOSPITAL_RESTART"
    hash "0xC8535819C450EBA8"
	jhash (0x09F49C72)
	arguments {
		int "hospitalIndex",
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.  
Doesn't work....  
```
</summary>
	]]

native "DELETE_STUNT_JUMP"
    hash "0xDC518000E39DAE1F"
	jhash (0x840CB5DA)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "DISABLE_STUNT_JUMP_SET"
    hash "0xA5272EBEDD4747F6"
	jhash (0x644C9FA4)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "DISABLE_POLICE_RESTART"
    hash "0x23285DED6EBD7EA3"
	jhash (0x0A280324)
	arguments {
		int "policeIndex",
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Disables the spawn point at the police house on the specified index.  
policeIndex: The police house index.  
toggle: true to enable the spawn point, false to disable.  
```
</summary>
	]]

native "_DISPLAY_ONSCREEN_KEYBOARD_2"
    hash "0xCA78CFA0366592FE"
	jhash (0xD2688412)
	arguments {
		int "p0",
		charPtr "windowTitle",
		AnyPtr "p2",
		charPtr "defaultText",
		charPtr "defaultConcat1",
		charPtr "defaultConcat2",
		charPtr "defaultConcat3",
		charPtr "defaultConcat4",
		charPtr "defaultConcat5",
		charPtr "defaultConcat6",
		charPtr "defaultConcat7",
		int "maxInputLength",
	}
	alias "0xCA78CFA0366592FE"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
only documented to be continued...  
```
</summary>
	]]

native "DISPLAY_ONSCREEN_KEYBOARD"
    hash "0x00DC833F2568DBF6"
	jhash (0xAD99F2CE)
	arguments {
		int "p0",
		charPtr "windowTitle",
		charPtr "p2",
		charPtr "defaultText",
		charPtr "defaultConcat1",
		charPtr "defaultConcat2",
		charPtr "defaultConcat3",
		int "maxInputLength",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
note, p0 is set to 6 for PC platform in at least 1 script, or to `unk::_get_ui_language_id() == 0` otherwise.  
NOTE: windowTitle uses text labels, and an invalid value will display nothing.  
Dr. Underscore: `UNK::_GET_UI_LANGUAGE_ID()` is now `UNK::_GET_CURRENT_LANGUAGE_ID()`  
www.gtaforums.com/topic/788343-vrel-script-hook-v/?p=1067380474  
windowTitle's  
-----------------  
CELL_EMAIL_BOD	=	"Enter your Eyefind message"  
CELL_EMAIL_BODE	=	"Message too long. Try again"  
CELL_EMAIL_BODF	=	"Forbidden message. Try again"  
CELL_EMAIL_SOD	=	"Enter your Eyefind subject"  
CELL_EMAIL_SODE	=	"Subject too long. Try again"  
CELL_EMAIL_SODF	=	"Forbidden text. Try again"  
CELL_EMASH_BOD	=	"Enter your Eyefind message"  
CELL_EMASH_BODE	=	"Message too long. Try again"  
CELL_EMASH_BODF	=	"Forbidden message. Try again"  
CELL_EMASH_SOD	=	"Enter your Eyefind subject"  
CELL_EMASH_SODE	=	"Subject too long. Try again"  
CELL_EMASH_SODF	=	"Forbidden Text. Try again"  
FMMC_KEY_TIP10	=	"Enter Synopsis"  
FMMC_KEY_TIP12	=	"Enter Custom Team Name"  
FMMC_KEY_TIP12F	=	"Forbidden Text. Try again"  
FMMC_KEY_TIP12N	=	"Custom Team Name"  
FMMC_KEY_TIP8	=	"Enter Message"  
FMMC_KEY_TIP8F	=	"Forbidden Text. Try again"  
FMMC_KEY_TIP8FS	=	"Invalid Message. Try again"  
FMMC_KEY_TIP8S	=	"Enter Message"  
FMMC_KEY_TIP9	=	"Enter Outfit Name"  
FMMC_KEY_TIP9F	=	"Invalid Outfit Name. Try again"  
FMMC_KEY_TIP9N	=	"Outfit Name"  
PM_NAME_CHALL	=	"Enter Challenge Name"  
```
</summary>
	]]

native "DOES_POP_MULTIPLIER_AREA_EXIST"
    hash "0x1327E2FE9746BAEE"
	jhash (0xE933B34A)
	arguments {
		int "id",
	}
	alias "0x1327E2FE9746BAEE"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "ENABLE_DISPATCH_SERVICE"
    hash "0xDC0F817884CDD856"
	jhash (0x0B710A51)
	arguments {
		int "dispatchService",
		BOOL "toggle",
	}
	alias "0xDC0F817884CDD856"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Directly from R*:  
enum eDispatchType : UINT16  
{  
    DT_PoliceAutomobile = 1,  
    DT_PoliceHelicopter = 2,  
    DT_FireDepartment = 3,  
    DT_SwatAutomobile = 4,  
    DT_AmbulanceDepartment = 5,  
    DT_PoliceRiders = 6,  
    DT_PoliceVehicleRequest = 7,  
    DT_PoliceRoadBlock = 8,  
    DT_PoliceAutomobileWaitPulledOver = 9,  
    DT_PoliceAutomobileWaitCruising = 10,  
    DT_Gangs = 11,  
    DT_SwatHelicopter = 12,  
    DT_PoliceBoat = 13,  
    DT_ArmyVehicle = 14,  
    DT_BikerBackup = 15  
};  
By making toggle false it disables the dispatch.  
curious if this is what they used when you toggled on and off cops in a GTA IV freemode you hosted. Sad they got rid of the option to make a private session without cops.  
Also on x360 seems with or without neverWanted on, setting these to all false in SP of course doesn't seem to work. I would understand getting stars, but cops are still dispatched and combat you.  
```
</summary>
	]]

native "DO_AUTO_SAVE"
    hash "0x50EEAAD86232EE55"
	jhash (0x54C44B1A)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "DOES_POP_MULTIPLIER_SPHERE_EXIST"
    hash "0x171BAFB3C60389F4"
	jhash (0xD2B7A5A0)
	arguments {
		int "id",
	}
	alias "0x171BAFB3C60389F4"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "ENABLE_TENNIS_MODE"
    hash "0x28A04B411933F8A6"
	jhash (0x0BD3F9EC)
	arguments {
		Ped "ped",
		BOOL "toggle",
		BOOL "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Makes the ped jump around like they're in a tennis match  
```
</summary>
	]]

native "FIND_SPAWN_POINT_IN_DIRECTION"
    hash "0x6874E2190B0C1972"
	jhash (0x71AEFD77)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "distance",
		Vector3Ptr "spawnPoint",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Finds a position ahead of the player by predicting the players next actions.  
The positions match path finding node positions.  
When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
=======================================================  
I may sort this with alter research, but if someone  
already knows please tell what the difference in   
X2, Y2, Z2 is. I doubt it's rotation. Is it like   
checkpoints where X1, Y1, Z1 is your/a position and  
X2, Y2, Z2 is a given position ahead of that position?  
=======================================================  
```
</summary>
	]]

native "ENABLE_STUNT_JUMP_SET"
    hash "0xE369A5783B866016"
	jhash (0x9D1E7785)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "END_REPLAY_STATS"
    hash "0xA23E821FBDF8A5F2"
	jhash (0xCB570185)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_FORCE_SOCIAL_CLUB_UPDATE"
    hash "0xEB6891F03362FB12"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Exits the game and downloads a fresh social club update on next restart.  
```
</summary>
	]]

native "FORCE_LIGHTNING_FLASH"
    hash "0xF6062E089251C898"
	jhash (0xDF38165E)
	alias "_CREATE_LIGHTNING_THUNDER"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
creates single lightning+thunder at random position  
```
</summary>
	]]

native "GET_ALLOCATED_STACK_SIZE"
    hash "0x8B3CA62B1EF19B62"
	jhash (0x4E9CA30A)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "_GET_BASE_ELEMENT_METADATA"
    hash "0xB335F761606DB47C"
	jhash (0xE23416C1)
	arguments {
		AnyPtr "p1",
		AnyPtr "p2",
		Any "p3",
		BOOL "p4",
	}
	alias "0xB335F761606DB47C"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This line found 48 times in the scripts:  
GAMEPLAY::_B335F761606DB47C(&v_4, &v_7, a_0, v_A);  
```
</summary>
	]]

native "GET_ANGLE_BETWEEN_2D_VECTORS"
    hash "0x186FC4BE848E1C92"
	jhash (0xDBF75E58)
	arguments {
		float "x1",
		float "y1",
		float "x2",
		float "y2",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns the degree of angle between (x1, y1) and (x2, y2) lines in 2D coordinate system.  
```
</summary>
	]]

native "_GET_BENCHMARK_PASS_FROM_COMMAND_LINE"
    hash "0x1B2366C3F2A5C8DF"
	alias "0x1B2366C3F2A5C8DF"
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Returns value of the '-benchmarkPass' command line option.
```
</summary>
	]]

native "_GET_BENCHMARK_ITERATIONS_FROM_COMMAND_LINE"
    hash "0x4750FC27570311EC"
	alias "0x4750FC27570311EC"
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Returns value of the '-benchmarkIterations' command line option.
```
</summary>
	]]

native "_GET_BENCHMARK_TIME"
    hash "0xE599A503B3837E1B"
	alias "0xE599A503B3837E1B"
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "GET_BITS_IN_RANGE"
    hash "0x53158863FCC0893A"
	jhash (0xCA03A1E5)
	arguments {
		int "var",
		int "rangeStart",
		int "rangeEnd",
	}
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "_GET_CLOUD_HAT_OPACITY"
    hash "0x20AC25E781AE4A84"
	alias "0x20AC25E781AE4A84"
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "GET_FAKE_WANTED_LEVEL"
    hash "0x4C9296CBCD1B971E"
	jhash (0x0022A430)
	alias "0x4C9296CBCD1B971E"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_DISTANCE_BETWEEN_COORDS"
    hash "0xF1B760881820C952"
	jhash (0xF698765E)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "useZ",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
Returns the distance between two three-dimensional points, optionally ignoring the Z values.

You'll most likely want to use your language's native vector functionality instead.
</summary>
<param name="x1">The X coordinate of the first point.</param>
<param name="y1">The Y coordinate of the first point.</param>
<param name="z1">The Z coordinate of the first point.</param>
<param name="x2">The X coordinate of the second point.</param>
<param name="y2">The Y coordinate of the second point.</param>
<param name="z2">The Z coordinate of the second point.</param>
<param name="useZ">Whether or not to use the Z coordinate.</param>
<returns>The distance between the passed points in units.</returns>
	]]

native "GET_FRAME_COUNT"
    hash "0xFC8202EFC642E6F2"
	jhash (0xB477A015)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_GAME_TIMER"
    hash "0x9CD27B0045628463"
	jhash (0xA4EA0691)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_FRAME_TIME"
    hash "0x15C40837039FFAF7"
	jhash (0x96374262)
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "_GET_GLOBAL_CHAR_BUFFER"
    hash "0x24DA7D7667FD7B09"
	alias "0x24DA7D7667FD7B09"
	ns "MISC"
	returns "charPtr"
	doc [[!
<summary>
```
it returns a reference to an empty string, the same empty string that's used by 1687 internal gta functions.   if it was used in a script (and i cannot find an instance of it being used), it would be as the source for a StringCopy or somesuch.  
```
</summary>
	]]

native "GET_HEADING_FROM_VECTOR_2D"
    hash "0x2FFB6B224F4B2926"
	jhash (0xD209D52B)
	arguments {
		float "dx",
		float "dy",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
dx = x1   
dy = y1  
```
</summary>
	]]

native "_GET_GROUND_Z_COORD_WITH_OFFSETS"
    hash "0x8BDC7BFC57A81E76"
	jhash (0x64D91CED)
	arguments {
		float "x",
		float "y",
		float "z",
		floatPtr "groundZ",
		Vector3Ptr "offsets",
	}
	alias "0x8BDC7BFC57A81E76"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
only documented to be continued...  
```
</summary>
	]]

native "GET_HASH_KEY"
    hash "0xD24D37CC275948CC"
	jhash (0x98EFF6F1)
	arguments {
		charPtr "string",
	}
	ns "MISC"
	returns "Hash"
	doc [[!
<summary>
Gets the (case-insensitive, lower-cased) hash value for the passed string. This uses the 'Jenkins one-at-a-time' hashing
algorithm.
</summary>
<param name="string">The string to hash.</param>
<returns>The hash of `string`.</returns>
	]]

native "GET_GROUND_Z_FOR_3D_COORD"
    hash "0xC906A7DAB05C8D2B"
	jhash (0xA1BFD5E0)
	arguments {
		float "x",
		float "y",
		float "z",
		floatPtr "groundZ",
		BOOL "unk",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Gets the ground elevation at the specified position. Note that if the specified position is below ground level, the function will output zero!  
x: Position on the X-axis to get ground elevation at.  
y: Position on the Y-axis to get ground elevation at.  
z: Position on the Z-axis to get ground elevation at.  
groundZ: The ground elevation at the specified position.  
unk: Nearly always 0, very rarely 1 in the scripts.  
```

```
NativeDB Added Parameter 6: BOOL p5
```
</summary>
	]]

native "GET_IS_AUTO_SAVE_OFF"
    hash "0x6E04F06094C87047"
	jhash (0xA8546914)
	alias "0x6E04F06094C87047"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if profile setting 208 is equal to 0.
```
</summary>
	]]

native "GET_INDEX_OF_CURRENT_LEVEL"
    hash "0xCBAD6729F7B1F4FC"
	jhash (0x6F203C6E)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_MISSION_FLAG"
    hash "0xA33CDCCDA663159E"
	jhash (0x95115F97)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "_GET_IS_PLAYER_IN_ANIMAL_FORM"
    hash "0x9689123E3F213AA5"
	alias "0x9689123E3F213AA5"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Although we don't have a jenkins hash for this one, the name is 100% confirmed.
```
</summary>
	]]

native "GET_NEXT_WEATHER_TYPE_HASH_NAME"
    hash "0x711327CD09C8F162"
	jhash (0x353E8056)
	alias "_GET_NEXT_WEATHER_TYPE"
	ns "MISC"
	returns "Hash"
	doc [[!
<summary>
```
Returns weather name hash  
```
</summary>
	]]

native "GET_NUM_SUCCESSFUL_STUNT_JUMPS"
    hash "0x996DD1E1E02F1008"
	jhash (0x006F9BA2)
	alias "0x996DD1E1E02F1008"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "_GET_IS_PROJECTILE_TYPE_IN_AREA"
    hash "0x8D7A43EC6A5FEA45"
	jhash (0x1A40454B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		Hash "projHash",
		Vector3Ptr "projPos",
		BOOL "ownedByPlayer",
	}
	alias "0x8D7A43EC6A5FEA45"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Works exactly like IS_PROJECTILE_TYPE_IN_AREA, but it puts the position of the projectile in the vector.  
p8 is probably ownedByPlayer, but not known for sure. (see IS_PROJECTILE_IN_AREA for info)  
Unsure of the hash name, could someone confirm this?  
```
</summary>
	]]

native "GET_NUMBER_OF_FREE_STACKS_OF_THIS_SIZE"
    hash "0xFEAD16FC8F9DFC0F"
	jhash (0x11A178B8)
	arguments {
		int "stackSize",
	}
	alias "_GET_FREE_STACK_SLOTS_COUNT"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_MODEL_DIMENSIONS"
    hash "0x03E8D3D5F549087A"
	jhash (0x91ABB8E0)
	arguments {
		Hash "modelHash",
		Vector3Ptr "minimum",
		Vector3Ptr "maximum",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Gets the dimensions of a model.  
Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.  
Vector3 GetDimensions(Hash model)  
{  
	Vector3 right, left;  
	GET_MODEL_DIMENSIONS(model, &right, &left);  
	return Vector3::Subtract(left, right);  
}  
Example from the scripts: GAMEPLAY::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);  
```
</summary>
	]]

native "GET_ONSCREEN_KEYBOARD_RESULT"
    hash "0x8362B09B91893647"
	jhash (0x44828FB3)
	ns "MISC"
	returns "charPtr"
	doc [[!
<summary>
```
Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.  
```
</summary>
	]]

native "_GET_NUMBER_OF_DISPATCHED_UNITS_FOR_PLAYER"
    hash "0xEB4A0C2D56441717"
	jhash (0x3CE5BF6B)
	arguments {
		int "dispatchService",
	}
	alias "0xEB4A0C2D56441717"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_PROFILE_SETTING"
    hash "0xC488FF2356EA7791"
	jhash (0xD374BEBC)
	arguments {
		int "profileSetting",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
gtaforums.com/topic/799843-stats-profile-settings/  
```
</summary>
	]]

native "_GET_PROJECTILE_NEAR_PED_COORDS"
    hash "0xDFB4138EEFED7B81"
	jhash (0x6BDE5CE4)
	arguments {
		Ped "ped",
		Hash "weaponHash",
		float "radius",
		Vector3Ptr "entity",
		BOOL "ownedByPlayer",
	}
	alias "0xDFB4138EEFED7B81"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
From a quick disassembly I can say that this has something to do with weapons.  
Added params according to what I could see in IDA.  
Dr. Underscore (1/6/18):  
Returns if any projectiles of projHash type are in a radius around this ped. If true, projPos is filled with the position of that entity.  
This native was only ever used with projectiles, but may not be limited to.  
p4 isn't an Entity*, it's actually a Vector3*, which outputs the position of the found entity.  
p5 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```

```
NativeDB Parameter 3: Entity* entity
```
</summary>
	]]

native "_GET_POWER_SAVING_MODE_DURATION"
    hash "0xABB2FA71C83A1B72"
	alias "0xABB2FA71C83A1B72"
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
```
</summary>
	]]

native "GET_PREV_WEATHER_TYPE_HASH_NAME"
    hash "0x564B884A05EC45A3"
	jhash (0xA8171E9E)
	alias "_GET_PREV_WEATHER_TYPE"
	ns "MISC"
	returns "Hash"
	doc [[!
<summary>
```
Returns current weather name hash  
```
</summary>
	]]

native "GET_RAIN_LEVEL"
    hash "0x96695E368AD855F3"
	jhash (0xC9F67F28)
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "_GET_PROJECTILE_NEAR_PED"
    hash "0x82FDE6A57EE4EE44"
	jhash (0x507BC6F7)
	arguments {
		Ped "ped",
		Hash "weaponhash",
		float "radius",
		Vector3Ptr "projPos",
		EntityPtr "projEnt",
		BOOL "ownedByPlayer",
	}
	alias "0x82FDE6A57EE4EE44"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
only documented to be continued...  
Dr. Underscore (1/6/18):  
Exactly like _GET_PROJECTILE_NEAR_PED_COORDS (_0xDFB4138EEFED7B81), but it gives us the Entity that was found aswell.  
p6 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```

```
NativeDB Parameter 3: float projPos
NativeDB Parameter 4: float projEnt
```
</summary>
	]]

native "GET_RANDOM_FLOAT_IN_RANGE"
    hash "0x313CE5879CEB6FCD"
	jhash (0x0562C4D0)
	arguments {
		float "startRange",
		float "endRange",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "GET_REPLAY_STAT_AT_INDEX"
    hash "0x8098C8D6597AAE18"
	jhash (0x22BE2423)
	arguments {
		int "index",
	}
	alias "0x8098C8D6597AAE18"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_RANDOM_EVENT_FLAG"
    hash "0xD2D57F1D764117B1"
	jhash (0x794CC92C)
	ns "MISC"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "GET_RANDOM_INT_IN_RANGE"
    hash "0xD53343AA4FB7DD28"
	jhash (0x4051115B)
	arguments {
		int "startRange",
		int "endRange",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Another extremely useful native.  
You can use it simply like:  
if (GAMEPLAY::GET_RANDOM_INT_IN_RANGE(0, 2))  
```
</summary>
	]]

native "GET_REPLAY_STAT_MISSION_TYPE"
    hash "0x2B626A0150E4D449"
	jhash (0x710E5D1E)
	alias "0x2B626A0150E4D449"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_TENNIS_SWING_ANIM_COMPLETE"
    hash "0x17DF68D720AA77F8"
	jhash (0x8501E727)
	arguments {
		Ped "ped",
	}
	alias "0x17DF68D720AA77F8"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "GET_REPLAY_STAT_COUNT"
    hash "0xDC9274A7EF6B2867"
	jhash (0xC7BD1AF0)
	alias "0xDC9274A7EF6B2867"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_TOTAL_SUCCESSFUL_STUNT_JUMPS"
    hash "0x6856EC3D35C81EA4"
	jhash (0x495BE324)
	alias "0x6856EC3D35C81EA4"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_SNOW_LEVEL"
    hash "0xC5868A966E5BE3AE"
	jhash (0x1B09184F)
	ns "MISC"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: float
```
</summary>
	]]

native "_GET_WEATHER_TYPE_TRANSITION"
    hash "0xF3BBE884A14BB413"
	jhash (0x9A5C1D56)
	arguments {
		HashPtr "weatherType1",
		HashPtr "weatherType2",
		floatPtr "percentWeather2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
changed any --> hash  
progress_or_time --> percentWeather2, is not time but percent of the 2nd weather (0-1).  
weatherType1 is same as GAMEPLAY::GET_PREV_WEATHER_TYPE_HASH_NAME()  
and weatherType 2 GAMEPLAY::GET_NEXT_WEATHER_TYPE_HASH_NAME()  
-QuantFC  
```
</summary>
	]]

native "GET_WIND_DIRECTION"
    hash "0x1F400FEF721170DA"
	jhash (0x89499A0D)
	ns "MISC"
	returns "Vector3"
	doc [[!
	]]

native "GET_WIND_SPEED"
    hash "0xA8CF1CC0AFCD3F12"
	jhash (0x098F0F3C)
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "_HAS_ASYNC_INSTALL_FINISHED"
    hash "0x14832BF2ABA53FC5"
	alias "0x14832BF2ABA53FC5"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Hardcoded to always return true.
```
</summary>
	]]

native "HAS_BULLET_IMPACTED_IN_AREA"
    hash "0x9870ACFB89A90995"
	jhash (0x902BC7D9)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		BOOL "p4",
		BOOL "p5",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
p3 - possibly radius?  
```
</summary>
	]]

native "HAS_BULLET_IMPACTED_IN_BOX"
    hash "0xDC8C5D7CFEAB8394"
	jhash (0x2C2618CC)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "_HAS_BUTTON_COMBINATION_JUST_BEEN_ENTERED"
    hash "0x071E2A839DE82D90"
	jhash (0xFF6191E1)
	arguments {
		Hash "hash",
		int "amount",
	}
	alias "0x071E2A839DE82D90"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/  
```
</summary>
	]]

native "_HAS_CHEAT_STRING_JUST_BEEN_ENTERED"
    hash "0x557E43C447E700A8"
	arguments {
		Hash "hash",
	}
	alias "0x557E43C447E700A8"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Get inputted "Cheat code", for example:  
while (TRUE)  
{  
    if (GAMEPLAY::_557E43C447E700A8(${fugitive}))  
    {  
       // Do something.  
    }  
    SYSTEM::WAIT(0);  
}  
Calling this will also set the last saved string hash to zero.  
```
</summary>
	]]

native "_HAS_RESUMED_FROM_SUSPEND"
    hash "0xE8B9C0EC9E183F35"
	alias "0xE8B9C0EC9E183F35"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Hardcoded to return false.
```
</summary>
	]]

native "HAVE_CREDITS_REACHED_END"
    hash "0x075F1D57402C93BA"
	jhash (0x2569C9A7)
	alias "0x075F1D57402C93BA"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IGNORE_NEXT_RESTART"
    hash "0x21FFB63D8C615361"
	jhash (0xDA13A4B6)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "IS_AREA_OCCUPIED"
    hash "0xA61B4DF533DCB56E"
	jhash (0xC013972F)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
		BOOL "p10",
		Any "p11",
		BOOL "p12",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_AUTO_SAVE_IN_PROGRESS"
    hash "0x69240733738C19A0"
	jhash (0x36F75399)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_BIT_SET"
    hash "0xA921AA820C25702F"
	jhash (0x902E26AC)
	arguments {
		int "address",
		int "offset",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns bit's boolean state from [offset] of [address].  
Example:  
GAMEPLAY::IS_BIT_SET(bitAddress, 1);  
To enable and disable bits, see:  
GAMEPLAY::SET_BIT(&bitAddress, 1);   // enable  
GAMEPLAY::CLEAR_BIT(&bitAddress, 1); // disable  
```
</summary>
	]]

native "IS_AUSSIE_VERSION"
    hash "0x9F1935CA1F724008"
	jhash (0x944BA1DC)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
if (GAMEPLAY::IS_AUSSIE_VERSION()) {  
sub_127a9(&l_31, 1024); // l_31 |= 1024  
l_129 = 3;  
sub_129d2("AUSSIE VERSION IS TRUE!?!?!"); // DEBUG  
		}  
		Used to block some of the prostitute stuff due to laws in Australia.  
```
</summary>
	]]

native "IS_BULLET_IN_AREA"
    hash "0x3F2023999AD51C1F"
	jhash (0xB54F46CA)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_DURANGO_VERSION"
    hash "0x4D982ADB1978442D"
	jhash (0x46FB06A5)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
XBOX ONE  
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_BULLET_IN_ANGLED_AREA"
    hash "0x1A8B5F3C01E2B477"
	jhash (0xE2DB58F7)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		BOOL "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_FRONTEND_FADING"
    hash "0x7EA2B6AF97ECA6ED"
	jhash (0x8FF6232C)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_BULLET_IN_BOX"
    hash "0xDE0F6D7450D37351"
	jhash (0xAB73ED26)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_INCIDENT_VALID"
    hash "0xC8BC6461E629BEAA"
	jhash (0x31FD0BA4)
	arguments {
		int "incidentId",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
=======================================================  
Correction, I have change this to int, instead of int*  
as it doesn't use a pointer to the createdIncident.  
If you try it you will crash (or) freeze.  
=======================================================  
```
</summary>
	]]

native "_IS_COMMAND_LINE_BENCHMARK_VALUE_SET"
    hash "0xA049A5BE0F04F2F8"
	alias "0xA049A5BE0F04F2F8"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if command line option '-benchmark' is set.
```
</summary>
	]]

native "IS_MINIGAME_IN_PROGRESS"
    hash "0x2B4A15E44DE0F478"
	jhash (0x53A95E13)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "_IS_IN_POWER_SAVING_MODE"
    hash "0x684A41975F077262"
	alias "0x684A41975F077262"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
example:  
if (GAMEPLAY::_684A41975F077262()) {  
       (a_0) = GAMEPLAY::_ABB2FA71C83A1B72();  
   } else {   
       (a_0) = -1;  
   }  
```
</summary>
	]]

native "IS_PC_VERSION"
    hash "0x48AF36444B965238"
	jhash (0x4D5D9EE3)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "IS_POINT_OBSCURED_BY_A_MISSION_ENTITY"
    hash "0xE54E209C35FFA18D"
	jhash (0xC161558D)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_MEMORY_CARD_IN_USE"
    hash "0x8A75CE2956274ADD"
	jhash (0x40CE4DFD)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_POSITION_OCCUPIED"
    hash "0xADCDE75E1C60F32D"
	jhash (0x452E8D9E)
	arguments {
		float "x",
		float "y",
		float "z",
		float "range",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		Any "p9",
		BOOL "p10",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_NEXT_WEATHER_TYPE"
    hash "0x2FAA3A30BEC0F25D"
	jhash (0x99CB167F)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_PROJECTILE_IN_AREA"
    hash "0x5270A8FBC098C3F8"
	jhash (0x78E1A557)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "ownedByPlayer",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.  
ownedByPlayer = only projectiles fired by the player will be detected.  
```
</summary>
	]]

native "IS_ORBIS_VERSION"
    hash "0xA72BC0B675B1519E"
	jhash (0x40282018)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
PS4  
MulleDK19: This function is hard-coded to always return 0.  
Force67: I patched return result and got this : i.imgur.com/hUn7zSj.jpg  
translate please?  
```
</summary>
	]]

native "IS_PROJECTILE_TYPE_IN_ANGLED_AREA"
    hash "0xF0BC12401061DEA0"
	jhash (0xD1AE2681)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		Any "p7",
		BOOL "p8",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "_IS_POP_MULTIPLIER_AREA_UNK"
    hash "0x1312F4B242609CE3"
	arguments {
		int "id",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="id">:</param>
	]]

native "_IS_PROJECTILE_TYPE_IN_RADIUS"
    hash "0x34318593248C8FB2"
	jhash (0xBE81F1E2)
	arguments {
		float "x",
		float "y",
		float "z",
		Hash "projHash",
		float "radius",
		BOOL "ownedByPlayer",
	}
	alias "0x34318593248C8FB2"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Checks if the projectile is in the radius around that point.  
p6 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```
</summary>
	]]

native "IS_PREV_WEATHER_TYPE"
    hash "0x44F28F86433B10A9"
	jhash (0x250ADA61)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_PS3_VERSION"
    hash "0xCCA1072C29D096C2"
	jhash (0x4C0D5303)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_PROJECTILE_TYPE_IN_AREA"
    hash "0x2E0DC353342C4A6D"
	jhash (0x2B73BCF6)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "type",
		BOOL "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a rectangle.  
Note: This native hasn't been tested yet.  
```
</summary>
	]]

native "IS_SNIPER_INVERTED"
    hash "0x61A23B7EDA9BDA24"
	jhash (0x5C3BF51B)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_STRING_NULL_OR_EMPTY"
    hash "0xCA042B6957743895"
	jhash (0x42E9F2CA)
	arguments {
		charPtr "string",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_SNIPER_BULLET_IN_AREA"
    hash "0xFEFCF11B01287125"
	jhash (0x0483715C)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Determines whether there is a sniper bullet within the specified coordinates. The coordinates form a rectangle.  
```
</summary>
	]]

native "IS_STUNT_JUMP_MESSAGE_SHOWING"
    hash "0x2272B0A1343129F4"
	jhash (0x021636EE)
	alias "0x2272B0A1343129F4"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_STRING_NULL"
    hash "0xF22B6C47C6EAB066"
	jhash (0x8E71E00F)
	arguments {
		charPtr "string",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_STUNT_JUMP_IN_PROGRESS"
    hash "0x7A3F19700A4D0525"
	jhash (0xF477D0B1)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_THIS_A_MINIGAME_SCRIPT"
    hash "0x7B30F65D7B710098"
	jhash (0x7605EF6F)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_XBOX360_VERSION"
    hash "0xF6201B4DAF662A9D"
	jhash (0x24005CC8)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "LOAD_CLOUD_HAT"
    hash "0xFC4842A34657BFCB"
	jhash (0xED88FC61)
	arguments {
		charPtr "name",
		float "transitionTime",
	}
	alias "_SET_CLOUD_HAT_TRANSITION"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The following cloudhats are useable:
"altostratus"
"Cirrus"
"cirrocumulus"
"Clear 01"
"Cloudy 01"
"Contrails"
"Horizon"
"horizonband1"
"horizonband2"
"horizonband3"
"horsey"
"Nimbus"
"Puffs"
"RAIN"
"Snowy 01"
"Stormy 01"
"stratoscumulus"
"Stripey"
"shower"
"Wispy"
```
</summary>
	]]

native "IS_TENNIS_MODE"
    hash "0x5D5479D115290C3F"
	jhash (0x04A947BA)
	arguments {
		Ped "ped",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Return whether tennis mode is active or not.  
```
</summary>
	]]

native "_LANDING_MENU_IS_ACTIVE"
    hash "0x3BBBD13E5041A79E"
	alias "0x3BBBD13E5041A79E"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
```
</summary>
	]]

native "0x06462A961E94B67C"
    hash "0x06462A961E94B67C"
	jhash (0x5A45B11A)
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
CLEAR_*
```
</summary>
	]]

native "0x0CF97F497FE7D048"
    hash "0x0CF97F497FE7D048"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x02DEAAC8F8EA7FE7"
    hash "0x02DEAAC8F8EA7FE7"
	arguments {
		charPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Found in the scripts:  
GAMEPLAY::_02DEAAC8F8EA7FE7("");  
```
</summary>
	]]

native "0x1BB299305C3E8C13"
    hash "0x1BB299305C3E8C13"
	jhash (0xA27F4472)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x0A60017F841A54F2"
    hash "0x0A60017F841A54F2"
	jhash (0x2D33F15A)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x1FF6BF9A63E5757F"
    hash "0x1FF6BF9A63E5757F"
	jhash (0xDF99925C)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x19BFED045C647C49"
    hash "0x19BFED045C647C49"
	jhash (0x1A332D2D)
	arguments {
		Ped "ped",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Related to tennis mode.

GET_TENNIS_*
```
</summary>
	]]

native "0x21C235BC64831E5A"
    hash "0x21C235BC64831E5A"
	jhash (0xCAECF37E)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		BOOL "p9",
	}
	ns "MISC"
	returns "Vector3"
	doc [[!
<summary>
```
GET_C*
```
</summary>
	]]

native "0x1EAE0A6E978894A2"
    hash "0x1EAE0A6E978894A2"
	jhash (0x8F60366E)
	arguments {
		int "p0",
		BOOL "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Unsure about the use of this native but here's an example:  
void sub_8709() {  
    GAMEPLAY::_1EAE0A6E978894A2(0, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(1, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(2, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(3, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(4, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(5, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(6, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(7, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(8, 1);  
}  
So it appears that p0 ranges from 0 to 8.  
ENABLE_DISPATCH_SERVICE, seems to have a similar layout.  
```
</summary>
	]]

native "0x23227DF0B2115469"
    hash "0x23227DF0B2115469"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x2107A3773771186D"
    hash "0x2107A3773771186D"
	jhash (0x78350773)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
HAS_*
```
</summary>
	]]

native "0x2B5E102E4A42F2BF"
    hash "0x2B5E102E4A42F2BF"
	jhash (0x144AAF22)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x2587A48BC88DFADF"
    hash "0x2587A48BC88DFADF"
	jhash (0xD9660339)
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x31727907B2C43C55"
    hash "0x31727907B2C43C55"
	jhash (0xD447439D)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x2D4259F1FEB81DA9"
    hash "0x2D4259F1FEB81DA9"
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x397BAA01068BAA96"
    hash "0x397BAA01068BAA96"
	jhash (0x39771F21)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "0x31125FD509D9043F"
    hash "0x31125FD509D9043F"
	arguments {
		AnyPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x3ED1438C1F5C6612"
    hash "0x3ED1438C1F5C6612"
	jhash (0x3301EA47)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
p0 was always 2 in R* scripts.  
Called before calling DISPLAY_ONSCREEN_KEYBOARD if the input needs to be saved.  
```
</summary>
	]]

native "0x405591EC8FD9096D"
    hash "0x405591EC8FD9096D"
	jhash (0x584E9C59)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x44A0BDC559B35F6E"
    hash "0x44A0BDC559B35F6E"
	jhash (0x3589452B)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x438822C279B73B93"
    hash "0x438822C279B73B93"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x48F069265A0E4BEC"
    hash "0x48F069265A0E4BEC"
	jhash (0xF91B8C33)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Only found 3 times in decompiled scripts. Not a whole lot to go off of.  
GAMEPLAY::_48F069265A0E4BEC(a_0, "Movie_Name_For_This_Player");  
GAMEPLAY::_48F069265A0E4BEC(&a_0._fB, "Ringtone_For_This_Player");  
GAMEPLAY::_48F069265A0E4BEC(&a_0._f1EC4._f12[v_A/*6*/], &v_13); // where v_13 is "MPATMLOGSCRS0" thru "MPATMLOGSCRS15"  
```
</summary>
	]]

native "0x4DCDF92BF64236CD"
    hash "0x4DCDF92BF64236CD"
	arguments {
		charPtr "p0",
		charPtr "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x5B1F2E327B6B6FE1"
    hash "0x5B1F2E327B6B6FE1"
	jhash (0x50C39926)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x54F157E0336A3822"
    hash "0x54F157E0336A3822"
	jhash (0x49F977A9)
	arguments {
		Ped "ped",
		charPtr "p1",
		float "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
From the scripts:  
GAMEPLAY::_54F157E0336A3822(sub_aa49(a_0), "ForcedStopDirection", v_E);  
```
</summary>
	]]

native "0x6216B116083A7CB4"
    hash "0x6216B116083A7CB4"
	jhash (0xFB1A9CDE)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x65D2EBB47E1CEC21"
    hash "0x65D2EBB47E1CEC21"
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets GtaThread+0x14A

SET_S*
```
</summary>
	]]

native "0x693478ACBD7F18E7"
    hash "0x693478ACBD7F18E7"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x6F2135B6129620C1"
    hash "0x6F2135B6129620C1"
	jhash (0x8B2DE971)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets bit 3 in GtaThread+0x150

SET_T*
```
</summary>
	]]

native "0x72DE52178C291CB5"
    hash "0x72DE52178C291CB5"
	jhash (0xF62B3C48)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x6FDDF453C0C756EC"
    hash "0x6FDDF453C0C756EC"
	jhash (0xC3C10FCC)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
- if (GAMEPLAY::_6FDDF453C0C756EC() || GAMEPLAY::IS_PC_VERSION()) {  
```
</summary>
	]]

native "0x703CC7F60CBB2B57"
    hash "0x703CC7F60CBB2B57"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x7C9C0B1EEB1F9072"
    hash "0x7C9C0B1EEB1F9072"
	jhash (0x98C9138B)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x7F8F6405F4777AF6"
    hash "0x7F8F6405F4777AF6"
	jhash (0x89459F0A)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		BOOL "p9",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "0x7EC6F9A478A6A512"
    hash "0x7EC6F9A478A6A512"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Possibly used to clear scenario points.

CLEAR_*
```
</summary>
	]]

native "0x8951EB9C6906D3C8"
    hash "0x8951EB9C6906D3C8"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x8269816F6CFD40F8"
    hash "0x8269816F6CFD40F8"
	jhash (0x74E8FAD9)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Only found 2 times in decompiled scripts. Not a whole lot to go off of.  
GAMEPLAY::_8269816F6CFD40F8(&a_0._f1F5A._f6[0/*8*/], "TEMPSTAT_LABEL"); // gets saved in a struct called "g_SaveData_STRING_ScriptSaves"  
GAMEPLAY::_8269816F6CFD40F8(&a_0._f4B4[v_1A/*8*/], &v_5); // where v_5 is "Name0" thru "Name9", gets saved in a struct called "OUTFIT_Name"  
```
</summary>
	]]

native "0x8D74E26F54B4E5C3"
    hash "0x8D74E26F54B4E5C3"
	jhash (0xE77199F7)
	arguments {
		charPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
GAMEPLAY::_8D74E26F54B4E5C3("");  
```
</summary>
	]]

native "0x8EF5573A1F801A5C"
    hash "0x8EF5573A1F801A5C"
	jhash (0x07FF553F)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0x97E7E2C04245115B"
    hash "0x97E7E2C04245115B"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x918C7B2D2FF3928B"
    hash "0x918C7B2D2FF3928B"
	jhash (0xF557BAF9)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x9F5E6BB6B34540DA"
    hash "0x9F5E6BB6B34540DA"
	jhash (0x1C0CAE89)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x9E82F0F362881B29"
    hash "0x9E82F0F362881B29"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "MISC"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Added Parameter 6: Any p5
```
</summary>
	]]

native "0xA09F896CE912481F"
    hash "0xA09F896CE912481F"
	jhash (0x9EF0BC64)
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
GET_S*
```
</summary>
	]]

native "0xA1183BCFEE0F93D1"
    hash "0xA1183BCFEE0F93D1"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
	]]

native "0xA7A1127490312C36"
    hash "0xA7A1127490312C36"
	jhash (0x6926AB03)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xA4A0065E39C9F25C"
    hash "0xA4A0065E39C9F25C"
	jhash (0xC4D71AB4)
	arguments {
		Vector3Ptr "p0",
		floatPtr "p1",
		BOOLPtr "fadeInAfterLoad",
		BOOLPtr "p3",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
GET_SAVE_*

GET_SAVE_UNLESS_CUSTOM_DOT ?
```
</summary>
	]]

native "0xB3CD58CCA6CDA852"
    hash "0xB3CD58CCA6CDA852"
	jhash (0x66C3C59C)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB3E6360DDE733E82"
    hash "0xB3E6360DDE733E82"
	jhash (0x0DE40C28)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xA8434F1DFF41D6E7"
    hash "0xA8434F1DFF41D6E7"
	jhash (0x5F3DDEC0)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB51B9AB9EF81868C"
    hash "0xB51B9AB9EF81868C"
	jhash (0x75B06B5A)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB8F87EAD7533B176"
    hash "0xB8F87EAD7533B176"
	jhash (0x625181DC)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB8721407EE9C3FF6"
    hash "0xB8721407EE9C3FF6"
	jhash (0x24A4E0B2)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB9854DFDE0D833D6"
    hash "0xB9854DFDE0D833D6"
	jhash (0x4671AC2E)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xBA4B8D83BDC75551"
    hash "0xBA4B8D83BDC75551"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xC3C221ADDDE31A11"
    hash "0xC3C221ADDDE31A11"
	jhash (0x63A89684)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xC3EAD29AB273ECE8"
    hash "0xC3EAD29AB273ECE8"
	jhash (0xBEBBFDC8)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xD10282B6E3751BA0"
    hash "0xD10282B6E3751BA0"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xC54A08C85AE4D410"
    hash "0xC54A08C85AE4D410"
	jhash (0xDA02F415)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This seems to edit the water wave, intensity around your current location.  
0.0f = Normal  
1.0f = So Calm and Smooth, a boat will stay still.  
3.0f = Really Intense.  
```
</summary>
	]]

native "0xD642319C54AADEB6"
    hash "0xD642319C54AADEB6"
	jhash (0xC58250F1)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xD9F692D349249528"
    hash "0xD9F692D349249528"
	jhash (0xE0C9307E)
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
RESET_*
```
</summary>
	]]

native "0xE3D969D2785FFB5E"
    hash "0xE3D969D2785FFB5E"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
sets something to 1  
```
</summary>
	]]

native "0xE532EC1A63231B4F"
    hash "0xE532EC1A63231B4F"
	jhash (0xA0D8C749)
	arguments {
		int "p0",
		int "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
SET_*
```
</summary>
	]]

native "0xE95B0C7D5BA3B96B"
    hash "0xE95B0C7D5BA3B96B"
	arguments {
		Ped "ped",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Related to tennis mode.

GET_TENNIS_*
```
</summary>
	]]

native "0xEB078CA2B5E82ADD"
    hash "0xEB078CA2B5E82ADD"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xEB2104E905C6F2E9"
    hash "0xEB2104E905C6F2E9"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xEBD3205A207939ED"
    hash "0xEBD3205A207939ED"
	arguments {
		AnyPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xF56DFB7B61BE7276"
    hash "0xF56DFB7B61BE7276"
	jhash (0xC6CC812C)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
		float "p11",
		floatPtr "p12",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0xFAA457EF263E8763"
    hash "0xFAA457EF263E8763"
	jhash (0x6B4335DD)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Another unknown label type...  
GAMEPLAY::_FAA457EF263E8763(a_0, "Thumb_label");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f10, "Photo_label");  
GAMEPLAY::_FAA457EF263E8763(a_0, "GXTlabel");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f21, "StringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f43, "SecondStringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f53, "ThirdStringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f32, "SenderStringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f726[v_1A/*16*/], &v_20); // where v_20 is "LastJobTL_0_1" thru "LastJobTL_2_1", gets saved in a struct called "LAST_JobGamer_TL"  
GAMEPLAY::_FAA457EF263E8763(&a_0._f4B, "PAID_PLAYER");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f5B, "RADIO_STATION");  
```
</summary>
	]]

native "0xF751B16FB32ABC1D"
    hash "0xF751B16FB32ABC1D"
	jhash (0x5656D578)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xFB00CA71DA386228"
    hash "0xFB00CA71DA386228"
	jhash (0x054EC103)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xFB80AB299D2EE1BD"
    hash "0xFB80AB299D2EE1BD"
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Toggles some stunt jump stuff.
```
</summary>
	]]

native "NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME"
    hash "0x9243BAC96D64C050"
	jhash (0x878486CE)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "OVERRIDE_SAVE_HOUSE"
    hash "0x1162EA8AE9D24EEA"
	jhash (0x47436C12)
	arguments {
		BOOL "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
		float "p6",
		float "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "PAUSE_DEATH_ARREST_RESTART"
    hash "0x2C2B3493FBF51C71"
	jhash (0x296574AE)
	arguments {
		BOOL "toggle",
	}
	alias "_DISABLE_AUTOMATIC_RESPAWN"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "PLAY_TENNIS_DIVE_ANIM"
    hash "0x8FA9C42FC5D7C64B"
	jhash (0x0C8865DF)
	arguments {
		Ped "ped",
		int "p1",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	alias "0x8FA9C42FC5D7C64B"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "PLAY_TENNIS_SWING_ANIM"
    hash "0xE266ED23311F24D4"
	jhash (0xC20A7D2B)
	arguments {
		Ped "ped",
		charPtr "animDict",
		charPtr "animName",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	alias "0xE266ED23311F24D4"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "POPULATE_NOW"
    hash "0x7472BB270D7B4F3E"
	jhash (0x72C20700)
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called  
```
</summary>
	]]

native "PRELOAD_CLOUD_HAT"
    hash "0x11B56FBBF7224868"
	jhash (0x8727A4C5)
	arguments {
		charPtr "name",
	}
	alias "0x11B56FBBF7224868"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Found in the scripts:  
GAMEPLAY::_11B56FBBF7224868("CONTRAILS");  
```
</summary>
	]]

native "REGISTER_BOOL_TO_SAVE"
    hash "0xC8F4131414C835A1"
	jhash (0x5417E0E0)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_ENUM_TO_SAVE"
    hash "0x10C2FA78D0E128A1"
	jhash (0x9B38374A)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_FLOAT_TO_SAVE"
    hash "0x7CAEC29ECB5DFEBB"
	jhash (0xDB06F7AD)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_INT_TO_SAVE"
    hash "0x34C9EE5986258415"
	jhash (0xB930956F)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_REGISTER_INT64_TO_SAVE"
    hash "0xA735353C77334EA0"
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	alias "0xA735353C77334EA0"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_TEXT_LABEL_TO_SAVE"
    hash "0xEDB1232C5BEAE62F"
	jhash (0x284352C4)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_SAVE_HOUSE"
    hash "0xC0714D0A7EEECA54"
	jhash (0x39C1849A)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		AnyPtr "p4",
		Any "p5",
		Any "p6",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "_REGISTER_TEXT_LABEL_TO_SAVE_2"
    hash "0x6F7794F28C6B2535"
	jhash (0xE2089749)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	alias "0x6F7794F28C6B2535"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?  
GAMEPLAY::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");  
GAMEPLAY::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");  
GAMEPLAY::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");  
"tl" prefix sounds like "Text Label"  
```
</summary>
	]]

native "REMOVE_DISPATCH_SPAWN_BLOCKING_AREA"
    hash "0x264AC28B01B353A5"
	jhash (0xA8D2FB92)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REMOVE_POP_MULTIPLIER_SPHERE"
    hash "0xE6869BECDD8F2403"
	jhash (0x92E7E4EB)
	arguments {
		int "id",
		BOOL "p1",
	}
	alias "0xE6869BECDD8F2403"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REMOVE_POP_MULTIPLIER_AREA"
    hash "0xB129E447A2EDA4BF"
	jhash (0xFBDBE374)
	arguments {
		int "id",
		BOOL "p1",
	}
	alias "0xB129E447A2EDA4BF"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_REMOVE_STEALTH_KILL"
    hash "0xA6A12939F16D85BE"
	jhash (0x42B484ED)
	arguments {
		Hash "hash",
		BOOL "p1",
	}
	alias "0xA6A12939F16D85BE"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Appears to remove stealth kill action from memory.  
------------------------------------  
I agree with the above statement.  
p1 is unknown, my best guess would be if false it marks the stealth kill for immediate deletion, or if true marks it for deletion later.  
```
</summary>
	]]

native "RESET_DISPATCH_IDEAL_SPAWN_DISTANCE"
    hash "0x77A84429DD9F0A15"
	jhash (0xDA65ECAA)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_RESET_BENCHMARK_RECORDING"
    hash "0x437138B6A830166A"
	alias "0x437138B6A830166A"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Begins with RESET_*. Next character in the name is either D or E.
```
</summary>
	]]

native "RESET_DISPATCH_SPAWN_BLOCKING_AREAS"
    hash "0xAC7BFD5C1D83EA75"
	jhash (0x9A17F835)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_RESET_LOCALPLAYER_STATE"
    hash "0xC0AA53F866B3134D"
	jhash (0x5D209F25)
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets the localplayer playerinfo state back to playing (State 0)  
States are:  
-1: "Invalid"  
0: "Playing"  
1: "Died"  
2: "Arrested"  
3: "Failed Mission"  
4: "Left Game"  
5: "Respawn"  
6: "In MP Cutscene"  
```
</summary>
	]]

native "RESET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS"
    hash "0xEB2DB0CAD13154B3"
	jhash (0x1479E85A)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="p0">:</param>
	]]

native "_SAVE_BENCHMARK_RECORDING"
    hash "0x37DEB0AA183FB6D8"
	alias "0x37DEB0AA183FB6D8"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
```
</summary>
	]]

native "_RESTART_GAME"
    hash "0xE574A662ACAEFBB1"
	alias "0xE574A662ACAEFBB1"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
Shows `Disconnecting from GTA Online` HUD and then quits the game. Better name `_QUIT_GAME`?
</summary>
	]]

native "SET_BITS_IN_RANGE"
    hash "0x8EF07E15701D61ED"
	jhash (0x32094719)
	arguments {
		intPtr "var",
		int "rangeStart",
		int "rangeEnd",
		int "p3",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_BIT"
    hash "0x933D6A9EEC1BACD0"
	jhash (0x4EFE7E6B)
	arguments {
		intPtr "address",
		int "offset",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This sets bit [offset] of [address] to on.  
The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.  
Example:  
GAMEPLAY::SET_BIT(&bitAddress, 1);  
To check if this bit has been enabled:  
GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards  
Please note, this method may assign a value to [address] when used.  
```
</summary>
	]]

native "SET_CREDITS_ACTIVE"
    hash "0xB938B7E6D3C0620C"
	jhash (0xEC2A0ECF)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_SET_CUSTOM_RESPAWN_POSITION"
    hash "0x706B5EDCAA7FA663"
	arguments {
		float "x",
		float "y",
		float "z",
		float "heading",
	}
	alias "0x706B5EDCAA7FA663"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Specifies a custom respawn position to be used in conjunction with _SET_NEXT_RESPAWN_TO_CUSTOM  
```
</summary>
	]]

native "_SET_CLOUD_HAT_OPACITY"
    hash "0xF36199225D6D8C86"
	arguments {
		float "opacity",
	}
	alias "0xF36199225D6D8C86"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_DISPATCH_IDEAL_SPAWN_DISTANCE"
    hash "0x6FE601A64180D423"
	jhash (0x6283BE32)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_DISPATCH_SPAWN_LOCATION"
    hash "0xD10F442036302D50"
	jhash (0x6F009E33)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	alias "0xD10F442036302D50"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_EXPLOSIVE_AMMO_THIS_FRAME"
    hash "0xA66C71C98D5F2CFB"
	jhash (0x2EAFA1D1)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS"
    hash "0x44F7CBC1BEB3327D"
	jhash (0xABADB709)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_EXPLOSIVE_MELEE_THIS_FRAME"
    hash "0xFF1BED81BFDC0FE0"
	jhash (0x96663D56)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER"
    hash "0x48838ED9937A15D1"
	jhash (0x1C996BCD)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_FADE_OUT_AFTER_ARREST"
    hash "0x1E0B4DC0D990A4E7"
	jhash (0xCB074B9D)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets whether the game should fade out after the player is arrested.  
```
</summary>
	]]

native "SET_FADE_IN_AFTER_DEATH_ARREST"
    hash "0xDA66D2796BA33F12"
	jhash (0xACDE6985)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets whether the game should fade in after the player dies or is arrested.  
```
</summary>
	]]

native "SET_FADE_IN_AFTER_LOAD"
    hash "0xF3D78F59DFE18D79"
	jhash (0x6E00EB0B)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_FAKE_WANTED_LEVEL"
    hash "0x1454F2448DE30163"
	jhash (0x85B1C9FA)
	arguments {
		int "fakeWantedLevel",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are ignored.  
Max is 6. Also the mini-map gets the red & blue flashing effect.  
```
</summary>
	]]

native "SET_FIRE_AMMO_THIS_FRAME"
    hash "0x11879CDD803D30F4"
	jhash (0x7C18FC8A)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "SET_FADE_OUT_AFTER_DEATH"
    hash "0x4A18E01DF2C87B86"
	jhash (0xC9F6F0BC)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets whether the game should fade out after the player dies.  
```
</summary>
	]]

native "SET_GRAVITY_LEVEL"
    hash "0x740E14FAD5842351"
	jhash (0x2D833F4A)
	arguments {
		int "level",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
level can be from 0 to 3  
0: 9.8   
1: 2.4   
2: 0.1 - very low  
3: 0.0  
```
</summary>
	]]

native "SET_GAME_PAUSED"
    hash "0x577D1284D6873711"
	jhash (0x8230FF6C)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe  
```
</summary>
	]]

native "_SET_INCIDENT_UNK"
    hash "0xD261BA3E7E998072"
	jhash (0x1F38102E)
	arguments {
		int "incidentId",
		float "p1",
	}
	alias "0xD261BA3E7E998072"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
SET_INCIDENT_*
```
</summary>
	]]

native "SET_INCIDENT_REQUESTED_UNITS"
    hash "0xB08B85D860E7BA3C"
	jhash (0x0242D88E)
	arguments {
		int "incidentId",
		int "dispatchService",
		int "numUnits",
	}
	alias "0xB08B85D860E7BA3C"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_MISSION_FLAG"
    hash "0xC4301E5121A0ED73"
	jhash (0x57592D52)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
If true, the player can't save the game.   
If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  
^ also, if the mission flag is already set, the function does nothing at all  
```
</summary>
	]]

native "SET_MINIGAME_IN_PROGRESS"
    hash "0x19E00D7322C6F85B"
	jhash (0x348B9046)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_OVERRIDE_WEATHER"
    hash "0xA43D5C6FE51ADBEF"
	jhash (0xD9082BB5)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Appears to have an optional bool parameter that is unused in the scripts.  
If you pass true, something will be set to zero.  
```
</summary>
	]]

native "SET_RANDOM_EVENT_FLAG"
    hash "0x971927086CFD2158"
	jhash (0xA77F31E8)
	arguments {
		Any "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.  
Does nothing if the mission flag is set.  
```

```
NativeDB Parameter 0: BOOL toggle
```
</summary>
	]]

native "_SET_PLAYER_ROCKSTAR_EDITOR_DISABLED"
    hash "0x9D8D44ADBBA61EF2"
	arguments {
		BOOL "toggle",
	}
	alias "0x9D8D44ADBBA61EF2"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
SET_PLAYER_*
```
</summary>
	]]

native "SET_RANDOM_SEED"
    hash "0x444D98F98C11F3EC"
	jhash (0xDB3FEB5C)
	arguments {
		int "seed",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_SET_RAIN_FX_INTENSITY"
    hash "0x643E26EA6E024D92"
	arguments {
		float "intensity",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
Controls rain, rain sounds and the creation of puddles.

With an `intensity` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.

With an `intensity` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.

To use the rain intensity of the current weather, call this native with `-1f` as `intensity`.
</summary>
<param name="intensity">Strength of rain effects</param>
	]]

native "SET_SAVE_HOUSE"
    hash "0x4F548CABEAE553BC"
	jhash (0xC3240BB4)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_RANDOM_WEATHER_TYPE"
    hash "0x8B05F884CF7E8020"
	jhash (0xE7AA1BC9)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_SAVE_MENU_ACTIVE"
    hash "0xC9BF75D28165FF77"
	jhash (0xF5CCF164)
	arguments {
		BOOL "ignoreVehicle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The bool is not a toggle!!!  
```
</summary>
	]]

native "SET_STUNT_JUMPS_CAN_TRIGGER"
    hash "0xD79185689F8FD5DF"
	jhash (0x3C806A2D)
	arguments {
		BOOL "toggle",
	}
	alias "0xD79185689F8FD5DF"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT"
    hash "0xB98236CAAECEF897"
	jhash (0xD06F1720)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_SUPER_JUMP_THIS_FRAME"
    hash "0x57FFF03E423A4C0B"
	jhash (0x86745EF3)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "SET_TIME_SCALE"
    hash "0x1D408577D440E81E"
	jhash (0xA7F84694)
	arguments {
		float "timeScale",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Maximum value is 1.  
At a value of 0 the game will still run at a minimum time scale.  
Slow Motion 1: 0.6  
Slow Motion 2: 0.4  
Slow Motion 3: 0.2  
```
</summary>
	]]

native "SET_THIS_SCRIPT_CAN_BE_PAUSED"
    hash "0xAA391C728106F7AF"
	jhash (0xA0C3CE29)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_SET_UNK_MAP_FLAG"
    hash "0xC5F0A8EBD3F361CE"
	jhash (0xE202879D)
	arguments {
		int "flag",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to 9BAE5AD2508DF078.  
Documented by NTAuthority (http://fivem.net/).  
```
</summary>
	]]

native "SET_WEATHER_TYPE_NOW"
    hash "0x29B487C359E19889"
	jhash (0x361E9EAC)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The following weatherTypes are used in the scripts:  
"CLEAR"  
"EXTRASUNNY"  
"CLOUDS"  
"OVERCAST"  
"RAIN"  
"CLEARING"  
"THUNDER"  
"SMOG"  
"FOGGY"  
"XMAS"  
"SNOWLIGHT"  
"BLIZZARD"  
```
</summary>
	]]

native "SET_WEATHER_TYPE_OVERTIME_PERSIST"
    hash "0xFB5045B7C42B75BF"
	jhash (0x386F0D25)
	arguments {
		charPtr "weatherType",
		float "time",
	}
	alias "_SET_WEATHER_TYPE_OVER_TIME"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_WEATHER_TYPE_NOW_PERSIST"
    hash "0xED712CA327900C8A"
	jhash (0xC869FE97)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The following weatherTypes are used in the scripts:  
"CLEAR"  
"EXTRASUNNY"  
"CLOUDS"  
"OVERCAST"  
"RAIN"  
"CLEARING"  
"THUNDER"  
"SMOG"  
"FOGGY"  
"XMAS"  
"SNOWLIGHT"  
"BLIZZARD"  
```
</summary>
	]]

native "_SET_WEATHER_TYPE_TRANSITION"
    hash "0x578C752848ECFA0C"
	jhash (0x5CA74040)
	arguments {
		Hash "weatherType1",
		Hash "weatherType2",
		float "percentWeather2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
Note that unlike most of the other weather natives, this native takes the hash of the weather name, not the plain string. These are the weather names and their hashes:  
CLEAR	0x36A83D84  
EXTRASUNNY	0x97AA0A79  
CLOUDS	0x30FDAF5C  
OVERCAST	0xBB898D2D  
RAIN	0x54A69840  
CLEARING	0x6DB1A50D  
THUNDER	0xB677829F  
SMOG	0x10DCF4B5  
FOGGY	0xAE737644  
XMAS	0xAAC9C895  
SNOWLIGHT	0x23FB812B  
BLIZZARD	0x27EA2814  
/* OLD INVALID INFO BELOW */  
Not tested. Based purely on disassembly. Instantly sets the weather to sourceWeather, then transitions to targetWeather over the specified transitionTime in seconds.  
If an invalid hash is specified for sourceWeather, the current weather type will be used.  
If an invalid hash is specified for targetWeather, the next weather type will be used.  
If an invalid hash is specified for both sourceWeather and targetWeather, the function just changes the transition time of the current transition.  
```
</summary>
	]]

native "SET_WEATHER_TYPE_PERSIST"
    hash "0x704983DF373B198F"
	jhash (0xC6C04C75)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The following weatherTypes are used in the scripts:  
"CLEAR"  
"EXTRASUNNY"  
"CLOUDS"  
"OVERCAST"  
"RAIN"  
"CLEARING"  
"THUNDER"  
"SMOG"  
"FOGGY"  
"XMAS"  
"SNOWLIGHT"  
"BLIZZARD"  
```
</summary>
	]]

native "SET_WIND_DIRECTION"
    hash "0xEB0F4468467B4528"
	jhash (0x381AEEE9)
	arguments {
		float "direction",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This is NOT a heading. It's a FLOAT value from 0.0-7.0. Look at this image:  
i.imgur.com/FwVpGS6.png  
----------------------------  
This appears to be a heading, in radians (0-2*pi) -PNWParksFan  
```
</summary>
	]]

native "SET_WIND"
    hash "0xAC3A74E8384A9919"
	jhash (0xC6294698)
	arguments {
		float "speed",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets the the raw wind speed value.  
```
</summary>
	]]

native "SET_WIND_SPEED"
    hash "0xEE09ECEDBABE47FC"
	jhash (0x45705F94)
	arguments {
		float "speed",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Using this native will clamp the wind speed value to a range of 0.0- 12.0. Using SET_WIND sets the same value but without the restriction.  
```
</summary>
	]]

native "SHOOT_SINGLE_BULLET_BETWEEN_COORDS"
    hash "0x867654CBC7606F2C"
	jhash (0xCB7415AC)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "damage",
		BOOL "p7",
		Hash "weaponHash",
		Ped "ownerPed",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "speed",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
this is what p7 does in disassembly  
__int8 var = 32;  
if (isInvisible)  
{  
   var = 16;  
}  
int v110 = var | 2 * p7;  
```
</summary>
	]]

native "SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY"
    hash "0xE3A7742E0B7A2F8B"
	jhash (0x52ACCB7B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "damage",
		BOOL "p7",
		Hash "weaponHash",
		Ped "ownerPed",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "speed",
		Entity "entity",
	}
	alias "0xE3A7742E0B7A2F8B"
	alias "_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_PRESET_PARAMS"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
entity - entity to ignore  
```

```
NativeDB Added Parameter 15: Any p14
```
</summary>
	]]

native "SHOULD_USE_METRIC_MEASUREMENTS"
    hash "0xD3D15555431AB793"
	jhash (0xBAF17315)
	alias "0xD3D15555431AB793"
	alias "_IS_GAME_USING_METRIC_MEASUREMENT_SYSTEM"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
Returns true if the game is using the metric measurement system, false if imperial is used.
This is what r\* uses for the different label types (either ones with miles in them or with km, as well as some other measurement related labels).
</summary>
<returns>Returns true if the game is using the metric measurement system, false if imperial is used.</returns>
	]]

native "SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY_NEW"
    hash "0xBFE5756E7407064A"
	jhash (0xCCDC33CC)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "damage",
		BOOL "p7",
		Hash "weaponHash",
		Ped "ownerPed",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "speed",
		Entity "entity",
		BOOL "p14",
		BOOL "p15",
		BOOL "p16",
		BOOL "p17",
	}
	alias "0xBFE5756E7407064A"
	alias "_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Since latest patches has 18 parameters.  
entity - entity to ignore  
```

```
NativeDB Added Parameter 19: Any p18
NativeDB Added Parameter 20: Any p19
```
</summary>
	]]

native "_SHOW_PED_IN_PAUSE_MENU"
    hash "0x4EBB7E87AA0DBED4"
	arguments {
		BOOL "toggle",
	}
	alias "0x4EBB7E87AA0DBED4"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
If toggle is true, the ped's head is shown in the pause menu  
If toggle is false, the ped's head is not shown in the pause menu  
```
</summary>
	]]

native "_START_BENCHMARK_RECORDING"
    hash "0x92790862E36C2ADA"
	alias "0x92790862E36C2ADA"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
I can 100% confirm this is some kind of START_* native.  
Next character in the name is either C, D or E.  
Used only once in the scripts (benchmark.ysc).  
```
</summary>
	]]

native "SLERP_NEAR_QUATERNION"
    hash "0xF2F6A2FA49278625"
	jhash (0x87B92190)
	arguments {
		float "t",
		float "x",
		float "y",
		float "z",
		float "w",
		float "x1",
		float "y1",
		float "z1",
		float "w1",
		floatPtr "outX",
		floatPtr "outY",
		floatPtr "outZ",
		floatPtr "outW",
	}
	alias "0xF2F6A2FA49278625"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "START_SAVE_ARRAY_WITH_SIZE"
    hash "0x60FE567DF1B1AF9D"
	jhash (0x893A342C)
	arguments {
		AnyPtr "p0",
		int "size",
		charPtr "arrayName",
	}
	alias "_START_SAVE_ARRAY"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Second parameter might be length.  
```
</summary>
	]]

native "START_SAVE_STRUCT_WITH_SIZE"
    hash "0xBF737600CDDBEADD"
	jhash (0xFB45728E)
	arguments {
		AnyPtr "p0",
		int "size",
		charPtr "structName",
	}
	alias "_START_SAVE_STRUCT"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Second parameter might be length.  
```
</summary>
	]]

native "START_SAVE_DATA"
    hash "0xA9575F812C6A7997"
	jhash (0x881A694D)
	arguments {
		AnyPtr "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_STOP_BENCHMARK_RECORDING"
    hash "0xC7DB36C24634F52B"
	alias "0xC7DB36C24634F52B"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Begins with STOP_*. Next character in the name is either D or E.
```
</summary>
	]]

native "STOP_SAVE_DATA"
    hash "0x74E20C9145FB66FD"
	jhash (0x3B1C07C8)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "STOP_SAVE_ARRAY"
    hash "0x04456F95153C6BE4"
	jhash (0x0CAD8217)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "STOP_SAVE_STRUCT"
    hash "0xEB1774DF12BB9F12"
	jhash (0xC2624A28)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "TAN"
    hash "0x632106CC96E82E91"
	jhash (0xD320CE5E)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns tangent value of p0.  
```
</summary>
	]]

native "STRING_TO_INT"
    hash "0x5A5F40FE637EB584"
	jhash (0x590A8160)
	arguments {
		charPtr "string",
		intPtr "outInteger",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
```
</summary>
	]]

native "_UI_IS_SINGLEPLAYER_PAUSE_MENU_ACTIVE"
    hash "0xEA2F2061875EED90"
	alias "0xEA2F2061875EED90"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the current frontend menu is FE_MENU_VERSION_SP_PAUSE

U*
```
</summary>
	]]

native "TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME"
    hash "0x9DC711BC69C548DF"
	jhash (0x9F861FD4)
	arguments {
		charPtr "scriptName",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/yLNWicUi  
```
</summary>
	]]

native "UNLOAD_CLOUD_HAT"
    hash "0xA74802FB8D0B7814"
	jhash (0xC9FA6E07)
	arguments {
		charPtr "name",
		float "p1",
	}
	alias "0xA74802FB8D0B7814"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Called 4 times in the b617d scripts:  
GAMEPLAY::_A74802FB8D0B7814("CONTRAILS", 0);  
```
</summary>
	]]

native "UPDATE_ONSCREEN_KEYBOARD"
    hash "0x0CF2B696BBF945AE"
	jhash (0x23D0A1CE)
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Returns the current status of the onscreen keyboard, and updates the output.  
Status Codes:  
0 - User still editing  
1 - User has finished editing  
2 - User has canceled editing  
3 - Keyboard isn't active  
```
</summary>
	]]

native "USING_MISSION_CREATOR"
    hash "0xF14878FC50BEC6EE"
	jhash (0x20AB0B6B)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_USE_FREEMODE_MAP_BEHAVIOR"
    hash "0x9BAE5AD2508DF078"
	jhash (0x721B2492)
	arguments {
		BOOL "toggle",
	}
	alias "_ENABLE_MP_DLC_MAPS"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Formerly known as _LOWER_MAP_PROP_DENSITY and wrongly due to idiots as _ENABLE_MP_DLC_MAPS.  
Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. Does not touch DLC map data at all.  
In fact, I doubt this changes the flag whatsoever, that's the OTHER native idiots use together with this that does so, this one only causes a loading screen to show as it reloads map data.  
------------------------  
While you're going on your rant about other "idiots" can you please supply the name of the "other native" for us "idiots" who'd like to actually learn about loading IPL's? Thank, you.  
```

```
NativeDB Parameter 0: int toggle
```
</summary>
	]]

native "CAN_PHONE_BE_SEEN_ON_SCREEN"
    hash "0xC4E2813898C97A4B"
	jhash (0x5F978584)
	ns "MOBILE"
	returns "BOOL"
	doc [[!
<summary>
```
This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.  
I can confirm the above. This function is hard-coded to always return 1.  
```
</summary>
	]]

native "CELL_CAM_ACTIVATE"
    hash "0xFDE8F069C542D126"
	jhash (0x234C1AE9)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK"
    hash "0x439E9BC95B7E7FBE"
	jhash (0xBEA88097)
	arguments {
		Entity "entity",
	}
	ns "MOBILE"
	returns "BOOL"
	doc [[!
	]]

native "_CELL_CAM_SET_LEAN"
    hash "0x44E44169EF70138E"
	arguments {
		BOOL "toggle",
	}
	alias "_SET_PHONE_LEAN"
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
if the bool "Toggle" is "true" so the phone is lean.  
if the bool "Toggle" is "false" so the phone is not lean.  
```
</summary>
	]]

native "_CELL_CAM_DISABLE_THIS_FRAME"
    hash "0x015C49A93E3E086E"
	jhash (0x4479B304)
	arguments {
		BOOL "toggle",
	}
	alias "0x015C49A93E3E086E"
	alias "_DISABLE_PHONE_THIS_FRAME"
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Disables the phone up-button, oddly enough.   
i.e.: When the phone is out, and this method is called with false as it's parameter, the phone will not be able to scroll up. However, when you use the down arrow key, it's functionality still, works on the phone.   
When the phone is not out, and this method is called with false as it's parameter, you will not be able to bring up the phone. Although the up arrow key still works for whatever functionality it's used for, just not for the phone.  
This can be used for creating menu's when trying to disable the phone from being used.   
You do not have to call the function again with false as a parameter, as soon as the function stops being called, the phone will again be usable.  
```
</summary>
	]]

native "CREATE_MOBILE_PHONE"
    hash "0xA4E8E696C532FBC7"
	jhash (0x5BBC5E23)
	arguments {
		int "phoneType",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Creates a mobile phone of the specified type.  
Possible phone types:  
0 - Default phone / Michael's phone  
1 - Trevor's phone  
2 - Franklin's phone  
4 - Prologue phone  
These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.  
```
</summary>
	]]

native "_CELL_CAM_MOVE_FINGER"
    hash "0x95C9E72F3D7DEC9B"
	arguments {
		int "direction",
	}
	alias "_MOVE_FINGER"
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
For move the finger of player, the value of int goes 1 at 5.  
```
</summary>
	]]

native "GET_MOBILE_PHONE_RENDER_ID"
    hash "0xB4A53E05F68B6FA1"
	jhash (0x88E4FECE)
	arguments {
		intPtr "renderId",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "DESTROY_MOBILE_PHONE"
    hash "0x3BC861DF703E5097"
	jhash (0x1A65037B)
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Destroys the currently active mobile phone.  
```
</summary>
	]]

native "0x15E69E2802C24B8D"
    hash "0x15E69E2802C24B8D"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "GET_MOBILE_PHONE_POSITION"
    hash "0x584FDFDA48805B86"
	jhash (0xB2E1E1A0)
	arguments {
		Vector3Ptr "position",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x1B0B4AEED5B9B41C"
    hash "0x1B0B4AEED5B9B41C"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "GET_MOBILE_PHONE_ROTATION"
    hash "0x1CEFB61F193070AE"
	jhash (0x17A29F23)
	arguments {
		Vector3Ptr "rotation",
		Vehicle "p1",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x466DA42C89865553"
    hash "0x466DA42C89865553"
	jhash (0x66DCD9D2)
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xAC2890471901861C"
    hash "0xAC2890471901861C"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x3117D84EFA60F77B"
    hash "0x3117D84EFA60F77B"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xD6ADE981781FCA09"
    hash "0xD6ADE981781FCA09"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x53F4892D18EC90A4"
    hash "0x53F4892D18EC90A4"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xF1E22DC13F5EEBAD"
    hash "0xF1E22DC13F5EEBAD"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xA2CCBE62CD4C91A4"
    hash "0xA2CCBE62CD4C91A4"
	jhash (0xC273BB4D)
	arguments {
		intPtr "toggle",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Needs more research. If the "phone_cam12" filter is applied, this function is called with "TRUE"; otherwise, "FALSE".  
Example (XBOX 360):  
// check current filter selection  
if (GAMEPLAY::ARE_STRINGS_EQUAL(getElem(g_2471024, &l_17, 4), "phone_cam12") != 0)  
{  
    MOBILE::_0xC273BB4D(0); // FALSE  
}  
else  
{  
    MOBILE::_0xC273BB4D(1); // TRUE  
}  
```
</summary>
	]]

native "_NET_GAMESERVER_CATALOG_ITEM_EXISTS"
    hash "0xBD4D7EAF8A30F637"
	arguments {
		charPtr "name",
	}
	alias "0xBD4D7EAF8A30F637"
	alias "_NETWORK_SHOP_IS_ITEM_UNLOCKED"
	alias "_NETWORK_SHOP_DOES_ITEM_EXIST"
	ns "MOBILE"
	returns "BOOL"
	doc [[!
<summary>
```
Belongs in UNK3, non-hashed version of 0x247F0F73A182EA0B  
```
</summary>
	]]

native "SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN"
    hash "0xF511F759238A5122"
	jhash (0x29828690)
	arguments {
		BOOL "toggle",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
If bool Toggle = true so the mobile is hide to screen.  
If bool Toggle = false so the mobile is show to screen.  
```
</summary>
	]]

native "_NET_GAMESERVER_CATALOG_ITEM_EXISTS_HASH"
    hash "0x247F0F73A182EA0B"
	arguments {
		Hash "hash",
	}
	alias "0x247F0F73A182EA0B"
	alias "_NETWORK_SHOP_IS_ITEM_UNLOCKED_HASH"
	alias "_NETWORK_SHOP_DOES_ITEM_EXIST_HASH"
	ns "MOBILE"
	returns "BOOL"
	doc [[!
<summary>
```
ex.:  
v_15 = sub_10cc8(VEHICLE::GET_VEHICLE_WHEEL_TYPE(a_2));  
if (!MOBILE::_247F0F73A182EA0B(v_15)) {  
    return 1;  
}  
Belongs in UNK3, hashed version of 0xBD4D7EAF8A30F637  
```
</summary>
	]]

native "SET_MOBILE_PHONE_POSITION"
    hash "0x693A5C6D6734085B"
	jhash (0x841800B3)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "SET_MOBILE_PHONE_SCALE"
    hash "0xCBDD322A73D6D932"
	jhash (0x09BCF1BE)
	arguments {
		float "scale",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.  
```
</summary>
	]]

native "SET_MOBILE_PHONE_ROTATION"
    hash "0xBB779C0CA917E865"
	jhash (0x209C28CF)
	arguments {
		float "rotX",
		float "rotY",
		float "rotZ",
		Any "p3",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Last parameter is unknown and always zero.  
```
</summary>
	]]

native "_SET_MOBILE_PHONE_UNK"
    hash "0x375A706A5C2FD084"
	arguments {
		BOOL "toggle",
	}
	alias "0x375A706A5C2FD084"
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "_CAN_PAY_GOON"
    hash "0x9777734DAD16992F"
	alias "0x9777734DAD16992F"
	ns "NETCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Added Parameter 1: int p0
NativeDB Added Parameter 2: int p1
NativeDB Added Parameter 3: int amount
NativeDB Added Parameter 4: int* p3
```
</summary>
	]]

native "0x05F04155A226FBBF"
    hash "0x05F04155A226FBBF"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x0035BB914316F1E3"
    hash "0x0035BB914316F1E3"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x0CB1BE0633C024A8"
    hash "0x0CB1BE0633C024A8"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x08B0CA7A6AB3AC32"
    hash "0x08B0CA7A6AB3AC32"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x0D30EB83668E63C5"
    hash "0x0D30EB83668E63C5"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x0FE8E1FCD2B86B33"
    hash "0x0FE8E1FCD2B86B33"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x112209CE0290C03A"
    hash "0x112209CE0290C03A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x2AFC2D19B50797F2"
    hash "0x2AFC2D19B50797F2"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x2FAB6614CE22E196"
    hash "0x2FAB6614CE22E196"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x4128464231E3CA0B"
    hash "0x4128464231E3CA0B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x55A1E095DB052FA5"
    hash "0x55A1E095DB052FA5"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x5BCDE0F640C773D2"
    hash "0x5BCDE0F640C773D2"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x675D19C6067CAE08"
    hash "0x675D19C6067CAE08"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x5F456788B05FAEAC"
    hash "0x5F456788B05FAEAC"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x6FD97159FE3C971A"
    hash "0x6FD97159FE3C971A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x69EF772B192614C1"
    hash "0x69EF772B192614C1"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x84C0116D012E8FC2"
    hash "0x84C0116D012E8FC2"
	arguments {
		Any "p0",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x8E243837643D9583"
    hash "0x8E243837643D9583"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0x998E18CEB44487FC"
    hash "0x998E18CEB44487FC"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xA51B086B0B2C0F7A"
    hash "0xA51B086B0B2C0F7A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xA75CCF58A60A5FD1"
    hash "0xA75CCF58A60A5FD1"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xA95F667A755725DA"
    hash "0xA95F667A755725DA"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xB49ECA122467D05F"
    hash "0xB49ECA122467D05F"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xB4C2EC463672474E"
    hash "0xB4C2EC463672474E"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xCDA1C62BE2777802"
    hash "0xCDA1C62BE2777802"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xBD0EFB25CCA8F97A"
    hash "0xBD0EFB25CCA8F97A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xD7CCCBA28C4ECAF0"
    hash "0xD7CCCBA28C4ECAF0"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xE23ADC6FCB1F29AE"
    hash "0xE23ADC6FCB1F29AE"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xDBC966A01C02BCA7"
    hash "0xDBC966A01C02BCA7"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xE8B0B270B6E7C76E"
    hash "0xE8B0B270B6E7C76E"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xED5FD7AF10F5E262"
    hash "0xED5FD7AF10F5E262"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xFA07759E6FDDD7CF"
    hash "0xFA07759E6FDDD7CF"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "0xFC4EE00A7B3BFB76"
    hash "0xFC4EE00A7B3BFB76"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_BUY_CONTRABAND"
    hash "0x30FD873ECE50E9F6"
	arguments {
		int "p0",
		int "p1",
		Any "p2",
		BOOL "p3",
		BOOL "p4",
	}
	alias "0x30FD873ECE50E9F6"
	ns "NETCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 2: Hash p2
```
</summary>
	]]

native "_NETWORK_EARN_FROM_BUSINESS_PRODUCT"
    hash "0x8586789730B10CAF"
	arguments {
		int "amount",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0x8586789730B10CAF"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_CONTRABAND"
    hash "0xECA658CE2A4E5A72"
	arguments {
		int "amount",
		Any "p1",
	}
	alias "0xECA658CE2A4E5A72"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_PREMIUM_JOB"
    hash "0xC8407624CEF2354B"
	arguments {
		int "amount",
		charPtr "p1",
	}
	alias "0xC8407624CEF2354B"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_VEHICLE_EXPORT"
    hash "0xEDEAD9A91EC768B3"
	arguments {
		int "amount",
		Any "p1",
		Any "p2",
	}
	alias "0xEDEAD9A91EC768B3"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_SELL_BUNKER"
    hash "0x9251B6ABF2D0A5B4"
	arguments {
		int "amount",
		Any "bunkerHash",
	}
	alias "0x9251B6ABF2D0A5B4"
	ns "NETCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 1: Hash bunkerHash
```
</summary>
	]]

native "_NETWORK_MANUAL_DELETE_CHARACTER"
    hash "0x821418C727FCACD7"
	arguments {
		int "characterSlot",
	}
	alias "0x821418C727FCACD7"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_WAREHOUSE"
    hash "0x3E4ADAFF1830F146"
	alias "0x3E4ADAFF1830F146"
	ns "NETCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 1: int amount
NativeDB Added Parameter 2: int id
```
</summary>
	]]

native "_NETWORK_SPENT_BOSS"
    hash "0xFFBE02CD385356BD"
	alias "0xFFBE02CD385356BD"
	ns "NETCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Added Parameter 1: int amount
NativeDB Added Parameter 2: BOOL p1
NativeDB Added Parameter 3: BOOL p2
```
</summary>
	]]

native "_NETWORK_SPENT_BALLISTIC_EQUIPMENT"
    hash "0x5D97630A8A0EF123"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x5D97630A8A0EF123"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_BUY_TRUCK"
    hash "0xAC272C0AE01B4BD8"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0xAC272C0AE01B4BD8"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_BUY_BUNKER"
    hash "0x12D148D26538D0F9"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0x12D148D26538D0F9"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_IMPORT_EXPORT_REPAIR"
    hash "0xC1952F3773BA18FE"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	alias "0xC1952F3773BA18FE"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_MOVE_YACHT"
    hash "0xE7DF4E0545DFB56E"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0xE7DF4E0545DFB56E"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_PAY_GOON"
    hash "0x08A1B82B91900682"
	arguments {
		int "p0",
		int "p1",
		int "amount",
	}
	alias "0x08A1B82B91900682"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_PURCHASE_WAREHOUSE"
    hash "0x33981D6804E62F49"
	arguments {
		int "amount",
		Any "data",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x33981D6804E62F49"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_UPGRADE_TRUCK"
    hash "0x365E877C61D6988B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0x365E877C61D6988B"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_UPGRADE_BUNKER"
    hash "0x0C82D21A77C22D49"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0x0C82D21A77C22D49"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_VIP_UTILITY_CHARGES"
    hash "0x5182A339A3474510"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	alias "0x5182A339A3474510"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_WAGER"
    hash "0xD99DB210089617FE"
	arguments {
		Any "p0",
		Any "p1",
		int "amount",
	}
	alias "0xD99DB210089617FE"
	ns "NETCASH"
	returns "void"
	doc [[!
	]]

native "_GET_ONLINE_VERSION"
    hash "0xFCA9373EF340AC0A"
	alias "_GET_GAME_VERSION"
	ns "NETSHOP"
	returns "charPtr"
	doc [[!
<summary>
```
Online version is defined here: update\update.rpf\common\data\version.txt  
Example:  
[ONLINE_VERSION_NUMBER]  
1.33  
_GET_ONLINE_VERSION() will return "1.33"  
Belongs in NETWORK  
```
</summary>
	]]

native "0x0395CB47B022E62C"
    hash "0x0395CB47B022E62C"
	arguments {
		AnyPtr "p0",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: int* p0
```
</summary>
	]]

native "0x170910093218C8B9"
    hash "0x170910093218C8B9"
	arguments {
		AnyPtr "p0",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: int* p0
```
</summary>
	]]

native "0x357B152EF96C30B6"
    hash "0x357B152EF96C30B6"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x72EB7BA9B69BF6AB"
    hash "0x72EB7BA9B69BF6AB"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x613F125BA3BD2EB9"
    hash "0x613F125BA3BD2EB9"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x79EDAC677CA62F81"
    hash "0x79EDAC677CA62F81"
	arguments {
		int "transactionId",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NET_GAMESERVER_*

Checks if the transaction status is equal to 3.

NativeDB Introduced: v1365
```
</summary>
<param name="transactionId">:</param>
	]]

native "0x74A0FD0688F1EE45"
    hash "0x74A0FD0688F1EE45"
	arguments {
		int "p0",
	}
	ns "NETSHOP"
	returns "int"
	doc [[!
<summary>
```
NET_GAMESERVER_*
```
</summary>
	]]

native "0xC13C38E47EA5DF31"
    hash "0xC13C38E47EA5DF31"
	arguments {
		AnyPtr "p0",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: int* p0
```
</summary>
	]]

native "0x85F6C9ABA1DE2BCF"
    hash "0x85F6C9ABA1DE2BCF"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0xE3E5A7C64CA2C6ED"
    hash "0xE3E5A7C64CA2C6ED"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0xE547E9114277098F"
    hash "0xE547E9114277098F"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0xC830417D630A50F9"
    hash "0xC830417D630A50F9"
	arguments {
		int "transactionId",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NET_GAMESERVER_*

Checks if the transaction status is equal to 1.

NativeDB Introduced: v1365
```
</summary>
<param name="transactionId">:</param>
	]]

native "_NET_GAMESERVER_BASKET_DELETE"
    hash "0xFA336E7F40C0A0D0"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Introduced: v372
```
</summary>
	]]

native "_NET_GAMESERVER_BASKET_ADD_ITEM"
    hash "0xF30980718C8ED876"
	arguments {
		AnyPtr "itemData",
		int "quantity",
	}
	alias "0xF30980718C8ED876"
	alias "_NETWORK_SHOP_BASKET_ADD_ITEM"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
p0 is pointer to a script array  
```
</summary>
	]]

native "_NET_GAMESERVER_BASKET_IS_FULL"
    hash "0x27F76CC6C55AD30E"
	alias "0x27F76CC6C55AD30E"
	alias "_NETWORK_SHOP_BASKET_IS_FULL"
	ns "NETSHOP"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "_NET_GAMESERVER_BASKET_APPLY_SERVER_DATA"
    hash "0xE1A0450ED46A7812"
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	alias "0xE1A0450ED46A7812"
	alias "_NETWORK_SHOP_BASKET_APPLY_SERVER_DATA"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
p0 => unk3::_network_shop_basket_apply_server_data(Global_2590199[iParam0 /*76*/], &uVar6); => script array  
```
</summary>
	]]

native "_NET_GAMESERVER_BASKET_END"
    hash "0xA65568121DF2EA26"
	alias "0xA65568121DF2EA26"
	alias "_NETWORK_SHOP_BASKET_END"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_BASKET_START"
    hash "0x279F08B1A4B29B7E"
	arguments {
		AnyPtr "transactionId",
		int "categoryHash",
		int "actionHash",
		int "flags",
	}
	alias "_NETWORK_SHOP_BASKET_START"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: int* transactionId
NativeDB Parameter 1: Hash categoryHash
NativeDB Parameter 2: Hash actionHash
```
</summary>
	]]

native "_NET_GAMESERVER_CATALOG_IS_READY"
    hash "0x3C4487461E9B0DCB"
	alias "0x3C4487461E9B0DCB"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_BEGIN_SERVICE"
    hash "0x3C5FD37B5499582E"
	arguments {
		intPtr "transactionId",
		Hash "categoryHash",
		Hash "itemHash",
		int "actionTypeHash",
		int "value",
		int "flags",
	}
	alias "0x3C5FD37B5499582E"
	alias "_NETWORK_SHOP_BEGIN_SERVICE"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
No longer works if you hook it as a stealth money method  
Modes------------------  
1: Wallet  
2: Bank  
4: Bank  
8: Wallet  
Only difference I noticed.  
```

```
NativeDB Parameter 3: Hash actionTypeHash
```
</summary>
	]]

native "_NET_GAMESERVER_DELETE_CHARACTER_SLOT"
    hash "0x51F1A8E48C3D2F6D"
	arguments {
		int "slot",
		BOOL "transfer",
		Any "reason",
	}
	alias "0x51F1A8E48C3D2F6D"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 2: Hash reason
```
</summary>
	]]

native "_NET_GAMESERVER_CHECKOUT_START"
    hash "0x39BE7CEA8D9CC8E6"
	arguments {
		int "transactionId",
	}
	alias "0x39BE7CEA8D9CC8E6"
	alias "_NETWORK_SHOP_CHECKOUT_START"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_DELETE_SET_TELEMETRY_NONCE_SEED"
    hash "0x112CEF1615A1139F"
	alias "0x112CEF1615A1139F"
	alias "_NETWORK_SHOP_DELETE_SET_TELEMETRY_NONCE_SEED"
	ns "NETSHOP"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "_NET_GAMESERVER_DELETE_CHARACTER_SLOT_GET_STATUS"
    hash "0x0A6D923DFFC9BD89"
	alias "0x0A6D923DFFC9BD89"
	ns "NETSHOP"
	returns "int"
	doc [[!
	]]

native "_NET_GAMESERVER_GET_BALANCE"
    hash "0x35A1B3E1D1315CFA"
	arguments {
		BOOL "inventory",
		BOOL "playerbalance",
	}
	alias "0x35A1B3E1D1315CFA"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
Note: only one of the arguments can be set to true at a time
```
</summary>
	]]

native "_NET_GAMESERVER_END_SERVICE"
    hash "0xE2A99A9B524BEFFF"
	arguments {
		int "transactionId",
	}
	alias "0xE2A99A9B524BEFFF"
	alias "_NETWORK_SHOP_END_SERVICE"
	alias "_NETWORK_SHOP_TERMINATE_SERVICE"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
Will cancel the transaction  
```
</summary>
	]]

native "_NET_GAMESERVER_GET_CATALOG_STATE"
    hash "0xCF38DAFBB49EDE5E"
	arguments {
		AnyPtr "state",
	}
	alias "0xCF38DAFBB49EDE5E"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: int* state
```
</summary>
	]]

native "_NET_GAMESERVER_GET_PRICE"
    hash "0xC27009422FCCA88D"
	arguments {
		Hash "itemHash",
		Hash "categoryHash",
		BOOL "p2",
	}
	alias "_NETWORK_SHOP_GET_PRICE"
	ns "NETSHOP"
	returns "int"
	doc [[!
<summary>
```
bool is always true in game scripts  
```
</summary>
	]]

native "_NET_GAMESERVER_IS_CATALOG_VALID"
    hash "0x2B949A1E6AEC8F6A"
	alias "0x2B949A1E6AEC8F6A"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_GET_TRANSACTION_MANAGER_DATA"
    hash "0x897433D292B44130"
	arguments {
		AnyPtr "p0",
		BOOLPtr "p1",
	}
	alias "0x897433D292B44130"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: int* p0
```
</summary>
	]]

native "_NET_GAMESERVER_IS_SESSION_REFRESH_PENDING"
    hash "0x810E8431C0614BF9"
	alias "0x810E8431C0614BF9"
	alias "_NETWORK_SHOP_GET_TRANSACTIONS_DISABLED"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_IS_SESSION_VALID"
    hash "0xB24F0944DA203D9E"
	arguments {
		int "charSlot",
	}
	alias "0xB24F0944DA203D9E"
	alias "_NETWORK_SHOP_GET_TRANSACTIONS_ENABLED_FOR_CHARACTER"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_SESSION_APPLY_RECEIVED_DATA"
    hash "0x2F41D51BA3BCD1F1"
	arguments {
		int "charSlot",
	}
	alias "0x2F41D51BA3BCD1F1"
	alias "_NETWORK_SHOP_SESSION_APPLY_RECEIVED_DATA"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_SET_TELEMETRY_NONCE_SEED"
    hash "0x9507D4271988E1AE"
	arguments {
		int "p0",
	}
	alias "0x9507D4271988E1AE"
	alias "_NETWORK_SHOP_SET_TELEMETRY_NONCE_SEED"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_START_SESSION"
    hash "0xA135AC892A58FC07"
	arguments {
		int "charSlot",
	}
	alias "0xA135AC892A58FC07"
	alias "_NETWORK_SHOP_START_SESSION"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NET_GAMESERVER_TRANSFER_BANK_TO_WALLET"
    hash "0xD47A2C1BA117471D"
	arguments {
		int "charSlot",
		int "amount",
	}
	alias "0xD47A2C1BA117471D"
	alias "_NETWORK_TRANSFER_BANK_TO_WALLET"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
used in atm_trigger script.  
usage:  
int iVar0;STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
UNK3::_NETWORK_TRANSFER_WALLET_TO_BANK(iVar0, amount);  
used to deposit money into bank from wallet, shows up in transaction log.  
```
</summary>
	]]

native "_NET_GAMESERVER_TRANSFER_CASH_GET_STATUS_2"
    hash "0x350AA5EBC03D3BD2"
	alias "0x350AA5EBC03D3BD2"
	ns "NETSHOP"
	returns "int"
	doc [[!
<summary>
```
Same as 0x23789E777D14CE44
```
</summary>
	]]

native "_NET_GAMESERVER_TRANSFER_CASH_GET_STATUS"
    hash "0x23789E777D14CE44"
	alias "0x23789E777D14CE44"
	ns "NETSHOP"
	returns "int"
	doc [[!
<summary>
```
Same as 0x350AA5EBC03D3BD2
```
</summary>
	]]

native "_NET_GAMESERVER_TRANSFER_CASH_SET_TELEMETRY_NONCE_SEED"
    hash "0x498C1E05CE5F7877"
	alias "0x498C1E05CE5F7877"
	alias "_NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
```
</summary>
	]]

native "_NET_GAMESERVER_TRANSFER_WALLET_TO_BANK"
    hash "0xC2F7FE5309181C7D"
	arguments {
		int "charSlot",
		int "amount",
	}
	alias "0xC2F7FE5309181C7D"
	alias "_NETWORK_TRANSFER_WALLET_TO_BANK"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
used in atm_trigger script.  
usage:  
int iVar0; STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
UNK3::_NETWORK_TRANSFER_BANK_TO_WALLET(iVar0, amount);  
used to withdraw money from bank into wallet, shows up in transaction log.  
```
</summary>
	]]

native "_NET_GAMESERVER_USE_SERVER_TRANSACTIONS"
    hash "0x7D2708796355B20B"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
	]]

native "DEPOSIT_VC"
    hash "0xE260E0BB9CD995AC"
	jhash (0x8F266745)
	arguments {
		int "amount",
	}
	alias "0xE260E0BB9CD995AC"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
Does nothing and always returns false.
```
</summary>
	]]

native "0x0B39CF0D53F1C883"
    hash "0x0B39CF0D53F1C883"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0x08E8EEADFD0DC4A0"
    hash "0x08E8EEADFD0DC4A0"
	jhash (0x03461981)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
Returns false if amount > wallet balance or daily transfer limit has been hit.

NativeDB Introduced: v323
```
</summary>
<param name="amount">:</param>
	]]

native "0x11B0A20C493F7E36"
    hash "0x11B0A20C493F7E36"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0x1DC9B749E7AE282B"
    hash "0x1DC9B749E7AE282B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "0x1FDA0AA679C9919B"
    hash "0x1FDA0AA679C9919B"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0x226C284C830D0CA8"
    hash "0x226C284C830D0CA8"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "0x2A7CEC72C3443BCC"
    hash "0x2A7CEC72C3443BCC"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0x2A93C46AAB1EACC9"
    hash "0x2A93C46AAB1EACC9"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "0x31BA138F6304FB9F"
    hash "0x31BA138F6304FB9F"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x42FCE14F50F27291"
    hash "0x42FCE14F50F27291"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0x65482BFD0923C8A1"
    hash "0x65482BFD0923C8A1"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
	]]

native "0x6B7E4FB50D5F3D65"
    hash "0x6B7E4FB50D5F3D65"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
	]]

native "0x6FCF8DDEA146C45B"
    hash "0x6FCF8DDEA146C45B"
	jhash (0xB96C7ABE)
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 1. Крч какая-то хуйня.  
```
</summary>
	]]

native "0x7C4FCCD2E4DEB394"
    hash "0x7C4FCCD2E4DEB394"
	jhash (0x468CC978)
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
Used for cash gifts  
```
</summary>
	]]

native "0x9B5016A6433A68C5"
    hash "0x9B5016A6433A68C5"
	jhash (0xBD64F1B7)
	ns "NETWORKCASH"
	returns "Any"
	doc [[!
<summary>
```
Hardcoded to return 0.

NativeDB Introduced: v323
```
</summary>
	]]

native "0x9D4FDBB035229669"
    hash "0x9D4FDBB035229669"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0xA75EAC69F59E96E7"
    hash "0xA75EAC69F59E96E7"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0xC5156361F26E2212"
    hash "0xC5156361F26E2212"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0xB4DEAE67F35E2ACD"
    hash "0xB4DEAE67F35E2ACD"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0xC6E74CF8C884C880"
    hash "0xC6E74CF8C884C880"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
<param name="p6">:</param>
	]]

native "0xD20D79671A598594"
    hash "0xD20D79671A598594"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0xCD0F5B5D932AE473"
    hash "0xCD0F5B5D932AE473"
	jhash (0xC4CD928D)
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Does nothing (it's a nullsub).

NativeDB Introduced: v323
```
</summary>
	]]

native "0xE0F82D68C7039158"
    hash "0xE0F82D68C7039158"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0xE154B48B68EF72BC"
    hash "0xE154B48B68EF72BC"
	jhash (0x531E4892)
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0xF6B170F9A02E9E87"
    hash "0xF6B170F9A02E9E87"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "0xED76D195E6E3BF7F"
    hash "0xED76D195E6E3BF7F"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "0xFFFBA1B1F7C0B6F4"
    hash "0xFFFBA1B1F7C0B6F4"
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
	]]

native "NETWORK_BUY_BACKUP_GANG"
    hash "0xA3EDDAA42411D3B9"
	jhash (0x2AD2EC51)
	arguments {
		int "p0",
		int "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_BUY_AIRSTRIKE"
    hash "0x763B4BD305338F19"
	jhash (0x40470683)
	arguments {
		int "cost",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
p1 = 0 (always)  
p2 = 1 (always)  
```
</summary>
	]]

native "NETWORK_BUY_BOUNTY"
    hash "0x7B718E197453F2D9"
	jhash (0xCB89CBE0)
	arguments {
		int "amount",
		Player "victim",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
p1 is just an assumption. p2 was false and p3 was true.  
```
</summary>
	]]

native "NETWORK_BUY_FAIRGROUND_RIDE"
    hash "0x8A7B3952DD64D2B5"
	jhash (0xD9622D64)
	arguments {
		int "amountSpent",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x8A7B3952DD64D2B5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.  
The last 3 parameters are,   
2,0,1 in the am_ferriswheel.c  
1,0,1 in the am_rollercoaster.c  
```
</summary>
	]]

native "NETWORK_BUY_HEALTHCARE"
    hash "0xD9B067E55253E3DD"
	jhash (0x832150E5)
	arguments {
		int "cost",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_BUY_HELI_STRIKE"
    hash "0x81AA4610E3FD3A69"
	jhash (0x047547D4)
	arguments {
		int "cost",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
p1 = 0 (always)  
p2 = 1 (always)  
```
</summary>
	]]

native "NETWORK_BUY_ITEM"
    hash "0xF0077C797F66A355"
	jhash (0xA07B6368)
	arguments {
		int "amount",
		Hash "item",
		Any "p2",
		Any "p3",
		BOOL "p4",
		charPtr "item_name",
		Any "p6",
		Any "p7",
		Any "p8",
		BOOL "p9",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_BUY_LOTTERY_TICKET"
    hash "0xD987F2489969668C"
	jhash (0xF64DF4CF)
	arguments {
		int "p0",
		int "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_BUY_PROPERTY"
    hash "0x650A08A280870AF6"
	jhash (0x7D479AAB)
	arguments {
		float "propertyCost",
		Hash "propertyName",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: int propertyCost
```
</summary>
	]]

native "NETWORK_BUY_SMOKES"
    hash "0x75AF80E61248EEBD"
	jhash (0xC0AB03EB)
	arguments {
		int "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "NETWORK_CAN_BET"
    hash "0x3A54E33660DED67F"
	jhash (0xE3802533)
	arguments {
		int "amount",
	}
	alias "0x3A54E33660DED67F"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_BUY_LOTTERY_TICKET"
    hash "0xC62DD18375C99130"
	jhash (0x334B9364)
	arguments {
		int "cost",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="cost">:</param>
	]]

native "NETWORK_CAN_RECEIVE_PLAYER_CASH"
    hash "0x5D17BE59D2123284"
	jhash (0x41F5F10E)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_SHARE_JOB_CASH"
    hash "0x1C2473301B1C66BA"
	jhash (0xA27B9FE8)
	alias "0x1C2473301B1C66BA"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_CAN_R??? or NETWORK_CAN_S???  
```
</summary>
	]]

native "NETWORK_CAN_SPEND_MONEY"
    hash "0xAB3CAA6B422164DA"
	jhash (0x5AA379D9)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		Any "p4",
	}
	alias "0xAB3CAA6B422164DA"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Added Parameter 6: Any p5
```
</summary>
	]]

native "_NETWORK_CAN_SPEND_MONEY_2"
    hash "0x7303E27CC6532080"
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		AnyPtr "p4",
		Any "p5",
	}
	alias "0x7303E27CC6532080"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_CAN_R??? or NETWORK_CAN_S???  
```

```
NativeDB Added Parameter 7: Any p6
```
</summary>
	]]

native "NETWORK_CLEAR_CHARACTER_WALLET"
    hash "0xA921DED15FDF28F5"
	jhash (0x19F0C471)
	arguments {
		int "characterSlot",
	}
	alias "0xA921DED15FDF28F5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_DEDUCT_CASH"
    hash "0x18B7AE224B087E26"
	arguments {
		int "amount",
		charPtr "p1",
		charPtr "p2",
		BOOL "p3",
		BOOL "p4",
		BOOL "p5",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
<param name="p4">:</param>
<param name="p5">:</param>
	]]

native "NETWORK_DELETE_CHARACTER"
    hash "0x05A50AF38947EB8D"
	jhash (0xA9F7E9C3)
	arguments {
		int "characterSlot",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);  
```
</summary>
	]]

native "NETWORK_EARN_FROM_AI_TARGET_KILL"
    hash "0x515B4A22E4D3C6D7"
	jhash (0x866004A8)
	arguments {
		Any "p0",
		Any "p1",
	}
	alias "0x515B4A22E4D3C6D7"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
DSPORT  
```
</summary>
	]]

native "NETWORK_EARN_FROM_AMBIENT_JOB"
    hash "0xFB6DB092FBAE29E6"
	jhash (0xA14CC95D)
	arguments {
		int "p0",
		charPtr "p1",
		AnyPtr "p2",
	}
	alias "0xFB6DB092FBAE29E6"
	alias "_NETWORK_EARN_FROM_AMBIENT_JOB"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Example for p1: "AM_DISTRACT_COPS"  
```
</summary>
	]]

native "_NETWORK_EARN_FROM_ARENA_CAREER_PROGRESSION"
    hash "0x0F99F70C61F14619"
	arguments {
		int "amount",
		Any "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
	]]

native "_NETWORK_EARN_FROM_ARENA_SKILL_LEVEL_PROGRESSION"
    hash "0xE08256F972C7BB2C"
	arguments {
		int "amount",
		Any "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
	]]

native "_NETWORK_EARN_FROM_ARENA_WAR"
    hash "0x631F1CB8FB4130AA"
	arguments {
		int "amount",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_EARN_FROM_ARMOUR_TRUCK"
    hash "0xF514621E8EA463D0"
	jhash (0x30B3EC0A)
	arguments {
		int "amount",
	}
	alias "0xF514621E8EA463D0"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
For the money bags that drop a max of $40,000. Often called 40k bags.  
Most likely NETWORK_EARN_FROM_ROB***  
MONEY_EARN_JOBS  
```
</summary>
	]]

native "_NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED"
    hash "0xFA700D8A9905F78A"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
	]]

native "_NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED_2"
    hash "0x5E7AE8AABE8B7C0D"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
	]]

native "_NETWORK_EARN_FROM_BB_EVENT_CARGO"
    hash "0xA82959062361B259"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
	]]

native "_NETWORK_EARN_FROM_BB_EVENT_BONUS"
    hash "0xFDD8D2440DAF1590"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
	]]

native "NETWORK_EARN_FROM_BOUNTY"
    hash "0x131BB5DA15453ACF"
	jhash (0x127F2DAE)
	arguments {
		int "amount",
		intPtr "networkHandle",
		AnyPtr "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_CASHING_OUT"
    hash "0xEFE9C9A1651B81E6"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
	]]

native "NETWORK_EARN_FROM_BEND_JOB"
    hash "0x61326EE6DF15B0CA"
	jhash (0xBB293400)
	arguments {
		int "amount",
		charPtr "heistHash",
	}
	alias "0x61326EE6DF15B0CA"
	alias "NETWORK_EARN_FROM_MISSION_H"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
=============================================================  
lackos; 2017.03.12  
```
</summary>
	]]

native "NETWORK_EARN_FROM_CRATE_DROP"
    hash "0xB1CC1B9EC3007A2A"
	jhash (0xEAF04923)
	arguments {
		int "amount",
	}
	alias "0xB1CC1B9EC3007A2A"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_BETTING"
    hash "0x827A5BA1A44ACA6D"
	jhash (0xA0F7F07C)
	arguments {
		int "amount",
		charPtr "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_DAR_CHALLENGE"
    hash "0xCAC672087B4A24AB"
	arguments {
		int "amount",
		Any "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
	]]

native "NETWORK_EARN_FROM_CHALLENGE_WIN"
    hash "0x2B171E6B2F64D8DF"
	jhash (0x2BEFB6C4)
	arguments {
		Any "p0",
		AnyPtr "p1",
		BOOL "p2",
	}
	alias "0x2B171E6B2F64D8DF"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_GANG_PICKUP"
    hash "0xA03D4ACE0A3284CE"
	jhash (0x33C20BC4)
	arguments {
		int "amount",
	}
	alias "0xA03D4ACE0A3284CE"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
MONEY_EARN_PICKED_UP  
```
</summary>
	]]

native "NETWORK_EARN_FROM_DAILY_OBJECTIVES"
    hash "0x6EA318C91C1A8786"
	jhash (0xAB6BD72F)
	arguments {
		int "p0",
		charPtr "p1",
		int "p2",
	}
	alias "0x6EA318C91C1A8786"
	alias "_NETWORK_EARN_FROM_DAILY_OBJECTIVE"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_DOOMSDAY_FINALE_BONUS"
    hash "0x128A747F4A230952"
	arguments {
		int "amount",
		Hash "vehicleHash",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="vehicleHash">:</param>
	]]

native "_NETWORK_EARN_FROM_GANGOPS_JOBS_FINALE"
    hash "0x1C121FC9545E0D52"
	arguments {
		int "amount",
		charPtr "unk",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="unk">:</param>
	]]

native "_NETWORK_EARN_FROM_GANGOPS_AWARDS"
    hash "0xA9A31475F530DFDA"
	arguments {
		int "amount",
		charPtr "unk",
		Any "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="unk">:</param>
<param name="p2">:</param>
	]]

native "_NETWORK_EARN_FROM_GANGOPS_JOBS_PREP_PARTICIPATION"
    hash "0xED26584F6BDCBBFD"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
	]]

native "_NETWORK_EARN_FROM_GANGOPS_ELITE"
    hash "0x2597A0D4A4FC2C77"
	arguments {
		int "amount",
		charPtr "unk",
		int "actIndex",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="unk">:</param>
<param name="actIndex">:</param>
	]]

native "_NETWORK_EARN_FROM_GANGOPS_WAGES"
    hash "0x2DCB19ABAB0380A8"
	arguments {
		int "amount",
		int "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
	]]

native "_NETWORK_EARN_FROM_HACKER_TRUCK_MISSION"
    hash "0xE8815FE993896AD3"
	arguments {
		Any "p0",
		int "amount",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="p0">:</param>
<param name="amount">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_EARN_FROM_GANGOPS_JOBS_SETUP"
    hash "0xA9160796D47A2CF8"
	arguments {
		int "amount",
		charPtr "unk",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="unk">:</param>
	]]

native "NETWORK_EARN_FROM_HOLDUPS"
    hash "0x45B8154E077D9E4D"
	jhash (0xE6B90E9C)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_GANGOPS_WAGES_BONUS"
    hash "0x15BB2A5C757EB91F"
	arguments {
		int "amount",
		int "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
	]]

native "NETWORK_EARN_FROM_IMPORT_EXPORT"
    hash "0xF92A014A634442D6"
	jhash (0xF11FC458)
	arguments {
		int "amount",
		Any "modelHash",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 1: Hash modelHash
```
</summary>
	]]

native "NETWORK_EARN_FROM_JOB"
    hash "0xB2CC4836834E8A98"
	jhash (0x0B6997FC)
	arguments {
		int "amount",
		charPtr "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_NOT_BADSPORT"
    hash "0x4337511FA8221D36"
	jhash (0xCC068380)
	arguments {
		int "amount",
	}
	alias "0x4337511FA8221D36"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Enough007: Adds an entry in the Network Transaction Log.  
Max value for amount 2000  
```
</summary>
	]]

native "NETWORK_EARN_FROM_PICKUP"
    hash "0xED1517D3AF17C698"
	jhash (0x70A0ED62)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "NETWORK_EARN_FROM_JOB_BONUS"
    hash "0x6816FB4416760775"
	jhash (0xBEE23713)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	alias "0x6816FB4416760775"
	alias "_NETWORK_EARN_FROM_JOB_BONUS"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_PERSONAL_VEHICLE"
    hash "0x3F4D00167E41E0AD"
	jhash (0x96B8BEE8)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
	}
	alias "0x3F4D00167E41E0AD"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Now has 9 parameters.  
```
</summary>
	]]

native "_NETWORK_EARN_FROM_RDR_BONUS"
    hash "0x7A5349B773584675"
	arguments {
		int "amount",
		Any "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
	]]

native "_NETWORK_EARN_FROM_SELL_BASE"
    hash "0x0E1E2FF3F4EC11AA"
	arguments {
		int "amount",
		Hash "baseNameHash",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="baseNameHash">:</param>
	]]

native "NETWORK_EARN_FROM_PROPERTY"
    hash "0x849648349D77F5C5"
	jhash (0x9BE4F7E1)
	arguments {
		int "amount",
		Hash "propertyName",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_SMUGGLING"
    hash "0xDEE612F2D71B0308"
	arguments {
		int "amount",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_EARN_FROM_ROCKSTAR"
    hash "0x02CE1D6AC0FC73EA"
	jhash (0x5A3733CC)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
This merely adds an entry in the Network Transaction Log;   
it does not grant cash to the player (on PC).  
Max value for amount is 9999999.  
```
</summary>
	]]

native "_NETWORK_EARN_FROM_TARGET_REFUND"
    hash "0x5B669CF2299A271F"
	arguments {
		int "amount",
		int "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
	]]

native "_NETWORK_EARN_FROM_SPIN_THE_WHEEL_CASH"
    hash "0x676C48776CACBB5A"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
	]]

native "_NETWORK_EARN_FROM_WAGE_PAYMENT"
    hash "0x35F8DA0E8A31EF1B"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="amount">:</param>
	]]

native "NETWORK_EARN_FROM_VEHICLE"
    hash "0xB539BD8A4C1EECF8"
	jhash (0xF803589D)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Now has 8 params.  
```
</summary>
	]]

native "_NETWORK_GET_IS_HIGH_EARNER"
    hash "0xFB2456B2040A6A67"
	jhash (0x63F093A6)
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
	]]

native "_NETWORK_GET_REMAINING_VC_DAILY_TRANSFERS"
    hash "0x13A8DE2FD77D04F3"
	jhash (0xC670C814)
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
Same as 0xEA560AC9EEB1E19B.

NativeDB Introduced: v323
```
</summary>
	]]

native "_NETWORK_EARN_FROM_WAGE_PAYMENT_BONUS"
    hash "0x005ACA7100BD101D"
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="amount">:</param>
	]]

native "_NETWORK_GET_REMAINING_VC_DAILY_TRANSFERS_2"
    hash "0xEA560AC9EEB1E19B"
	jhash (0xA9021211)
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
Same as 0x13A8DE2FD77D04F3.

NativeDB Introduced: v323
```
</summary>
	]]

native "NETWORK_GET_EVC_BALANCE"
    hash "0x5D1E75F91C07DEE5"
	jhash (0xF1EDB7F4)
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
	]]

native "NETWORK_GET_STRING_BANK_WALLET_BALANCE"
    hash "0x700AF71AE615E6DD"
	jhash (0x7D4FD28C)
	ns "NETWORKCASH"
	returns "charPtr"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
	]]

native "NETWORK_GET_PVC_BALANCE"
    hash "0x4F54F3B6C202FB4E"
	jhash (0x56485B56)
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
	]]

native "NETWORK_GET_STRING_WALLET_BALANCE"
    hash "0xF9B10B529DCFB33B"
	jhash (0xC1A11435)
	arguments {
		int "characterSlot",
	}
	ns "NETWORKCASH"
	returns "charPtr"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="characterSlot">:</param>
	]]

native "NETWORK_GET_STRING_BANK_BALANCE"
    hash "0xA6FA3979BED01B81"
	jhash (0xAA7EA3BD)
	alias "0xA6FA3979BED01B81"
	alias "_NETWORK_GET_BANK_BALANCE_STRING"
	ns "NETWORKCASH"
	returns "charPtr"
	doc [[!
	]]

native "_NETWORK_GET_VC_BANK_BALANCE_IS_NOT_LESS_THAN"
    hash "0xA31FD6A0865B6D14"
	jhash (0xABED6020)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if bank balance >= amount.

NativeDB Introduced: v323
```
</summary>
<param name="amount">:</param>
	]]

native "NETWORK_GET_VC_BALANCE"
    hash "0x5CBAD97E059E1B94"
	jhash (0xADF8F882)
	alias "0x5CBAD97E059E1B94"
	ns "NETWORKCASH"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_VC_BANK_WALLET_BALANCE_IS_NOT_LESS_THAN"
    hash "0xDC18531D7019A535"
	jhash (0xCA23FD25)
	arguments {
		int "amount",
		int "characterSlot",
	}
	alias "0xDC18531D7019A535"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
probably 0x3461981 on console  
```
</summary>
	]]

native "NETWORK_GET_VC_BANK_BALANCE"
    hash "0x76EF28DA05EA395A"
	jhash (0x16184FB5)
	alias "0x76EF28DA05EA395A"
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
From what I can see in ida, I believe it retrieves the players online bank balance.  
```
</summary>
	]]

native "_NETWORK_GET_VC_WALLET_BALANCE_IS_NOT_LESS_THAN"
    hash "0xED5AB8860415BABA"
	jhash (0x0EA2188C)
	arguments {
		int "amount",
		int "characterSlot",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if wallet balance >= amount.

NativeDB Introduced: v323
```
</summary>
<param name="amount">:</param>
<param name="characterSlot">:</param>
	]]

native "NETWORK_INITIALIZE_CASH"
    hash "0x3DA5ECD1A56CBA6D"
	jhash (0x66DA9935)
	arguments {
		int "wallet",
		int "bank",
	}
	alias "0x3DA5ECD1A56CBA6D"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_GET_VC_WALLET_BALANCE"
    hash "0xA40F9C2623F6A8B5"
	jhash (0x4F5B781C)
	arguments {
		int "characterSlot",
	}
	alias "0xA40F9C2623F6A8B5"
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
From what I understand, it retrieves STAT_WALLET_BALANCE for the specified character (-1 means use MPPLY_LAST_MP_CHAR)  
```
</summary>
	]]

native "NETWORK_PAY_EMPLOYEE_WAGE"
    hash "0x5FD5ED82CBBE9989"
	jhash (0xBE70849B)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x5FD5ED82CBBE9989"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_GIVE_PLAYER_JOBSHARE_CASH"
    hash "0xFB18DF9CB95E0105"
	jhash (0xC6047FDB)
	arguments {
		int "amount",
		intPtr "networkHandle",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_PAY_UTILITY_BILL"
    hash "0xAFE08B35EC0C9EAE"
	jhash (0x451A2644)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0xAFE08B35EC0C9EAE"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_MONEY_CAN_BET"
    hash "0x81404F3DC124FE5B"
	jhash (0x8474E6F0)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x81404F3DC124FE5B"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH"
    hash "0x56A3B51944C50598"
	jhash (0x4ED71C1A)
	arguments {
		int "value",
		intPtr "networkHandle",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_RIVAL_DELIVERY_COMPLETED"
    hash "0x1B882107C23A9022"
	arguments {
		int "earnedMoney",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="earnedMoney">:</param>
	]]

native "NETWORK_PAY_MATCH_ENTRY_FEE"
    hash "0x9346E14F2AF74D46"
	jhash (0x224A3488)
	arguments {
		int "amount",
		intPtr "matchId",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x9346E14F2AF74D46"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 1: char* matchId
```
</summary>
	]]

native "_NETWORK_SPENT_ARENA_JOIN_SPECTATOR"
    hash "0x14EAEA58F93B55AF"
	arguments {
		int "amount",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_REFUND_CASH"
    hash "0xF9C812CD7C46E817"
	jhash (0x07C92F21)
	arguments {
		int "index",
		charPtr "context",
		charPtr "reason",
		BOOL "unk",
	}
	alias "0xF9C812CD7C46E817"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
index  
-------  
See function sub_1005 in am_boat_taxi.ysc  
context  
----------  
"BACKUP_VAGOS"  
"BACKUP_LOST"  
"BACKUP_FAMILIES"  
"HIRE_MUGGER"  
"HIRE_MERCENARY"  
"BUY_CARDROPOFF"  
"HELI_PICKUP"  
"BOAT_PICKUP"  
"CLEAR_WANTED"  
"HEAD_2_HEAD"  
"CHALLENGE"  
"SHARE_LAST_JOB"  
"DEFAULT"  
reason  
---------  
"NOTREACHTARGET"  
"TARGET_ESCAPE"  
"DELIVERY_FAIL"  
"NOT_USED"  
"TEAM_QUIT"  
"SERVER_ERROR"  
"RECEIVE_LJ_L"  
"CHALLENGE_PLAYER_LEFT"  
"DEFAULT"  
unk  
-----  
Unknown bool value  
```
</summary>
	]]

native "_NETWORK_SPENT_ARENA_SPECTATOR_BOX"
    hash "0x7049BF858601DC0F"
	arguments {
		int "amount",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_AMMO_DROP"
    hash "0xB162DC95C0A3317B"
	jhash (0x4B643076)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BANK_INTEREST"
    hash "0xCA230C9682556CF1"
	jhash (0xF02E92D7)
	arguments {
		int "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "_NETWORK_SPENT_ARENA_PREMIUM"
    hash "0x619496D837EFD920"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "NETWORK_SPENT_BOAT_PICKUP"
    hash "0x524EE43A37232C00"
	jhash (0xB241CABD)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_ARREST_BAIL"
    hash "0x812F5488B1B2A299"
	jhash (0x5AEE2FC1)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_BOUNTY_HUNTER_MISSION"
    hash "0x1BEA0CD93470BB1F"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "NETWORK_SPENT_BETTING"
    hash "0x1C436FD11FFA692F"
	jhash (0xF8A07513)
	arguments {
		int "amount",
		int "p1",
		AnyPtr "matchId",
		BOOL "p3",
		BOOL "p4",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 2: char* matchId
```
</summary>
	]]

native "NETWORK_SPENT_BULL_SHARK"
    hash "0xA6DD8458CE24012C"
	jhash (0xDE7D398C)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BOUNTY"
    hash "0x29B260B84947DFCC"
	jhash (0x3401FC96)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_BUY_BASE"
    hash "0x4EA3F425C7744D21"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_BUY_ARENA"
    hash "0x40D5DA9550B7CB46"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
		charPtr "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_BUY_PASSIVE_MODE"
    hash "0x6D3A430D1A809179"
	jhash (0x7E97C92C)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BUY_OFFTHERADAR"
    hash "0xA628A745E2275C5D"
	jhash (0x20DDCF2F)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_BUY_TILTROTOR"
    hash "0x0CCE73BC7A11E885"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_BUY_WANTEDLEVEL"
    hash "0xE1B13771A843C4F6"
	jhash (0xE7CB4F95)
	arguments {
		Any "p0",
		AnyPtr "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BUY_REVEAL_PLAYERS"
    hash "0x6E176F1B18BC0637"
	jhash (0x2F7836E2)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_CARWASH"
    hash "0xEC03C719DB2F4306"
	jhash (0x8283E028)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_CALL_PLAYER"
    hash "0xACDE7185B374177C"
	jhash (0x1A89B5FC)
	arguments {
		Any "p0",
		AnyPtr "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_CINEMA"
    hash "0x6B38ECB05A63A685"
	jhash (0x1100CAF5)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_CASH_DROP"
    hash "0x289016EC778D60E0"
	jhash (0x87BD1D11)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_FROM_ROCKSTAR"
    hash "0x6A445B64ED7ABEB5"
	jhash (0x54198922)
	arguments {
		int "bank",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x6A445B64ED7ABEB5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_EMPLOY_ASSASSINS"
    hash "0x5BBBD92186E1F1C5"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_GANGOPS_START_MISSION"
    hash "0xDA947AE8880D5C18"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_GANGOPS_CANNON"
    hash "0x771ADB0E7635B7BF"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_GANGOPS_TRIP_SKIP"
    hash "0x5ECE6FD7B4EC8D6A"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "_NETWORK_SPENT_HANGAR_UTILITY_CHARGES"
    hash "0xB18AC2ECBB15CB6A"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "_NETWORK_SPENT_GANGOPS_START_STRAND"
    hash "0xA19EC0786E326E06"
	arguments {
		int "type",
		int "amount",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="type">:</param>
<param name="amount">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_HANGAR_STAFF_CHARGES"
    hash "0xB1F1346FD57685D7"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "NETWORK_SPENT_HIRE_MERCENARY"
    hash "0xE7B80E2BF9D80BD6"
	jhash (0x99CF02C4)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_HELI_PICKUP"
    hash "0x7BF1D73DB2ECA492"
	jhash (0x27EEBCAB)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_HOLDUPS"
    hash "0xD9B86B9872039763"
	jhash (0x1B3803B1)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_HIRE_MUGGER"
    hash "0xE404BFB981665BF0"
	jhash (0xE792C4A5)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Only used once in a script (am_contact_requests)  
p1 = 0  
p2 = 1  
```
</summary>
	]]

native "_NETWORK_SPENT_JOB_SKIP"
    hash "0x28F174A67B8D0C2F"
	arguments {
		int "amount",
		charPtr "matchId",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v323
```
</summary>
<param name="amount">:</param>
<param name="matchId">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_IN_STRIPCLUB"
    hash "0xEE99784E4467689C"
	jhash (0x8957038E)
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
		BOOL "p3",
	}
	alias "0xEE99784E4467689C"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_MAKE_IT_RAIN"
    hash "0xE5F5A060439C2F5D"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "_NETWORK_SPENT_NIGHTCLUB_BAR_DRINK"
    hash "0xDD21B016E4289465"
	arguments {
		int "amount",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_NIGHTCLUB_ENTRY_FEE"
    hash "0x876056684281655D"
	arguments {
		Player "player",
		int "amount",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="player">:</param>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM"
    hash "0x9FF28D88C766E3E8"
	jhash (0x4E665BB2)
	arguments {
		int "amount",
		Hash "vehicleModel",
		intPtr "networkHandle",
		BOOL "notBankrupt",
		BOOL "hasTheMoney",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
According to how I understood this in the freemode script alone,  
The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.  
The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.  
The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").  
The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.  
The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,  
bool hasTheMoney = NETWORKCASH::_GET_BANK_BALANCE() < carCost.  
```
</summary>
	]]

native "NETWORK_SPENT_NO_COPS"
    hash "0xD5BB406F4E04019F"
	jhash (0x2E51C61C)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0xD5BB406F4E04019F"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_PROSTITUTES"
    hash "0xB21B89501CFAC79E"
	jhash (0x78436D07)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_PLAYER_HEALTHCARE"
    hash "0x7C99101F7FCE2EE5"
	jhash (0x3D96A21C)
	arguments {
		int "p0",
		int "p1",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x7C99101F7FCE2EE5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_RDRHATCHET_BONUS"
    hash "0xE284D46FFDB82E36"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "_NETWORK_SPENT_PURCHASE_HANGAR"
    hash "0xCCB339CC970452DA"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_REQUEST_HEIST"
    hash "0x9D26502BB97BFE62"
	jhash (0xF4287778)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x9D26502BB97BFE62"
	alias "_NETWORK_SPENT_REQUEST_HEIST"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_REHIRE_DJ"
    hash "0xF6C8A544E4CF14FC"
	arguments {
		int "amount",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_REQUEST_JOB"
    hash "0x8204DA7934DF3155"
	jhash (0xD57A5125)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x8204DA7934DF3155"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_ROBBED_BY_MUGGER"
    hash "0x995A65F15F581359"
	jhash (0xE6AAA0D5)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x995A65F15F581359"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_TAXI"
    hash "0x17C3A7D31EAE39F9"
	jhash (0x1F3DB3E3)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_SPIN_THE_WHEEL_PAYMENT"
    hash "0x9A5BD1D0000B339C"
	arguments {
		int "amount",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "NETWORK_SPENT_TELESCOPE"
    hash "0x7FE61782AD94CC09"
	jhash (0xAE7FF044)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_UPGRADE_ARENA"
    hash "0x037ABB06825D7AB1"
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
		charPtr "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="amount">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_UPGRADE_BASE"
    hash "0x3DD3F33A5D55EA6F"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "_NETWORK_SPENT_UPGRADE_HANGAR"
    hash "0x615EB504B0788DAF"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "PROCESS_CASH_GIFT"
    hash "0x20194D48EAEC9A41"
	jhash (0xC5D8B1E9)
	arguments {
		intPtr "p0",
		intPtr "p1",
		charPtr "p2",
	}
	alias "0x20194D48EAEC9A41"
	ns "NETWORKCASH"
	returns "charPtr"
	doc [[!
	]]

native "_NETWORK_SPENT_UPGRADE_TILTROTOR"
    hash "0x165E135D6DFA2907"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "WITHDRAW_VC"
    hash "0xF70EFA14FE091429"
	jhash (0x8B755993)
	arguments {
		int "amount",
	}
	alias "0xF70EFA14FE091429"
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
Does nothing and always returns 0.
```
</summary>
	]]

native "ADD_DOOR_TO_SYSTEM"
    hash "0x6F8838D03D1DC226"
	jhash (0x9D2D778D)
	arguments {
		Hash "doorHash",
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "ATTACH_PORTABLE_PICKUP_TO_PED"
    hash "0x8DC39368BDD57755"
	jhash (0x184F6AB3)
	arguments {
		Ped "ped",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "_CLEAR_GARAGE_AREA"
    hash "0xDA05194260CDCDF9"
	arguments {
		Any "garageHash",
		BOOL "isNetwork",
	}
	alias "0xDA05194260CDCDF9"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "CREATE_MONEY_PICKUPS"
    hash "0x0589B5E791CE9B2B"
	jhash (0x36C9A5EA)
	arguments {
		float "x",
		float "y",
		float "z",
		int "value",
		int "amount",
		Hash "model",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Spawns one or more money pickups.  
x: The X-component of the world position to spawn the money pickups at.  
y: The Y-component of the world position to spawn the money pickups at.  
z: The Z-component of the world position to spawn the money pickups at.  
value: The combined value of the pickups (in dollars).  
amount: The number of pickups to spawn.  
model: The model to use, or 0 for default money model.  
Example:  
CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
==============================================  
Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
```
</summary>
	]]

native "CREATE_AMBIENT_PICKUP"
    hash "0x673966A0C0FD7171"
	jhash (0x17B99CE7)
	arguments {
		Hash "pickupHash",
		float "posX",
		float "posY",
		float "posZ",
		int "flags",
		int "value",
		Hash "modelHash",
		BOOL "returnHandle",
		BOOL "p8",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Used for doing money drop  
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "CREATE_OBJECT"
    hash "0x509D5878EB39E842"
	jhash (0x2F7AA05C)
	arguments {
		Object "modelHash",
		float "x",
		float "y",
		float "z",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
		BOOL "dynamic",
	}
	ns "OBJECT"
	returns "Object"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p5 - last parameter does not mean object handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
----------  
prop_tt_screenstatic (0xE2E039BC) is handled different. Not sure how yet but it I know it is.  
```
</summary>
	]]

native "CREATE_OBJECT_NO_OFFSET"
    hash "0x9A294B2138ABB884"
	jhash (0x58040420)
	arguments {
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
		BOOL "dynamic",
	}
	ns "OBJECT"
	returns "Object"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p5 - does not mean object handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
----------  
prop_tt_screenstatic (0xE2E039BC) is handled different. Not sure how yet but it I know it is.  
```
</summary>
	]]

native "CREATE_PICKUP"
    hash "0xFBA08C503DD5FA58"
	jhash (0x5E14DF68)
	arguments {
		Hash "pickupHash",
		float "posX",
		float "posY",
		float "posZ",
		int "p4",
		int "value",
		BOOL "p6",
		Hash "modelHash",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "CREATE_PORTABLE_PICKUP"
    hash "0x2EAF1FDB2FB55698"
	jhash (0x8C886BE5)
	arguments {
		Hash "pickupHash",
		float "x",
		float "y",
		float "z",
		BOOL "placeOnGround",
		Hash "modelHash",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "CREATE_PICKUP_ROTATE"
    hash "0x891804727E0A98B7"
	jhash (0xF015BFE2)
	arguments {
		Hash "pickupHash",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		int "flag",
		int "amount",
		Any "p9",
		BOOL "p10",
		Hash "modelHash",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
flags:  
8 (1 << 3): place on ground  
512 (1 << 9): spin around  
```
</summary>
	]]

native "DELETE_OBJECT"
    hash "0x539E0AE3E6634B9F"
	jhash (0xD6EF9DA7)
	arguments {
		ObjectPtr "object",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Deletes the specified object, then sets the handle pointed to by the pointer to NULL.  
meme.  
```
</summary>
	]]

native "_CREATE_PORTABLE_PICKUP_2"
    hash "0x125494B98A21AAF7"
	jhash (0x56A02502)
	arguments {
		Hash "pickupHash",
		float "x",
		float "y",
		float "z",
		BOOL "placeOnGround",
		Hash "modelHash",
	}
	alias "0x125494B98A21AAF7"
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
CREATE_*
```
</summary>
	]]

native "DOES_PICKUP_EXIST"
    hash "0xAFC1CA75AD4074D1"
	jhash (0x9C6DA0B3)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "DETACH_PORTABLE_PICKUP_FROM_PED"
    hash "0xCF463D1E9A0AECB1"
	jhash (0x1D094562)
	arguments {
		Ped "ped",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "DOES_PICKUP_OF_TYPE_EXIST_IN_AREA"
    hash "0xF9C36251F6E48E33"
	jhash (0xF139681B)
	arguments {
		Hash "pickupHash",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	alias "_IS_PICKUP_WITHIN_RADIUS"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS"
    hash "0xBFA48E2FF417213F"
	jhash (0x23FF2BA4)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "hash",
		BOOL "p5",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
p5 is usually 0.  
```
</summary>
	]]

native "DOES_RAYFIRE_MAP_OBJECT_EXIST"
    hash "0x52AF537A0C5B8AAD"
	jhash (0xE08C834D)
	arguments {
		Object "object",
	}
	alias "0x52AF537A0C5B8AAD"
	alias "_DOES_DES_OBJECT_EXIST"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if a destructible object with this handle exists, false otherwise.  
```
</summary>
	]]

native "DOES_PICKUP_OBJECT_EXIST"
    hash "0xD9EFB6DBF7DAAEA3"
	jhash (0xE0B32108)
	arguments {
		Object "pickupObject",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "GET_CLOSEST_OBJECT_OF_TYPE"
    hash "0xE143FA2249364369"
	jhash (0x45619B33)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "modelHash",
		BOOL "isMission",
		BOOL "p6",
		BOOL "p7",
	}
	ns "OBJECT"
	returns "Object"
	doc [[!
<summary>
```
Has 8 params in the latest patches.  
isMission - if true doesn't return mission objects  
```
</summary>
	]]

native "_DOOR_CONTROL"
    hash "0x9B12F9A24FABEDB0"
	jhash (0x4E0A260B)
	arguments {
		Hash "doorHash",
		float "x",
		float "y",
		float "z",
		BOOL "locked",
		float "xRotMult",
		float "yRotMult",
		float "zRotMult",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked  
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked  
locked simply tells the game whether or not the door is locked.  
x,y,z RotMult are multipliers that specify how fast the door/gate will rotate in degrees per second.  
```
</summary>
	]]

native "_GET_OBJECT_OFFSET_FROM_COORDS"
    hash "0x163E252DE035A133"
	jhash (0x87A42A12)
	arguments {
		float "xPos",
		float "yPos",
		float "zPos",
		float "heading",
		float "xOffset",
		float "yOffset",
		float "zOffset",
	}
	ns "OBJECT"
	returns "Vector3"
	doc [[!
	]]

native "GET_OBJECT_FRAGMENT_DAMAGE_HEALTH"
    hash "0xB6FBFD079B8D0596"
	jhash (0xF0B330AD)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "float"
	doc [[!
	]]

native "_GET_PICKUP_GENERATION_RANGE_MULTIPLIER"
    hash "0xB3ECA65C7317F174"
	alias "0xB3ECA65C7317F174"
	ns "OBJECT"
	returns "float"
	doc [[!
	]]

native "_GET_OBJECT_TEXTURE_VARIATION"
    hash "0xE84EB93729C5F36A"
	arguments {
		Object "object",
	}
	alias "0xE84EB93729C5F36A"
	ns "OBJECT"
	returns "int"
	doc [[!
	]]

native "_GET_PICKUP_HASH"
    hash "0x5EAAD83F8CFB4575"
	jhash (0x6AE36192)
	arguments {
		Pickup "pickupHash",
	}
	alias "0x5EAAD83F8CFB4575"
	ns "OBJECT"
	returns "Hash"
	doc [[!
<summary>
```
returns pickup hash.  
```

```
NativeDB Parameter 0: Hash pickupHash
```
</summary>
	]]

native "GET_PICKUP_COORDS"
    hash "0x225B8B35C88029B3"
	jhash (0xC2E1E2C5)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "Vector3"
	doc [[!
	]]

native "GET_RAYFIRE_MAP_OBJECT"
    hash "0xB48FCED898292E52"
	jhash (0xA286DE96)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		charPtr "name",
	}
	alias "0xB48FCED898292E52"
	alias "_GET_DES_OBJECT"
	ns "OBJECT"
	returns "Object"
	doc [[!
<summary>
```
Gets a destructible object's handle  
Example:  
OBJECT::_B48FCED898292E52(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");  
All found arguments for p4 starts with "des_" like "DES_FIB_Floor" and "des_shipsink".  
```
</summary>
	]]

native "GET_PICKUP_OBJECT"
    hash "0x5099BC55630B25AE"
	jhash (0x6052E62E)
	arguments {
		Pickup "pickup",
	}
	alias "0x5099BC55630B25AE"
	ns "OBJECT"
	returns "Object"
	doc [[!
	]]

native "GET_RAYFIRE_MAP_OBJECT_ANIM_PHASE"
    hash "0x260EE4FDBDF4DB01"
	jhash (0x020497DE)
	arguments {
		Object "object",
	}
	alias "0x260EE4FDBDF4DB01"
	alias "_GET_DES_OBJECT_ANIM_PROGRESS"
	ns "OBJECT"
	returns "float"
	doc [[!
<param name="object">The des-object handle to get the animation progress from.</param>
<returns>A float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.</returns>
	]]

native "GET_SAFE_PICKUP_COORDS"
    hash "0x6E16BC2503FF1FF0"
	jhash (0x618B5F67)
	arguments {
		float "x",
		float "y",
		float "z",
		Any "p3",
		Any "p4",
	}
	ns "OBJECT"
	returns "Vector3"
	doc [[!
<summary>
```
NativeDB Parameter 3: float p3
NativeDB Parameter 4: float p4
```
</summary>
	]]

native "GET_STATE_OF_CLOSEST_DOOR_OF_TYPE"
    hash "0xEDC1A5B84AEF33FF"
	jhash (0x4B44A83D)
	arguments {
		Hash "type",
		float "x",
		float "y",
		float "z",
		BOOLPtr "locked",
		floatPtr "heading",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
locked is 0 if no door is found  
locked is 0 if door is unlocked  
locked is 1 if door is found and unlocked.  
-------------  
the locked bool is either 0(unlocked)(false) or 1(locked)(true)  
```
</summary>
	]]

native "GET_STATE_OF_RAYFIRE_MAP_OBJECT"
    hash "0x899BA936634A322E"
	jhash (0xF1B8817A)
	arguments {
		Object "object",
	}
	alias "0x899BA936634A322E"
	alias "_GET_DES_OBJECT_STATE"
	ns "OBJECT"
	returns "int"
	doc [[!
<summary>
```
Get a destructible object's state.  
Substract 1 to get the real state.  
See SET_STATE_OF_RAYFIRE_MAP_OBJECT to see the different states  
For example, if the object just spawned (state 2), the native will return 3.  
```
</summary>
	]]

native "GET_WEAPON_TYPE_FROM_PICKUP_TYPE"
    hash "0x08F96CA6C551AD51"
	jhash (0xEDD01937)
	arguments {
		Pickup "pickupHash",
	}
	alias "0x08F96CA6C551AD51"
	alias "_GET_WEAPON_HASH_FROM_PICKUP"
	ns "OBJECT"
	returns "Hash"
	doc [[!
<summary>
```
returns the weapon hash of pickup  
```

```
NativeDB Parameter 0: Hash pickupHash
```
</summary>
	]]

native "HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN"
    hash "0x761B0E69AC4D007E"
	jhash (0x6FC0353D)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Hash "modelHash",
		Any "p5",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "HAS_PICKUP_BEEN_COLLECTED"
    hash "0x80EC48E6679313F9"
	jhash (0x0BE5CCED)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "HAS_OBJECT_BEEN_BROKEN"
    hash "0x8ABFB70C49CC43E2"
	jhash (0xFE21F891)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Added Parameter 2: Any p1
```
</summary>
	]]

native "_HIDE_PICKUP"
    hash "0x867458251D47CCB2"
	arguments {
		Pickup "pickup",
		BOOL "toggle",
	}
	alias "0x867458251D47CCB2"
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "_HIGHLIGHT_PLACEMENT_COORDS"
    hash "0x3430676B11CDF21D"
	jhash (0x63B02FAD)
	arguments {
		float "x",
		float "y",
		float "z",
		int "colorIndex",
	}
	alias "0x3430676B11CDF21D"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
draws circular marker at pos  
-1 = none  
0 = red  
1 = green  
2 = blue  
3 = green larger  
4 = nothing  
5 = green small  
```
</summary>
	]]

native "IS_ANY_ENTITY_ENTIRELY_INSIDE_GARAGE"
    hash "0x673ED815D6E323B7"
	jhash (0x7B44D659)
	arguments {
		Any "garageHash",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		Any "p4",
	}
	alias "0x673ED815D6E323B7"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "IS_ANY_OBJECT_NEAR_POINT"
    hash "0x397DC58FF00298D1"
	jhash (0xE9E46941)
	arguments {
		float "x",
		float "y",
		float "z",
		float "range",
		BOOL "p4",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_DOOR_CLOSED"
    hash "0xC531EE8A1145A149"
	jhash (0x48659CD7)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_DOOR_REGISTERED_WITH_SYSTEM"
    hash "0xC153C43EA202C8C1"
	jhash (0x5AFCD8A1)
	arguments {
		Hash "doorHash",
	}
	alias "0xC153C43EA202C8C1"
	alias "_DOES_DOOR_EXIST"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
if (OBJECT::_DOES_DOOR_EXIST(doorHash))  
{  
    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);  
}  
```
</summary>
	]]

native "IS_OBJECT_ENTIRELY_INSIDE_GARAGE"
    hash "0x372EF6699146A1E4"
	jhash (0x142C8F76)
	arguments {
		Any "garageHash",
		Entity "entity",
		float "p2",
		int "p3",
	}
	alias "0x372EF6699146A1E4"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "IS_GARAGE_EMPTY"
    hash "0x90E47239EA1980B8"
	jhash (0xA8B37DEA)
	arguments {
		Any "garageHash",
		BOOL "p1",
		int "p2",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "IS_OBJECT_PARTIALLY_INSIDE_GARAGE"
    hash "0xF0EED5A6BC7B237A"
	jhash (0x95A9AB2B)
	arguments {
		Any "garageHash",
		Entity "entity",
		int "p2",
	}
	alias "0xF0EED5A6BC7B237A"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "IS_OBJECT_NEAR_POINT"
    hash "0x8C90FE4B381BA60A"
	jhash (0x50A62C43)
	arguments {
		Hash "objectHash",
		float "x",
		float "y",
		float "z",
		float "range",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_PICKUP_WEAPON_OBJECT_VALID"
    hash "0x11D1E53A726891FE"
	jhash (0x883DAB2D)
	arguments {
		Object "object",
	}
	alias "0x11D1E53A726891FE"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_PLAYER_PARTIALLY_INSIDE_GARAGE"
    hash "0x1761DC5D8471CBAA"
	jhash (0x41924877)
	arguments {
		Any "garageHash",
		Player "player",
		int "p2",
	}
	alias "0x1761DC5D8471CBAA"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "IS_OBJECT_VISIBLE"
    hash "0x8B32ACE6326A7546"
	jhash (0xF4FD8AE4)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_PLAYER_ENTIRELY_INSIDE_GARAGE"
    hash "0x024A60DEB0EA69F0"
	jhash (0xC33ED360)
	arguments {
		Any "garageHash",
		Player "player",
		float "p2",
		int "p3",
	}
	alias "0x024A60DEB0EA69F0"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "_MARK_OBJECT_FOR_DELETION"
    hash "0xADBE4809F19F927A"
	jhash (0x2048A7DD)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
is this like setting is as no longer needed?  
```
</summary>
	]]

native "0x03C27E13B42A0E82"
    hash "0x03C27E13B42A0E82"
	jhash (0x4F44AF21)
	arguments {
		Hash "doorHash",
		float "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "IS_POINT_IN_ANGLED_AREA"
    hash "0x2A70BAE8883E4C81"
	jhash (0x73BCFFDC)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		BOOL "p10",
		BOOL "p11",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x0596843B34B95CE5"
    hash "0x0596843B34B95CE5"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x163F8B586BC95F2A"
    hash "0x163F8B586BC95F2A"
	jhash (0x65213FC3)
	arguments {
		Object "object",
		float "radius",
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		Vector3Ptr "p6",
		int "p7",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
only documented params  
dont know what this does.... To Be Continued...  
```
</summary>
	]]

native "0x0378C08504160D0D"
    hash "0x0378C08504160D0D"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x1A6CBB06E2D0D79D"
    hash "0x1A6CBB06E2D0D79D"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x0BF3B3BD47D79C08"
    hash "0x0BF3B3BD47D79C08"
	jhash (0x7EFBA039)
	arguments {
		Hash "modelHash",
		int "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x160AA1B32F6139B8"
    hash "0x160AA1B32F6139B8"
	jhash (0xD42A41C2)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "int"
	doc [[!
	]]

native "0x1C57C94A6446492A"
    hash "0x1C57C94A6446492A"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x1E3F1B1B891A2AAA"
    hash "0x1E3F1B1B891A2AAA"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x190428512B240692"
    hash "0x190428512B240692"
	jhash (0xA565E27E)
	arguments {
		Any "garageHash",
		BOOL "vehicles",
		BOOL "peds",
		BOOL "objects",
		BOOL "isNetwork",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "0x31F924B53EADDF65"
    hash "0x31F924B53EADDF65"
	jhash (0xDB18FA01)
	arguments {
		BOOL "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x1C1B69FAE509BA97"
    hash "0x1C1B69FAE509BA97"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x39A5FB7EAF150840"
    hash "0x39A5FB7EAF150840"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x3BD770D281982DB5"
    hash "0x3BD770D281982DB5"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x2542269291C6AC84"
    hash "0x2542269291C6AC84"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
	]]

native "0x394CD08E31313C28"
    hash "0x394CD08E31313C28"
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x46494A2475701343"
    hash "0x46494A2475701343"
	jhash (0x7DB578DD)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Hash "modelHash",
		BOOL "p5",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x3ED2B83AB2E82799"
    hash "0x3ED2B83AB2E82799"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x46F3ADD1E2D5BAF2"
    hash "0x46F3ADD1E2D5BAF2"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x4BC2854478F3A749"
    hash "0x4BC2854478F3A749"
	jhash (0xD649B7E1)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "int"
	doc [[!
	]]

native "0x43C677F1E1158005"
    hash "0x43C677F1E1158005"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x4A39DB43E47CF3AA"
    hash "0x4A39DB43E47CF3AA"
	jhash (0xE3261B35)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x4C134B4DF76025D0"
    hash "0x4C134B4DF76025D0"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x589F80B325CC82C5"
    hash "0x589F80B325CC82C5"
	jhash (0xE9AE494F)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		Any "p3",
		AnyPtr "p4",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x4D89D607CB3DD1D2"
    hash "0x4D89D607CB3DD1D2"
	jhash (0x19B17769)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x63ECF581BC70E363"
    hash "0x63ECF581BC70E363"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x616093EC6B139DD9"
    hash "0x616093EC6B139DD9"
	jhash (0x7FADB4B9)
	arguments {
		Player "player",
		Hash "pickupHash",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
From the scripts:  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);  
SET_PLAYER_P*  
```
</summary>
	]]

native "0x641F272B52E2F0F8"
    hash "0x641F272B52E2F0F8"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x62454A641B41F3C5"
    hash "0x62454A641B41F3C5"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x65499865FCA6E5EC"
    hash "0x65499865FCA6E5EC"
	jhash (0xB74C3BD7)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "float"
	doc [[!
<summary>
```
possibly called:  
ADD_DOOR_EXPERIMENTAL_MATRIX  
```
</summary>
	]]

native "0x659F9D71F52843F8"
    hash "0x659F9D71F52843F8"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x66A49D021870FE88"
    hash "0x66A49D021870FE88"
	jhash (0x6158959E)
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x701FDA1E82076BA4"
    hash "0x701FDA1E82076BA4"
	jhash (0xF592AD10)
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x734E1714D077DA9A"
    hash "0x734E1714D077DA9A"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x758A5C1B3B1E1990"
    hash "0x758A5C1B3B1E1990"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x762DB2D380B48D04"
    hash "0x762DB2D380B48D04"
	jhash (0xD1BAAFB7)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x78857FC65CADB909"
    hash "0x78857FC65CADB909"
	jhash (0xA3CDF152)
	arguments {
		BOOL "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x858EC9FD25DE04AA"
    hash "0x858EC9FD25DE04AA"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x826D1EE4D1CAFC78"
    hash "0x826D1EE4D1CAFC78"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x85B6C850546FDDE2"
    hash "0x85B6C850546FDDE2"
	jhash (0x4BD59750)
	arguments {
		Any "garageHash",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		Any "p4",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
NativeDB Parameter 0: Hash garageHash
```
</summary>
	]]

native "0x8881C98A31117998"
    hash "0x8881C98A31117998"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 2: Any p1
```
</summary>
	]]

native "0x8CFF648FBD7330F1"
    hash "0x8CFF648FBD7330F1"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v757
```
</summary>
<param name="p0">:</param>
	]]

native "0x8CAAB2BD3EA58BD4"
    hash "0x8CAAB2BD3EA58BD4"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x8DCA505A5C196F05"
    hash "0x8DCA505A5C196F05"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0x92AEFB5F6E294023"
    hash "0x92AEFB5F6E294023"
	jhash (0xCBB5F9B6)
	arguments {
		Object "object",
		BOOL "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x911024442F4898F0"
    hash "0x911024442F4898F0"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0x9BA001CB45CBF627"
    hash "0x9BA001CB45CBF627"
	jhash (0x47531446)
	arguments {
		Hash "doorHash",
		float "heading",
		BOOL "p2",
		BOOL "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x96EE0EBA0163DF80"
    hash "0x96EE0EBA0163DF80"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xA08FE5E49BDC39DD"
    hash "0xA08FE5E49BDC39DD"
	jhash (0x276A7807)
	arguments {
		Any "p0",
		float "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xA85A21582451E951"
    hash "0xA85A21582451E951"
	jhash (0xF736227C)
	arguments {
		Hash "doorHash",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xAA059C615DE9DD03"
    hash "0xAA059C615DE9DD03"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xA2C1F5E92AFE49ED"
    hash "0xA2C1F5E92AFE49ED"
	jhash (0xB241806C)
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
CLEAR_*
```
</summary>
	]]

native "0xADF084FB8F075D06"
    hash "0xADF084FB8F075D06"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
	]]

native "0xA90E7227A9303FA9"
    hash "0xA90E7227A9303FA9"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xB5B7742424BD4445"
    hash "0xB5B7742424BD4445"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xB7C6D80FB371659A"
    hash "0xB7C6D80FB371659A"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Clears all areas created by 0xD4A7A435B3710D05

CLEAR_*

NativeDB Introduced: v1290
```
</summary>
	]]

native "0xB20834A7DD3D8896"
    hash "0xB20834A7DD3D8896"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1604
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
<param name="p3">:</param>
	]]

native "0xBFFE53AE7E67FCDC"
    hash "0xBFFE53AE7E67FCDC"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xB2D0BDE54F0E8E5A"
    hash "0xB2D0BDE54F0E8E5A"
	jhash (0x132B6D92)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xBCE595371A5FBAAF"
    hash "0xBCE595371A5FBAAF"
	jhash (0x3A68AA46)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xC6033D32241F6FB5"
    hash "0xC6033D32241F6FB5"
	jhash (0xF4A1A14A)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xD05A3241B9A86F19"
    hash "0xD05A3241B9A86F19"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
	]]

native "0xC485E07E4F0B7958"
    hash "0xC485E07E4F0B7958"
	jhash (0xB4A9A558)
	arguments {
		Hash "doorHash",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xC7F29CA00F46350E"
    hash "0xC7F29CA00F46350E"
	jhash (0x9BF33E41)
	arguments {
		BOOL "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xD4A7A435B3710D05"
    hash "0xD4A7A435B3710D05"
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Adds an area that seems to be related to pickup physics behavior.
Max amount of areas is 10. Only works in multiplayer.

ADD_*

NativeDB Introduced: v1290
```
</summary>
<param name="x">:</param>
<param name="y">:</param>
<param name="z">:</param>
<param name="radius">:</param>
	]]

native "0xD9B71952F78A2640"
    hash "0xD9B71952F78A2640"
	jhash (0xECE58AE0)
	arguments {
		Hash "doorHash",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xD6429A016084F1A5"
    hash "0xD6429A016084F1A5"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1290
```
</summary>
<param name="p0">:</param>
	]]

native "0xDF97CDD4FC08FD34"
    hash "0xDF97CDD4FC08FD34"
	jhash (0x17FF9393)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0xDB41D07A45A6D4B7"
    hash "0xDB41D07A45A6D4B7"
	jhash (0x000E92DC)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "0xDF6CA0330F2E737B"
    hash "0xDF6CA0330F2E737B"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xE05F6AEEFEB0BB02"
    hash "0xE05F6AEEFEB0BB02"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1180
```
</summary>
<param name="p0">:</param>
<param name="p1">:</param>
<param name="p2">:</param>
	]]

native "0xEB6F1A9B5510A5D2"
    hash "0xEB6F1A9B5510A5D2"
	jhash (0xAF016CC1)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xE7E4C198B0185900"
    hash "0xE7E4C198B0185900"
	jhash (0x1E82C2AE)
	arguments {
		Object "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xF12E33034D887F66"
    hash "0xF12E33034D887F66"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "0xF2E1A7133DD356A6"
    hash "0xF2E1A7133DD356A6"
	jhash (0x43BB7E48)
	arguments {
		Hash "garageHash",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
ENABLE_*

Enable distance checks for occupied check?
```
</summary>
	]]

native "0xF9C1681347C8BD15"
    hash "0xF9C1681347C8BD15"
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xF92099527DB8E2A7"
    hash "0xF92099527DB8E2A7"
	jhash (0xA7E936FD)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xFC481C641EBBD27D"
    hash "0xFC481C641EBBD27D"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
<param name="p0">:</param>
	]]

native "PLACE_OBJECT_ON_GROUND_PROPERLY"
    hash "0x58A850EAEE20FAA3"
	jhash (0x8F95A20B)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "_PLACE_OBJECT_ON_GROUND_PROPERLY_2"
    hash "0xD76EEEF746057FD6"
	arguments {
		Object "object",
	}
	alias "0xD76EEEF746057FD6"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "REMOVE_ALL_PICKUPS_OF_TYPE"
    hash "0x27F9D613092159CF"
	jhash (0x40062C53)
	arguments {
		Hash "pickupHash",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "REMOVE_PICKUP"
    hash "0x3288D8ACAECD2AB2"
	jhash (0x64A7A0E0)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "REMOVE_DOOR_FROM_SYSTEM"
    hash "0x464D8E1427156FE4"
	jhash (0x00253286)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN"
    hash "0x406137F8EF90EAF5"
	jhash (0x3E263AE1)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "_SET_DOOR_ACCELERATION_LIMIT"
    hash "0x6BAB9442830C7F53"
	jhash (0xDF83DB47)
	arguments {
		Hash "doorHash",
		int "limit",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x6BAB9442830C7F53"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Sets the acceleration limit of a door.  
How fast it can open, or the inverse hinge resistance.  
A limit of 0 seems to lock doors.  
p2 is always 0, p3 is always 1.  
```
</summary>
	]]

native "_SET_DOOR_AJAR_ANGLE"
    hash "0xB6E6FBA95C7324AC"
	jhash (0x34883DE3)
	arguments {
		Hash "doorHash",
		float "ajar",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0xB6E6FBA95C7324AC"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Sets the ajar angle of a door.  
Ranges from -1.0 to 1.0, and 0.0 is closed / default.  
p2 is always 0, p3 is always 1.  
```
</summary>
	]]

native "SET_FORCE_OBJECT_THIS_FRAME"
    hash "0xF538081986E49E9D"
	jhash (0x3DA41C1A)
	arguments {
		Any "x",
		Any "y",
		Any "z",
		Any "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: float x
NativeDB Parameter 1: float y
NativeDB Parameter 2: float z
NativeDB Parameter 3: float p3
```
</summary>
	]]

native "_SET_LOCAL_PLAYER_CAN_USE_PICKUPS_WITH_THIS_MODEL"
    hash "0x88EAEC617CD26926"
	jhash (0x3A8F1BF7)
	arguments {
		Hash "modelHash",
		BOOL "toggle",
	}
	alias "0x88EAEC617CD26926"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
SET_LOCAL_PLAYER_*  
```
</summary>
	]]

native "_SET_OBJECT_COLOUR"
    hash "0x3B2FD68DB5F8331C"
	jhash (0xA88C6937)
	arguments {
		Object "object",
		Any "toggle",
		int "R",
		int "G",
		int "B",
	}
	alias "0x3B2FD68DB5F8331C"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
Seems to set the colour of the prop. Haven't really tested it on other props.
Only appears in am_mp_nightclub.c for the nightclub dancefloor.

Not sure what p1 does, seems to only ever be '1' in scripts.

```
NativeDB Parameter 1: BOOL toggle
NativeDB Removed Parameter 3: int R
NativeDB Removed Parameter 4: int G
NativeDB Removed Parameter 5: int B
```
</summary>
<param name="R">:</param>
<param name="G">:</param>
<param name="B">:</param>
	]]

native "SET_OBJECT_PHYSICS_PARAMS"
    hash "0xF6DF6E90DE7DF90F"
	jhash (0xE8D11C58)
	arguments {
		Object "object",
		float "weight",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "gravity",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
		float "buoyancy",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Adjust the physics parameters of a prop, or otherwise known as "object". This is useful for simulated gravity.  
Other parameters seem to be unknown.  
p2: seems to be weight and gravity related. Higher value makes the obj fall faster. Very sensitive?  
p3: seems similar to p2  
p4: makes obj fall slower the higher the value  
p5: similar to p4  
```
</summary>
	]]

native "_SET_OBJECT_LIGHT_COLOR"
    hash "0x5F048334B4A4E774"
	arguments {
		Object "object",
		BOOL "p1",
		int "r",
		int "g",
		int "b",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="object">:</param>
<param name="p1">:</param>
<param name="r">:</param>
<param name="g">:</param>
<param name="b">:</param>
	]]

native "_SET_OBJECT_SOMETHING"
    hash "0x77F33F2CCF64B3AA"
	jhash (0x483C5C88)
	arguments {
		Object "object",
		BOOL "p1",
	}
	alias "0x77F33F2CCF64B3AA"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
````
i don't know what this does  
```<pre>  
void __fastcall OBJECT___0x77F33F2CCF64B3AA_START(scrNativeCallContext *args)  
{  
  bool p2; // bl@1  
  CObject *pObject; // rax@1  
  scrNativeCallContextArgStruct *pArgs; // rax@1  
  pArgs = args->pArgs;  
  p2 = pArgs->a2.BOOL != 0;  
  pObject = getAddressOfObject(pArgs->a1.Object);  
  if ( pObject )  
  {  
    pObject->field_425 &= 0xDFu;                // 1101 1111 (clear bit 6)  
    pObject->field_425 |= 32 * p2;              // bit 6 = p2  
  }  
}  
// sfink  
// note to AB: please set "white-space: pre" in css  
````

```
## Parameters
* **object**: 
* **p1**: 
```
</summary>
	]]

native "SET_OBJECT_TARGETTABLE"
    hash "0x8A7391690F5AFD81"
	jhash (0x3F88CD86)
	arguments {
		Object "object",
		BOOL "targettable",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: void
```
</summary>
	]]

native "SET_PICKUP_GENERATION_RANGE_MULTIPLIER"
    hash "0x318516E02DE3ECE2"
	jhash (0x9879AC51)
	arguments {
		float "multiplier",
	}
	alias "0x318516E02DE3ECE2"
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "_SET_OBJECT_TEXTURE_VARIANT"
    hash "0x971DA0055324D033"
	arguments {
		Object "object",
		int "textureVariation",
	}
	alias "0x971DA0055324D033"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
enum ObjectPaintVariants  
{  
	Pacific = 0,  
	Azure = 1,  
	Nautical = 2,  
	Continental = 3,  
	Battleship = 4,  
	Intrepid = 5,  
	Uniform = 6,  
	Classico = 7,  
	Mediterranean = 8,  
	Command = 9,  
	Mariner = 10,  
	Ruby = 11,  
	Vintage = 12,  
	Pristine = 13,  
	Merchant = 14,  
	Voyager = 15  
};  
```
</summary>
	]]

native "SET_STATE_OF_CLOSEST_DOOR_OF_TYPE"
    hash "0xF82D8F1926A02C3D"
	jhash (0x38C951A4)
	arguments {
		Hash "type",
		float "x",
		float "y",
		float "z",
		BOOL "locked",
		float "heading",
		BOOL "p6",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Hardcoded to not work in multiplayer.  
Used to lock/unlock doors to interior areas of the game.  
(Possible) Door Types:  
pastebin.com/9S2m3qA4  
Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
Locked means that the heading is locked.    
p6 is always 0.   
225 door types, model names and coords found in stripclub.c4:  
pastebin.com/gywnbzsH  
get door info: pastebin.com/i14rbekD  
```
</summary>
	]]

native "SET_STATE_OF_RAYFIRE_MAP_OBJECT"
    hash "0x5C29F698D404C5E1"
	jhash (0x21F51560)
	arguments {
		Object "object",
		int "state",
	}
	alias "0x5C29F698D404C5E1"
	alias "_SET_DES_OBJECT_STATE"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Defines the state of a destructible object.  
Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords  
State 2 == object just spawned  
State 4 == Beginning of the animation  
State 6 == Start animation  
State 9 == End of the animation  
```
</summary>
	]]

native "SET_PICKUP_REGENERATION_TIME"
    hash "0x78015C9B4B3ECC9D"
	jhash (0xAB11267D)
	arguments {
		Pickup "pickup",
		int "duration",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
duration specifies the time until the next respawn, in ms. (known values: 600000).  
Usage Example:  
Pickup pickup = OBJECT::CREATE_PICKUP_ROTATE(...);  
OBJECT::SET_PICKUP_REGENERATION_TIME(pickup, 600000); // 10mins  
```
</summary>
	]]

native "SET_TEAM_PICKUP_OBJECT"
    hash "0x53E0DF1A2A3CF0CA"
	jhash (0x77687DC5)
	arguments {
		Object "object",
		Any "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "SLIDE_OBJECT"
    hash "0x2FDFF4107B8C1147"
	jhash (0x63BFA7A0)
	arguments {
		Object "object",
		float "toX",
		float "toY",
		float "toZ",
		float "speedX",
		float "speedY",
		float "speedZ",
		BOOL "collision",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the object has finished moving.  
If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
See also: gtag.gtagaming.com/opcode-database/opcode/034E/  
```
</summary>
	]]

native "_SET_UNK_GLOBAL_BOOL_RELATED_TO_DAMAGE"
    hash "0xABDABF4E1EDECBFA"
	arguments {
		BOOL "value",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
<param name="value">:</param>
	]]

native "TRACK_OBJECT_VISIBILITY"
    hash "0xB252BC036B525623"
	jhash (0x46D06B9A)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "DISABLE_ALL_CONTROL_ACTIONS"
    hash "0x5F4B6931816E599B"
	jhash (0x16753CF4)
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
inputGroup: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.
```
</summary>
	]]

native "DISABLE_CONTROL_ACTION"
    hash "0xFE99B66D079CF6BC"
	jhash (0x3800C0DC)
	arguments {
		int "inputGroup",
		int "control",
		BOOL "disable",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Controls.cs  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
Control values from the decompiled scripts: 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,  
28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,53,5  
4,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,  
79,80,81,82,85,86,87,88,89,90,91,92,93,95,96,97,98,99,100,101,102,103,105,  
107,108,109,110,111,112,113,114,115,116,117,118,119,123,126,129,130,131,132,  
133,134,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,  
153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,171,172  
,177,187,188,189,190,195,196,199,200,201,202,203,205,207,208,209,211,212,213, 217,219,220,221,225,226,230,234,235,236,237,238,239,240,241,242,243,244,257,  
261,262,263,264,265,270,271,272,273,274,278,279,280,281,282,283,284,285,286,  
287,288,289,337.  
Example: CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true) disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.   
Control group 1 and 0 gives the same results as 2. Same results for all players.  
```
</summary>
	]]

native "_DISABLE_INPUT_GROUP"
    hash "0x7F4724035FDCA1DD"
	jhash (0x2CEDE6C5)
	arguments {
		int "inputGroup",
	}
	alias "0x7F4724035FDCA1DD"
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "ENABLE_ALL_CONTROL_ACTIONS"
    hash "0xA5FFE9B05F199DE7"
	jhash (0xFC2F119F)
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
inputGroup: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.
```
</summary>
	]]

native "ENABLE_CONTROL_ACTION"
    hash "0x351220255D64C155"
	jhash (0xD2753551)
	arguments {
		int "inputGroup",
		int "control",
		BOOL "enable",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Control.cs  
and  
https://docs.fivem.net/game-references/controls/
0, 1 and 2 used in the scripts.  
Control values from the decompiled scripts:   
0,1,2,3,4,5,6,8,9,10,11,14,15,16,17,19,21,22,24,25,26,30,31,32,33,34,35,36,  
37,44,46,47,59,60,65,68,69,70,71,72,73,74,75,76,79,80,81,82,86,95,98,99,100  
,101,114,140,141,143,172,173,174,175,176,177,178,179,180,181,187,188,189,19  
0,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,217,218,219,2  
20,221,225,228,229,230,231,234,235,236,237,238,239,240,241,242,245,246,257,  
261,262,263,264,286,287,288,289,337,338,339,340,341,342,343  
INPUTGROUP_MOVE  
INPUTGROUP_LOOK  
INPUTGROUP_WHEEL  
INPUTGROUP_CELLPHONE_NAVIGATE  
INPUTGROUP_CELLPHONE_NAVIGATE_UD  
INPUTGROUP_CELLPHONE_NAVIGATE_LR  
INPUTGROUP_FRONTEND_DPAD_ALL  
INPUTGROUP_FRONTEND_DPAD_UD  
INPUTGROUP_FRONTEND_DPAD_LR  
INPUTGROUP_FRONTEND_LSTICK_ALL  
INPUTGROUP_FRONTEND_RSTICK_ALL  
INPUTGROUP_FRONTEND_GENERIC_UD  
INPUTGROUP_FRONTEND_GENERIC_LR  
INPUTGROUP_FRONTEND_GENERIC_ALL  
INPUTGROUP_FRONTEND_BUMPERS  
INPUTGROUP_FRONTEND_TRIGGERS  
INPUTGROUP_FRONTEND_STICKS  
INPUTGROUP_SCRIPT_DPAD_ALL  
INPUTGROUP_SCRIPT_DPAD_UD  
INPUTGROUP_SCRIPT_DPAD_LR  
INPUTGROUP_SCRIPT_LSTICK_ALL  
INPUTGROUP_SCRIPT_RSTICK_ALL  
INPUTGROUP_SCRIPT_BUMPERS  
INPUTGROUP_SCRIPT_TRIGGERS  
INPUTGROUP_WEAPON_WHEEL_CYCLE  
INPUTGROUP_FLY  
INPUTGROUP_SUB  
INPUTGROUP_VEH_MOVE_ALL  
INPUTGROUP_CURSOR  
INPUTGROUP_CURSOR_SCROLL  
INPUTGROUP_SNIPER_ZOOM_SECONDARY  
INPUTGROUP_VEH_HYDRAULICS_CONTROL  
Took those in IDA Pro.Not sure in which order they go  
```
</summary>
	]]

native "GET_ALLOW_MOVEMENT_WHILE_ZOOMED"
    hash "0xFC859E2374407556"
	jhash (0xC0823820)
	alias "0xFC859E2374407556"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Returns profile setting 17.
```
</summary>
	]]

native "GET_CONTROL_GROUP_INSTRUCTIONAL_BUTTON"
    hash "0x80C2FD58D720C801"
	jhash (0x3EE71F6A)
	arguments {
		int "inputGroup",
		int "control",
		BOOL "p2",
	}
	alias "0x80C2FD58D720C801"
	ns "PAD"
	returns "charPtr"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "GET_CONTROL_INSTRUCTIONAL_BUTTON"
    hash "0x0499D7B09FC9B407"
	jhash (0x3551727A)
	arguments {
		int "inputGroup",
		int "control",
		Player "p2",
	}
	alias "0x0499D7B09FC9B407"
	ns "PAD"
	returns "charPtr"
	doc [[!
<summary>
```
formerly called _GET_CONTROL_ACTION_NAME incorrectly  
p2 appears to always be true.  
p2 is unused variable in function.  
EG:  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/  
gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```

```
NativeDB Parameter 2: BOOL p2
```
</summary>
	]]

native "GET_CONTROL_NORMAL"
    hash "0xEC3C9B8D5327B563"
	jhash (0x5DE226A5)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
Returns the value of CONTROLS::GET_CONTROL_VALUE Normalized (ie a real number value between -1 and 1)  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "GET_CONTROL_UNBOUND_NORMAL"
    hash "0x5B84D09CEC5209C5"
	jhash (0xC49343BB)
	arguments {
		int "inputGroup",
		int "control",
	}
	alias "0x5B84D09CEC5209C5"
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
Seems to return values between -1 and 1 for controls like gas and steering.  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "GET_CONTROL_VALUE"
    hash "0xD95E79E8686D2C27"
	jhash (0xC526F3C6)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "int"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "GET_DISABLED_CONTROL_UNBOUND_NORMAL"
    hash "0x4F8A26A890FD62FB"
	jhash (0xF2A65A4C)
	arguments {
		int "inputGroup",
		int "control",
	}
	alias "0x4F8A26A890FD62FB"
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
The "disabled" variant of _0x5B84D09CEC5209C5.  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "GET_DISABLED_CONTROL_NORMAL"
    hash "0x11E65974A982637C"
	jhash (0x66FF4FAA)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
control - c# works with (int)GTA.Control.CursorY / (int)GTA.Control.CursorX and returns the mouse movement (additive).  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "GET_IS_USING_ALTERNATE_DRIVEBY"
    hash "0x0F70731BACCFBB96"
	jhash (0xC1AFABD5)
	alias "0x0F70731BACCFBB96"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Returns profile setting 225.
```
</summary>
	]]

native "GET_LOCAL_PLAYER_AIM_STATE"
    hash "0xBB41AFBBBC0A0287"
	jhash (0x81802053)
	ns "PAD"
	returns "int"
	doc [[!
	]]

native "_GET_LOCAL_PLAYER_AIM_STATE_2"
    hash "0x59B9A7AF4C95133C"
	alias "0x59B9A7AF4C95133C"
	ns "PAD"
	returns "int"
	doc [[!
<summary>
```
Same behavior as GET_LOCAL_PLAYER_AIM_STATE but only used on the PC version.  
```
</summary>
	]]

native "_GET_TIME_SINCE_LAST_INPUT"
    hash "0xD7D22F5592AED8BA"
	jhash (0x0E8EF929)
	arguments {
		int "inputGroup",
	}
	alias "0xD7D22F5592AED8BA"
	ns "PAD"
	returns "int"
	doc [[!
<summary>
```
The number of milliseconds since last inputGroup registered pressed
```
</summary>
	]]

native "IS_CONTROL_ENABLED"
    hash "0x1CEA6BFDF248E5D9"
	jhash (0x9174AF84)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Control Groups:  
enum InputGroups  
{  
	INPUTGROUP_MOVE = 0,  
	INPUTGROUP_LOOK = 1,  
	INPUTGROUP_WHEEL = 2,  
	INPUTGROUP_CELLPHONE_NAVIGATE = 3,  
	INPUTGROUP_CELLPHONE_NAVIGATE_UD = 4,  
	INPUTGROUP_CELLPHONE_NAVIGATE_LR = 5,  
	INPUTGROUP_FRONTEND_DPAD_ALL = 6,  
	INPUTGROUP_FRONTEND_DPAD_UD = 7,  
	INPUTGROUP_FRONTEND_DPAD_LR = 8,  
	INPUTGROUP_FRONTEND_LSTICK_ALL = 9,  
	INPUTGROUP_FRONTEND_RSTICK_ALL = 10,  
	INPUTGROUP_FRONTEND_GENERIC_UD = 11,  
	INPUTGROUP_FRONTEND_GENERIC_LR = 12,  
	INPUTGROUP_FRONTEND_GENERIC_ALL = 13,  
	INPUTGROUP_FRONTEND_BUMPERS = 14,  
	INPUTGROUP_FRONTEND_TRIGGERS = 15,  
	INPUTGROUP_FRONTEND_STICKS = 16,  
	INPUTGROUP_SCRIPT_DPAD_ALL = 17,  
	INPUTGROUP_SCRIPT_DPAD_UD = 18,  
	INPUTGROUP_SCRIPT_DPAD_LR = 19,  
	INPUTGROUP_SCRIPT_LSTICK_ALL = 20,  
	INPUTGROUP_SCRIPT_RSTICK_ALL = 21,  
	INPUTGROUP_SCRIPT_BUMPERS = 22,  
	INPUTGROUP_SCRIPT_TRIGGERS = 23,  
	INPUTGROUP_WEAPON_WHEEL_CYCLE = 24,  
	INPUTGROUP_FLY = 25,  
	INPUTGROUP_SUB = 26,  
	INPUTGROUP_VEH_MOVE_ALL = 27,  
	INPUTGROUP_CURSOR = 28,  
	INPUTGROUP_CURSOR_SCROLL = 29,  
	INPUTGROUP_SNIPER_ZOOM_SECONDARY = 30,  
	INPUTGROUP_VEH_HYDRAULICS_CONTROL = 31,  
	MAX_INPUTGROUPS = 32,  
	INPUTGROUP_INVALID = 33  
};  
0, 1 and 2 used in the scripts.  
```
</summary>
	]]

native "IS_CONTROL_JUST_RELEASED"
    hash "0x50F940259D3841E6"
	jhash (0x2314444B)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) was newly released since the last check.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control was recently released.</returns>
	]]

native "IS_CONTROL_JUST_PRESSED"
    hash "0x580417101DDB492F"
	jhash (0x4487F579)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) was newly pressed since the last check.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control was pressed.</returns>
	]]

native "IS_CONTROL_PRESSED"
    hash "0xF3A21BCD95725A4A"
	jhash (0x517A4384)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) is currently pressed.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control was pressed.</returns>
	]]

native "IS_DISABLED_CONTROL_JUST_PRESSED"
    hash "0x91AEF906BCA88877"
	jhash (0xEE6ABD32)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "IS_CONTROL_RELEASED"
    hash "0x648EE3E7F38877DD"
	jhash (0x1F91A06E)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) is currently _not_ pressed.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control is not pressed.</returns>
	]]

native "IS_DISABLED_CONTROL_JUST_RELEASED"
    hash "0x305C8DCD79DA8B0F"
	jhash (0xD6A679E1)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "IS_DISABLED_CONTROL_PRESSED"
    hash "0xE2587F8CBBD87B1D"
	jhash (0x32A93544)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "_IS_DISABLED_CONTROL_RELEASED"
    hash "0xFB6C4072E9A32E92"
	arguments {
		int "inputGroup",
		int "control",
	}
	alias "0xFB6C4072E9A32E92"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
inputGroup: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.
```
</summary>
	]]

native "_IS_INPUT_DISABLED"
    hash "0xA571D46727E2B718"
	arguments {
		int "inputGroup",
	}
	alias "_GET_LAST_INPUT_METHOD"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Seems to return true if the input is currently disabled. "_GET_LAST_INPUT_METHOD" didn't seem very accurate, but I've left the original description below.  
--  
index usually 2  
returns true if the last input method was made with mouse + keyboard, false if it was made with a gamepad  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "IS_LOOK_INVERTED"
    hash "0x77B612531280010D"
	jhash (0x313434B2)
	ns "PAD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_INPUT_JUST_DISABLED"
    hash "0x13337B38DB572509"
	arguments {
		int "inputGroup",
	}
	alias "0x13337B38DB572509"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
I may be wrong with this one, but from the looks of the scripts, it sets keyboard related stuff as soon as this returns true.  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "0x14D29BB12D47F68C"
    hash "0x14D29BB12D47F68C"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x23F09EADC01449D6"
    hash "0x23F09EADC01449D6"
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
inputGroup: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.

Hardcoded to return false.
```
</summary>
	]]

native "0x25AAA32BDC98F2A3"
    hash "0x25AAA32BDC98F2A3"
	ns "PAD"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Introduced: v1365
```
</summary>
	]]

native "0x5B73C77D9EB66E24"
    hash "0x5B73C77D9EB66E24"
	arguments {
		BOOL "p0",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0x6CD79468A1E595C6"
    hash "0x6CD79468A1E595C6"
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
inputGroup: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.
```
</summary>
	]]

native "0xA0CEFCEA390AAB9B"
    hash "0xA0CEFCEA390AAB9B"
	arguments {
		Any "p0",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0xCB0360EFEFB2580D"
    hash "0xCB0360EFEFB2580D"
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0x8290252FFF36ACB5"
    hash "0x8290252FFF36ACB5"
	arguments {
		int "inputGroup",
		int "red",
		int "green",
		int "blue",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
HUD_COLOUR_CONTROLLER_CHOP = 174;  
UI::GET_HUD_COLOUR(174, &v_6, &v_7, &v_8, &v_9);  
CONTROLS::_8290252FFF36ACB5(0, v_6, v_7, v_8);  
```
</summary>
	]]

native "_RESET_INPUT_MAPPING_SCHEME"
    hash "0x643ED62D5EA3BEBD"
	jhash (0x42140FF9)
	alias "0x643ED62D5EA3BEBD"
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
S*
```
</summary>
	]]

native "0xE1615EC03B3BB4FD"
    hash "0xE1615EC03B3BB4FD"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Used with IS_LOOK_INVERTED() and negates its affect.  
--  
Not sure how the person above got that description, but here's an actual example:  
if (CONTROLS::_GET_LAST_INPUT_METHOD(2)) {  
    if (a_5) {  
        if (CONTROLS::IS_LOOK_INVERTED()) {  
            a_3 *= -1;  
        }  
        if (CONTROLS::_E1615EC03B3BB4FD()) {  
            a_3 *= -1;  
        }  
    }  
}  
```
</summary>
	]]

native "_SET_CONTROL_NORMAL"
    hash "0xE8A25867FBA3B05E"
	arguments {
		int "inputGroup",
		int "control",
		float "amount",
	}
	alias "0xE8A25867FBA3B05E"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
This is for simulating player input.  
amount is a float value from 0   
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "0xF239400E16C23E08"
    hash "0xF239400E16C23E08"
	jhash (0x7D65EB6E)
	arguments {
		int "inputGroup",
		int "p1",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
Disables SET_PAD_SHAKE when set to -1 for a given inputGroup
```
</summary>
	]]

native "SET_INPUT_EXCLUSIVE"
    hash "0xEDE476E5EE29EDB1"
	jhash (0x4E8E29E6)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
inputGroup: 0 (PLAYER_CONTROL), 1 (unk) and 2 (unk) used in the scripts.
```
</summary>
	]]

native "_SET_CURSOR_LOCATION"
    hash "0xFC695459D4D0E219"
	arguments {
		float "x",
		float "y",
	}
	alias "0xFC695459D4D0E219"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Renamed to SET_CURSOR_LOCATION (I previously named it _SET_CURSOR_POSTION) which is the correct name as far as I can tell.  
```
</summary>
	]]

native "SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED"
    hash "0x798FDEB5B1575088"
	jhash (0xA86BD91F)
	arguments {
		BOOL "toggle",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "SET_PAD_SHAKE"
    hash "0x48B3886C1358D0D5"
	jhash (0x5D38BD2F)
	arguments {
		int "inputGroup",
		int "duration",
		int "frequency",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
p0 always seems to be 0  
duration in milliseconds   
frequency should range from about 10 (slow vibration) to 255 (very fast)  
example:  
SET_PAD_SHAKE(0, 100, 200);  
```
</summary>
	]]

native "_SWITCH_TO_INPUT_MAPPING_SCHEME"
    hash "0x3D42B92563939375"
	jhash (0xD2C80B2E)
	arguments {
		charPtr "name",
	}
	alias "0x3D42B92563939375"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Used in carsteal3 script with p0 = "Carsteal4_spycar".  
```
</summary>
	]]

native "_SWITCH_TO_INPUT_MAPPING_SCHEME_2"
    hash "0x4683149ED1DDE7A1"
	jhash (0xBBFC9050)
	arguments {
		charPtr "name",
	}
	alias "0x4683149ED1DDE7A1"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Same as 0x3D42B92563939375

S*
```
</summary>
	]]

native "STOP_PAD_SHAKE"
    hash "0x38C16A305E8CDC8D"
	jhash (0x8F75657E)
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "ARE_ALL_NAVMESH_REGIONS_LOADED"
    hash "0x8415D95B194A3AEA"
	jhash (0x34C4E789)
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "ADD_NAVMESH_BLOCKING_OBJECT"
    hash "0xFCD5C8E06E502F5A"
	jhash (0x2952BA56)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		BOOL "p7",
		Any "p8",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "_ARE_PATH_NODES_LOADED_IN_AREA"
    hash "0xF7B79A50B905A30D"
	jhash (0x86E80A17)
	arguments {
		float "x1",
		float "y1",
		float "x2",
		float "y2",
	}
	alias "0xF7B79A50B905A30D"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Only did a quick disassembly, but this function seems to load all path nodes in the given area. Parameters appear to be start x, start y, end x, end y.  
```
</summary>
	]]

native "ADD_NAVMESH_REQUIRED_REGION"
    hash "0x387EAD7EE42F6685"
	jhash (0x12B086EA)
	arguments {
		float "x",
		float "y",
		float "radius",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "DISABLE_NAVMESH_IN_AREA"
    hash "0x4C8872D8CDBE1B8B"
	jhash (0x6E37F132)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "DOES_NAVMESH_BLOCKING_OBJECT_EXIST"
    hash "0x0EAEB0DB4B132399"
	jhash (0x4B67D7EE)
	arguments {
		Any "p0",
	}
	alias "0x0EAEB0DB4B132399"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS"
    hash "0xADD95C7005C4A197"
	jhash (0xB114489B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
<summary>
```
Calculates the travel distance between a set of points.  
Doesn't seem to correlate with distance on gps sometimes.  
```
</summary>
	]]

native "CLEAR_GPS_DISABLED_ZONE_AT_INDEX"
    hash "0x2801D0012266DF07"
	jhash (0x59090745)
	arguments {
		int "index",
	}
	alias "0x2801D0012266DF07"
	alias "_CLEAR_GPS_DISABLED_ZONE_AT_INDEX"
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
Clears a disabled GPS route area from a certain index previously set using [`SET_GPS_DISABLED_ZONE_AT_INDEX`](#_0xD0BC1C6FB18EE154).
</summary>
<param name="index">Index of disabled zone.</param>
	]]

native "GET_CLOSEST_MAJOR_VEHICLE_NODE"
    hash "0x2EABE3B06F58C1BE"
	jhash (0x04B5F15B)
	arguments {
		float "x",
		float "y",
		float "z",
		Vector3Ptr "outPosition",
		float "unknown1",
		int "unknown2",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0  
```
</summary>
	]]

native "GET_CLOSEST_VEHICLE_NODE"
    hash "0x240A18690AE96513"
	jhash (0x6F5F1E6C)
	arguments {
		float "x",
		float "y",
		float "z",
		Vector3Ptr "outPosition",
		int "nodeType",
		float "p5",
		float "p6",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.  
----------  
Vector3 nodePos;  
GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)  
p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road.  
p5, p6 are always the same:  
0x40400000 (3.0), 0  
p5 can also be 100.0 and p6 can be 2.5:  
PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)  
Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
Starting at 2, every fourth node is under the map, always same coords.  
Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).   
gtaforums.com/topic/843561-pathfind-node-types  
```
</summary>
	]]

native "GENERATE_DIRECTIONS_TO_COORD"
    hash "0xF90125F1F79ECDF8"
	jhash (0xED35C094)
	arguments {
		float "x",
		float "y",
		float "z",
		BOOL "p3",
		intPtr "direction",
		floatPtr "vehicle",
		floatPtr "distToNxJunction",
	}
	ns "PATHFIND"
	returns "int"
	doc [[!
<summary>
```
Usage example:  
Public Function GenerateDirectionsToCoord(Pos As Vector3) As Tuple(Of String, Single, Single)  
        Dim f4, f5, f6 As New OutputArgument()  
        Native.Function.Call(Hash.GENERATE_DIRECTIONS_TO_COORD, Pos.X, Pos.Y, Pos.Z, True, f4, f5, f6)  
        Dim direction As String = f4.GetResult(Of Single)()  
        Return New Tuple(Of String, Single, Single)(direction.Substring(0, 1), f5.GetResult(Of Single)(), f6.GetResult(Of Single)())  
    End Function  
p3 I use 1  
direction:  
0 = You Have Arrived
1 = Recalculating Route, Please make a u-turn where safe  
2 = Please Proceed the Highlighted Route  
3 = In (distToNxJunction) Turn Left  
4 = In (distToNxJunction) Turn Right  
5 = In (distToNxJunction) Go Straight  
6 = In (distToNxJunction) Keep Left  
7 = In (distToNxJunction) Keep Right
8 = In (distToNxJunction) Join the freeway  
9 = In (distToNxJunction) Exit Freeway  
return value set to 0 always  
```
</summary>
	]]

native "GET_NEXT_GPS_DISABLED_ZONE_INDEX"
    hash "0xD3A6A0EF48823A8C"
	jhash (0xBE92551F)
	arguments {
		int "index",
	}
	alias "0xD3A6A0EF48823A8C"
	ns "PATHFIND"
	returns "int"
	doc [[!
<summary>
Gets the next zone that has been disabled using SET_GPS_DISABLED_ZONE_AT_INDEX.

```
NativeDB Removed Parameter 1: int index
```
</summary>
<returns>The disabled zone index</returns>
	]]

native "GET_CLOSEST_ROAD"
    hash "0x132F52BBA570FE92"
	jhash (0x567B0E11)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		int "p4",
		Vector3Ptr "p5",
		Vector3Ptr "p6",
		AnyPtr "p7",
		AnyPtr "p8",
		floatPtr "p9",
		BOOL "p10",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
<summary>
```
p1 seems to be always 1.0f in the scripts  
```
</summary>
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION"
    hash "0x45905BE8654AE067"
	jhash (0x928A4DEC)
	arguments {
		float "x",
		float "y",
		float "z",
		float "desiredX",
		float "desiredY",
		float "desiredZ",
		int "nthClosest",
		Vector3Ptr "outPosition",
		floatPtr "outHeading",
		int "nodetype",
		Any "p10",
		Any "p11",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  
p10 always equal 0x40400000  
p11 always equal 0  
```
</summary>
	]]

native "GET_CLOSEST_VEHICLE_NODE_WITH_HEADING"
    hash "0xFF071FB798B803B0"
	jhash (0x8BD5759B)
	arguments {
		float "x",
		float "y",
		float "z",
		Vector3Ptr "outPosition",
		floatPtr "outHeading",
		int "nodeType",
		float "p6",
		int "p7",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  
p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road.  
p6 is always 3.0  
p7 is always 0.  
Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
Starting at 2, every fourth node is under the map, always same coords.  
Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  
gtaforums.com/topic/843561-pathfind-node-types  
Example of usage, moving vehicle to closest path/road:  
Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);  
Vector3 closestVehicleNodeCoords;   
float roadHeading;   
PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);   
ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);  
ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);  
VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  
------------------------------------------------------------------  
C# Example (ins1de) : pastebin.com/fxtMWAHD  
```
</summary>
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING"
    hash "0x6448050E9C2A7207"
	jhash (0xC1AEB88D)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nthClosest",
		Vector3Ptr "outPosition",
		float "outHeading",
		Any "p6",
		float "p7",
		float "p8",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
<summary>
```
NativeDB Return Type: BOOL
```
</summary>
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE"
    hash "0xE50E52416CCF948B"
	jhash (0xF125BFCC)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nthClosest",
		Vector3Ptr "outPosition",
		Any "unknown1",
		Any "unknown2",
		Any "unknown3",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING"
    hash "0x80CA6A8B6C094CC4"
	jhash (0x7349C856)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nthClosest",
		Vector3Ptr "outPosition",
		floatPtr "heading",
		AnyPtr "unknown1",
		int "unknown2",
		float "unknown3",
		float "unknown4",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Get the nth closest vehicle node and its heading. (unknown2 = 9, unknown3 = 3.0, unknown4 = 2.5)  
```
</summary>
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_ID"
    hash "0x22D7275A79FE8215"
	jhash (0x3F358BEA)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nth",
		int "nodetype",
		float "p5",
		float "p6",
	}
	ns "PATHFIND"
	returns "int"
	doc [[!
<summary>
```
Returns the id.  
```
</summary>
	]]

native "GET_SAFE_COORD_FOR_PED"
    hash "0xB61C8E878A4199CA"
	jhash (0xB370270A)
	arguments {
		float "x",
		float "y",
		float "z",
		BOOL "onGround",
		Vector3Ptr "outPosition",
		int "flags",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
When onGround == true outPosition is a position located on the nearest pavement.  
When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.  
In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.   
16 works for me, 0 crashed the script.  
```
</summary>
	]]

native "GET_RANDOM_VEHICLE_NODE"
    hash "0x93E0DB8440B73A7D"
	jhash (0xAD1476EA)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		Vector3Ptr "outPosition",
		intPtr "nodeId",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_NODE_IS_GPS_ALLOWED"
    hash "0xA2AE5C478B96E3B6"
	jhash (0xEE4B1219)
	arguments {
		int "nodeID",
	}
	alias "0xA2AE5C478B96E3B6"
	alias "_GET_SUPPORTS_GPS_ROUTE_FLAG"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
p0 = VEHICLE_NODE_ID  
Returns false for nodes that aren't used for GPS routes.  
Example:  
Nodes in Fort Zancudo and LSIA are false  
```
</summary>
	]]

native "GET_STREET_NAME_AT_COORD"
    hash "0x2EB41072B4C1E4C0"
	jhash (0xDEBEEFCF)
	arguments {
		float "x",
		float "y",
		float "z",
		HashPtr "streetName",
		HashPtr "crossingRoad",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
Determines the name of the street which is the closest to the given coordinates.  
x,y,z - the coordinates of the street  
streetName - returns a hash to the name of the street the coords are on  
crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road  
Note: the names are returned as hashes, the strings can be returned using the function UI::GET_STREET_NAME_FROM_HASH_KEY.  
```
</summary>
	]]

native "GET_VEHICLE_NODE_POSITION"
    hash "0x703123E5E7D429C2"
	jhash (0xE38E252D)
	arguments {
		int "nodeId",
		Vector3Ptr "outPosition",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
Calling this with an invalid node id, will crash the game.  
Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid.  
Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().  
sfink: This native returns a pointer to a packed Vector3 struct in the RAX register, as do the following natives:  
AI::WAYPOINT_RECORDING_GET_COORD  
ENTITY::GET_ENTITY_MATRIX  
FIRE::GET_CLOSEST_FIRE_POS  
GAMEPLAY::FIND_SPAWN_POINT_IN_DIRECTION  
GAMEPLAY::GET_MODEL_DIMENSIONS  
GAMEPLAY::OVERRIDE_SAVE_HOUSE  
GAMEPLAY::_0x82FDE6A57EE4EE44  
GAMEPLAY::_0x8BDC7BFC57A81E76  
GAMEPLAY::_0x8D7A43EC6A5FEA45  
GAMEPLAY::_0xA4A0065E39C9F25C  
GAMEPLAY::_0xDFB4138EEFED7B81  
MOBILE::GET_MOBILE_PHONE_POSITION  
MOBILE::GET_MOBILE_PHONE_ROTATION  
NETWORK::NETWORK_GET_RESPAWN_RESULT  
OBJECT::_0x163F8B586BC95F2A  
PATHFIND::GET_CLOSEST_MAJOR_VEHICLE_NODE  
PATHFIND::GET_CLOSEST_ROAD  
PATHFIND::GET_CLOSEST_VEHICLE_NODE  
PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING  
PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE  
PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION  
PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING  
PATHFIND::GET_RANDOM_VEHICLE_NODE  
PATHFIND::GET_SAFE_COORD_FOR_PED  
PATHFIND::GET_VEHICLE_NODE_POSITION  
PATHFIND::_0x16F46FB18C8009E4  
VEHICLE::_0xA4822F1CF23F4810  
VEHICLE::_0xDF7E3EEB29642C38  
WATER::TEST_PROBE_AGAINST_ALL_WATER  
WATER::TEST_PROBE_AGAINST_WATER  
WEAPON::GET_PED_LAST_WEAPON_IMPACT_COORD  
WORLDPROBE::_0xFF6BE494C7987F34  
WORLDPROBE::_GET_RAYCAST_RESULT  
```
</summary>
	]]

native "GET_VEHICLE_NODE_PROPERTIES"
    hash "0x0568566ACBB5DEDC"
	jhash (0xCC90110B)
	arguments {
		float "x",
		float "y",
		float "z",
		intPtr "density",
		intPtr "flags",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: Gets the density and flags of the closest node to the specified position.  
Density is a value between 0 and 15, indicating how busy the road is.  
Flags is a bit field.  
```
</summary>
	]]

native "GET_VEHICLE_NODE_IS_SWITCHED_OFF"
    hash "0x4F5070AA58F69279"
	jhash (0x56737A3C)
	arguments {
		int "nodeID",
	}
	alias "0x4F5070AA58F69279"
	alias "_GET_IS_SLOW_ROAD_FLAG"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
p0 = VEHICLE_NODE_ID  
Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.  
Normal roads where plenty of Peds spawn will return false  
```
</summary>
	]]

native "IS_POINT_ON_ROAD"
    hash "0x125BF4ABFC536B09"
	jhash (0xCF198055)
	arguments {
		float "x",
		float "y",
		float "z",
		Vehicle "vehicle",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Gets a value indicating whether the specified position is on a road.  
The vehicle parameter is not implemented (ignored).  
```
</summary>
	]]

native "IS_VEHICLE_NODE_ID_VALID"
    hash "0x1EAF30FCFBF5AF74"
	jhash (0x57DFB1EF)
	arguments {
		int "vehicleNodeId",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the id is non zero.  
```
</summary>
	]]

native "IS_NAVMESH_LOADED_IN_AREA"
    hash "0xF813C7E63F9062A5"
	jhash (0x4C2BA99E)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.  
If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...  
```
</summary>
	]]

native "_IS_NAVMESH_REQUIRED_REGION_OWNED_BY_ANY_THREAD"
    hash "0x705A844002B39DC0"
	alias "0x705A844002B39DC0"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
IS_*
```
</summary>
	]]

native "LOAD_ALL_PATH_NODES"
    hash "0x80E4A6EDDB0BE8D9"
	jhash (0xC66E28C3)
	arguments {
		BOOL "keepInMemory",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Loads all path nodes.  
If keepInMemory is true, all path nodes will be loaded and be kept in memory; otherwise, all path nodes will be loaded, but unloaded as the game sees fit.  
- MulleDK19.  
August 29, 2017: This native has been removed in v1180.  
```
</summary>
	]]

native "0x01708E8DD3FF8C65"
    hash "0x01708E8DD3FF8C65"
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x07FB139B592FA687"
    hash "0x07FB139B592FA687"
	jhash (0x2CDA5012)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "0x0B919E1FB47CC4E0"
    hash "0x0B919E1FB47CC4E0"
	jhash (0x3C5085E4)
	arguments {
		float "p0",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "0x16F46FB18C8009E4"
    hash "0x16F46FB18C8009E4"
	jhash (0xF6422F9A)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x1FC289A0C3FF470F"
    hash "0x1FC289A0C3FF470F"
	jhash (0x90DF7A4C)
	arguments {
		BOOL "toggle",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "0x228E5C6AD4D74BFD"
    hash "0x228E5C6AD4D74BFD"
	jhash (0xD6A3B458)
	arguments {
		BOOL "toggle",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
Probably the opposite of  0x80E4A6EDDB0BE8D9 / LOAD_ALL_PATH_NODES  
```
</summary>
	]]

native "0x29C24BFBED8AB8FB"
    hash "0x29C24BFBED8AB8FB"
	jhash (0x3FE8C5A0)
	arguments {
		float "p0",
		float "p1",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
	]]

native "0x336511A34F2E5185"
    hash "0x336511A34F2E5185"
	jhash (0xA07C5B7D)
	arguments {
		float "left",
		float "right",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
<summary>
```
calculates two distances  
```
</summary>
	]]

native "0x3599D741C9AC6310"
    hash "0x3599D741C9AC6310"
	jhash (0x76751DD4)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
	]]

native "0x869DAACBBE9FA006"
    hash "0x869DAACBBE9FA006"
	jhash (0x286F82CC)
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x8ABE8608576D9CE3"
    hash "0x8ABE8608576D9CE3"
	jhash (0x3ED21C90)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
	]]

native "0xA0F8A7517A273C05"
    hash "0xA0F8A7517A273C05"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0xF3162836C28F9DA5"
    hash "0xF3162836C28F9DA5"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0xAA76052DDA9BFC3E"
    hash "0xAA76052DDA9BFC3E"
	jhash (0xD0F51299)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "0xBBB45C3CF5C8AA85"
    hash "0xBBB45C3CF5C8AA85"
	jhash (0x4B770634)
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "SET_GPS_DISABLED_ZONE"
    hash "0xDC20483CD3DD5201"
	jhash (0x720B8073)
	arguments {
		Any "x1",
		Any "y1",
		Any "z1",
		Any "x2",
		Any "y2",
		Any "z3",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
NativeDB Parameter 0: float x1
NativeDB Parameter 1: float y1
NativeDB Parameter 2: float z1
NativeDB Parameter 3: float x2
NativeDB Parameter 4: float y2
NativeDB Parameter 5: float z3
```
</summary>
	]]

native "REMOVE_NAVMESH_BLOCKING_OBJECT"
    hash "0x46399A7895957C0E"
	jhash (0x098602B0)
	arguments {
		Any "p0",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_GPS_DISABLED_ZONE_AT_INDEX"
    hash "0xD0BC1C6FB18EE154"
	jhash (0x98BDB311)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "index",
	}
	alias "0xD0BC1C6FB18EE154"
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.

You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.

**Setting a waypoint at the same coordinate:**

Disabled Zone: <https://i.imgur.com/P9VUuxM.png>

Enabled Zone (normal): <https://i.imgur.com/BPi24aw.png>
</summary>
<param name="x1">X coordinate of first vector.</param>
<param name="y1">Y coordinate of first vector.</param>
<param name="z1">Z coordinate of first vector.</param>
<param name="x2">X coordinate of second vector.</param>
<param name="y2">Y coordinate of second vector.</param>
<param name="z2">Z coordinate of second vector.</param>
<param name="index">Index of zone.</param>
	]]

native "REMOVE_NAVMESH_REQUIRED_REGIONS"
    hash "0x916F0A3CDEC3445E"
	jhash (0x637BB680)
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_IGNORE_NO_GPS_FLAG"
    hash "0x72751156E7678833"
	jhash (0xB72CF194)
	arguments {
		BOOL "toggle",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATHS_BACK_TO_ORIGINAL"
    hash "0xE04B48F2CC926253"
	jhash (0x3F1ABDA4)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 7: Any p6
```
</summary>
	]]

native "SET_PED_PATHS_IN_AREA"
    hash "0x34F060F4BF92E018"
	jhash (0x2148EA84)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "unknown",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
NativeDB Added Parameter 8: Any p7
```
</summary>
	]]

native "SET_ROADS_BACK_TO_ORIGINAL"
    hash "0x1EE7063B80FFC77C"
	jhash (0x86AC4A85)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
missing a last parameter int p6  
```

```
NativeDB Added Parameter 7: Any p6
```
</summary>
	]]

native "SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA"
    hash "0x0027501B9F3B407E"
	jhash (0x9DB5D209)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "p6",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
bool p7 - always 1  
```

```
NativeDB Added Parameter 8: Any p7
```
</summary>
	]]

native "SET_ROADS_IN_ANGLED_AREA"
    hash "0x1A5AA1208AF5DB59"
	jhash (0xBD088F4B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "angle",
		BOOL "unknown1",
		BOOL "unknown2",
		BOOL "unknown3",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
/* Corrected conflicting parameter names */  
```
</summary>
	]]

native "SET_ROADS_IN_AREA"
    hash "0xBF1A602B5BA52FEE"
	jhash (0xEBC7B918)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "unknown1",
		BOOL "unknown2",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
/* Corrected conflicting parameter names */  
```
</summary>
	]]

native "UPDATE_NAVMESH_BLOCKING_OBJECT"
    hash "0x109E99373F290687"
	jhash (0x4E9776D0)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		Any "p8",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "ADD_ARMOUR_TO_PED"
    hash "0x5BA652A0CD14DF2F"
	jhash (0xF686B26E)
	arguments {
		Ped "ped",
		int "amount",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.  
```
</summary>
	]]

native "ADD_PED_DECORATION_FROM_HASHES"
    hash "0x5F5D1665E352A839"
	jhash (0x70559AC7)
	arguments {
		Ped "ped",
		Hash "collection",
		Hash "overlay",
	}
	alias "_APPLY_PED_OVERLAY"
	alias "_SET_PED_DECORATION"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.  
collection - PedDecorationCollection filename hash  
overlay - Item name hash  
Example:  
Entry inside "mpbeach_overlays.xml" -  
<Item>  
  <uvPos x="0.500000" y="0.500000" />  
  <scale x="0.600000" y="0.500000" />  
  <rotation value="0.000000" />  
  <nameHash>FM_Hair_Fuzz</nameHash>  
  <txdHash>mp_hair_fuzz</txdHash>  
  <txtHash>mp_hair_fuzz</txtHash>  
  <zone>ZONE_HEAD</zone>  
  <type>TYPE_TATTOO</type>  
  <faction>FM</faction>  
  <garment>All</garment>  
  <gender>GENDER_DONTCARE</gender>  
  <award />  
  <awardLevel />  
</Item>  
Code:  
PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("mpbeach_overlays"), GAMEPLAY::GET_HASH_KEY("fm_hair_fuzz"))  
```
</summary>
	]]

native "ADD_PED_DECORATION_FROM_HASHES_IN_CORONA"
    hash "0x5619BFA07CFD7833"
	jhash (0x8CD3E487)
	arguments {
		Ped "ped",
		Hash "collection",
		Hash "overlay",
	}
	alias "0x5619BFA07CFD7833"
	alias "_SET_PED_FACIAL_DECORATION"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "ADD_RELATIONSHIP_GROUP"
    hash "0xF372BC22FCB88606"
	jhash (0x8B635546)
	arguments {
		charPtr "name",
		HashPtr "groupHash",
	}
	ns "PED"
	returns "Any"
	doc [[!
<summary>
```
Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.  
```
</summary>
	]]

native "ADD_SCENARIO_BLOCKING_AREA"
    hash "0x1B5C85C612E5256E"
	jhash (0xA38C0234)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "APPLY_PED_BLOOD"
    hash "0x83F7E01C7B769A26"
	jhash (0x376CE3C0)
	arguments {
		Ped "ped",
		int "boneIndex",
		float "xRot",
		float "yRot",
		float "zRot",
		charPtr "woundType",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Found one occurence in re_crashrescue.c4  
PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");  
```
</summary>
	]]

native "APPLY_PED_BLOOD_BY_ZONE"
    hash "0x3311E47B91EDCBBC"
	jhash (0x8F3F3A9C)
	arguments {
		Ped "ped",
		Any "p1",
		float "p2",
		float "p3",
		AnyPtr "p4",
	}
	alias "0x3311E47B91EDCBBC"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "APPLY_DAMAGE_TO_PED"
    hash "0x697157CED63F18D4"
	jhash (0x4DC27FCF)
	arguments {
		Ped "ped",
		int "damageAmount",
		BOOL "armorFirst",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
damages a ped with the given amount  
----  
armorFirst means it will damage/lower the armor first before damaging the player.  
setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.  
```

```
NativeDB Added Parameter 4: Any p3
```
</summary>
	]]

native "APPLY_PED_BLOOD_SPECIFIC"
    hash "0xEF0D582CBF2D9B0F"
	jhash (0xFC13CE80)
	arguments {
		Ped "ped",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
		float "p7",
		AnyPtr "p8",
	}
	alias "0xEF0D582CBF2D9B0F"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "APPLY_PED_BLOOD_DAMAGE_BY_ZONE"
    hash "0x816F6981C60BF53B"
	jhash (0x1E54DB12)
	arguments {
		Ped "ped",
		Any "p1",
		float "p2",
		float "p3",
		Any "p4",
	}
	alias "0x816F6981C60BF53B"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "APPLY_PED_DAMAGE_PACK"
    hash "0x46DF918788CB093F"
	jhash (0x208D0CB8)
	arguments {
		Ped "ped",
		charPtr "damagePack",
		float "damage",
		float "mult",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Damage Packs:  
"SCR_TrevorTreeBang"  
"HOSPITAL_0"  
"HOSPITAL_1"  
"HOSPITAL_2"  
"HOSPITAL_3"  
"HOSPITAL_4"  
"HOSPITAL_5"  
"HOSPITAL_6"  
"HOSPITAL_7"  
"HOSPITAL_8"  
"HOSPITAL_9"  
"SCR_Dumpster"  
"BigHitByVehicle"  
"SCR_Finale_Michael_Face"  
"SCR_Franklin_finb"  
"SCR_Finale_Michael"  
"SCR_Franklin_finb2"  
"Explosion_Med"  
"SCR_Torture"  
"SCR_TracySplash"  
"Skin_Melee_0"  
Additional damage packs:  
gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227  
```
</summary>
	]]

native "APPLY_PED_DAMAGE_DECAL"
    hash "0x397C38AA7B4A5F83"
	jhash (0x8A13A41F)
	arguments {
		Ped "ped",
		int "damageZone",
		float "xOffset",
		float "yOffset",
		float "heading",
		float "scale",
		float "alpha",
		int "variation",
		BOOL "fadeIn",
		charPtr "decalName",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
APPLY_PED_DAMAGE_DECAL(ped, 1, 0.5f, 0.513f, 0f, 1f, unk, 0, 0, "blushing");  
```
</summary>
	]]

native "ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY"
    hash "0x272E4723B56A3B96"
	jhash (0xE9BA6189)
	arguments {
		int "sceneID",
		Entity "entity",
		int "boneIndex",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CAN_CREATE_RANDOM_BIKE_RIDER"
    hash "0xEACEEDA81751915C"
	jhash (0x7018BE31)
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_CREATE_RANDOM_COPS"
    hash "0x5EE2CAFF7F17770D"
	jhash (0xAA73DAD9)
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_CREATE_RANDOM_DRIVER"
    hash "0xB8EB95E5B4E56978"
	jhash (0x99861609)
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_CREATE_RANDOM_PED"
    hash "0x3E8349C08E4B82E4"
	jhash (0xF9ABE88F)
	arguments {
		BOOL "unk",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_KNOCK_PED_OFF_VEHICLE"
    hash "0x51AC07A44D4F5B8A"
	jhash (0xC9D098B3)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_PED_RAGDOLL"
    hash "0x128F79EDCECE4FD5"
	jhash (0xC0EFB7A3)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Prevents the ped from going limp.  
[Example: Can prevent peds from falling when standing on moving vehicles.]  
```
</summary>
	]]

native "CAN_PED_IN_COMBAT_SEE_TARGET"
    hash "0xEAD42DE3610D0721"
	jhash (0xCCD525E1)
	arguments {
		Ped "ped",
		Ped "target",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_PED_SEE_HATED_PED"
    hash "0x6CD5A433374D4CFB"
	jhash (0x74A0F291)
	arguments {
		Ped "ped1",
		Ped "ped2",
	}
	alias "0x6CD5A433374D4CFB"
	alias "_CAN_PED_SEE_PED"
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if ped1 can see ped2 in their line of vision  
```
</summary>
	]]

native "CLEAR_ALL_PED_PROPS"
    hash "0xCD8A7537A9B52F06"
	jhash (0x81DF8B43)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "CLEAR_FACIAL_IDLE_ANIM_OVERRIDE"
    hash "0x726256CC1EEB182F"
	jhash (0x5244F4E2)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_ALL_PED_VEHICLE_FORCED_SEAT_USAGE"
    hash "0xE6CA85E7259CE16B"
	jhash (0xCC1D8F66)
	arguments {
		Ped "ped",
	}
	alias "0xE6CA85E7259CE16B"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_ALTERNATE_MOVEMENT_ANIM"
    hash "0xD8D19675ED5FBDCE"
	jhash (0x7A7F5BC3)
	arguments {
		Ped "ped",
		int "stance",
		float "p2",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_ALTERNATE_WALK_ANIM"
    hash "0x8844BBFCE30AA9E9"
	jhash (0x5736FB23)
	arguments {
		Ped "ped",
		float "p1",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_BLOOD_DAMAGE_BY_ZONE"
    hash "0x56E3B78C5408D9F4"
	jhash (0xF210BE69)
	arguments {
		Ped "ped",
		int "p1",
	}
	alias "0x56E3B78C5408D9F4"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Somehow related to changing ped's clothes.  
```
</summary>
	]]

native "CLEAR_PED_BLOOD_DAMAGE"
    hash "0x8FE22675A5A45817"
	jhash (0xF7ADC960)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "_CLEAR_PED_COVER_CLIPSET_OVERRIDE"
    hash "0xC79196DCB36F6121"
	arguments {
		Ped "ped",
	}
	alias "0xC79196DCB36F6121"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
CLEAR_PED_*
```
</summary>
	]]

native "CLEAR_PED_DAMAGE_DECAL_BY_ZONE"
    hash "0x523C79AEEFCC4A2A"
	jhash (0x70AA5B7D)
	arguments {
		Ped "ped",
		int "p1",
		charPtr "p2",
	}
	alias "0x523C79AEEFCC4A2A"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
p1: from 0 to 5 in the b617d scripts.  
p2: "blushing" and "ALL" found in the b617d scripts.  
```
</summary>
	]]

native "CLEAR_PED_DECORATIONS"
    hash "0x0E5173C163976E38"
	jhash (0xD4496BF3)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_DECORATIONS_LEAVE_SCARS"
    hash "0xE3B27E70CEAB9F0C"
	jhash (0xEFD58EB9)
	arguments {
		Ped "ped",
	}
	alias "0xE3B27E70CEAB9F0C"
	alias "_CLEAR_PED_FACIAL_DECORATIONS"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_ENV_DIRT"
    hash "0x6585D955A68452A5"
	jhash (0xA993915F)
	arguments {
		Ped "ped",
	}
	alias "0x6585D955A68452A5"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Something related to clearing the ped because always used with CLEAR_PED_WETNESS, CLEAR_PED_BLOOD_DAMAGE and RESET_PED_VISIBLE_DAMAGE.  
```
</summary>
	]]

native "CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE"
    hash "0x4AFE3690D7E0B5AC"
	jhash (0xAEC9163B)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_LAST_DAMAGE_BONE"
    hash "0x8EF6B7AC68E2F01B"
	jhash (0x56CB715E)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_NON_CREATION_AREA"
    hash "0x2E05208086BA0651"
	jhash (0x6F7043A3)
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_PROP"
    hash "0x0943E5B8E078E76E"
	jhash (0x2D23D743)
	arguments {
		Ped "ped",
		int "propId",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "CLEAR_PED_SCUBA_GEAR_VARIATION"
    hash "0xB50EB4CCB29704AC"
	jhash (0x080275EE)
	arguments {
		Ped "ped",
	}
	alias "0xB50EB4CCB29704AC"
	alias "_REMOVE_PED_SCUBA_GEAR_NOW"
	ns "PED"
	returns "void"
	doc [[!
<summary>
Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
</summary>
<param name="ped">The ped to remove the scuba gear from.</param>
	]]

native "CLEAR_PED_WETNESS"
    hash "0x9C720776DAA43E7E"
	jhash (0x629F15BD)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.  
```
</summary>
	]]

native "CLEAR_RAGDOLL_BLOCKING_FLAGS"
    hash "0xD86D101FCFD00A4B"
	jhash (0x77CBA290)
	arguments {
		Ped "ped",
		int "flags",
	}
	alias "0xD86D101FCFD00A4B"
	alias "_RESET_PED_RAGDOLL_BLOCKING_FLAGS"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
There seem to be 26 flags  
```
</summary>
	]]

native "CLEAR_RELATIONSHIP_BETWEEN_GROUPS"
    hash "0x5E29243FB56FC6D4"
	jhash (0x994B8C2D)
	arguments {
		int "relationship",
		Hash "group1",
		Hash "group2",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Clears the relationship between two groups. This should be called twice (once for each group).  
Relationship types:  
0 = Companion  
1 = Respect  
2 = Like  
3 = Neutral  
4 = Dislike  
5 = Hate  
255 = Pedestrians  
(Credits: Inco)  
Example:  
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
```
</summary>
	]]

native "CLONE_PED"
    hash "0xEF29A16337FACADB"
	jhash (0x8C8A8D6E)
	arguments {
		Ped "ped",
		float "heading",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
Example of Cloning Your Player:  
CLONE_PED(PLAYER_PED_ID(), GET_ENTITY_HEADING(PLAYER_PED_ID()), 0, 1);  
```
</summary>
	]]

native "CLONE_PED_TO_TARGET"
    hash "0xE952D6431689AD9A"
	jhash (0xFC70EEC7)
	arguments {
		Ped "ped",
		Ped "targetPed",
	}
	alias "_ASSIGN_PLAYER_TO_PED"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
What exactly is the difference? What does this exactly do by chance?  
^ Copies ped's components and props to targetPed.  
---------------------------------------------------------------------------------  
| Internally has a 3rd param (bool) which is set to true by default |  
```
</summary>
	]]

native "_CLONE_PED_TO_TARGET_EX"
    hash "0x148B08C2D2ACB884"
	arguments {
		Ped "ped",
		Ped "targetPed",
		Any "p2",
	}
	alias "0x148B08C2D2ACB884"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "_CLONE_PED_2"
    hash "0x668FD40BCBA5DE48"
	arguments {
		Ped "ped",
		Any "heading",
		Any "isNetwork",
		Any "thisScriptCheck",
		Any "p4",
	}
	alias "0x668FD40BCBA5DE48"
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
Used one time in fmmc_launcher.c instead of ClonePed because ?

```
NativeDB Parameter 1: float heading
NativeDB Parameter 2: BOOL isNetwork
NativeDB Parameter 3: BOOL thisScriptCheck
```
</summary>
	]]

native "CREATE_GROUP"
    hash "0x90370EBE0FEE1A3D"
	jhash (0x8DC0368D)
	arguments {
		int "unused",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Creates a new ped group.  
Groups can contain up to 8 peds.  
The parameter is unused.  
Returns a handle to the created group, or 0 if a group couldn't be created.  
```
</summary>
	]]

native "CREATE_NM_MESSAGE"
    hash "0x418EF2A1BCE56685"
	jhash (0x1CFBFD4B)
	arguments {
		BOOL "startImmediately",
		int "messageId",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Creates a new NaturalMotion message.  
startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.  
messageId: The ID of the NaturalMotion message.  
If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.  
```
</summary>
	]]

native "_CREATE_PARACHUTE_OBJECT"
    hash "0x8C4F3BF23B6237DB"
	jhash (0x19198A16)
	arguments {
		Ped "ped",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x8C4F3BF23B6237DB"
	ns "PED"
	returns "Object"
	doc [[!
	]]

native "CREATE_PED"
    hash "0xD49F9B0955C367DE"
	jhash (0x0389EF71)
	arguments {
		int "pedType",
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		float "heading",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p7 - last parameter does not mean ped handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
*Heading*: 0.0  
*Heading* is the Z axis spawn rotation of the ped 0->5th parameter.  
Ped Types:  
enum PedTypes  
{  
	PED_TYPE_PLAYER_0,// michael  
	PED_TYPE_PLAYER_1,// franklin  
	PED_TYPE_NETWORK_PLAYER,	// mp character  
	PED_TYPE_PLAYER_2,// trevor  
	PED_TYPE_CIVMALE,  
	PED_TYPE_CIVFEMALE,  
	PED_TYPE_COP,  
	PED_TYPE_GANG_ALBANIAN,  
	PED_TYPE_GANG_BIKER_1,  
	PED_TYPE_GANG_BIKER_2,  
	PED_TYPE_GANG_ITALIAN,  
	PED_TYPE_GANG_RUSSIAN,  
	PED_TYPE_GANG_RUSSIAN_2,  
	PED_TYPE_GANG_IRISH,  
	PED_TYPE_GANG_JAMAICAN,  
	PED_TYPE_GANG_AFRICAN_AMERICAN,  
	PED_TYPE_GANG_KOREAN,  
	PED_TYPE_GANG_CHINESE_JAPANESE,  
	PED_TYPE_GANG_PUERTO_RICAN,  
	PED_TYPE_DEALER,  
	PED_TYPE_MEDIC,  
	PED_TYPE_FIREMAN,  
	PED_TYPE_CRIMINAL,  
	PED_TYPE_BUM,  
	PED_TYPE_PROSTITUTE,  
	PED_TYPE_SPECIAL,  
	PED_TYPE_MISSION,  
	PED_TYPE_SWAT,  
	PED_TYPE_ANIMAL,  
	PED_TYPE_ARMY  
};  
```
</summary>
	]]

native "CREATE_PED_INSIDE_VEHICLE"
    hash "0x7DD959874C1FD534"
	jhash (0x3000F092)
	arguments {
		Vehicle "vehicle",
		int "pedType",
		Hash "modelHash",
		int "seat",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p5 - last parameter does not mean ped handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
Ped Types:  
enum ePedType  
{  
	PED_TYPE_PLAYER_0 = 0,  
	PED_TYPE_PLAYER_1 = 1,  
	PED_TYPE_PLAYER_2 = 3,  
	PED_TYPE_CIVMALE = 4,  
	PED_TYPE_CIVFEMALE = 5,  
	PED_TYPE_COP = 6,  
	PED_TYPE_UNKNOWN_7 = 7,  
	PED_TYPE_UNKNOWN_12 = 12, // gang member?  
	PED_TYPE_UNKNOWN_19 = 19,  
	PED_TYPE_MEDIC = 20,  
	PED_TYPE_FIREMAN = 21,  
	PED_TYPE_UNKNOWN_22 = 22,  
	PED_TYPE_UNKNOWN_25 = 25,  
	PED_TYPE_UNKNOWN_26 = 26,  
	PED_TYPE_SWAT = 27,  
	PED_TYPE_ANIMAL = 28,  
	PED_TYPE_ARMY = 29  
};  
```
</summary>
	]]

native "CREATE_RANDOM_PED"
    hash "0xB4AC7D0CF06BFE8F"
	jhash (0x5A949543)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
vb.net  
Dim ped_handle As Integer  
                    With Game.Player.Character  
                        Dim pos As Vector3 = .Position + .ForwardVector * 3  
                        ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)  
                    End With  
Creates a Ped at the specified location, returns the Ped Handle.    
Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.  
```
</summary>
	]]

native "CREATE_RANDOM_PED_AS_DRIVER"
    hash "0x9B62392B474F44A0"
	jhash (0xB927CE9A)
	arguments {
		Vehicle "vehicle",
		BOOL "returnHandle",
	}
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "_CREATE_SYNCHRONIZED_SCENE_2"
    hash "0x62EC273D00187DCA"
	jhash (0xF3876894)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "object",
	}
	alias "0x62EC273D00187DCA"
	ns "PED"
	returns "int"
	doc [[!
	]]

native "CREATE_SYNCHRONIZED_SCENE"
    hash "0x8C18E0F9080ADD73"
	jhash (0xFFDDF8FA)
	arguments {
		float "x",
		float "y",
		float "z",
		float "roll",
		float "pitch",
		float "yaw",
		int "p6",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
p6 always 2 (but it doesnt seem to matter...)  
roll and pitch 0  
yaw to Ped.rotation  
```
</summary>
	]]

native "DELETE_PED"
    hash "0x9614299DCB53E54B"
	jhash (0x13EFB9A0)
	arguments {
		PedPtr "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.  
```
</summary>
	]]

native "DISABLE_HEAD_BLEND_PALETTE_COLOR"
    hash "0xA21C118553BBDF02"
	jhash (0xC6F36292)
	arguments {
		Ped "ped",
	}
	alias "0xA21C118553BBDF02"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "DETACH_SYNCHRONIZED_SCENE"
    hash "0x6D38F1F04CBB37EA"
	jhash (0x52A1CAB2)
	arguments {
		int "sceneID",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "_DISPOSE_SYNCHRONIZED_SCENE"
    hash "0xCD9CC7E200A52A6F"
	jhash (0xBF7F9035)
	arguments {
		int "scene",
	}
	alias "0xCD9CC7E200A52A6F"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "_DOES_SCENARIO_BLOCKING_AREA_EXIST"
    hash "0x8A24B067D175A7BD"
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	alias "0x8A24B067D175A7BD"
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "DOES_GROUP_EXIST"
    hash "0x7C6B0C22F9F40BBE"
	jhash (0x935C978D)
	arguments {
		int "groupId",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "EXPLODE_PED_HEAD"
    hash "0x2D05CED3A38D0F3A"
	jhash (0x05CC1380)
	arguments {
		Ped "ped",
		Hash "weaponHash",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Forces the ped to fall back and kills it.  
It doesn't really explode the ped's head but it kills the ped  
```
</summary>
	]]

native "_FREEZE_PED_CAMERA_ROTATION"
    hash "0xFF287323B0E2C69A"
	jhash (0x290421BE)
	arguments {
		Ped "ped",
	}
	alias "0xFF287323B0E2C69A"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "FORCE_PED_MOTION_STATE"
    hash "0xF28965D04F570DCA"
	jhash (0x164DDEFF)
	arguments {
		Ped "ped",
		Hash "motionStateHash",
		BOOL "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Some motionstate hashes are  
0xec17e58 (standing idle), 0xbac0f10b (nothing?), 0x3f67c6af (aiming with pistol 2-h), 0x422d7a25 (stealth), 0xbd8817db, 0x916e828c  
and those for the strings  
"motionstate_idle", "motionstate_walk", "motionstate_run", "motionstate_actionmode_idle", and "motionstate_actionmode_walk".  
Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in the scripts. p4 is very rarely something other than 0.  
 [31/03/2017] ins1de :  
        enum MotionState  
        {  
            StopRunning = -530524,  
            StopWalking = -668482597,  
            Idle = 247561816, // 1, 1, 0  
            Idl2 = -1871534317,  
            SkyDive =-1161760501, // 0, 1, 0  
            Stealth = 1110276645,  
            Sprint = -1115154469,  
            Swim = -1855028596,  
            Unknown1 = 1063765679,  
            Unknown2 = -633298724,  
        }  
```

```
NativeDB Parameter 3: int p3
```
</summary>
	]]

native "FORCE_PED_TO_OPEN_PARACHUTE"
    hash "0x16E42E800B472221"
	jhash (0xA819680B)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "GET_ANIM_INITIAL_OFFSET_POSITION"
    hash "0xBE22B26DD764C040"
	jhash (0xC59D4268)
	arguments {
		charPtr "animDict",
		charPtr "animName",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		float "p8",
		int "p9",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_ANIM_INITIAL_OFFSET_ROTATION"
    hash "0x4B805E6046EE9E47"
	jhash (0x5F7789E6)
	arguments {
		charPtr "animDict",
		charPtr "animName",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		float "p8",
		int "p9",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_CLOSEST_PED"
    hash "0xC33AB876A77F8164"
	jhash (0x8F6C1F55)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		PedPtr "outPed",
		BOOL "p7",
		BOOL "p8",
		int "pedType",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Gets the closest ped in a radius.  
Ped Types:  
Any ped = -1  
Player = 1  
Male = 4   
Female = 5   
Cop = 6  
Human = 26  
SWAT = 27   
Animal = 28  
Army = 29  
------------------  
P4 P5 P7 P8  
1  0  x  x  = return nearest walking Ped  
1  x  0  x  = return nearest walking Ped  
x  1  1  x  = return Ped you are using  
0  0  x  x  = no effect  
0  x  0  x  = no effect  
x = can be 1 or 0. Does not have any obvious changes.  
This function does not return ped who is:  
1. Standing still  
2. Driving  
3. Fleeing  
4. Attacking  
This function only work if the ped is:  
1. walking normally.  
2. waiting to cross a road.  
Note: PED::GET_PED_NEARBY_PEDS works for more peds.  
```
</summary>
	]]

native "GET_COMBAT_FLOAT"
    hash "0x52DFF8A10508090A"
	jhash (0x511D7EF8)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "PED"
	returns "float"
	doc [[!
<summary>
```
p0: Ped Handle  
p1: int i | 0 <= i <= 27  
p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:  
<BlindFireChance value="0.1"/>  
<WeaponShootRateModifier value="1.0"/>  
<TimeBetweenBurstsInCover value="1.25"/>  
<BurstDurationInCover value="2.0"/>  
<TimeBetweenPeeks value="10.0"/>  
<WeaponAccuracy value="0.18"/>  
<FightProficiency value="0.8"/>  
<StrafeWhenMovingChance value="1.0"/>  
<WalkWhenStrafingChance value="0.0"/>  
<AttackWindowDistanceForCover value="55.0"/>  
<TimeToInvalidateInjuredTarget value="9.0"/>  
<TriggerChargeTime_Near value="4.0"/>  
<TriggerChargeTime_Far value="10.0"/>  
-------------Confirmed by editing combatbehavior.meta:  
p1:  
0=BlindFireChance  
1=BurstDurationInCover  
3=TimeBetweenBurstsInCover  
4=TimeBetweenPeeks  
5=StrafeWhenMovingChance  
8=WalkWhenStrafingChance  
11=AttackWindowDistanceForCover  
12=TimeToInvalidateInjuredTarget  
16=OptimalCoverDistance  
```
</summary>
	]]

native "_GET_FIRST_PARENT_ID_FOR_PED_TYPE"
    hash "0x68D353AB88B97E0C"
	jhash (0x211DEFEC)
	arguments {
		int "type",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.  
Used when calling SET_PED_HEAD_BLEND_DATA.  
```
</summary>
	]]

native "GET_DEAD_PED_PICKUP_COORDS"
    hash "0xCD5003B097200F36"
	jhash (0x129F9DC1)
	arguments {
		Ped "ped",
		float "p1",
		float "p2",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
	]]

native "GET_JACK_TARGET"
    hash "0x5486A79D9FBD342D"
	jhash (0x1D196361)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "GET_MELEE_TARGET_FOR_PED"
    hash "0x18A3E9EE1297FD39"
	jhash (0xAFEC26A4)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "GET_GROUP_SIZE"
    hash "0x8DE69FE35CA09A45"
	jhash (0xF7E1A691)
	arguments {
		int "groupID",
		AnyPtr "unknown",
		intPtr "sizeInMembers",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
p1 may be a BOOL representing whether or not the group even exists  
```
</summary>
	]]

native "GET_MOUNT"
    hash "0xE7E11B8DCBED1058"
	jhash (0xDD31EC4E)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
Function just returns 0  
void __fastcall ped__get_mount(NativeContext *a1)  
{  
  NativeContext *v1; // rbx@1  
  v1 = a1;  
  GetAddressOfPedFromScriptHandle(a1->Args->Arg1);  
  v1->Returns->Item1= 0;  
}  
```
</summary>
	]]

native "_GET_NUM_HAIR_COLORS"
    hash "0xE5C0CF872C2AD150"
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Used for freemode (online) characters.  
```
</summary>
	]]

native "_GET_NUM_HEAD_OVERLAY_VALUES"
    hash "0xCF1CE768BB43480E"
	jhash (0xFF43C18D)
	arguments {
		int "overlayID",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Used with freemode (online) characters.  
```
</summary>
	]]

native "_GET_NUM_MAKEUP_COLORS"
    hash "0xD1F7CA1535D22818"
	alias "0xD1F7CA1535D22818"
	ns "PED"
	returns "int"
	doc [[!
	]]

native "_GET_NUM_PARENT_PEDS_OF_TYPE"
    hash "0x5EF37013A6539C9D"
	jhash (0x095D3BD8)
	arguments {
		int "type",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.  
```
</summary>
	]]

native "GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS"
    hash "0x27561561732A7842"
	jhash (0x9754C27D)
	arguments {
		Ped "ped",
		int "componentId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS"
    hash "0x5FAF9754E789FB47"
	jhash (0xC9780B95)
	arguments {
		Ped "ped",
		int "propId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS"
    hash "0xA6E7F1CEB523E171"
	jhash (0x4892B882)
	arguments {
		Ped "ped",
		int "propId",
		int "drawableId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Need to check behavior when drawableId = -1  
- Doofy.Ass  
Why this function doesn't work and return nill value?  
GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(PLAYER.PLAYER_PED_ID(), 0, 5)  
tick: scripts/addins/menu_execute.lua:51: attempt to call field 'GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS' (a nil value)  
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_PED_ACCURACY"
    hash "0x37F4AD56ECBC0CD6"
	jhash (0x0A2A0AA0)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_NUMBER_OF_PED_TEXTURE_VARIATIONS"
    hash "0x8F7156A3142A6BAD"
	jhash (0x83D9FBE7)
	arguments {
		Ped "ped",
		int "componentId",
		int "drawableId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_PED_ALERTNESS"
    hash "0xF6AA118530443FD2"
	jhash (0xF83E4DAF)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Returns the ped's alertness (0-3).  
Values :   
0 : Neutral  
1 : Heard something (gun shot, hit, etc)  
2 : Knows (the origin of the event)  
3 : Fully alerted (is facing the event?)  
If the Ped does not exist, returns -1.  
```
</summary>
	]]

native "GET_PED_ARMOUR"
    hash "0x9483AF821605B1D8"
	jhash (0x2CE311A7)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_PED_AS_GROUP_MEMBER"
    hash "0x51455483CF23ED97"
	jhash (0x9AA3CC8C)
	arguments {
		int "groupID",
		int "memberNumber",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
from fm_mission_controller.c4 (variable names changed for clarity):  
int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());  
PED::GET_GROUP_SIZE(group, &unused, &groupSize);  
if (groupSize >= 1) {  
. . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {  
. . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);  
. . . . . . . . //and so on  
```
</summary>
	]]

native "GET_PED_AS_GROUP_LEADER"
    hash "0x5CCE68DBD5FE93EC"
	jhash (0x52873C6A)
	arguments {
		int "groupID",
	}
	alias "_GET_PED_AS_GROUP_LEADER"
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "GET_PED_BONE_COORDS"
    hash "0x17C07FC640E86B4E"
	jhash (0x4579CAB1)
	arguments {
		Ped "ped",
		int "boneId",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
<summary>
```
Gets the position of the specified bone of the specified ped.  
ped: The ped to get the position of a bone from.  
boneId: The ID of the bone to get the position from. This is NOT the index.  
offsetX: The X-component of the offset to add to the position relative to the bone's rotation.  
offsetY: The Y-component of the offset to add to the position relative to the bone's rotation.  
offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.  
```
</summary>
	]]

native "GET_PED_BONE_INDEX"
    hash "0x3F428D08BE5AAE31"
	jhash (0x259C6BA2)
	arguments {
		Ped "ped",
		int "boneId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Bone ID enum: pastebin.com/3pz17QGd  
```
</summary>
	]]

native "GET_PED_COMBAT_MOVEMENT"
    hash "0xDEA92412FCAEB3F5"
	jhash (0xF3E7730E)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_PED_CAUSE_OF_DEATH"
    hash "0x16FFE42AB2D2DC59"
	jhash (0x63458C27)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Hash"
	doc [[!
<summary>
```
Returns the hash of the weapon/model/object that killed the ped.  
```
</summary>
	]]

native "GET_PED_COMBAT_RANGE"
    hash "0xF9D9F7F2DB8E2FA0"
	jhash (0x9B9B7163)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_PED_CONFIG_FLAG"
    hash "0x7EE53118C892B513"
	jhash (0xABE98267)
	arguments {
		Ped "ped",
		int "flagId",
		BOOL "p2",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
p2 is always 1 in the scripts.  
if (GET_PED_CONFIG_FLAG(ped, 78, 1))  
= returns true if ped is aiming/shooting a gun  
```
</summary>
	]]

native "GET_PED_DECORATION_ZONE_FROM_HASHES"
    hash "0x9FD452BFBE7A7A8B"
	jhash (0x3543019E)
	arguments {
		Hash "collection",
		Hash "overlay",
	}
	alias "_GET_TATTOO_ZONE"
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Returns the zoneID for the overlay if it is a member of collection.  
enum TattooZoneData  
{  
	ZONE_TORSO = 0,  
	ZONE_HEAD = 1,  
	ZONE_LEFT_ARM = 2,  
	ZONE_RIGHT_ARM = 3,  
	ZONE_LEFT_LEG = 4,  
	ZONE_RIGHT_LEG = 5,  
	ZONE_UNKNOWN = 6,  
	ZONE_NONE = 7,  
};  
```
</summary>
	]]

native "GET_PED_DECORATIONS_STATE"
    hash "0x71EAB450D86954A1"
	jhash (0x47187F7F)
	arguments {
		Ped "ped",
	}
	alias "0x71EAB450D86954A1"
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_PED_DEFENSIVE_AREA_POSITION"
    hash "0x3C06B8786DD94CD1"
	jhash (0xCB65198D)
	arguments {
		Ped "ped",
		BOOL "p1",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
	]]

native "GET_PED_DRAWABLE_VARIATION"
    hash "0x67F3780DD425D4FC"
	jhash (0x29850FE2)
	arguments {
		Ped "ped",
		int "componentId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Ids  
1   
2   
3   
4   
5   
6   
7 - ------  
8 - Accessories 1  
9 - Accessories 2  
10  
11 - Auxiliary parts for torso  
```
</summary>
	]]

native "GET_PED_ENVEFF_SCALE"
    hash "0x9C14D30395A51A3C"
	jhash (0xA3421E39)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "float"
	doc [[!
	]]

native "GET_PED_EXTRACTED_DISPLACEMENT"
    hash "0xE0AF41401ADF87E3"
	jhash (0x5231F901)
	arguments {
		Ped "ped",
		BOOL "worldSpace",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
<summary>
```
Gets the offset the specified ped has moved since the previous tick.  
If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.  
If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.  
```
</summary>
	]]

native "_GET_PED_HAIR_RGB_COLOR"
    hash "0x4852FC386E2E1BB5"
	arguments {
		int "hairColorIndex",
		intPtr "outR",
		intPtr "outG",
		intPtr "outB",
	}
	alias "0x4852FC386E2E1BB5"
	alias "_GET_HAIR_RGB_COLOR"
	ns "PED"
	returns "void"
	doc [[!
<summary>
Input: Haircolor index, value between 0 and 63 (inclusive).
Output: RGB values for the haircolor specified in the input.

This is used with the hair color swatches scaleform.

Use [`_0x013E5CFC38CD5387`](#_0x013E5CFC38CD5387) to get the makeup colors.
</summary>
<param name="hairColorIndex">The hair color index. Value between 0-63 (inclusive).</param>
<param name="outR">Output red value.</param>
<param name="outG">Output green value.</param>
<param name="outB">Output blue value.</param>
	]]

native "GET_PED_GROUP_INDEX"
    hash "0xF162E133B4E7A675"
	jhash (0x134E0785)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Returns the group id of which the specified ped is a member of.  
```
</summary>
	]]

native "GET_PED_HEAD_BLEND_DATA"
    hash "0x2746BD9D88C5C5D0"
	jhash (0x44E1680C)
	arguments {
		Ped "ped",
		AnyPtr "headBlendData",
	}
	alias "_GET_PED_HEAD_BLEND_DATA"
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
The pointer is to a padded struct that matches the arguments to SET_PED_HEAD_BLEND_DATA(...). There are 4 bytes of padding after each field.  
pass this struct in the second parameter   
typedef struct  
{  
        int shapeFirst, shapeSecond, shapeThird;   
        int skinFirst, skinSecond, skinThird;   
	float shapeMix, skinMix, thirdMix;  
} headBlendData;  
```
</summary>
	]]

native "_GET_PED_HEAD_OVERLAY_VALUE"
    hash "0xA60EF3B6461A4D43"
	arguments {
		Ped "ped",
		int "overlayID",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Likely a char, if that overlay is not set, e.i. "None" option, returns 255;  
```
</summary>
	]]

native "_GET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY"
    hash "0x1461B28A06717D68"
	arguments {
		Ped "ped",
	}
	alias "0x1461B28A06717D68"
	ns "PED"
	returns "float"
	doc [[!
<summary>
Use [`SetPedIlluminatedClothingGlowIntensity`](#_0x4E90D746056E273D) to set the illuminated clothing glow intensity for a specific ped.
</summary>
<param name="ped">The ped to get the glow intensity from.</param>
<returns>A float between 0.0 and 1.0 representing the current illuminated clothing glow intensity.</returns>
	]]

native "GET_PED_LAST_DAMAGE_BONE"
    hash "0xD75960F6BD9EA49C"
	jhash (0xAB933841)
	arguments {
		Ped "ped",
		intPtr "outBone",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Pretty sure outBone is an int.  
```
</summary>
	]]

native "_GET_PED_MAKEUP_RGB_COLOR"
    hash "0x013E5CFC38CD5387"
	arguments {
		int "makeupColorIndex",
		intPtr "outR",
		intPtr "outG",
		intPtr "outB",
	}
	alias "0x013E5CFC38CD5387"
	alias "_GET_MAKEUP_RGB_COLOR"
	ns "PED"
	returns "void"
	doc [[!
<summary>
Input: Makeup color index, value between 0 and 63 (inclusive).
Output: RGB values for the makeup color specified in the input.

This is used with the makeup color swatches scaleform.

Use [`_0x4852FC386E2E1BB5`](#_0x4852FC386E2E1BB5) to get the hair colors.
</summary>
<param name="makeupColorIndex">The hair color index. Value between 0-63 (inclusive).</param>
<param name="outR">Output red value.</param>
<param name="outG">Output green value.</param>
<param name="outB">Output blue value.</param>
	]]

native "GET_PED_MAX_HEALTH"
    hash "0x4700A416E8324EF3"
	jhash (0xA45B6C8D)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_PED_MONEY"
    hash "0x3F69145BBA87BAE7"
	jhash (0xEB3C4C7E)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_PED_NEARBY_PEDS"
    hash "0x23F8F5FC7E8C4A6B"
	jhash (0x4D3325F4)
	arguments {
		Ped "ped",
		intPtr "sizeAndPeds",
		int "ignore",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
sizeAndPeds - is a pointer to an array. The array is filled with peds found nearby the ped supplied to the first argument.  
ignore - ped type to ignore  
Return value is the number of peds found and added to the array passed.  
-----------------------------------  
To make this work in most menu bases at least in C++ do it like so,  
 Formatted Example: pastebin.com/D8an9wwp  
-----------------------------------  
Example: gtaforums.com/topic/789788-function-args-to-pedget-ped-nearby-peds/?p=1067386687  
Here's the right way to do it (console and pc):  
pastebin.com/SsFej963  
```
</summary>
	]]

native "GET_PED_PALETTE_VARIATION"
    hash "0xE3DD5F2A84B42281"
	jhash (0xEF1BC082)
	arguments {
		Ped "ped",
		int "componentId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_PED_NEARBY_VEHICLES"
    hash "0xCFF869CBFA210D82"
	jhash (0xCB716F68)
	arguments {
		Ped "ped",
		intPtr "sizeAndVehs",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Returns size of array, passed into the second variable.  
See below for usage information.  
This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.  
//Setup the array  
	const int numElements = 10;  
	const int arrSize = numElements * 2 + 2;  
	Any veh[arrSize];  
	//0 index is the size of the array  
	veh[0] = numElements;  
	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);  
	if (veh != NULL)  
	{  
//Simple loop to go through results  
for (int i = 0; i < count; i++)  
{  
	int offsettedID = i * 2 + 2;  
	//Make sure it exists  
	if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))  
	{  
//Do something  
	}  
}  
	}    
Here's the right way to do it (console and pc):  
pastebin.com/SsFej963  
```
</summary>
	]]

native "GET_PED_PARACHUTE_STATE"
    hash "0x79CFD9827CC979B6"
	jhash (0x7D4BC475)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Returns:  
-1: Normal  
0: Wearing parachute on back  
1: Parachute opening  
2: Parachute open  
3: Falling to doom (e.g. after exiting parachute)  
Normal means no parachute?  
```
</summary>
	]]

native "GET_PED_PARACHUTE_LANDING_TYPE"
    hash "0x8B9F1FC6AE8166C0"
	jhash (0x01F3B035)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
-1: no landing  
0: landing on both feet  
1: stumbling  
2: rolling  
3: ragdoll  
```
</summary>
	]]

native "GET_PED_PARACHUTE_TINT_INDEX"
    hash "0xEAF5F7E5AE7C6C9D"
	jhash (0xE9E7FAC5)
	arguments {
		Ped "ped",
		intPtr "outTintIndex",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "GET_PED_PROP_INDEX"
    hash "0x898CC20EA75BACD8"
	jhash (0x746DDAC0)
	arguments {
		Ped "ped",
		int "componentId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_PED_PROP_TEXTURE_INDEX"
    hash "0xE131A28626F81AB2"
	jhash (0x922A6653)
	arguments {
		Ped "ped",
		int "componentId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_PED_RAGDOLL_BONE_INDEX"
    hash "0x2057EF813397A772"
	jhash (0x849F0716)
	arguments {
		Ped "ped",
		int "bone",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH"
    hash "0x42FDD0F017B1E38E"
	jhash (0x714BD6E4)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Hash"
	doc [[!
	]]

native "GET_PED_RELATIONSHIP_GROUP_HASH"
    hash "0x7DBDD04862D95F04"
	jhash (0x354F283C)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Hash"
	doc [[!
	]]

native "GET_PED_SOURCE_OF_DEATH"
    hash "0x93C8B64DEB84728C"
	jhash (0x84ADF9EB)
	arguments {
		Ped "ped",
	}
	alias "_GET_PED_KILLER"
	ns "PED"
	returns "Entity"
	doc [[!
<summary>
```
Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'  
Is best to check if the Ped is dead before asking for its killer.  
```
</summary>
	]]

native "GET_PED_RESET_FLAG"
    hash "0xAF9E59B1B1FBF2A0"
	jhash (0x2FC10D11)
	arguments {
		Ped "ped",
		int "flagId",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "GET_PED_STEALTH_MOVEMENT"
    hash "0x7C2AC9CA66575FBF"
	jhash (0x40321B83)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the entity is in stealth mode  
```
</summary>
	]]

native "GET_PED_TEXTURE_VARIATION"
    hash "0x04A355E041E004E6"
	jhash (0xC0A8590A)
	arguments {
		Ped "ped",
		int "componentId",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "GET_PED_TIME_OF_DEATH"
    hash "0x1E98817B311AE98A"
	jhash (0xDF6D5D54)
	arguments {
		Ped "ped",
	}
	alias "_GET_PED_TIME_OF_DEATH"
	alias "0x1E98817B311AE98A"
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Name was _GET_PED_TIME_OF_DEATH  
-----------------------------------------------------------------  
There is no way this is the correct name. The only time this is called it's compared with the game timer and I used this to test something and noticed when I was killed by no matter what it was my 'Time Of Death' via this native was always 0, but my friends was some random big number like so, 147591.  
Retreives [CPed + 15CC] (as of 944)  
```
</summary>
	]]

native "GET_PED_TYPE"
    hash "0xFF059E1E4C01E63C"
	jhash (0xB1460D43)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Ped Types: (ordered by return priority)  
Michael = 0  
Franklin = 1  
Trevor = 2  
Army = 29  
Animal = 28  
SWAT = 27  
LSFD = 21  
Paramedic = 20  
Cop = 6  
Male = 4  
Female = 5   
Human = 26  
Note/Exception  
hc_gunman : 4 // Mix male and female  
hc_hacker : 4 // Mix male and female  
mp_f_misty_01 : 4 // Female character  
s_f_y_ranger_01 : 5 // Ranger  
s_m_y_ranger_01 : 4 // Ranger  
s_m_y_uscg_01 : 6 // US Coast Guard  
```
</summary>
	]]

native "_GET_PED_VISUAL_FIELD_CENTER_ANGLE"
    hash "0xEF2C71A32CAD5FBD"
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "float"
	doc [[!
<summary>
```
NativeDB Introduced: v1493
```
</summary>
<param name="ped">:</param>
	]]

native "GET_PEDHEADSHOT_TXD_STRING"
    hash "0xDB4EACD4AD0A5D6B"
	jhash (0x76D28E96)
	arguments {
		int "handle",
	}
	ns "PED"
	returns "charPtr"
	doc [[!
<summary>
```
gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
```
</summary>
	]]

native "GET_PEDS_JACKER"
    hash "0x9B128DC36C1E04CF"
	jhash (0xDE1DBB59)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "GET_PLAYER_PED_IS_FOLLOWING"
    hash "0x6A3975DEA89F9A17"
	jhash (0xDE7442EE)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Player"
	doc [[!
	]]

native "GET_RELATIONSHIP_BETWEEN_GROUPS"
    hash "0x9E6B70061662AE5C"
	jhash (0x4E372FE2)
	arguments {
		Hash "group1",
		Hash "group2",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Gets the relationship between two groups. This should be called twice (once for each group).  
Relationship types:  
0 = Companion  
1 = Respect  
2 = Like  
3 = Neutral  
4 = Dislike  
5 = Hate  
255 = Pedestrians  
Example:  
PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);  
PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);  
```
</summary>
	]]

native "GET_RANDOM_PED_AT_COORD"
    hash "0x876046A8E3A4B71C"
	jhash (0xDC8239EB)
	arguments {
		float "x",
		float "y",
		float "z",
		float "xRadius",
		float "yRadius",
		float "zRadius",
		int "pedType",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed.   
Ped Types:  
Any = -1  
Player = 1  
Male = 4   
Female = 5   
Cop = 6  
Human = 26  
SWAT = 27   
Animal = 28  
Army = 29  
```
</summary>
	]]

native "GET_SEAT_PED_IS_TRYING_TO_ENTER"
    hash "0x6F4C85ACD641BCD2"
	jhash (0xACF162E0)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "GET_RELATIONSHIP_BETWEEN_PEDS"
    hash "0xEBA5AD3A0EAF7121"
	jhash (0xE254C39C)
	arguments {
		Ped "ped1",
		Ped "ped2",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Gets the relationship between two peds. This should be called twice (once for each ped).  
Relationship types:  
0 = Companion  
1 = Respect  
2 = Like  
3 = Neutral  
4 = Dislike  
5 = Hate  
255 = Pedestrians  
(Credits: Inco)  
Example:  
PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C);  
PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);  
```
</summary>
	]]

native "GET_SYNCHRONIZED_SCENE_PHASE"
    hash "0xE4A310B1D7FA73CC"
	jhash (0xB0B2C852)
	arguments {
		int "sceneID",
	}
	ns "PED"
	returns "float"
	doc [[!
	]]

native "GET_SYNCHRONIZED_SCENE_RATE"
    hash "0xD80932D577274D40"
	jhash (0x89365F0D)
	arguments {
		int "sceneID",
	}
	ns "PED"
	returns "float"
	doc [[!
	]]

native "_GET_TIME_OF_LAST_PED_WEAPON_DAMAGE"
    hash "0x36B77BB84687C318"
	jhash (0x0170C6E1)
	arguments {
		Ped "ped",
		Any "weaponHash",
	}
	alias "0x36B77BB84687C318"
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
GET_TIME_SINCE_???  
```

```
NativeDB Parameter 1: Hash weaponHash
```
</summary>
	]]

native "GET_VEHICLE_PED_IS_ENTERING"
    hash "0xF92691AED837A5FC"
	jhash (0x56E0C163)
	arguments {
		Ped "ped",
	}
	alias "SET_EXCLUSIVE_PHONE_RELATIONSHIPS"
	ns "PED"
	returns "Vehicle"
	doc [[!
<summary>
```
In appcamera.c4, Line 106:  
if (VEHICLE::IS_VEHICLE_DRIVEABLE(PED::SET_EXCLUSIVE_PHONE_RELATIONSHIPS(PLAYER::PLAYER_PED_ID()), 0))  
So return type could be a vehicle?  
sfink: agreed, 100%  
Proper name is GET_VEHICLE_PED_IS_ENTERING  
```
</summary>
	]]

native "GET_VEHICLE_PED_IS_IN"
    hash "0x9A9112A0FE9A4713"
	jhash (0xAFE92319)
	arguments {
		Ped "ped",
		BOOL "lastVehicle",
	}
	ns "PED"
	returns "Vehicle"
	doc [[!
<summary>
Gets the vehicle the specified Ped is/was in depending on bool value.
</summary>
<param name="ped">The target ped</param>
<param name="lastVehicle">False = CurrentVehicle, True = LastVehicle</param>
<returns>The vehicle id. Returns 0 if the ped is/was not in a vehicle.</returns>
	]]

native "GET_VEHICLE_PED_IS_TRYING_TO_ENTER"
    hash "0x814FA8BE5449445D"
	jhash (0x99968B37)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Vehicle"
	doc [[!
<summary>
```
Should be renamed GET_CAR_PED_IS_TRYING_TO_ENTER...  
Because this works only for cars, not for helis, planes,motorcycles or bicycles...  
From Calderon  
This is what R* named it, deal with it.  
```
</summary>
	]]

native "GET_VEHICLE_PED_IS_USING"
    hash "0x6094AD011A2EA87D"
	jhash (0x6DE3AADA)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Vehicle"
	doc [[!
<summary>
```
Gets ID of vehicle player using. It means it can get ID at any interaction with vehicle. Enter\exit for example. And that means it is faster than GET_VEHICLE_PED_IS_IN but less safe.  
```
</summary>
	]]

native "GIVE_PED_HELMET"
    hash "0x54C7C4A94367717E"
	jhash (0x1862A461)
	arguments {
		Ped "ped",
		BOOL "cannotRemove",
		int "helmetFlag",
		int "textureIndex",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
PoliceMotorcycleHelmet	1024	  
RegularMotorcycleHelmet	4096	  
FiremanHelmet	16384	  
PilotHeadset	32768	  
PilotHelmet	65536  
--  
p2 is generally 4096 or 16384 in the scripts. p1 varies between 1 and 0.  
```
</summary>
	]]

native "GIVE_PED_NM_MESSAGE"
    hash "0xB158DFCCC56E5C5B"
	jhash (0x737C3689)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.  
If a message hasn't been created already, this function does nothing.  
If the Ped is not ragdolled with Euphoria enabled, this function does nothing.  
The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
Call order:  
SET_PED_TO_RAGDOLL  
CREATE_NM_MESSAGE  
GIVE_PED_NM_MESSAGE  
Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:  
SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.  
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.  
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.  
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
```
</summary>
	]]

native "HAS_ACTION_MODE_ASSET_LOADED"
    hash "0xE4B5F4BF2CB24E65"
	jhash (0xF7EB2BF1)
	arguments {
		charPtr "asset",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "HAS_PED_HEAD_BLEND_FINISHED"
    hash "0x654CD0A825161131"
	jhash (0x2B1BD9C5)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "HAS_PED_RECEIVED_EVENT"
    hash "0x8507BCB710FA6DC0"
	jhash (0xECD73DB0)
	arguments {
		Ped "ped",
		int "eventId",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "HIDE_PED_BLOOD_DAMAGE_BY_ZONE"
    hash "0x62AB793144DE75DC"
	jhash (0x0CB6C4ED)
	arguments {
		Ped "ped",
		Any "p1",
		BOOL "p2",
	}
	alias "0x62AB793144DE75DC"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "IS_ANY_HOSTILE_PED_NEAR_POINT"
	}
