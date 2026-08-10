#!/usr/bin/env python3
"""Step 0: Diff our 494 people against authoritative famous-American lists.

Output: a list of missing famous Americans ranked by importance.
"""
import json
import re
import unicodedata

OUR_PEOPLE = json.load(open('/tmp/our_people.json'))
OUR_SLUGS = {p['slug'] for p in OUR_PEOPLE}
OUR_NAMES = {p['name'] for p in OUR_PEOPLE}

# Normalize a name for matching: lowercase, strip diacritics, remove punctuation
def norm(s):
    s = unicodedata.normalize('NFKD', s).encode('ascii', 'ignore').decode('ascii')
    s = s.lower()
    s = re.sub(r"[^a-z0-9 ]", "", s)
    s = re.sub(r"\s+", " ", s).strip()
    return s

# Build a STRICT lookup: full normalized name → slug. No last-name fallback
# (that caused too many false positives: "Aretha Franklin" → benjamin-franklin)
NAME_TO_SLUG = {}
NAME_VARIANTS = {}
for p in OUR_PEOPLE:
    n = norm(p['name'])
    NAME_TO_SLUG[n] = p['slug']
    # Also store the "Last, First" form
    parts = p['name'].split()
    if len(parts) >= 2:
        last_first = norm(f"{parts[-1]} {' '.join(parts[:-1])}")
        NAME_VARIANTS[last_first] = p['slug']

def slug_for_name(name):
    n = norm(name)
    if n in NAME_TO_SLUG:
        return NAME_TO_SLUG[n]
    if n in NAME_VARIANTS:
        return NAME_VARIANTS[n]
    return None

# Authoritative lists =====================================================

US_PRESIDENTS = [
    "George Washington", "John Adams", "Thomas Jefferson", "James Madison",
    "James Monroe", "John Quincy Adams", "Andrew Jackson", "Martin Van Buren",
    "William Henry Harrison", "John Tyler", "James K. Polk", "Zachary Taylor",
    "Millard Fillmore", "Franklin Pierce", "James Buchanan", "Abraham Lincoln",
    "Andrew Johnson", "Ulysses S. Grant", "Rutherford B. Hayes", "James A. Garfield",
    "Chester A. Arthur", "Grover Cleveland", "Benjamin Harrison", "William McKinley",
    "Theodore Roosevelt", "William Howard Taft", "Woodrow Wilson", "Warren G. Harding",
    "Calvin Coolidge", "Herbert Hoover", "Franklin D. Roosevelt", "Harry S. Truman",
    "Dwight D. Eisenhower", "John F. Kennedy", "Lyndon B. Johnson", "Richard Nixon",
    "Gerald Ford", "Jimmy Carter", "Ronald Reagan", "George H. W. Bush",
    "Bill Clinton", "George W. Bush", "Barack Obama", "Donald Trump", "Joe Biden",
]

OTD_1_100 = [
    "George Washington", "John F. Kennedy", "Steve Jobs", "Thomas Edison",
    "Marilyn Monroe", "Abraham Lincoln", "Donald Trump", "Dwight D. Eisenhower",
    "Eminem", "Franklin D. Roosevelt", "Elvis Presley", "Homer Simpson",
    "Richard Nixon", "Michael Jackson", "Taylor Swift", "Bruce Lee",
    "Sojourner Truth", "Al Capone", "Babe Ruth", "Barbara Bach",
    "Betsy Ross", "Albert Einstein", "Martin Luther King Jr.", "Elon Musk",
    "Cyrus Eaton", "Barack Obama", "Michael Jordan", "Kurt Cobain",
    "Frederick Douglass", "Clint Eastwood", "Joe Biden", "Robert Downey Jr",
    "Ronald Reagan", "Alexander Graham Bell", "Todd Beamer", "Kobe Bryant",
    "Kendrick Lamar", "Bill Gates", "Ariana Grande", "Ginger Rogers",
    "Muhammad Ali", "Amelia Earhart", "Cathy Moriarty", "Andrew Johnson",
    "Bob Dylan", "Mark Twain", "XXXTentacion", "George W. Bush",
    "Michael Phelps", "Robert Fulton", "George H. W. Bush", "Thomas Jefferson",
    "Harry Truman", "Theodore Roosevelt", "Benjamin Franklin", "Frank Sinatra",
    "Billie Eilish", "Jonathan Brandis", "Mike Tyson", "Moe Howard",
    "Bruce Willis", "Ulysses S. Grant", "Barbra Streisand", "Nicki Minaj",
    "MrBeast", "Whitney Houston", "Serena Williams", "George \"Machine Gun\" Kelly",
    "Ciara", "Judy Garland", "John D. Rockefeller", "Charles Lindbergh",
    "Tom Hanks", "Beyoncé", "Mark Zuckerberg", "Charlie Sheen",
    "Lyndon B. Johnson", "LeBron James", "Charles Strite", "Billie Jean King",
    "Clyde Barrow", "Jimmy Carter", "Clara Bow", "Wilt Chamberlain",
    "Robert Oppenheimer", "Jimi Hendrix", "Mariah Carey", "Jesse James",
    "John Wilkes Booth", "Robert E. Lee", "John Adams", "Arnold Schwarzenegger",
    "Bugsy Siegel", "Henry Ford", "Shirley Temple", "Joe Gallo",
    "Phyllis Diller", "Andrew Carnegie", "Orville Wright", "Lou Gehrig",
]

