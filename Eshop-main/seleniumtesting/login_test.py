
driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=Options)

driver.get("http://127.0.0.1:8000/login")
driver.maximize_window()



# Fill in the registration form
username_field = driver.find_element("name", "email")
username_field.send_keys("testuser@gmail.com")

password_field = driver.find_element("name", "password")
password_field.send_keys("password123")

signup_button = driver.find_element("xpath", "//button[text()='Login']")
signup_button.click()

print (" Test Login succesfull")

