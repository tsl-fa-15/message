# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

posts = [
  {
    title: 'The tech industry’s “diversity” focus favors one group over pretty much any other',
    image_url: 'https://qzprod.files.wordpress.com/2015/10/8666949245_72b260611d_k-2.jpg',
    contents: 'I can’t fully remember when I first recognized that something to do with tech “diversity” efforts were a bit… off. I think it was during the first Women Techmakers Summit. It was early 2014, and Google put on this relatively large conference at the Mountain View campus for to celebrate International Women’s Day. I remember being impressed at the scale, while also thinking that Google had never done anything approaching that for Black History Month. The bones the black folks were thrown were some changes in the menus and some one-off events the Black Googler Network put together.
The summit itself was great. Were I a white woman in tech, I probably would have been delighted at everything. But I’m a black woman in tech, so things didn’t feel quite so good to me.
The intro to the summit itself was telling. It was titled “Opening Remarks and Diversity At Google,” yet there was no mention of any other forms of diversity besides “women.” The summit was held before the first release of Google’s diversity numbers, when it had not yet started tagging “and people of color” to every mention of women related to diversity.
Diversity is now a big thing in tech. Google releasing their employee demographics a short two months after the Women Techmakers event set off a wave of other tech companies releasing that information. No company wants to be seen as a place that doesn’t celebrate diversity. Usually the trumpeting about diversity comes after a company releases the mediocre-to-terrible numbers that highlight just how recently they began noticing the homogeneity of their workforce. “This is important to us, we’re working on it,” is often the message. The work, however, seems to favor one group more than others: women. Whether by design or by inertia, the favor seems to land on white women in particular.
The women’s issue

Salesforce recently had its annual conference in downtown San Francisco conference. This year, they dedicated an entire day to a women’s leadership summit. Let’s leave out that there was no “and people of color” leadership summit. Let’s not mention that they could only manage to find one black woman that actually works in tech to speak. And let us never speak of the last–minute addition of Gayle King and her baffling Q&A. Let’s only reflect on the truth that came out of this summit: that for many, diversity usually means white women. Not to leave any doubts about this, both Salesforce chairman and CEO Marc Benioff and cofounder Parker Harris made sure to mention that they are focused on (white) women.'
  },
  {
    title: 'Facebook’s model for commerce isn’t Amazon—it’s Alibaba',
    image_url: 'https://qzprod.files.wordpress.com/2015/10/rtr27p4w.jpg',
    contents: 'Facebook has been following Asian messaging companies when it comes to planning out the future of its chat app, Messenger. That goes not just for Messenger’s use as a communications tool, but for the nascent payments business embedded within the app.
In Wired’s new profile of Messenger, David Marcus, the former PayPal executive overseeing the Messenger app for Facebook, explains why he’d rather structure Messenger’s payments business like Alibaba rather than eBay or Amazon. Mostly, it comes down to margins:
eBay takes a cut of every transaction and listing; Alibaba does all that for free, and makes money from advertising. Alibaba is bigger than eBay and Amazon combined, and is growing much faster. … The margins on payments aren’t that high, and we want the broadest reach. Businesses will want to pay to be featured or promoted – which is a bigger opportunity for us.
In other words, Facebook doesn’t actually want a payments business that makes money on transactions—it doesn’t even plan to charge businesses to transact on Facebook. What it wants is a payments business that makes money on advertising.
It’s not an unreasonable strategy. For payments to move the needle for a $260 billion company, Facebook would need to drive a lot of transaction volume. By charging retailers for prime placement in areas of Facebook where transactions might take place, the social media giant makes money even if people don’t make purchases.
The new money transfer feature in Messenger has only been operational in the US since its announcement in March, although Marcus says Facebook will be expanding it to other countries.'
  },
  {
    title: 'An open letter to tormented young bankers everywhere: Stop whining',
    image_url: 'https://qzprod.files.wordpress.com/2015/10/rtr2rohg.jpg',
    contents: 'To the junior bankers of the world,
I read with interest the pseudonymous article one of your number, “Jim”, recently wrote: “Junior bankers’ working conditions are as bad as ever. I should know.”
“Investment banking is not an easy career choice,” Jim said. Indeed. In three years in the industry, he has seen things:
What few appreciate is that the cases of young financiers literally being worked to the point of death are neither uncommon nor a result of freak individual medical conditions. They are the inevitable consequence of a pervasive culture that encourages young bankers to push themselves to the edge again and again. All in an attempt to prove themselves, gain plaudits from their managers and compete for top spot come review season.
I don’t doubt that you work crazy hours, Jim. But let’s get a few things straight. A first-year analyst gets paid $85,000 a year at top-tier banks, meaning you might make more than $100,000 a year now. That’s nearly double the average American or British salary (around $47,000 and $41,000, respectively).
But you are not average. You are university-educated and hand-picked by a major bank after a rigorous and competitive hiring process. You fought to get a not-average job that earns not-average money and makes not-average demands on you.
You did not sign up to be a teacher or a nurse. You decided to be an investment banker, a person who helps secure financing for companies—including schools and hospitals. You help the wheels of capitalism turn.
Your job also comes with perks beyond the pay. Your company pays for dinner if you stay late. It will also spring for a taxi home. Do you think young doctors get the same benefits? Can you imagine a nursing home calling a private car to shuttle caregivers home after a long day of looking after Alzheimer’s patients?
Without a doubt, banks need to improve the work-life balance of their employees. William Cohan wrote movingly about a spate of suicides among younger bankers. Senior bankers should not be jerks. They should not go home to have dinner with their families, waiting until 9pm to send analysts like you a PowerPoint presentation so that you are stuck in the office until 2am. They should spend a bit more time doing the work themselves so you can get home before midnight. And they should properly mentor you, expose you to clients, and of course respect the need for time off on holidays and weekends, without which your brain will turn to porridge.
But let’s be honest here: you picked a career that demands you more or less hand over your 20s and 30s so that you can retire by 50.
I know a lot of investment bankers. They made sacrifices I wouldn’t choose to make. Year after year, they left for work at 6am and came home at 11pm. They missed birthdays and anniversaries. More than a few blew up their marriages and barely know their kids.
But they knew the risks—and rewards. Today they have a degree of financial security utterly foreign to most 40-somethings. Peter Solomon, a veteran Wall Street banker, once told me that the social contract for bankers was clear: in good times the bank pays you obscene amounts of money and in bad times it fires you. Maybe that could be improved, but it would probably mean that you get paid less. Are you okay with that?'
  }
]

posts.each do |post_hash|
  p = Post.new
  p.title = post_hash[:title]
  p.image_url = post_hash[:image_url]
  p.contents = post_hash[:contents]
  p.save
end

puts "#{Post.count} posts in the database"