OTD_101_200 = [
    "Jeb Bush", "Shirley Temple", "Robert E. Lee", "Mariah Carey", "Buzz Aldrin",
    "John Jacob Astor", "Elizabeth Cady Stanton", "Stonewall Jackson", "Edwin Hubble",
    "Sidney Poitier", "Stan Lee", "Lou Gehrig", "Rick James", "Stevie Wonder",
    "William McKinley", "Benedict Arnold", "Tupac Shakur", "Alexander H. Stephens",
    "Dustin Hoffman", "William Hanna", "Bobby Riggs", "Olivia Rodrigo", "Buddy Holly",
    "Marie Dressler", "Neil Armstrong", "Dr. Seuss", "Malcolm X", "Grace Hopper",
    "Bill Clinton", "Martin Van Buren", "Shaggy", "Cher", "James Gordon Bennett",
    "Hetty Green", "Floyd Patterson", "Walt Disney", "Frank Borman", "Eddie Arcaro",
    "Leo Baekeland", "Jesse Owens", "Ernest Hemingway", "Jim Morrison", "Malcolm Forbes",
    "Haley Joel Osment", "George Gallup", "George Clooney", "George Brett",
    "Bill the Butcher", "Prince Rogers Nelson", "Diana Ross", "Frank Kellogg",
    "Meriwether Lewis", "Johnny Depp", "Jackie Robinson", "Keith Haring",
    "Pretty Boy Floyd", "James Stewart", "Rodney King", "Johnny Mercer",
    "Camila Cabello", "Lisa Marie Presley", "Margaret Hamilton", "Katharine Hepburn",
    "Stanley Kubrick", "Rocky Marciano", "Al Pacino", "James Earl Ray",
    "Harriet Tubman", "Will Durant", "Bonnie Parker", "Howard Stern", "Tom Brady",
    "Stan Smith", "Johnny Cash", "Willie Sutton", "Woodrow Wilson", "George Reeves",
    "Jack Dempsey", "James Dean", "Kareem Abdul-Jabbar", "Maureen McCormick",
    "Jean Harlow", "Jerry Lee Lewis", "Madonna", "Andrew Jackson", "John Gotti",
    "Tim Allen", "Bruce Springsteen", "Ty Cobb", "Jane Fonda",
    "Charles \"Lucky\" Luciano", "Ted Kaczynski", "Mary Baker Eddy", "Josephine Baker",
    "Vic Seixas", "Lou Costello", "Walter Johnson", "Dwayne Johnson", "Dolly Parton",
]

