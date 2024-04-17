DROP DATABASE IF EXISTS TradingCards;
CREATE DATABASE TradingCards;

DROP TABLE IF EXISTS Pony;
CREATE TABLE Pony (
       name text PRIMARY KEY,
       type text,
       description text,
       harmonyElement text,
       pet text,
       location text
);

DROP TABLE IF EXISTS PonyType;
CREATE TABLE PonyType (
       typeName text PRIMARY KEY
);

DROP TABLE IF EXISTS PonyGroup;
CREATE TABLE PonyGroup (
       name text NOT NULL,
       member text,
       description text
);

DROP TABLE IF EXISTS Family;
CREATE TABLE Family (
       name text NOT NULL,
       member text
);

DROP TABLE IF EXISTS HarmonyElement;
CREATE TABLE HarmonyElement (
       name text PRIMARY KEY
);

DROP TABLE IF EXISTS Location;
CREATE TABLE Location (
       name text PRIMARY KEY
);

DROP TABLE IF EXISTS Speech;
CREATE TABLE Speech (
       short text PRIMARY KEY,
       line text,
       pony text
);

-- ----------------------------------------
INSERT INTO Pony (name, type, harmonyElement, location)
VALUES
  ('Twilight Sparkle', 'Unicorn', 'Magic', 'Ponyville'),
  ('Applejack', 'Earth Pony', 'Honesty', 'Sweed Apple Acres'),
  ('Fluttershy', 'Pegasus', 'Kindness', 'Everfree Forest'),
  ('Rarity', 'Unicorn', 'Generosity', 'Ponyville'),
  ('Pinkie Pie', 'Earth Pony', 'Laughter', 'Rockville'),
  ('Rainbow Dash', 'Pegasus', 'Loyalty', 'Cloudsdale'),
  ('Spike', 'Dragon', NULL, 'Ponyville'),
  ('Princess Celestia', 'Alicorn', NULL, 'Canterlot'),
  ('Apple Bloom', 'Earth Pony', NULL, 'Sweet Apple Acres'),
  ('Granny Smith', 'Earth', NULL, 'Sweet Apple Acres');

INSERT INTO PonyType (typeName)
VALUES
  ('Earth Pony'),
  ('Pegasus'),
  ('Unicorn'),
  ('Alicorn'),
  ('Dragon');

INSERT INTO PonyGroup (name, member, description)
VALUES
  ('Cutie Mark Crusader', 'Sweetie Belle', 'Their unity is based on mostly being called blank flanks'),
  ('Cutie Mark Crusader', 'Apple Bloom', 'Their unity is based on mostly being called blank flanks'),
  ('Cutie Mark Crusader', 'Scootaloo', 'Their unity is based on mostly being called blank flanks'),
  ('Cutie Mark Crusader', 'Babs Seed', 'Their unity is based on mostly being called blank flanks'),
  ('Royalty', 'Princess Celestia', 'Addressed on the show, or in other official material, as king, queen, prince or princess.');

INSERT INTO Family (name, member)
VALUES
  ('Apple', 'Granny Smith'),
  ('Apple', 'Applejack'),
  ('Apple', 'Apple Bloom'),
  ('Apple', 'Big McIntosh'),
  ('Pie', 'Pinkie Pie'),
  ('Pie', 'Limestone Pie'),
  ('Pie', 'Marble Pie'),
  ('Pie', 'Igneous Rock Pie'),
  ('Pie', 'Cloudy Quartz'),
  ('Shy', 'Fluttershy'),
  ('Shy', 'Mr. Shy'),
  ('Shy', 'Mrs. Shy'),
  ('Shy', 'Zephyr Breeze');
  
INSERT INTO HarmonyElement (name)
VALUES
  ('Magic'),
  ('Honesty'),
  ('Kindness'),
  ('Generosity'),
  ('Laughter'),
  ('Loyalty');

INSERT INTO Location (name)
VALUES
  ('Ponyville'),
  ('Sweed Apple Acres'),
  ('Canterlot'),
  ('Everfree Forest'),
  ('Saddle Lake'),
  ('White Tail Woods'),
  ('Froggy Bottom Bogg'),
  ('Cloudsdale'),
  ('Rambling Rock Ridge'),
  ('Appleloosa'),
  ('Manehattan'),
  ('Rockville'),
  ('Ghasty Gorge'),
  ('Dodge Junction'),
  ('Crystal Empire'),
  ('Winsome Falls'),
  ('Rainbow Falls'),
  ('Fillydelphia'),
  ('Las Pegasus'),
  ('Applewood'),
  ('Baltimare'),
  ('Hollow Shades'),
  ('Foal Mountain'),
  ('Ponhenge'),
  ('Smokey Mountains'),
  ('Vanhoover'),
  ('Badlands'),
  ('Dustmane Ridge'),
  ('Dodge Canyon'),
  ('Mane Six Campsite'),
  ('Tumbledown Mountain');

INSERT INTO Speech (pony, short, line)
VALUES
  ('Pinkie Pie', 'twitchy', 'Twitchy tail! Twitchy tail!'),
  ('Pinkie Pie', 'boring', 'Boring!'),
  ('Pinkie Pie', 'party', 'Its a party!'),
  ('Pinkie Pie', 'tons', 'Tons of fun!'),
  ('Pinkie Pie', 'oki', 'Oki doki loki!'),
  ('Pinkie Pie', 'ppstyle', 'Pinkie Pie style!'),
  ('Pinkie Pie', 'whenIwas', 'When I was a little filly and the sun was going down...'),
  ('Twilight Sparkle', 'study', 'I should really get back to studying...'),
  ('Twilight Sparkle', 'crossheart', 'Cross my heart and hope to fly, stick a cupcake in my-OW!'),
  ('Twilight Sparkle', 'magic', 'And magic makes it all complete!'),
  ('Rainbow Dash', 'whatup', 'Whats up, brony?'),
  ('Rainbow Dash', 'ohmy', 'ohmygoshohmygoshohmygosh');



