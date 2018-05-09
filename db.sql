-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-05-09 11:47:00.868

-- tables
-- Table: CPU
CREATE TABLE CPU (
    id int NOT NULL,
    base_clock real NOT NULL,
    cache int NOT NULL,
    boost_clock real NOT NULL,
    cores int NOT NULL,
    manufacturer_fk int NOT NULL,
    CONSTRAINT id PRIMARY KEY (id)
);

-- Table: GPU
CREATE TABLE GPU (
    id int NOT NULL,
    base_clock real NOT NULL,
    memory int NOT NULL,
    shaders real NOT NULL,
    cuda_cores int NOT NULL,
    manufacturer_fk int NOT NULL,
    CONSTRAINT id PRIMARY KEY (id)
);

-- Table: Game
CREATE TABLE Game (
    id int NOT NULL,
    name int NOT NULL,
    release_date date NOT NULL,
    producer int NOT NULL,
    CONSTRAINT Game_pk PRIMARY KEY (id)
);

-- Table: Game_Cpu
CREATE TABLE Game_Cpu (
    Game_id int NOT NULL,
    CPU_id int NOT NULL,
    CONSTRAINT Game_Cpu_pk PRIMARY KEY (Game_id)
);

-- Table: Game_Gpu
CREATE TABLE Game_Gpu (
    Game_id int NOT NULL,
    GPU_id int NOT NULL
);

-- Table: Manufacturer
CREATE TABLE Manufacturer (
    id int NOT NULL,
    name int NOT NULL
);

-- foreign keys
-- Reference: CPU_Manufacturer (table: CPU)
ALTER TABLE CPU ADD CONSTRAINT CPU_Manufacturer FOREIGN KEY CPU_Manufacturer ()
    REFERENCES Manufacturer ();

-- Reference: GPU_Manufacturer (table: GPU)
ALTER TABLE GPU ADD CONSTRAINT GPU_Manufacturer FOREIGN KEY GPU_Manufacturer ()
    REFERENCES Manufacturer ();

-- Reference: Game_Cpu_CPU (table: Game_Cpu)
ALTER TABLE Game_Cpu ADD CONSTRAINT Game_Cpu_CPU FOREIGN KEY Game_Cpu_CPU (CPU_id)
    REFERENCES CPU (id);

-- Reference: Game_Cpu_Game (table: Game_Cpu)
ALTER TABLE Game_Cpu ADD CONSTRAINT Game_Cpu_Game FOREIGN KEY Game_Cpu_Game (Game_id)
    REFERENCES Game (id);

-- Reference: Game_Gpu_GPU (table: Game_Gpu)
ALTER TABLE Game_Gpu ADD CONSTRAINT Game_Gpu_GPU FOREIGN KEY Game_Gpu_GPU (GPU_id)
    REFERENCES GPU (id);

-- Reference: Game_Gpu_Game (table: Game_Gpu)
ALTER TABLE Game_Gpu ADD CONSTRAINT Game_Gpu_Game FOREIGN KEY Game_Gpu_Game (Game_id)
    REFERENCES Game (id);

-- End of file.