OTD_201_300 = [
    "Pharrell Williams", "Douglas MacArthur", "John Travolta", "Barry Bonds",
    "John Madden", "Pete Rose", "Aaron Burr", "Chris Evert", "Paul Walker",
    "Kylie Jenner", "Walter Johnson", "John Dillinger", "Willie Mays",
    "Colonel Sanders", "Jenna Ortega", "Alexander Hamilton", "Sandra Bullock",
    "Sharon Tate", "Robert F. Kennedy", "Stan Smith", "Rickey Henderson",
    "Margaret Hamilton", "Rosa Parks", "Gerald Ford", "Nicole Kidman",
    "Jerry Lewis", "John Witherspoon", "Joe Louis", "Michael Dell", "Will Rogers",
    "Usher", "Huey P. Newton", "Grover Cleveland", "Baby Face Nelson",
    "Lee Harvey Oswald", "Isabel May", "Henry Kissinger", "Jimmie Lee Jackson",
    "Will Durant", "Charo", "Weird Al Yankovic", "Joe DiMaggio", "Liv Tyler",
    "Jennifer Lopez", "Jack Nicholson", "Mary Baker Eddy", "Joseph A. Walker",
    "Eddie Vedder", "Gloria Estefan", "William Howard Taft", "Garth Brooks",
    "George Floyd", "J. P. Morgan", "Billy the Kid", "Juice WRLD", "Kanye West",
    "Jeffrey Dahmer", "Carl David Anderson", "Sylvia Plath", "50 Cent",
    "Charles Manson", "Jennifer Aniston", "Lana Turner", "William Henry Harrison",
    "Linus Pauling", "Janis Joplin", "Christopher Walken", "Nicolas Cage",
    "Marvin Gaye", "Will Smith", "Bette Davis", "Julia Roberts", "Bing Crosby",
    "Tom Cruise", "Selena Gomez", "Arthur Ashe", "Otis Redding", "Alice Cooper",
    "George S. Patton", "Linus Torvalds", "Jacqueline Kennedy Onassis", "Hope Solo",
    "Herbert Hoover", "Lil Nas X", "Janet Jackson", "Hedy Lamarr", "Cal Ripken Jr",
    "Hank Aaron", "James Monroe", "Betty Grable", "Marlon Brando", "Samuel Morse",
    "Snoop Dogg", "Scarlett Johansson", "Rod Steiger", "Ann Lee", "Desi Arnaz",
    "John McEnroe", "Linda McCartney", "Brigham Young",
]

OTD_401_500 = [
    "Leonardo DiCaprio", "Chuck Berry", "Joe Pepitone", "Stephen F. Austin",
    "Amy Fisher", "Ida B. Wells", "George Childress", "Axl Rose", "Jake Paul",
    "Spencer Tracy", "Nancy Pelosi", "Booker T. Washington", "Jeremy Renner",
    "Bill Bixby", "George Eastman", "Paul Revere", "Alice Paul", "Harvey Milk",
    "B.B. King", "Grace Kelly", "Anne Morrow Lindbergh", "Cardi B", "Carrie Underwood",
    "George Dayton", "Jacob Sartorius", "J.E.B. Stuart", "John Cena", "Stan Musial",
    "Calvin Coolidge", "Tonya Harding", "Barbara Walters", "Jim Carrey", "Bruno Mars",
    "Kenny Rogers", "J. Edgar Hoover", "Jack Kirby", "Joe Montana",
    "Stevie Ray Vaughan", "Robert Johnson", "Chris Brown", "Paul Newman", "Ed Sullivan",
    "Christopher Latham Sholes", "Georgia O'Keeffe", "Leó Szilárd", "Magic Johnson",
    "Neil Diamond", "Buck O'Neil", "Lance Armstrong", "Kelly Hu", "Helen Keller",
    "Harriet Quimby", "Nathan Hale", "Cy Young", "Doris Day", "Simone Biles",
    "James Garfield", "Carmen Electra", "John Hancock", "Joe Frazier", "Elizabeth Short",
    "John Tyler", "Lil Durk", "Jefferson Davis", "Sylvester Stallone", "Puff Daddy",
    "Jennifer Connelly", "Jessica Biel", "Steven Spielberg", "Chester A. Arthur",
    "Zitkála-Šá", "Ivan Lendl", "Bud Abbott", "Chester Nimitz", "Jim Brown",
    "Anne Bancroft", "Linda Evans", "Morgan Freeman", "Ethel Merman", "Warren G. Harding",
    "Irving Berlin", "Reese Witherspoon", "Elizabeth Holmes", "A. J. Foyt", "Kevin Costner",
    "Timothy McVeigh", "Sally Ride", "Liam Neeson", "P. T. Barnum", "Leslie Groves",
    "Susan Blow", "Millard Fillmore", "Christopher Nolan", "Jonas Salk", "Coolio",
    "Ed Gein", "Timothée Chalamet", "Paul Laurence Dunbar", "Mike Krieger", "Johnny Carson",
]

