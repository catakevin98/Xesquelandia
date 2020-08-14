local cfg = {}

local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local husky = { model = "a_c_husky" }
local chop = { model = "a_c_chop" }

for i=0,19 do
	surgery_female[i] = { 0,0 }
	surgery_male[i] = { 0,0 }
end

cfg.cloakroom_types = {
	["Fardamento H"] = {
	_config = { permissions = {"paramedico.permissao"} },
		["SAMU Masculino"] = {
		[1] = {121,0,0},
		[2] = {18,0,0},
		[3] = {127,0,0},
		[4] = {38,1,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {126,0,2},
		[8] = {15,0,0},
		[9] = {-1,0,0},
		[10] = {-1,0,0},
		[11] = {65,1,0},
		["p0"] = {10,1,0},
		["p1"] = {7,0,0},
		["p6"] = {-1,0},
	},
	["SAMU Feminino"] = {
		[2] = {8,0,0},
		[3] = {167,0,0},
		[4] = {38,1,2},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {96,0,0},
		[8] = {14,0,0},
		[9] = {-1,0,0},
		[10] = {0,0,0},
		[11] = {59,1,0},
		["p0"] = {-1,1,0},
		["p6"] = {-1,0},
	},
},
["Fardamento PF"] = {
    _config = { permissions = {"pfederal.permissao"} },
    ["PF 1 Masculino"] = {
    	[2] = {4,0,0},
		[3] = {6,0,0},
		[4] = {33,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {115,1,2},
		[9] = {21,0,2},
		[10] = {0,0,0},
		[11] = {36,0,0},
		["p0"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["PF 2 Masculino"] = {
    	[2] = {4,0,0},
		[3] = {19,0,0},
		[4] = {33,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {16,0,2},
		[9] = {21,0,2},
		[10] = {0,0,0},
		[11] = {51,0,0},
		["p0"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["PF 1 Feminino"] = {
		[3] = {154,0,2},
		[4] = {30,0,2},
		[5] = {-1,0,0},
		[6] = {24,0,2},
		[7] = {1,0,2},
		[8] = {9,0,2},
		[9] = {20,0,2},
		[10] = {-1,0,0},
		[11] = {44,0,2},
		["p0"] = {-1,0,0},
	},
	["PF 2 Feminino"] = {
		[3] = {3,0,2},
		[4] = {30,0,2},
		[5] = {-1,0,0},
		[6] = {24,0,2},
		[7] = {1,0,2},
		[8] = {51,1,2},
		[9] = {20,0,2},
		[10] = {-1,0,0},
		[11] = {168,0,2},
		["p0"] = {-1,0,0},
	},
},	
	["Personagem"] = {
		_config = {},
		["K9 - Chop"] = chop,
		["K9 - Husky"] = husky,
		["Homem"] = surgery_male,
		["Mulher"] = surgery_female,
	},
	["Fardamento PMERJ"] = {
    _config = { permissions = {"pmerj.permissao"} },
    ["PMERJ 1 Masculino"] = {
		[3] = {21,0,0},
		[4] = {31,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {93,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 2 Masculino"] = {
		[1] = {52,0,2},
		[3] = {20,0,0},
		[4] = {31,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {98,0,0},
		["p0"] = {48,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 3 Masculino"] = {
		[3] = {20,0,0},
		[4] = {31,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {98,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 1 Feminino"] = {
		[3] = {20,0,0},
		[4] = {30,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {159,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {33,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 2 Feminino"] = {
		[3] = {23,0,0},
		[4] = {30,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {159,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {31,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
},	

["Fardamento RECOM"] = {
    _config = { permissions = {"recom.permissao"} },
    ["RECOM Masculino"] = {
		[3] = {20,0,0},
		[4] = {33,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,1,0},
		[10] = {0,0,0},
		[11] = {98,1,0},
		["p0"] = {28,0,0},
		["p6"] = {-1,0},
	},
	["RECOM Feminino"] = {
		[3] = {23,0,0},
		[4] = {61,9,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {57,0,0},
		[9] = {7,1,0},
		[10] = {0,0,0},
		[11] = {31,1,0},
		["p0"] = {28,0,0},
		["p6"] = {-1,0},
	},
},
["Fardamento PRF"] = {
    _config = { permissions = {"prf.permissao"} },
    ["PRF 1 Masculino"] = {
    	[2] = {18,0,0},
		[3] = {0,0,0},
		[4] = {52,3,0},
		[5] = {0,0,0},
		[6] = {62,0,0},
		[7] = {1,0,0},
		[8] = {94,0,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {93,1,0},
		["p0"] = {10,2,0},
		["p1"] = {9,0,0},
		["p6"] = {-1,0},
	},
	["PRF 2 Masculino"] = {
		[3] = {1,0,0},
		[4] = {52,3,0},
		[5] = {0,0,0},
		[6] = {62,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {49,2,0},
		["p0"] = {10,2,0},
		["p1"] = {9,0,0},
		["p6"] = {-1,0},
	},
	["PRF 3 Masculino"] = {
		[3] = {1,0,0},
		[4] = {52,3,0},
		[5] = {0,0,0},
		[6] = {62,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {49,2,0},
		["p0"] = {17,0,0},
		["p1"] = {9,0,0},
		["p6"] = {-1,0},
	},
	["PRF 1 Feminino"] = {
		[3] = {0,0,0},
		[4] = {54,1,0},
		[5] = {0,0,0},
		[6] = {73,20,0},
		[7] = {1,0,0},
		[8] = {71,1,0},
		[9] = {18,1,0},
		[10] = {0,0,0},
		[11] = {42,2,0},
		["p0"] = {10,2,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
	["PRF 2 Feminino"] = {
		[3] = {0,0,0},
		[4] = {54,1,0},
		[5] = {0,0,0},
		[6] = {73,20,0},
		[7] = {1,0,0},
		[8] = {71,1,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {84,0,0},
		["p0"] = {10,2,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
},

    ["Fardamento BOPE"] = {
    _config = { permissions = {"bope.permissao"} },
    ["BOPE 1 Masculino"] = {
		[1] = {35,0,2},
		[3] = {17,0,0},
		[4] = {33,0,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,0,0},
		[10] = {0,0,0},
		[11] = {49,0,0},
		["p0"] = {39,0,0},
		["p1"] = {25,4,0},
		["p6"] = {-1,0},
	},
	["BOPE 2 Masculino"] = {
		[3] = {17,0,0},
		[4] = {33,0,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,0,0},
		[10] = {0,0,0},
		[11] = {49,0,0},
		["p0"] = {28,1,0},
		["p6"] = {-1,0},
	},
	["BOPE 1 Feminino"] = {
		[1] = {35,0,2},
		[3] = {18,0,0},
		[4] = {61,9,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[8] = {3,0,0},
		[9] = {18,0,0},
		[10] = {0,0,0},
		[11] = {42,0,0},
		["p0"] = {38,0,0},
		["p1"] = {27,4,0},
		["p6"] = {-1,0},
	},
	["BOPE 2 Feminino"] = {
		[3] = {18,0,0},
		[4] = {61,9,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[7] = {1,0,0},
		[8] = {3,0,0},
		[9] = {18,0,0},
		[10] = {0,0,0},
		[11] = {42,0,0},
		["p0"] = {28,1,0},
		["p6"] = {-1,0},
	},
},

    ["Fardamento BPCHQ"] = {
    _config = { permissions = {"bpchq.permissao"} },
    ["BPChq Feminino"] = {
		[1] = {52,0,2},
		[2] = {4,0,2},
		[3] = {111,0,0},
		[4] = {54,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {7,0,0},
		[9] = {18,2,0},
		[10] = {0,0,0},
		[11] = {42,1,0},
		["p0"] = {125,0,0},
		["p6"] = {-1,0},
	},
	["BPChq 1 Masculino"] = {
		[1] = {52,0,2},
		[2] = {4,0,2},
		[3] = {96,0,0},
		[4] = {52,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,2,0},
		[10] = {0,0,0},
		[11] = {49,1,0},
		["p0"] = {126,0,0},
		["p6"] = {-1,0},
	},
	["BPChq 2 Masculino"] = {
		[1] = {52,0,2},
		[2] = {4,0,2},
		[3] = {96,0,0},
		[4] = {52,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,1,0},
		[10] = {0,0,0},
		[11] = {49,1,0},
		["p0"] = {48,0,0},
		["p6"] = {-1,0},
	},
},

    ["Fardamento GAM"] = {
    _config = { permissions = {"gam.permissao"} },
    ["GAM Masculino"] = {
		[3] = {18,0,0},
		[4] = {30,0,0},
		[5] = {0,0,0},
		[6] = {27,0,0},
		[8] = {15,0,0},
		[10] = {0,0,0},
		[11] = {48,0,0},
		["p0"] = {79,0,0},
		["p6"] = {-1,0},
	},
	["GAM Feminino"] = {
		[3] = {17,0,0},
		[4] = {29,0,0},
		[5] = {-1,0,0},
		[6] = {26,0,0},
		[8] = {7,0,0},
		[10] = {0,0,0},
		[11] = {41,0,0},
		["p0"] = {78,0,0},
		["p6"] = {-1,0},
	},
},
    ["Fardamento PC"] = {
    _config = { permissions = {"pcivil.permissao"} },
    ["PC Masculino 1"] = {
    	[1] = {35,0,0},
    	[2] = {4,0,0},
		[3] = {20,0,0},
		[4] = {33,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[8] = {130,0,0},
		[9] = {4,2,0},
		[10] = {0,0,0},
		[11] = {111,3,0},
		["p0"] = {-1,0,0},
		["p1"] = {6,0,0},
		["p6"] = {-1,0},
	},
	["PC Masculino 2"] = {
    	[1] = {52,0,0},
    	[2] = {4,0,0},
		[3] = {19,0,0},
		[4] = {63,0,0},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[8] = {130,0,0},
		[9] = {4,2,0},
		[10] = {0,0,0},
		[11] = {133,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {6,0,0},
		["p6"] = {-1,0},
	},
	["PC Masculino 3"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {19,0,0},
		[4] = {72,0,0},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[8] = {130,0,0},
		[9] = {21,1,0},
		[10] = {0,0,0},
		[11] = {146,7,0},
		["p0"] = {-1,0,0},
		["p1"] = {6,0,0},
		["p6"] = {-1,0},
	},
	["PC Feminino 1"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {31,0,0},
		[4] = {0,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[8] = {9,0,0},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {141,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
	["PC Feminino 2"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {31,0,0},
		[4] = {37,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[8] = {9,0,0},
		[9] = {4,2,2},
		[10] = {0,0,0},
		[11] = {141,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
	["PC Feminino 3"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {14,0,0},
		[4] = {64,0,0},
		[5] = {-1,0,0},
		[6] = {27,0,0},
		[8] = {9,0,0},
		[9] = {20,1,2},
		[10] = {0,0,0},
		[11] = {250,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
},
["Mecanicos"] = {
	_config = { permissions = {"mecanico.permissao"} },
		["Mecânico Masculino"] = {
		[1] = {121,0,0},
		[2] = {18,0,0},
		[3] = {125,0,0},
		[4] = {38,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[8] = {15,0,0},
		[9] = {-1,0,0},
		[10] = {-1,0,0},
		[11] = {65,0,0},
		["p6"] = {-1,0},
	},
	["Mecânico Feminino"] = {
		[2] = {8,0,0},
		[3] = {165,0,0},
		[4] = {38,1,2},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[8] = {14,0,0},
		[9] = {-1,0,0},
		[10] = {0,0,0},
		[11] = {59,0,0},
	},
},	
	["Fardamento CMD"] = {
	_config = { permissions = {"cmdgeral.permissao"} },
	["PMERJ 1 Masculino"] = {
		[3] = {21,0,0},
		[4] = {31,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {93,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 2 Masculino"] = {
		[1] = {52,0,2},
		[3] = {20,0,0},
		[4] = {31,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {98,0,0},
		["p0"] = {48,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 3 Masculino"] = {
		[3] = {20,0,0},
		[4] = {31,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {98,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 1 Feminino"] = {
		[3] = {20,0,0},
		[4] = {30,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {159,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {33,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
	["PMERJ 2 Feminino"] = {
		[3] = {23,0,0},
		[4] = {30,2,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {159,0,0},
		[9] = {7,0,0},
		[10] = {0,0,0},
		[11] = {31,0,0},
		["p0"] = {10,0,0},
		["p6"] = {-1,0},
	},
	 ["GAM Masculino"] = {
		[3] = {18,0,0},
		[4] = {30,0,0},
		[5] = {0,0,0},
		[6] = {27,0,0},
		[8] = {15,0,0},
		[10] = {0,0,0},
		[11] = {48,0,0},
		["p0"] = {79,0,0},
		["p6"] = {-1,0},
	},
	["GAM Feminino"] = {
		[3] = {17,0,0},
		[4] = {29,0,0},
		[5] = {-1,0,0},
		[6] = {26,0,0},
		[8] = {7,0,0},
		[10] = {0,0,0},
		[11] = {41,0,0},
		["p0"] = {78,0,0},
		["p6"] = {-1,0},
	},
	["RECOM Masculino"] = {
		[3] = {20,0,0},
		[4] = {33,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {129,0,0},
		[9] = {7,1,0},
		[10] = {0,0,0},
		[11] = {98,1,0},
		["p0"] = {28,0,0},
		["p6"] = {-1,0},
	},
	["RECOM Feminino"] = {
		[3] = {23,0,0},
		[4] = {61,9,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {57,0,0},
		[9] = {7,1,0},
		[10] = {0,0,0},
		[11] = {31,1,0},
		["p0"] = {28,0,0},
		["p6"] = {-1,0},
	},
	["BPChq Feminino"] = {
		[1] = {52,0,2},
		[2] = {4,0,2},
		[3] = {111,0,0},
		[4] = {54,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {7,0,0},
		[9] = {18,2,0},
		[10] = {0,0,0},
		[11] = {42,1,0},
		["p0"] = {125,0,0},
		["p6"] = {-1,0},
	},
	["BPChq 1 Masculino"] = {
		[1] = {52,0,2},
		[2] = {4,0,2},
		[3] = {96,0,0},
		[4] = {52,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,2,0},
		[10] = {0,0,0},
		[11] = {49,1,0},
		["p0"] = {126,0,0},
		["p6"] = {-1,0},
	},
	["BPChq 2 Masculino"] = {
		[1] = {52,0,2},
		[2] = {4,0,2},
		[3] = {96,0,0},
		[4] = {52,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,1,0},
		[10] = {0,0,0},
		[11] = {49,1,0},
		["p0"] = {48,0,0},
		["p6"] = {-1,0},
	},
},	
	["Fardamento CMD2"] = {
	_config = { permissions = {"cmdgeral.permissao"} },
	["PF 1 Masculino"] = {
    	[2] = {4,0,0},
		[3] = {6,0,0},
		[4] = {33,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {115,1,2},
		[9] = {21,0,2},
		[10] = {0,0,0},
		[11] = {36,0,0},
		["p0"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["PF 2 Masculino"] = {
    	[2] = {4,0,0},
		[3] = {19,0,0},
		[4] = {33,0,0},
		[6] = {24,0,0},
		[7] = {1,0,0},
		[8] = {16,0,2},
		[9] = {21,0,2},
		[10] = {0,0,0},
		[11] = {51,0,0},
		["p0"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["PF 1 Feminino"] = {
		[3] = {154,0,2},
		[4] = {30,0,2},
		[5] = {-1,0,0},
		[6] = {24,0,2},
		[7] = {1,0,2},
		[8] = {9,0,2},
		[9] = {20,0,2},
		[10] = {-1,0,0},
		[11] = {44,0,2},
		["p0"] = {-1,0,0},
	},
	["PF 2 Feminino"] = {
		[3] = {3,0,2},
		[4] = {30,0,2},
		[5] = {-1,0,0},
		[6] = {24,0,2},
		[7] = {1,0,2},
		[8] = {51,1,2},
		[9] = {20,0,2},
		[10] = {-1,0,0},
		[11] = {168,0,2},
		["p0"] = {-1,0,0},
	},
},	
	["Fardamento CMD3"] = {
	_config = { permissions = {"cmdgeral.permissao"} },
	["PRF 1 Masculino"] = {
    	[2] = {18,0,0},
		[3] = {0,0,0},
		[4] = {52,3,0},
		[5] = {0,0,0},
		[6] = {62,0,0},
		[7] = {1,0,0},
		[8] = {94,0,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {93,1,0},
		["p0"] = {10,2,0},
		["p1"] = {9,0,0},
		["p6"] = {-1,0},
	},
	["PRF 2 Masculino"] = {
		[3] = {1,0,0},
		[4] = {52,3,0},
		[5] = {0,0,0},
		[6] = {62,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {49,2,0},
		["p0"] = {10,2,0},
		["p1"] = {9,0,0},
		["p6"] = {-1,0},
	},
	["PRF 3 Masculino"] = {
		[3] = {1,0,0},
		[4] = {52,3,0},
		[5] = {0,0,0},
		[6] = {62,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {49,2,0},
		["p0"] = {17,0,0},
		["p1"] = {9,0,0},
		["p6"] = {-1,0},
	},
	["PRF 1 Feminino"] = {
		[3] = {0,0,0},
		[4] = {54,1,0},
		[5] = {0,0,0},
		[6] = {73,20,0},
		[7] = {1,0,0},
		[8] = {71,1,0},
		[9] = {18,1,0},
		[10] = {0,0,0},
		[11] = {42,2,0},
		["p0"] = {10,2,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
	["PRF 2 Feminino"] = {
		[3] = {0,0,0},
		[4] = {54,1,0},
		[5] = {0,0,0},
		[6] = {73,20,0},
		[7] = {1,0,0},
		[8] = {71,1,0},
		[9] = {7,3,0},
		[10] = {0,0,0},
		[11] = {84,0,0},
		["p0"] = {10,2,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
},	
	["Fardamento CMD4"] = {
	_config = { permissions = {"cmdgeral.permissao"} },
	 ["BOPE 1 Masculino"] = {
		[1] = {35,0,2},
		[3] = {17,0,0},
		[4] = {33,0,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,0,0},
		[10] = {0,0,0},
		[11] = {49,0,0},
		["p0"] = {39,0,0},
		["p1"] = {25,4,0},
		["p6"] = {-1,0},
	},
	["BOPE 2 Masculino"] = {
		[3] = {17,0,0},
		[4] = {33,0,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[7] = {1,0,0},
		[8] = {15,0,0},
		[9] = {16,0,0},
		[10] = {0,0,0},
		[11] = {49,0,0},
		["p0"] = {28,1,0},
		["p6"] = {-1,0},
	},
	["BOPE 1 Feminino"] = {
		[1] = {35,0,2},
		[3] = {18,0,0},
		[4] = {61,9,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[8] = {3,0,0},
		[9] = {18,0,0},
		[10] = {0,0,0},
		[11] = {42,0,0},
		["p0"] = {38,0,0},
		["p1"] = {27,4,0},
		["p6"] = {-1,0},
	},
	["BOPE 2 Feminino"] = {
		[3] = {18,0,0},
		[4] = {61,9,2},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[7] = {1,0,0},
		[8] = {3,0,0},
		[9] = {18,0,0},
		[10] = {0,0,0},
		[11] = {42,0,0},
		["p0"] = {28,1,0},
		["p6"] = {-1,0},
	},
},	
	["Fardamento CMD5"] = {
	_config = { permissions = {"cmdgeral.permissao"} },
	  ["PC Masculino 1"] = {
    	[1] = {35,0,0},
    	[2] = {4,0,0},
		[3] = {20,0,0},
		[4] = {33,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[8] = {130,0,0},
		[9] = {4,2,0},
		[10] = {0,0,0},
		[11] = {111,3,0},
		["p0"] = {-1,0,0},
		["p1"] = {6,0,0},
		["p6"] = {-1,0},
	},
	["PC Masculino 2"] = {
    	[1] = {52,0,0},
    	[2] = {4,0,0},
		[3] = {19,0,0},
		[4] = {63,0,0},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[8] = {130,0,0},
		[9] = {4,2,0},
		[10] = {0,0,0},
		[11] = {133,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {6,0,0},
		["p6"] = {-1,0},
	},
	["PC Masculino 3"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {19,0,0},
		[4] = {72,0,0},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[8] = {130,0,0},
		[9] = {21,1,0},
		[10] = {0,0,0},
		[11] = {146,7,0},
		["p0"] = {-1,0,0},
		["p1"] = {6,0,0},
		["p6"] = {-1,0},
	},
	["PC Feminino 1"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {31,0,0},
		[4] = {0,0,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[8] = {9,0,0},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {141,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
	["PC Feminino 2"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {31,0,0},
		[4] = {37,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[8] = {9,0,0},
		[9] = {4,2,2},
		[10] = {0,0,0},
		[11] = {141,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},
	["PC Feminino 3"] = {
    	[1] = {0,0,0},
    	[2] = {4,0,0},
		[3] = {14,0,0},
		[4] = {64,0,0},
		[5] = {-1,0,0},
		[6] = {27,0,0},
		[8] = {9,0,0},
		[9] = {20,1,2},
		[10] = {0,0,0},
		[11] = {250,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {15,0,0},
		["p6"] = {-1,0},
	},	
  },
}

cfg.cloakrooms = {
	{ "Personagem",3561.7365722656,3674.1333007813,28.121891021729 },
	{ "Fardamento H",301.59063720703,-598.87524414063,43.284000396729 },
	{ "Fardamento PMERJ",-2041.1405029297,-460.89031982422,16.424430847168 },

	{ "Fardamento CMD",-2041.1405029297,-460.89031982422,16.424430847168 },
	{ "Fardamento CMD2",477.20294189453,-1084.9420166016,38.706504821777 },
	{ "Fardamento CMD3",-2517.2321777344,3573.2075195313,16.498018264771 },
	{ "Fardamento CMD4",820.90954589844,153.63053894043,89.945526123047 },
	{ "Fardamento CMD5",457.30319213867,-991.01885986328,30.689584732056 },

	{ "Fardamento RECOM",-2041.1405029297,-460.89031982422,16.424430847168 },
	{ "Fardamento PRF",-2517.2321777344,3573.2075195313,16.498018264771 },
	{ "Fardamento GAM",-2041.1405029297,-460.89031982422,16.424430847168 },
	{ "Fardamento BPCHQ",-2041.1405029297,-460.89031982422,16.424430847168 },
	{ "Mecanicos",-196.38171386719,-1315.0180664063,31.089351654053 },
	{ "Fardamento BOPE",820.90954589844,153.63053894043,89.945526123047 },
	{ "Fardamento PF",477.20294189453,-1084.9420166016,38.706504821777 },
	{ "Fardamento PC",457.30319213867,-991.01885986328,30.689584732056 },
	{ "Fardamento",457.30319213867,-991.01885986328,30.689584732056 }
}

return cfg
