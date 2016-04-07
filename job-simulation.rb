require './Stack.rb'
require './Queue.rb'


# A company has six hiring positions with more people wanting jobs than the number of available positions.  
# The company managers decide in order to give more people an opportunity to make money; 
# they will allow people to work in three-month intervals. 
# The first six people on the waiting list will be hired in the order that they are on the waiting list.  
# The first six people will keep these positions for three months.  
# At the end of three months, the manager will roll a dice to determine the number of people who will 
# lose their jobs. The company will use the policy of last-hired-first-fired.  
# For example, if the dice roll is 3, the last 3 people hired will lose their jobs to the first 3 people on 
# the waiting list. People losing their jobs will be placed on the back of 
# the waiting list in the order that they are fired. 
# This process will continue for every three-month interval.

# waiting list == queue

# employees == stack

# random selection of how many to fire

# pop num of employees from stack, return them to queue for hiring.

# broken out into its own method so each method is only doing one thing.
def die_roll
	rand(1..6)
end


def hire(queue_of_candidates, stack_of_employees)
	stack_of_employees.push(queue_of_candidates.dequeue) while stack_of_employees.length < 6 

	stack_of_employees
end

def fire(stack_of_employees, queue_of_candidates)
	peeps_to_fire = die_roll

	while peeps_to_fire > 0
		peeps_to_fire -= 1
		queue_of_candidates.enqueue(stack_of_employees.pop)
	end

	stack_of_employees
end

candidates = Queue.new
candidates.enqueue("Ava")
candidates.enqueue("Joan")
candidates.enqueue("Olivia")
candidates.enqueue("Claire")
candidates.enqueue("Mellie")
candidates.enqueue("Rebecca")
candidates.enqueue("Mo")
candidates.enqueue("Jessica")
candidates.enqueue("Beverly")