# Britannica 100 + Smithsonian 100 + curated canonical (deduplicated)
BRITANNICA_SMITHSONIAN = [
    "Thomas Edison", "Alexander Graham Bell", "Albert Einstein", "J. Robert Oppenheimer",
    "Henry Ford", "John D. Rockefeller", "Andrew Carnegie", "Cornelius Vanderbilt",
    "J.P. Morgan", "Walt Disney", "William Randolph Hearst", "Howard Hughes",
    "Bill Gates", "Steve Jobs", "Larry Page", "Sergey Brin", "Jeff Bezos",
    "Mark Zuckerberg", "Elon Musk", "Warren Buffett", "Michael Dell", "Phil Knight",
    "Sam Walton", "Ray Kroc", "Frank Lloyd Wright", "Louis Sullivan",
    "Elijah McCoy", "Jan Matzeliger", "Garrett Morgan", "Andrew Carnegie",
    "Andy Warhol", "Georgia O'Keeffe", "Jackson Pollock", "Mark Rothko",
    "Willem de Kooning", "Robert Rauschenberg", "Jasper Johns",
    "Helen Keller", "W.E.B. Du Bois", "Susan B. Anthony", "Elizabeth Cady Stanton",
    "Jane Addams", "Helen", "Marian Anderson", "Cesar Chavez",
    "John Brown", "William Lloyd Garrison", "Jane Goodall", "Fannie Lou Hamer",
    "Medgar Evers", "Ella Baker", "John Lewis", "Bayard Rustin", "A. Philip Randolph",
    "Stokely Carmichael", "Angela Davis", "Assata Shakur",
    "Stonewall Jackson", "J.E.B. Stuart", "Douglas MacArthur", "George S. Patton",
    "Chester Nimitz", "Leslie Groves", "Omar Bradley", "John Pershing",
    "William Tecumseh Sherman", "Philip Sheridan", "George Custer", "Colin Powell",
    "Norman Schwarzkopf", "John McCain", "Bob Dole", "Benedict Arnold",
    "Linus Pauling", "Jonas Salk", "Grace Hopper", "Hedy Lamarr", "Edwin Hubble",
    "Carl Sagan", "Richard Feynman", "Sally Ride", "Mae Jemison", "Neil Armstrong",
    "Buzz Aldrin", "John Glenn", "Alan Shepard", "Wernher von Braun",
    "George Washington Carver", "Luther Burbank", "Norman Borlaug", "Rachel Carson",
    "Dian Fossey", "Sylvia Earle", "Benjamin Banneker", "Granville Woods", "Lewis Latimer",
    "Charles Drew", "Percy Julian", "Otis Boykin", "Ernest Everett Just",
    "Daniel Hale Williams", "Rebecca Lee Crumpler",
    "Toni Morrison", "Maya Angelou", "Langston Hughes", "Zora Neale Hurston",
    "Richard Wright", "Ralph Ellison", "James Baldwin", "Gwendolyn Brooks",
    "Sylvia Plath", "Emily Dickinson", "Walt Whitman",
    "Mark Twain", "Herman Melville", "Nathaniel Hawthorne", "Edgar Allan Poe",
    "Harper Lee", "John Steinbeck", "Jack Kerouac", "Allen Ginsberg",
    "Truman Capote", "Kurt Vonnegut", "Philip Roth", "Saul Bellow", "Dr. Seuss",
    "F. Scott Fitzgerald", "William Faulkner", "Ernest Hemingway",
    "Steven Spielberg", "Martin Scorsese", "Francis Ford Coppola", "Quentin Tarantino",
    "Coen Brothers", "David Lynch", "Terrence Malick", "Stanley Kubrick",
    "Alfred Hitchcock", "John Ford", "Howard Hawks", "Orson Welles", "Billy Wilder",
    "Frank Capra", "Babe Ruth", "Muhammad Ali", "Jackie Robinson", "Michael Jordan",
    "LeBron James", "Kobe Bryant", "Tiger Woods", "Arnold Schwarzenegger",
    "Tom Brady", "Joe Montana", "Jim Brown", "Hank Aaron", "Willie Mays",
    "Sandy Koufax", "Mickey Mantle", "Ty Cobb", "Joe DiMaggio", "Jim Thorpe",
    "Jesse Owens", "Carl Lewis", "Simone Biles", "Serena Williams", "Billie Jean King",
    "Pelé", "Secretariat", "Michael Jordan", "Larry Bird", "Magic Johnson",
    "Bill Russell", "Wilt Chamberlain", "Kareem Abdul-Jabbar",
    "Shaquille O'Neal", "Stephen Curry", "Kevin Durant", "Giannis Antetokounmpo",
    "Joel Embiid", "Patrick Mahomes", "Aaron Rodgers", "Travis Kelce", "Lamar Jackson",
    "Mike Trout", "Shohei Ohtani", "Aaron Judge", "Mookie Betts",
    "Sidney Crosby", "Connor McDavid", "Patrick Kane", "Alex Ovechkin",
    "Wayne Gretzky", "Mario Lemieux", "Bobby Orr",
    "Jack Nicklaus", "Arnold Palmer", "Phil Mickelson",
    "Larry Ellison", "Satya Nadella", "Sundar Pichai", "Tim Cook", "Reed Hastings",
    "Travis Kalanick", "Brian Chesky", "Drew Houston", "Evan Spiegel", "Bobby Murphy",
    "Jack Dorsey", "Chad Hurley", "Jawed Karim", "Steve Chen",
    "Oprah Winfrey", "Ellen DeGeneres", "Jerry Seinfeld", "Stephen Colbert",
    "Jimmy Fallon", "Conan O'Brien", "David Letterman", "Johnny Carson",
    "Jay Leno", "Howard Stern", "Walter Cronkite", "Edward R. Murrow",
    "Dan Rather", "Tom Brokaw", "Tucker Carlson", "Rachel Maddow", "Anderson Cooper",
    "Wolf Blitzer", "Louis Armstrong", "Duke Ellington", "Miles Davis", "John Coltrane",
    "Thelonious Monk", "Charlie Parker", "Dizzy Gillespie", "Aretha Franklin",
    "Ray Charles", "Sam Cooke", "Otis Redding", "James Brown", "Stevie Wonder",
    "Prince", "Whitney Houston", "Mariah Carey", "Beyoncé", "Taylor Swift",
    "Adele", "Ed Sheeran", "Bruno Mars", "The Weeknd", "Drake", "Eminem",
    "Jay-Z", "Kanye West", "Kendrick Lamar", "Tupac Shakur", "Notorious B.I.G.",
    "Nas", "Snoop Dogg", "Ice Cube", "Annie Oakley", "Sitting Bull", "Pocahontas",
    "Amelia Earhart", "Charles Lindbergh", "Wilbur Wright", "Orville Wright",
    "Samuel Morse", "P.T. Barnum", "Sacagawea", "Crazy Horse", "Geronimo", "Buffalo Bill",
    "P.T. Barnum", "Andrew Mellon", "Henry Clay Frick", "Andrew W. Mellon",
    "George Westinghouse", "Steve Wozniak", "Steve Ballmer",
]

