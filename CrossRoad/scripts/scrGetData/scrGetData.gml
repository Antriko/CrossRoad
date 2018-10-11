ini_open("saveData.ini");
//general
coins = ini_read_real(0,0,0);
highscore = ini_read_real(0,1,0);

//purchases


//plane collection
collection10 = ini_read_real("plane1","part1",0);
collection11 = ini_read_real("plane1","part2",0);
collection12 = ini_read_real("plane1","part3",0);
collection13 = ini_read_real("plane1","part4",0);

collection20 = ini_read_real("plane2","part1",0);
collection21 = ini_read_real("plane2","part2",0);
collection22 = ini_read_real("plane2","part3",0);
collection23 = ini_read_real("plane2","part4",0);

collection30 = ini_read_real("plane3","part1",0);
collection31 = ini_read_real("plane3","part2",0);
collection32 = ini_read_real("plane3","part3",0);
collection33 = ini_read_real("plane3","part4",0);

collection40 = ini_read_real("plane4","part1",0);
collection41 = ini_read_real("plane4","part2",0);
collection42 = ini_read_real("plane4","part3",0);
collection43 = ini_read_real("plane4","part4",0);

collection50 = ini_read_real("plane5","part1",0);
collection51 = ini_read_real("plane5","part2",0);
collection52 = ini_read_real("plane5","part3",0);
collection53 = ini_read_real("plane5","part4",0);

collection60 = ini_read_real("plane6","part1",0);
collection61 = ini_read_real("plane6","part2",0);
collection62 = ini_read_real("plane6","part3",0);
collection63 = ini_read_real("plane6","part4",0);

ini_close();