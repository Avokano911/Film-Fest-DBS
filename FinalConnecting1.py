import mysql.connector
from mysql.connector import Error

config = {
        'user': 'dsuser',
        'password':'userCreateSQL',
        'host':'localhost',
        'database':'Fujishima_21873542'
}

conn = None
mycursor = None

try:

    conn = mysql.connector.connect(**config) # connect to the config server
    mycursor = conn.cursor()
    q1 = "SELECT F_Name, Genre FROM Film WHERE YearOfRelease = '1946'"
    mycursor.execute(q1)

    # fetching 
    film = mycursor.fetchall()
    for F_Name, Genre in film:
        print(f"Name: {F_Name}, Genre: {Genre}")

    #insertion
    insertionP = "INSERT INTO Person (PersonID, LastName, FirstName, Phone) VALUES (%s, %s, %s, %s)"

    Person1 = ('QQQQ1111','Super','Mario','')
    
    mycursor.execute(insertionP, Person1)
    conn.commit()

    #updating
    update = "UPDATE Person SET LastName = 'Trump' WHERE PersonID = 'QQQQ1111'"
    mycursor.execute(update)
    conn.commit()


    delete = "DELETE FROM Person WHERE PersonID = 'QQQQ1111'"
    mycursor.execute(delete)
    conn.commit()

except Error as e:
    print(f"Something happended...{e}")


