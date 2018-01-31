-- Bookstore database --
-- http://www.math.ucla.edu/~ntg/fedandr/20c.1.02w/samples.html --
-- Usage is:
--  mysql -u <user> -p < bookstore.sql
CREATE DATABASE IF NOT EXISTS bookstore;
USE bookstore;

DROP TABLE IF EXISTS Publishers;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Authors;
DROP TABLE IF EXISTS BooksAuthors;

CREATE TABLE Publishers (
 Publisher_Id CHAR(5), 
 Name VARCHAR(30), 
 URL VARCHAR(80)
);

INSERT INTO Publishers VALUES ('01262', 'Academic Press', 'www.apnet.com/');
INSERT INTO Publishers VALUES ('18835', 'Coriolis', 'www.coriolis.com/');
INSERT INTO Publishers VALUES ('18879', 'Franklin, Beedle & Associates', 'www.fbeedle.com/');
INSERT INTO Publishers VALUES ('15688', 'IDG Books', 'www.idgbooks.com/');
INSERT INTO Publishers VALUES ('05345', 'Integrated Media Group', 'www.thomson.com/rcenters/img/img.html');
INSERT INTO Publishers VALUES ('00791', 'McGraw-Hill', 'www.mcgraw-hill.com/');
INSERT INTO Publishers VALUES ('15561', 'Microsoft Press', 'www.microsoft.com/mspress/');
INSERT INTO Publishers VALUES ('15660', 'Netscape Press', 'www.netscapepress.com/');
INSERT INTO Publishers VALUES ('15620', 'New Riders', 'www.mcp.com/newriders/');
INSERT INTO Publishers VALUES ('15659', 'O''Reilly', 'www.ora.com/');
INSERT INTO Publishers VALUES ('00788', 'Osborne/McGraw-Hill', 'www.osborne.com');
INSERT INTO Publishers VALUES ('00218', 'Peachpit Press', 'www.peachpit.com/');
INSERT INTO Publishers VALUES ('01356', 'Prentice Hall', 'www.prenhall.com/');
INSERT INTO Publishers VALUES ('07897', 'Que', 'www.mcp.com/que/');
INSERT INTO Publishers VALUES ('15752', 'Sams.net', 'www.mcp.com/samsnet/');
INSERT INTO Publishers VALUES ('15716', 'Waite', 'www.waite.com/waite/');
INSERT INTO Publishers VALUES ('04711', 'Wiley', 'www.wiley.com/');
INSERT INTO Publishers VALUES ('15627', 'Ziff-Davis', 'www.mcp.com/zdpress/');
-- SELECT * FROM Publishers



CREATE TABLE Authors (
  Author_Id CHAR(4) NOT NULL, 
  Name CHAR(25), 
  URL CHAR(80)
);

