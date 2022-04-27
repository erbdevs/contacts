# Contacts application

This is an example application used for didactic purposes. There is a model called Contact, and we can do CRUD operations with objects of this class.

# Set Up

`rails db:setup`

`rails db:seed`
# Information

ruby: 3.0.2

rails: 6.1.5

db: Postgresql

# ToDo

- Add .env file to manage credentials instead of having them in the config/database.yml
- Clean up mailers and more unused stuff
- Add validations to the different Contact fields such as:
  - Email: format validations
- Spec
  - ModelsController spec
- Styles
  - Add icons in contact show view
- Models:
  - Add image to contact
