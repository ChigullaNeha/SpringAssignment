Users and Manager Spring Boot Application
This project is a Spring Boot application providing CRUD functionality for user management through four API endpoints: /users, /get_users, /specificUser, /deleteUser and /bulkUpdate. The application ensures proper data validation, maintains user records with UUID identifiers, timestamps, and manages user-manager relationships. Error handling, logging, and comprehensive validation are implemented to ensure robust and reliable operations. A manager table is prefilled for testing purposes to validate manager IDs.

Get all user
methos: Get

get all users end point : /users
Sample Response

[
 {
     "userId": "550e8400-e29b-41d4-a716-446655478400",
     "fullName": "Bharath Manda",
     "panNum": "ftjn4087k",
     "mobileNumber": "8745126395",
     "createdAt": "2045-09-24 10:15:00",
     "updatedAt": "2024-07-27 16:26:18.485575",
     "isActive": true,
     "manager": {
         "managerId": "550e8400-e29b-41d4-a716-446655477700",
         "name": "Mounika"
     }
 },
...
]

to add new user
methos: Post

adds new user in db end point /users
      {
          "fullName": "Bharath Manda",
          "panNum": "ftjn4087k",
          "mobileNumber": "8745126395",
          "manager": {
              "managerId": "550e8400-e29b-41d4-a716-446655477700"
          }
      }
Sample Response

     [
     {
         "userId": "550e8400-e29b-41d4-a716-446655478400",
         "fullName": "Bharath Manda",
         "panNum": "ftjn4087k",
         "mobileNumber": "8745126395",
         "createdAt": "2045-09-24 10:15:00",
         "updatedAt": "2024-07-27 16:26:18.485575",
         "isActive": true,
         "manager": {
             "managerId": "550e8400-e29b-41d4-a716-446655477700",
             "name": "Mounika"
         }
     },
    ...
    ]

possible errors
ENTER YOUR FULL NAME Plase Enter a mobile number Mobile number must be exactly 10 digits please enter a PAN number Please enter a valid manager id

Get Specific user
methos: Post

get specific user form db based on mobileNumber or userId /specificUser

Sample Request with optional keys

    {
      "userId": "550e8400-e29b-41d4-a716-446655478400",
      "mobileNumber":"8745126395"    
    }
Sample Response
  [
          {
          "userId": "550e8400-e29b-41d4-a716-446655478400",
          "fullName": "Bharath Manda",
          "panNum": "ftjn4087k",
          "mobileNumber": "8745126395",
          "createdAt": "2045-09-24 10:15:00",
          "updatedAt": "2024-07-27 16:26:18.485575",
          "isActive": true,
          "manager": {
              "managerId": "550e8400-e29b-41d4-a716-446655477700",
              "name": "Mounika"
          }
      },
  ]
based on manager Id
  {
    "manager":{
    "managerId":"550e8400-e29b-41d4-a716-446655477700"
      }
  }
Sample Response
[
       {
           "userId": "550e8400-e29b-41d4-a716-446655478400",
           "fullName": "Bharath Manda",
           "panNum": "ftjn4087k",
           "mobileNumber": "8745126395",
           "createdAt": "2045-09-24 10:15:00",
           "updatedAt": "2024-07-27 16:26:18.485575",
           "isActive": true,
           "manager": {
               "managerId": "550e8400-e29b-41d4-a716-446655477700",
               "name": "Mounika"
           }
       },
      ...
      ]
delete user
methos: Post

delete user based on userId or unique mobile number /deleteUser
Sample Request with optional keys
   {
     "userId": "550e8400-e29b-41d4-a716-446655478400",
     "mobileNumber":"8745126395"    
   }
Sample Response user deleted successfully
possible errors
No Users Available with this userId No Users Available with this mobileNumber

update user
update bulk users or a specific user /bulkUpdate

Sample Request for bulk update
    {
      "userIds": ["550e8400-e29b-41d4-a716-446655478400","550e8400-e29b-41d4-a716-446655864400"],
      "userObj":{
                
                "manager":{
                          "managerId": "550e8400-e29b-41d4-a716-446655477700"
                          }
                }    
    }
Sample Response Updated Sucessfully

Sample Request for specific user update

     {
       "userIds": ["550e8400-e29b-41d4-a716-446655478400"],
       "userObj":{
                 "fullName": "Bharath Manda",
                 "panNum": "ftjn4087k",
                 "mobileNumber": "8745126395",
                 "manager":{
                           "managerId": "550e8400-e29b-41d4-a716-446655477700"
                           }
                 }    
     }
Sample Response Updated Sucessfully
possible errors
some details are missing You can Update List of users individual basis only and not in bulk. Invalid managerId some user id's are invalid Invalid managerId

Demo
Here is a working live demo : Will add

[Usage](will add)
Development
Want to contribute? Great!

To fix a bug or enhance an existing module, follow these steps:

Fork the repo
Create a new branch (git checkout -b improve-feature)
Make the appropriate changes in the files
Add changes to reflect the changes made
Commit your changes (git commit -am 'Improve feature')
Push to the branch (git push origin improve-feature)
Create a Pull Request
