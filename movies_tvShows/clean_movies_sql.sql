SELECT * FROM clean.animated_tv_series;use clean;

select * from animated_tv_series;

ALTER TABLE animated_tv_series CHANGE COLUMN `Original channel` Channel VARCHAR (70) null;
ALTER TABLE animated_tv_series CHANGE COLUMN `American company` Company VARCHAR (90) null;
ALTER TABLE animated_tv_series CHANGE COLUMN `Google users` Users VARCHAR (10) null;

select * from animated_tv_series where Trim(Note) = '';

delete from animated_tv_series where Note IS NULL;

describe animated_tv_series;

show columns from animated_tv_series;


select Title, Channel, IMDb
from animated_tv_series 
order by IMDb desc;

select * from animated_tv_series;

insert into animated_tv_series values ('1817', 'Game Of Thrones', 73, '2011-2019', 'HBO', 'David Benioff, D. B. Weiss', '', 'Traditional', 92, '98%');

alter table animated_tv_series drop column Note;

SELECT Title, IMDb, Channel, Company, Users
FROM animated_tv_series
WHERE Channel = 'Netflix'
ORDER BY IMDb DESC;

set sql_safe_updates = 0;
set sql_safe_updates = 1;

update animated_tv_series set IMDb = 9.2 where Id = 1817;

SELECT Title, IMDb, Channel, Company, Users, Id
FROM animated_tv_series
WHERE Channel = 'HBO'
ORDER BY IMDb DESC;

select distinct Channel from animated_tv_series;

UPDATE animated_tv_series
SET Channel = 'Amazon Prime Video'
WHERE Channel IN ('PBS KidsAmazon Prime Video', 'Amazon Video', 'VRVAmazon Prime Video');

UPDATE animated_tv_series
SET Channel = 'Disney'
WHERE Channel IN ('Playhouse Disney', 'Disney XD','Disney Junior','Disney Channel',
                 'Jetix (on Toon Disney) (2006-09)Disney XD (2009)','Disney Channel (2013-14)Disney XD (2014-16)',
                 'Playhouse Disney (2009-11)Disney Junior (2011-12)', 'Jetix[4]Toon DisneyABC Family',
                 'Disney Channel (2012-14)Disney XD (2014-16)','The Disney Channel','Disney+',
                  'Playhouse Disney (2006-11)Disney Junior (2011-16)', 'Disney XD (season 1)Disney Channel (season 2)',  
                 'Toon Disney','Disney XD (seasons 1-3)Disney Channel (season 4)',
                 'Disney XD (2017, 2020-21)Disney Channel (2018-19)','ABC\r\nToon Disney','Cartoon NetworkNetflixDisney+',
                 'ABCUPNToon Disney','ABCToon Disney','The CW4KidsDisney XD','Disney.com', 'ABC Toon Disney');
      
UPDATE animated_tv_series
SET Channel = 'Fox'
WHERE Channel IN ('Fox (2005-2014)TBS (2014-present)', 'FX (2009-2016)FXX (2017-2023)','FoxBox','Fox KidsSyndication', 
                 'Fox FamilyABCDisney Channel','Fox\r\nComedy Central\r\nHulu','Fox Kids', 'Fox Kids Network',
                 "Fox Children's Network", 'FoxFXX', 'Fox Family','FXX',"Fox Kids (1993-1995)Kids' WB (1995-1998)",
                'Fox Family Channel', 'FX','SyndicationFox Kids','Fox (4Kids TV)', 'Fox Comedy Central Hulu');
                
UPDATE animated_tv_series
SET Channel = 'Netflix'
WHERE Channel IN ('NetflixPeacock','NetflixAdult Swim','Universal KidsNetflix','Cartoon NetworkNetflix',
                 'NetflixHulu', 'NickelodeonNetflixYouTube');

UPDATE animated_tv_series
SET Channel = 'HBO'
WHERE Channel IN ('Rooster TeethHBO Max', 'HBO Max / Max', 'HBO Max','Cartoon NetworkDC UniverseHBO Max','MTVMax',
					'Max', 'Cartoon Network (2019)HBO Max (2020-2022)');
