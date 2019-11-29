/*
Static list of normalized os names and versions
Windows maps release version to display version
Mac maps Darwin version to macOS version
Android maps SDK version to display version
Linux entries are only used to normalize names

This table does not include Darwin minor versions; the normalize udf
will match on the major versions.

References:
https://en.wikipedia.org/wiki/MacOS_version_history#Releases
https://en.wikipedia.org/wiki/List_of_Microsoft_Windows_versions
https://en.wikipedia.org/wiki/Android_version_history#Version_history_by_API_level
*/

CREATE TEMP FUNCTION udf_get_normalized_os_list() AS (
  ARRAY<STRUCT<name STRING, version STRING, display_family STRING, display_version STRING, release_date DATE>>[
    ('Windows_NT', '10.0', 'Windows', '10', '2015-07-15'),
    ('Windows_NT', '6.3', 'Windows', '8.1', '2013-08-27'),
    ('Windows_NT', '6.2', 'Windows', '8', '2012-08-01'),
    ('Windows_NT', '6.1', 'Windows', '7', '2009-07-22'),
    ('Windows_NT', '6.0', 'Windows', 'Vista', '2006-11-08'),
    ('Windows_NT', '5.2', 'Windows', 'XP', '2005-04-25'),
    ('Windows_NT', '5.1', 'Windows', 'XP', '2001-08-24'),
    ('Windows_NT', '5.0', 'Windows', '2000', '1999-12-15'),
    ('Windows_98', '4.10', 'Windows', '98', '1998-05-15'),
    ('Windows_NT', '4.0', 'Windows', 'NT4.0', '1996-07-31'),
    ('Windows_95', '4.0', 'Windows', '95', '1995-08-15'),
    ('Darwin', '19.*', 'Mac', '10.15', '2019-10-19'),
    ('Darwin', '18.*', 'Mac', '10.14', '2018-09-24'),
    ('Darwin', '17.*', 'Mac', '10.13', '2017-09-25'),
    ('Darwin', '16.*', 'Mac', '10.12', '2017-09-13'),
    ('Darwin', '15.*', 'Mac', '10.11', '2015-09-16'),
    ('Darwin', '14.*', 'Mac', '10.10', '2014-10-16'),
    ('Darwin', '13.*', 'Mac', '10.9', '2013-10-22'),
    ('Darwin', '12.*', 'Mac', '10.8', '2012-07-25'),
    ('Darwin', '11.*', 'Mac', '10.7', '2011-07-20'),
    ('Darwin', '10.*', 'Mac', '10.6', '2009-08-28'),
    ('Android', '29', 'Android', '10', '2019-09-03'),
    ('Android', '28', 'Android', '9', '2018-08-06'),
    ('Android', '27', 'Android', '8.1.0', '2017-12-05'),
    ('Android', '26', 'Android', '8.0', '2017-08-21'),
    ('Android', '25', 'Android', '7.1', '2016-10-04'),
    ('Android', '24', 'Android', '7.0', '2016-08-22'),
    ('Android', '23', 'Android', '6.0', '2015-10-05'),
    ('Android', '22', 'Android', '5.1', '2015-03-09'),
    ('Android', '21', 'Android', '5.0', '2014-11-12'),
    ('Android', '20', 'Android', '4.4W', '2014-06-25'),
    ('Android', '19', 'Android', '4.4', '2013-10-31'),
    ('Android', '18', 'Android', '4.3', '2013-07-24'),
    ('Android', '17', 'Android', '4.2', '2012-11-13'),
    ('Android', '16', 'Android', '4.1', '2012-07-09'),
    ('Android', '15', 'Android', '4.0.3', '2011-12-16'),
    ('Android', '14', 'Android', '4.0', '2011-10-18'),
    ('Android', '13', 'Android', '3.2', '2011-07-15'),
    ('Android', '12', 'Android', '3.1', '2011-05-10'),
    ('Android', '11', 'Android', '3.0', '2011-02-22'),
    ('Android', '10', 'Android', '2.3.3', '2011-02-09'),
    ('Android', '9', 'Android', '2.3', '2010-12-06'),
    ('Android', '8', 'Android', '2.2', '2010-05-20'),
    ('Android', '7', 'Android', '2.1', '2010-01-12'),
    ('Android', '6', 'Android', '2.0.1', '2009-12-03'),
    ('Android', '5', 'Android', '2.0', '2009-10-26'),
    ('Android', '4', 'Android', '1.6', '2009-10-26'),
    ('Android', '3', 'Android', '1.5', '2009-04-27'),
    ('Android', '2', 'Android', '1.1', '2009-02-09'),
    ('Android', '1', 'Android', '1.0', '2008-09-23'),
    ('Linux', NULL, 'Linux', NULL, NULL),
    ('SunOS', NULL, 'Linux', NULL, NULL),
    ('OpenBSD', NULL, 'Linux', NULL, NULL),
    ('FreeBSD', NULL, 'Linux', NULL, NULL)
  ]
);
