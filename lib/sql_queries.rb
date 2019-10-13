def selects_all_female_bears_return_name_and_age
  SELECT name FROM bears WHERE gender="F" ORDER BY name, age;
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  SELECT * FROM bears ORDER BY id, name ASC; 
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  SELECT name, age FROM bears WHERE alive ORDER BY age ASC;
end

def selects_oldest_bear_and_returns_name_and_age
  SELECT name, Max(age) FROM bears;
end

def select_youngest_bear_and_returns_name_and_age
  SELECT name, Min(age) FROM bears;
end

def selects_most_prominent_color_and_returns_with_count
  SELECT name, COUNT(*) as name, COUNT(DISTINCT color) as num_colors
FROM bears
GROUP BY name;
end

def counts_number_of_bears_with_goofy_temperaments
  SELECT name, Count(name) FROM bears WHERE temperament="goofy";
end

def selects_bear_that_killed_Tim
  SELECT name, NULL FROM bears WHERE alive=0;
end