INSERT INTO Authors VALUES ('ARON', 'Aronson, Larry', 'www.interport.net/~laronson/Homepage.html');
INSERT INTO Authors VALUES ('ARPA', 'Arpajian, Scott', '');
INSERT INTO Authors VALUES ('BEBA', 'Bebak, Arthur', 'db.www.idgbooks.com/database/book/isbn/about-author.tmpl?query=1-56884-645-2');
INSERT INTO Authors VALUES ('BRAN', 'Brandon, Bill', '');
INSERT INTO Authors VALUES ('BROW', 'Brown, Mark', '');
INSERT INTO Authors VALUES ('CAST', 'Castro, Elizabeth', 'www.peachpit.com/peachpit/meetus/authors/elizabeth.castro.html');
INSERT INTO Authors VALUES ('CEAR', 'Cearly, Kent', '');
INSERT INTO Authors VALUES ('CHIN', 'Chin, Francis', '');
INSERT INTO Authors VALUES ('CHU1', 'Chu, Kenny', '');
INSERT INTO Authors VALUES ('DOWN', 'Downing, Troy', 'found.cs.nyu.edu/downing/index.html');
INSERT INTO Authors VALUES ('DUNT', 'Duntemann, Jeff', '');
INSERT INTO Authors VALUES ('EWRI', 'Erwin, Mike', '');
INSERT INTO Authors VALUES ('EVAN', 'Evans, Tim', '');
INSERT INTO Authors VALUES ('FOUS', 'Foust, Jeff', '');
INSERT INTO Authors VALUES ('FOX1', 'Fox, David', 'found.cs.nyu.edu/dfox/index.html');
INSERT INTO Authors VALUES ('GAIT', 'Gaither, Mark', '');
INSERT INTO Authors VALUES ('GRAH', 'Graham, Ian', 'www.utirc.utoronto.ca/personnel/i_graham.html');
INSERT INTO Authors VALUES ('GROV', 'Groves, Dawn', 'www.skycat.com/~dawng/dawn.html');
INSERT INTO Authors VALUES ('HARR', 'Harris, Stuart', 'www.esnet.com/~sirrah/www/');
INSERT INTO Authors VALUES ('HASS', 'Hassinger, Sebastian', '');
INSERT INTO Authors VALUES ('JAME', 'James, Steve', 'www.lanw.com/sjbio.htm');
INSERT INTO Authors VALUES ('JUNG', 'Jung, John', '');
INSERT INTO Authors VALUES ('KARP', 'Karpinski, Richard', '');
INSERT INTO Authors VALUES ('KENN', 'Kennedy, Bill', 'www.ora.com/www/item/html.author.html');
INSERT INTO Authors VALUES ('KERV', 'Kerven, David', '');
INSERT INTO Authors VALUES ('KIDD', 'Kidder, Gayle', 'w3.thegroup.net/~zoom/author.html');
INSERT INTO Authors VALUES ('KNAU', 'Knauss, Greg', '');
INSERT INTO Authors VALUES ('KRCM', 'Krcma, Marianne', '');
INSERT INTO Authors VALUES ('LEJE', 'LeJeune, Urban', 'www.charm.net/~lejeune/');
INSERT INTO Authors VALUES ('LEMA', 'Lemay, Laura', 'slack.lne.com/lemay/index.html');
INSERT INTO Authors VALUES ('MEGA', 'Megan, Robert', '');
INSERT INTO Authors VALUES ('MOR1', 'Morris, Bruce', '');
INSERT INTO Authors VALUES ('MOR2', 'Morris, Mary', '');
INSERT INTO Authors VALUES ('MUL1', 'Mullen, Robert', '');
INSERT INTO Authors VALUES ('MUL2', 'Muller, Nathan', 'www.ddx.com/authtoc.html');
INSERT INTO Authors VALUES ('MUSC', 'Musciano, Chuck', 'www.ora.com/www/item/html.author.html');
INSERT INTO Authors VALUES ('NEOU', 'Neou, Vivian', '');
INSERT INTO Authors VALUES ('PARK', 'Parker, Elisabeth', '');
INSERT INTO Authors VALUES ('POWE', 'Powell, James', 'scholar.lib.vt.edu/jpowell/');
INSERT INTO Authors VALUES ('RAND', 'Randall, Neil', 'randall.uwaterloo.ca/');
INSERT INTO Authors VALUES ('RAY1', 'Ray, Deborah', 'db.www.idgbooks.com/database/book/isbn/about-author.tmpl?query=1-56884-990-7');
INSERT INTO Authors VALUES ('RAY2', 'Ray, Eric', 'db.www.idgbooks.com/database/book/isbn/about-author.tmpl?query=1-56884-990-7');
INSERT INTO Authors VALUES ('READ', 'Ready, Kevin', 'www.browserbydesign.com/book/main/about.htm');
INSERT INTO Authors VALUES ('RECK', 'Recker, Mimi', '');
INSERT INTO Authors VALUES ('SAVO', 'Savola, Tom', '');
INSERT INTO Authors VALUES ('SCHA', 'Scharf, Dean', '');
INSERT INTO Authors VALUES ('SCHE', 'Schengili, Keith', '');
INSERT INTO Authors VALUES ('SMIT', 'Smith, Bud', 'db.www.idgbooks.com/database/book/isbn/about-author.tmpl?query=1-56884-645-2');
INSERT INTO Authors VALUES ('SOSI', 'Sosinsky, Barrie', '');
INSERT INTO Authors VALUES ('STAU', 'Stauffer, Todd', '');
INSERT INTO Authors VALUES ('TAYL', 'Taylor, Dave', 'www.intuitive.com:80/taylor/');
INSERT INTO Authors VALUES ('TITT', 'Tittel, Ed', 'www.lanw.com/etbio.htm');
INSERT INTO Authors VALUES ('WARN', 'Warner, Janine', 'www.browserbydesign.com/book/main/about.htm');
INSERT INTO Authors VALUES ('ZAKO', 'Zakour, John', '');

-- SELECT * FROM Authors


