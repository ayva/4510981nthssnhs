The league holds an event about once a month at one of a handful of regular venues. Every venue has a different capacity. Every event has between 8 and 12 fights. The fights are scheduled in a certain order but they won't start at a specific time.

The league has 10 weight classes, 5 each for men and women, with a minimum weight for each. Fights have two fighters, who both belong to the same weight class. After the fight is over, there has to be a record of the winner. Fights don't end in draws.

Design the data model for this client. Use any design tools you like. Save your model as text or a legible image file.
schema:

  create_table "venues"
  t.string "venue_name"
  t.integer "capacity"

  create_table "events"
  t.string "event_name"
  t.integer "venue_id"

  create_table "fight"
  t.string "fighter1_id", 
  t.string "fighter2_id"
  t.string "winner"
  t.integer "event_id"

  create_table "league"
  t.integer "min_weight"
  t.string "gender" 

  create_table "fighters"
  t.string "First_name"
  t.string "Last_name"
  t.integer "Exact_Weight"
  t.integer "league_id"