# Forbes 400 2025 (top 50 visible, rest from secondary lists)
FORBES_400 = [
    "Elon Musk", "Larry Ellison", "Mark Zuckerberg", "Jeff Bezos", "Larry Page",
    "Sergey Brin", "Steve Ballmer", "Jensen Huang", "Warren Buffett", "Michael Dell",
    "Rob Walton", "Jim Walton", "Michael Bloomberg", "Bill Gates", "Alice Walton",
    "Julia Koch", "Charles Koch", "Thomas Peterffy", "Jeff Yass", "Stephen Schwarzman",
    "Ken Griffin", "Jacqueline Mars", "John Mars", "Lukas Walton", "Miriam Adelson",
    "Phil Knight", "Abigail Johnson", "MacKenzie Scott", "Marilyn Simons", "Thomas Frist",
    "Len Blavatnik", "Elaine Marshall", "Melinda French Gates", "Henry Samueli",
    "Eric Schmidt", "Daniel Gilbert", "Rupert Murdoch", "Robert Pera", "Peter Thiel",
    "David Tepper", "Steve Cohen", "Diane Hendricks", "Rick Cohen", "Todd Graves",
    "Stanley Kroenke", "John Menard", "Christy Walton", "Jerry Jones",
    "Henry Kravis", "George Roberts", "Ray Lee Hunt", "Sid Bass", "Robert Bass",
    "Edward Bass", "Lee Bass", "Michael Saylor", "Charles Schwab", "Jim Simons",
    "Israel Englander", "Paul Tudor Jones", "Marc Rowan", "Joshua Harris",
    "David Bonderman", "Robert Kraft", "Howard Lutnick", "Dustin Moskovitz",
    "Jim Koch", "Forrest Mars", "Jan Koum", "Andrew Beal", "Harold Hamm",
    "David Green", "Ray Davis", "Reed Hastings", "Brian Chesky", "Drew Houston",
    "Evan Spiegel", "Bobby Murphy", "Jack Dorsey", "Pat Stryker", "S. Truett Cathy",
    "Mary Callahan Erdoes", "Kenneth Feld",
]