CREATE TABLE Books (
  Title VARCHAR(60), 
  ISBN CHAR(13) NOT NULL, 
  Publisher_Id CHAR(5), 
  URL VARCHAR(80), 
  Price DECIMAL(10,2)
);
INSERT INTO Books VALUES ('Beyond HTML', '0-07-882198-3', '00788', '', 27.95);
INSERT INTO Books VALUES ('10 Minute Guide to HTML', '0-78970541-9', '07897', 'www.mcp.com/cgi-bin/bag?isbn=1-07897-0541-9&userID=&last=/bookstore', 15.00);
INSERT INTO Books VALUES ('Advanced HTML & CGI Writer''s Companion', '0-12623540-6', '01262', '', 29.95);
INSERT INTO Books VALUES ('Creating Cool Web Pages with HTML', '1-56-884454-9', '15688', 'db.www.idgbooks.com/database/book/isbn/generic-book.tmpl?query=1-56884-454-9', 19.99);
INSERT INTO Books VALUES ('Creating Web Pages for Dummies', '1-56884645-2', '15688', 'db.www.idgbooks.com/database/book/isbn/generic-book.tmpl?query=1-56884-645-2', 20.00);
INSERT INTO Books VALUES ('How to Use HTML 3', '1-56276390-3', '15627', 'www.mcp.com/169486041707673/cgi-bin/bag?isbn=1-56276-390-3&last=/bookstore', 24.99);
INSERT INTO Books VALUES ('HTML 3 How-To', '1-57-169050-7', '15716', 'w3.waite.com/waite/waite/books.new/HTML_3_How_To/html/html3htcov.html', 39.99);
INSERT INTO Books VALUES ('HTML 3 Interactive Course', '1-57169066-2', '15716', 'w3.waite.com/waite/waite/books.new/HTML_3_Interactive_Course/html/h3iccov.html', 39.99);
INSERT INTO Books VALUES ('HTML 3.0 Manual of Style (2nd Ed.)', '1-56-276352-0', '15627', 'www.mcp.com/zdpress/features/html3.html', 24.95);
INSERT INTO Books VALUES ('HTML by Example', '0-78970812-4', '07897', 'www.mcp.com/26417620761498/cgi-bin/bag?isbn=0-7897-0812-4&last=/bookstore', 34.99);
INSERT INTO Books VALUES ('HTML CD- An Internet Publishing Toolkit - Windows Version', '0-13-232331-1', '01356', 'www.prenhall.com/013/232330/ptr/23233-0.html', 40.00);
INSERT INTO Books VALUES ('HTML for Dummies 2''nd Edition', '1-56-884647-9', '15688', 'db.www.idgbooks.com/database/book/isbn/generic-book.tmpl?query=1-56884-330-5', 30.00);
INSERT INTO Books VALUES ('HTML For Dummies Quick Reference', '1-56884990-7', '15688', 'db.www.idgbooks.com/database/book/isbn/generic-book.tmpl?query=1-56884-990-7', 12.99);
INSERT INTO Books VALUES ('HTML For Fun and Profit: Gold Signature Edition', '0-13-242488-6', '01356', 'www.sun.com/smi/ssoftpress/books/Morris/Morris.html', 40.00);
INSERT INTO Books VALUES ('HTML for the World Wide Web: Visual Quick Start Guide', '0-02188448-8', '00218', 'www.peachpit.com/peachpit/titles/catalog/88448.html', 17.95);
INSERT INTO Books VALUES ('HTML In Action', '1-55615948-X', '15561', 'www.microsoft.com/MSPRESS/BOOKS/DES/5-948-xA.HTM', 29.95);
INSERT INTO Books VALUES ('HTML Plus!', '0-53451626-2', '05345', 'scholar.lib.vt.edu/jpowell/htmlplus/', 36.00);
INSERT INTO Books VALUES ('HTML Publishing for Netscape, Windows Edition', '1-56-604288-7', '15660', 'ephraim.vmedia.com/catalog/', 39.95);
INSERT INTO Books VALUES ('HTML Publishing on the Internet', '0-07-912100-4', '00791', '', 45.00);
INSERT INTO Books VALUES ('HTML Quick Reference', '0-78970867-1', '07897', 'www.mcp.com/282320801523718/cgi-bin/bag?isbn=0-7897-0867-1&last=/bookstore', 17.99);
INSERT INTO Books VALUES ('HTML Sourcebook, 2nd Ed.', '0-47-114242-5', '04711', 'www.wiley.com:80/compbooks/k19.html', 30.00);
INSERT INTO Books VALUES ('HTML Visual Quick Reference', '0-07-970411-0', '07897', 'www.mcp.com/cgi-bin/bag?isbn=0-7897-0411-0&userID=75136573&last=/bookstore', 15.00);
INSERT INTO Books VALUES ('HTML Web Publisher''s Construction Kit', '1-57-169018-2', '15716', 'found.cs.nyu.edu/downing/htmlbook.html', 36.95);
INSERT INTO Books VALUES ('Hybrid HTML Design', '1-56205617-4', '15620', 'www.mcp.com/229881981168830/cgi-bin/bag?isbn=1-56205-617-4&last=/bookstore', 35.00);
INSERT INTO Books VALUES ('More HTML For Dummies', '1-56-88499-66', '15688', 'db.www.idgbooks.com/database/book/isbn/generic-book.tmpl?query=1-56884-996-6', 22.99);
INSERT INTO Books VALUES ('Netscape and HTML EXplorer', '0-18-83577578', '18835', 'www.coriolis.com/bookstor/cgbsnet/netshtml/netshtml.htm', 39.99);
INSERT INTO Books VALUES ('Teach Yourself More Web Publishing with HTML in a Week', '1-57-521005-3', '15752', 'slack.lne.com/Web/Books/More_HTML/', 29.99);
INSERT INTO Books VALUES ('Teach Yourself Web Publishing with HTML 3.0 in a Week, 2e', '1-57-521064-9', '15752', 'www.mcp.com/cgi-bin/bag?isbn=1-57521-064-9&last=/bookstore', 29.99);
INSERT INTO Books VALUES ('Teach Yourself Web Publishing with HTML 3.2 in 14 Days', '1-57-521096-7', '15752', 'www.mcp.com/274423342580643/cgi-bin/bag?isbn=1-57521-096-7&last=/bookstore', 59.99);
INSERT INTO Books VALUES ('The Web Page Recipe Book', '0-13460296-X', '01356', 'www.prenhall.com/~ray/013/460295/ptr/46029-5.html', 29.95);
INSERT INTO Books VALUES ('The Web Page Workbook', '1-88790205-8', '18879', 'www.fbeedle.com/bookinfo/05-8.html', 19.95);
INSERT INTO Books VALUES ('Using HTML', '0-78-970622-9', '07897', 'www.mcp.com/2738492176554/cgi-bin/bag?isbn=0-7897-0622-9&last=/bookstore', 24.99);
INSERT INTO Books VALUES ('HTML: The Definitive Guide', '1-56-592175-5', '15659', 'www.ora.com/www/item/html.html', 29.95);
INSERT INTO Books VALUES ('Web Site Wizardry', '1-88-357787-X', '18835', '', 34.99);
INSERT INTO Books VALUES ('Webmaster''s Guide to HTML', '0-07-912273-6', '00791', 'www.ddx.com/htmltoc.html', 34.95);
INSERT INTO Books VALUES ('Using HTML Special Edition', '0-78-970758-6', '07897', 'www.mcp.com/que', 49.99);
INSERT INTO Books VALUES ('Foundations of WWW Programming with HTML and CGI', '1-56884703-3', '15688', '', 39.99);
-- SELECT * FROM Books

