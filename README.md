## Getting Started

1. Go to https://ancient-hamlet-90618.herokuapp.com/
2. login

The database is seeded with test data. Credentials to log in as an employer:
- email: test@test1.com, test@test2.com, test@test3.com, test@test4.com, test@5test.com
- password: 1234567890

 Credentials to log in as an applicant:
- email: test@6test.com, test@test7.com, test@test8.com, test@test9.com, test@test10.com
- password: 1234567890
 
## User

Single Table Inheritance (STI) was implemented for the two types of authenticated Users, an Applicant and an Employer. Because an applicant and an employer share the same columns, I thought STI was appropriate. This also kept authentication simple, and to one table. A future, more robust refactor might be to use a polymorphic association between User, and Applicant and Employer (if applicant and employer begin to have unique columns, and more unique behavior).

## Authentication & Authorization

Because only login was asked for, I used Bcrypt and `has_secure_password` to keep it simple. If full authentication was asked for, I'd use Devise or Clearance for authentication, then cancancan or pundit for authorization. In hindsight, I wished I used Clearance, as it  provided very convenient routing constraints.

