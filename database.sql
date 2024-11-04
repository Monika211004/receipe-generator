import psycopg2

# Connect to PostgreSQL
conn = psycopg2.connect(
    host="localhost",
    database="recipe_db",
    user="your_username",  # Use your PostgreSQL username
    password="your_password"  # Use your PostgreSQL password
)

cur = conn.cursor()

# Insert Data into user_recipes
cur.execute("""
    INSERT INTO user_recipes (username, ingredients, recipe, cooking_time, nutritional_info, cuisine)
    VALUES (%s, %s, %s, %s, %s, %s)
""", ('JohnDoe', 'Onions, Garlic, Tomatoes', 'Tomato Soup Recipe', 30, 'Low fat', 'Italian'))

conn.commit()

cur.close()
conn.close()