# Forbes Most Powerful Women 2025 (US-based)
FORBES_MPW = [
    "Julie Sweet", "Mary Barra", "Jane Fraser", "Abigail Johnson", "Lisa Su",
    "MacKenzie Scott", "Ruth Porat", "Melinda French Gates", "Gail Boudreaux",
    "Amy Hood", "Gwynne Shotwell", "Taylor Swift", "Laurene Powell Jobs",
    "Kathryn McLay", "Carol Tomé", "Phebe Novakovic", "Marianne Lake",
    "Oprah Winfrey", "Sarah London", "Beyoncé Knowles-Carter", "Dana Walden",
    "Thasunda Brown Duckett", "Colette Kress", "Kathy Warden", "Susan Li",
    "Jennifer Piepszak", "Janet Truncale", "Adena Friedman", "Lynn Martin",
    "Sarah Friar", "Safra Catz", "Rosalind Brewer", "Corie Barry", "Mary Mack",
    "Kim Kardashian", "Chelsea Clinton", "Billie Jean King", "Serena Williams",
    "Reese Witherspoon", "Rihanna", "Alicia Keys", "Jennifer Hudson", "Mary J. Blige",
    "Dolly Parton", "Reba McEntire", "Shonda Rhimes", "Joan Baez", "Toni Morrison",
    "Michelle Obama", "Christina Applegate", "Sandra Draper",
]

# Time 100 (2024 + 2025) — US people
TIME_100 = [
    "Ed Sheeran", "Scarlett Johansson", "Daniel Dae Kim", "Kristen Bell",
    "Adam Scott", "Rashida Jones", "Diego Luna", "Nicole Scherzinger", "Kristen Wiig",
    "Willy Chavarria", "Danielle Deadwyler", "Hozier", "Miranda July",
    "Snoop Dogg", "Nikki Glaser", "Larry Fink", "Kwame Onwuachi", "Jon M. Chu",
    "Serena Williams", "Ed Bastian", "Blake Lively", "Lorne Michaels",
    "Simone Biles", "Doug McMillon", "Ted Sarandos", "Joe Rogan", "Lisa Su",
    "Mark Zuckerberg", "Drew Houston", "Demi Moore", "Jalen Hurts", "Adrien Brody",
    "David Muir", "Bobbi Brown", "Amy Griffin", "Léon Marchand", "Demis Hassabis",
    "Rosé", "Andrew Forrest", "Breanna Stewart", "Napheesa Collier", "Dario Amodei",
    "J.D. Vance", "Megyn Kelly", "Patrick Mahomes", "Satya Nadella", "A'ja Wilson",
    "Kelly Ripa", "Jack Antonoff", "Thasunda Brown Duckett", "Donna Langley",
    "Beth Ford", "Mark Cuban", "Larry Ellison", "Mary Barra", "Donald Trump",
    "Elon Musk", "Michael J. Fox", "Sofia Coppola", "Robert F. Kennedy",
    "Elliot Page", "Caitlin Clark", "Cole Palmer", "Hoda Kotb",
    "Cole Haan", "Jenny Holzer", "Colman Domingo", "Dev Patel", "Alia Bhatt",
    "Fantasia Barrino", "Jeffrey Wright", "Taraji P. Henson", "Donna Langley",
    "Christina Applegate", "Bari Weiss", "Kim Kardashian",
]

