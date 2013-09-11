# Description:
#   speaks a random fact about otters
#   Sources:
#     http://animals.nationalgeographic.com/animals/mammals/sea-otter/
#     http://www.seaotter-sealion.org/seaotter/factsseaotter.html
# Dependencies:
#   None
# Configuration:
#   None
# Commands:
#   otter fact - Speaks a random fact
# Author:
#   dryan

facts = [
	"The scientific name for sea otters is *Enhydra lutris kenyoni*.",
	"The sea otter is the largest member of the Mustelidae, or weasel family, and the only one which lives almost entirely in the water.",
	"Sea otters can live up to 25 years of age, although the average lifespan is 10 to 12 years.",
	"Although the sea otter is the smallest marine mammal, the average adult can be as large as 5 feet in length and weigh up to 70 lbs.",
	"The average length of an adult female is 4 feet and average weight is 60 lbs.",
	"At birth, sea otters weigh approximately 5 lbs and are 10 inches in length.",
	"Sea otter fur ranges from brown to almost black with guard hairs that may be silver, light brown, or black.",
	"As a sea otter ages, their hands and necks will lighten until almost white.",
	"Sea otter fur is the finest of any mammal, consisting of 850,000 to 1 million hairs per square inch.",
	"Sea otters are social animals who may float together in groups of less than 10 to more than 100, called rafts.",
	"Otters usually swim on their backs but have been known to swim on their stomachs while traveling.",
	"Sea otters have long flat tails and since the majority of their time is spent in the water, webbed hind feet which are perfect for swimming.",
	"Retractable claws on a sea otter’s front paws allow the sea otter to grab food.",
	"Sea otters have round heads, small eyes, and visible ears.",
	"Sea otters are coastal, shallow water dwellers. Their habitat consists of two areas in these waters: the ocean floor where they find their food, and the ocean surface where they eat, groom, rest and social interactions occur.",
	"Sea otters mainly eat benthic invertebrates such as clams, mussels, urchins, crabs, and fish. They must dive to capture their food, sometimes up to 250 feet.",
	"Sea otters use “tools” such as a rock to open their hard-shelled prey.",
	"Adult sea otters can eat 25 to 30 percent of their body weight per day in order to stay warm.",
	"A sea otter becomes sexually mature at 3 to 6 years. A female’s pregnancy usually lasts 5 to 8 months and can have one pup per year.",
	"Sea otter predators include humans, sharks, bears, eagles (on pups), and killer whales.",
	"The sea otter spends most of its time in the water but, in some locations, comes ashore to sleep or rest.",
	"Sea otters have webbed feet, water-repellent fur to keep them dry and warm, and nostrils and ears that close in the water.",
	"Sea otters often float at the water's surface, lying on their backs in a posture of serene repose. They sleep this way, often gathered in groups.",
	"Sea otters are the only otters to give birth in the water. Mothers nurture their young while floating on their backs. They hold infants on their chests to nurse them, and quickly teach them to swim and hunt.",
	"Sea otters are meticulously clean. After eating, they wash themselves in the ocean, cleaning their coat with their teeth and paws.",
	"Sea otters were hunted for their fur to the point of near extinction. Early in the 20th century only 1,000 to 2,000 animals remained. Today, 100,000 to 150,000 sea otters are protected by law."
]

count = (string, substr) ->
  num = pos = 0
  return 1/0 unless substr.length
  num++ while pos = 1 + string.indexOf substr, pos
  num

module.exports = (robot) ->
	robot.hear /.*(otter fact).*/i, (msg) ->
		msg.send msg.random facts

	robot.hear /.*(show (Ben|Hagen|Ben Hagen) some love).*/i, (msg) ->
		random_fact = (msg.random facts)
		random_fact = random_fact.substr(0,1).toLowerCase() + random_fact.substr(1)
		if count(random_fact, '.') == 1
			random_fact = "did you know that #{random_fact}".replace(/\.$/, '?')		
		msg.send "Ben Hagen, #{random_fact}"