CREATE TABLE BooksAuthors (
  ISBN CHAR(13) not null, 
  Author_Id CHAR(4) not null, 
  Seq_No tinyint
);

INSERT INTO BooksAuthors VALUES ('0-07-882198-3', 'KARP', 1);
INSERT INTO BooksAuthors VALUES ('0-78970541-9', 'EVAN', 1);
INSERT INTO BooksAuthors VALUES ('0-12623540-6', 'SCHE', 1);
INSERT INTO BooksAuthors VALUES ('1-56-884454-9', 'TAYL', 1);
INSERT INTO BooksAuthors VALUES ('1-56884645-2', 'SMIT', 1);
INSERT INTO BooksAuthors VALUES ('1-56884645-2', 'BEBA', 2);
INSERT INTO BooksAuthors VALUES ('1-56884703-3', 'TITT', 1);
INSERT INTO BooksAuthors VALUES ('1-56884703-3', 'GAIT', 2);
INSERT INTO BooksAuthors VALUES ('1-56884703-3', 'HASS', 3);
INSERT INTO BooksAuthors VALUES ('1-56884703-3', 'ERWI', 4);
INSERT INTO BooksAuthors VALUES ('1-56276390-3', 'ARPA', 1);
INSERT INTO BooksAuthors VALUES ('1-57-169050-7', 'KERV', 1);
INSERT INTO BooksAuthors VALUES ('1-57-169050-7', 'FOUS', 2);
INSERT INTO BooksAuthors VALUES ('1-57-169050-7', 'ZAKO', 3);
INSERT INTO BooksAuthors VALUES ('1-57169066-2', 'CEAR', 1);
INSERT INTO BooksAuthors VALUES ('1-56-276352-0', 'ARON', 1);
INSERT INTO BooksAuthors VALUES ('0-78970812-4', 'STAU', 1);
INSERT INTO BooksAuthors VALUES ('0-13-232331-1', 'NEOU', 1);
INSERT INTO BooksAuthors VALUES ('0-13-232331-1', 'RECK', 1);
INSERT INTO BooksAuthors VALUES ('1-56-884647-9', 'TITT', 1);
INSERT INTO BooksAuthors VALUES ('1-56-884647-9', 'JAME', 2);
INSERT INTO BooksAuthors VALUES ('1-56884990-7', 'RAY1', 1);
INSERT INTO BooksAuthors VALUES ('1-56884990-7', 'RAY2', 2);
INSERT INTO BooksAuthors VALUES ('0-13-242488-6', 'MOR2', 1);
INSERT INTO BooksAuthors VALUES ('0-02188448-8', 'CAST', 1);
INSERT INTO BooksAuthors VALUES ('1-55615948-X', 'MOR1', 1);
INSERT INTO BooksAuthors VALUES ('0-53451626-2', 'POWE', 1);
INSERT INTO BooksAuthors VALUES ('1-56-604288-7', 'HARR', 1);
INSERT INTO BooksAuthors VALUES ('1-56-604288-7', 'KIDD', 2);
INSERT INTO BooksAuthors VALUES ('0-07-912100-4', 'CHU1', 1);
INSERT INTO BooksAuthors VALUES ('0-07-912100-4', 'CHIN', 2);
INSERT INTO BooksAuthors VALUES ('0-78970867-1', 'MUL1', 1);
INSERT INTO BooksAuthors VALUES ('0-47-114242-5', 'GRAH', 1);
INSERT INTO BooksAuthors VALUES ('0-07-970411-0', 'SCHA', 1);
INSERT INTO BooksAuthors VALUES ('1-57-169018-2', 'FOX1', 1);
INSERT INTO BooksAuthors VALUES ('1-57-169018-2', 'DOWN', 2);
INSERT INTO BooksAuthors VALUES ('1-56-592175-5', 'MUSC', 1);
INSERT INTO BooksAuthors VALUES ('1-56-592175-5', 'KENN', 2);
INSERT INTO BooksAuthors VALUES ('1-56205617-4', 'READ', 1);
INSERT INTO BooksAuthors VALUES ('1-56205617-4', 'WARN', 2);
INSERT INTO BooksAuthors VALUES ('1-56-88499-66', 'TITT', 1);
INSERT INTO BooksAuthors VALUES ('0-18-83577578', 'LEJE', 1);
INSERT INTO BooksAuthors VALUES ('0-18-83577578', 'DUNT', 2);
INSERT INTO BooksAuthors VALUES ('1-57-521005-3', 'LEMA', 1);
INSERT INTO BooksAuthors VALUES ('1-57-521064-9', 'LEMA', 1);
INSERT INTO BooksAuthors VALUES ('1-57-521096-7', 'LEMA', 1);
INSERT INTO BooksAuthors VALUES ('0-13460296-X', 'SOSI', 1);
INSERT INTO BooksAuthors VALUES ('0-13460296-X', 'PARK', 2);
INSERT INTO BooksAuthors VALUES ('1-88790205-8', 'GROV', 1);
INSERT INTO BooksAuthors VALUES ('0-78-970622-9', 'RAND', 1);
INSERT INTO BooksAuthors VALUES ('0-78-970622-9', 'JUNG', 1);
INSERT INTO BooksAuthors VALUES ('0-78-970622-9', 'KNAU', 1);
INSERT INTO BooksAuthors VALUES ('0-78-970622-9', 'SAVO', 1);
INSERT INTO BooksAuthors VALUES ('1-88-357787-X', 'BROW', 2);
INSERT INTO BooksAuthors VALUES ('1-88-357787-X', 'JUNG', 3);
INSERT INTO BooksAuthors VALUES ('1-88-357787-X', 'BRAN', 4);
INSERT INTO BooksAuthors VALUES ('1-88-357787-X', 'MEGA', 1);
INSERT INTO BooksAuthors VALUES ('1-88-357787-X', 'SAVO', 1);
INSERT INTO BooksAuthors VALUES ('0-07-912273-6', 'KRCM', 1);
INSERT INTO BooksAuthors VALUES ('0-78-970758-6', 'MUL2', 1);

-- SELECT * FROM BooksAuthors