# American Nobel Laureates (curated, most famous)
AMERICAN_NOBEL = [
    "Sinclair Lewis", "Eugene O'Neill", "Pearl S. Buck", "William Faulkner",
    "Ernest Hemingway", "John Steinbeck", "Saul Bellow", "Isaac Bashevis Singer",
    "Toni Morrison", "Bob Dylan", "Louise Glück",
    "Theodore Roosevelt", "Jane Addams", "Norman Borlaug",
    "Henry Kissinger", "Martin Luther King", "Elie Wiesel", "Jimmy Carter", "Al Gore", "Barack Obama",
    "Paul Samuelson", "Milton Friedman", "Kenneth Arrow", "Robert Lucas",
    "Joseph Stiglitz", "Paul Krugman", "Angus Deaton", "Richard Thaler",
    "Daron Acemoglu", "Simon Johnson", "James A. Robinson",
    "Albert Einstein", "Richard Feynman", "Murray Gell-Mann", "Steven Weinberg",
    "Saul Perlmutter", "Adam Riess", "John Hopfield", "Geoffrey Hinton",
    "Linus Pauling", "Glenn Seaborg", "Robert Woodward", "Ahmed Zewail",
    "Jennifer Doudna", "Frances Arnold", "David Baker", "John Jumper",
    "James Watson", "Jonas Salk", "Stanley Prusiner", "David Baltimore",
    "Carol Greider", "Elizabeth Blackburn", "Victor Ambros", "Gary Ruvkun",
    "Barry Sharpless", "Carl Anderson", "Robert Millikan", "Arthur Compton",
    "Charles Townes", "Steven Chu", "Sheldon Glashow", "Leon Lederman",
    "Edward Teller", "Hans Bethe", "Maria Goeppert-Mayer", "Maria Mayer",
    "Andrew Fire", "Craig Mello", "Mario Capecchi", "Oliver Smithies",
]

# Combine all and dedupe
all_names = set()
for lst in [US_PRESIDENTS, OTD_1_100, OTD_101_200, OTD_201_300, OTD_401_500,
            BRITANNICA_SMITHSONIAN, FORBES_400, FORBES_MPW, TIME_100, AMERICAN_NOBEL]:
    for n in lst:
        n = n.strip()
        if n and len(n) > 2:
            all_names.add(n)

print(f"Total unique names in authoritative lists: {len(all_names)}")

# Find missing
missing = []
present = []
for name in all_names:
    slug = slug_for_name(name)
    if slug is None:
        missing.append(name)
    else:
        present.append((name, slug))

missing = sorted(set(missing))

print(f"\nPresent in our DB: {len(present)}")
print(f"Missing: {len(missing)}")
print(f"\n=== ALL MISSING FAMOUS AMERICANS ({len(missing)}) ===\n")

