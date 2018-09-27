## Getting Started

1. Go to https://ancient-hamlet-90618.herokuapp.com/
2. login

The database is seeded with test data. Credentials to log in as an employer:
- email: test1@test.com, test2@test.com, test3@test.com, test4@test.com, test5@test.com
- password: 1234567890

 Credentials to log in as an applicant:
- email: test6@test.com, test7@test.com, test8@test.com, test9@test.com
- password: 1234567890
 
## User

Single Table Inheritance (STI) was implemented for the two types of authenticated Users, an Applicant and an Employer. Because an applicant and an employer share the same columns, I thought STI was appropriate. This also kept authentication simple, and to one table. A future, more robust refactor might be to use a polymorphic association between User, and Applicant and Employer (if applicant and employer begin to have unique columns, and more unique behavior).

## Authentication & Authorization

Because only login was asked for, I used Bcrypt and `has_secure_password` to keep it simple. If full authentication was asked for, I'd use Devise or Clearance for authentication, then cancancan or pundit for authorization.

