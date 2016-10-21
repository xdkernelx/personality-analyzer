
### Purpose
Personality Analyzer:

1. Uses the Traitify API. Specifically, for this personal project, it uses the 'Persuasion' test.
2. Uses an arbitrary 'algorithm' that uses the results for the 6 traits measured by Traitify.
3. Using those result values, we make a sole score out of 100.
4. Score is meant to be a percent of 'hiring potential' through sheer personality
* For this passion project, it was supposed to be for tech startups as regular employees
* Has very light psychological basis, 
* Sole assessment score has no scientific basis. 

### Quickstart

1.  `bundle install`
2.  `shotgun config.ru`

As needed, create models & migrations with the `rake` tasks:

```
rake generate:migration  # Create an empty migration in db/migrate, e.g., rake generate:migration NAME=create_tasks
rake generate:model      # Create an empty model in app/models, e.g., rake generate:model NAME=User
```

### About

This is a personal project, but can be amended to meet similar needs. 
The parent fork provides a good Sinatra skeleton, although there are plenty of things to fix

1. Take the assessment!
2. DBC students, based on like 25 legit scores, fall within the 83 to 88 range!
3. This project was more or less meant to highlight the multitude of things I have learned thus far!