# Group by category
def cat(name):
    nl = name.lower()
    if any(x in nl for x in ['mlk','king','malcolm','rosa parks','parks','angelou','morrison','baldwin','hughes','du bois','douglass','tubman','anthony','stanton','truth','sojourner','jackson','davis','sharpton','farrakhan','jesse','robinson']):
        return 'civil-rights / activists'
    if any(x in nl for x in ['edison','bell','einstein','morgan','tesla','westinghouse','goddard','hopper','lamarr','armstrong','aldrin','glenn','shepard','braun','sagan','feynman','salk','rubin','jabbar','curie','meitner','franklin','carver','drew']):
        return 'scientist / inventor'
    if any(x in nl for x in ['ford','rockefeller','carnegie','vanderbilt','mellon','frick','gates','jobs','bezos','buffett','zuckerberg','dell','knight','walton','kroc','boeing','musk','disney','hughes','hearst','barnum','westinghouse','page','brin']):
        return 'business / industrialist'
    if any(x in nl for x in ['jordan','kobe','lebron','ruth','mantle','williams','mays','aaron','jeter','griffey','ripken','bird','russell','wilt','shaq','curry','durant','giannis','joel','mahomes','rodgers','kelce','jackson','trout','ohtani','judge','betts','crosby','ovechkin','mcDavid','kane','woods','nicklaus','palmer','mickelson','gretzky','lemieux','orr','frazier','marciano','dempsey','tyson','ali','joe louis','thorpe','owens','lewis','biles','serena','billie jean','pelé','secretariat','brown','payton','sanders','rice','brady','emmitt','travolta','depp','eastwood','dicaprio','deniro','pacino','clooney','pitt','streep','hanks','cruise','jolie','roberts','hoffman']):
        return 'athlete / entertainer'
    if any(x in nl for x in ['sinatra','chaplin','presley','dylan','hendrix','jackson','joplin','morrison','gaye','wonder','prince','madonna','swift','bieber','rihanna','gaga','eminem','jay-z','kanye','kendrick','tupac','biggie','nas','snoop','cube','drake','weeknd','adele','sheeran','bruno mars','mccartney','cash','lennon','harrison','armstrong','ellington','davis','coltrane','monk','parker','gillespie','aretha','ray charles','sam cooke','redding','james brown','whitney','mariah','beyoncé','taylor','adele','ed','the weeknd','drake']):
        return 'musician / singer'
    if any(x in nl for x in ['spielberg','scorsese','coppola','tarantino','kubrick','lynch','hitchcock','ford','orson','welles','capra','howard','wilder','mcgraw','luke','william','samuel','john','kennedy','baldwin','alden']):
        return 'film / TV'
    if any(x in nl for x in ['hemingway','fitzgerald','faulkner','steinbeck','twain','plath','dickinson','whitman','poe','melville','hawthorne','alcott','kerouac','ginsberg','capote','vonnegut','roth','bellow','lee','updike','dunbar','dunbar-nelson','angelou','morrison','hughes','hurston','wright','ellison','baldwin','brooks','seuss']):
        return 'author / writer'
    if any(x in nl for x in ['president','jfk','kennedy','jefferson','madison','monroe','adams','lincoln','roosevelt','reagan','obama','trump','biden','clinton','bush','ford','carter','nixon','johnson','harrison','tyler','polk','taylor','pierce','buchanon','arthur','cleveland','mckinley','taft','wilson','harding','coolidge','hoover','eisenhower','grant','hayes','garfield','wash','hamilt','burr','franklin','henry','samuel','james']):
        return 'politician / statesman'
    if any(x in nl for x in ['oprah','degeneres','seinfeld','colbert','fallon','conan','letterman','leno','carson','crom','murrow','rather','brokaw','carlson','maddow','cooper','blitzer','simon','sheryl','ellen','rachel']):
        return 'TV host / journalist'
    if any(x in nl for x in ['jane','john','jack','joe','william','james','robert','thomas','george','benjamin','henry','samuel','alexander','andrew','edward','charles','frank','edgar','ralph','henry','walt','mary','sally','mae','annie','sitting','crazy','pocahontas','geronimo','buffalo','hel','amelia','lindbergh','wright','morse','barnum']):
        return 'historical / cultural figure'
    return 'other'

from collections import Counter, defaultdict
c = Counter()
by_cat = defaultdict(list)
for n in missing:
    k = cat(n)
    c[k] += 1
    by_cat[k].append(n)

print("Missing by category:")
for k, v in c.most_common():
    print(f"  {k:30} {v}")

# Output full list
output = {
    "missing": missing,
    "by_category": {k: sorted(set(v)) for k, v in by_cat.items()},
    "present_count": len(present),
    "missing_count": len(missing),
    "present": sorted(present, key=lambda x: x[0]),
}
with open('/tmp/missing_americans.json', 'w') as f:
    json.dump(output, f, indent=2)
print(f"\nWritten to /tmp/missing_americans.json")

# Print first 30 in each category
for k, v in by_cat.items():
    print(f"\n--- {k} ({len(set(v))}) ---")
    for n in sorted(set(v))[:30]:
        print(f"  {n}")
    if len(set(v)) > 30:
        print(f"  ... +{len(set(v))-30} more")
