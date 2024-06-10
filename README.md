# README
## Verbatim X post related to this project
Yesterday, I began working on Ruby on Rails (RoR) pet project for personal utility and came across 
@paulearnden
's latest post about his #buildinginpublic project.[1]

And I was like, "hell yeah! Why not to share the update on my ongoing project in similar fashion?"

So, this is what I'm building: Stock Diary

### Background
Apart from system developer, I'm a retail investor in the Indian stock market. And as you'd guess it, I'm a disciplined and system-oriented guy. I like to record my decisions whenever I make a transaction. I have written about my philosophy on decision-making a few years back.[2]

So much so, that I ended up putting together a tiny Decision Journal on Gumroad. You don't need to purchase, just to develop the background here.[3]

When I began investing, I quickly setup a Google Sheet-based diary to note investment decisions. See the screenshot:
<img width="950" alt="2024-06-10 18_37_03-💰My Investments - Google Sheets" src="https://github.com/bhagyeshsp/stockdiary/assets/165566941/ce4cd41c-d876-4dec-9ef1-3d81f51fcda8">


### But now I need something more user-friendly.
Google Sheets is good, but I want something more now. Namely:
- Add relationships between stock decisions. This is completely absent right now.
- Track the Buy/Sale of individual stocks on a single page. I can apply a filter now, but some dynamic calculations can't be carried out.
- Add more decision-making factors, such as my mood, conscious/unconscious influencers, and referrers while making the decision.

So, I just began building using #RubyOnRails. Since I already have been using 
@rails
 for some time now, I could straight away say:

```
rails new stockdiary
```

And the rest of the things were smooth.

I'm using Bootstrap for CSS and let's see how these things go.

For now, there will be two models: company and transaction. 

The company stores the company info, while Transaction stores the company's transactions. They're in one-to-many relationships.

### Public sharing
The initial idea was (and still is) to keep the project to myself for my use, but seeing the public building idea, if there is substantial interest from the community, I will make the Git Rep public.

By the way, I built this in less than 30 minutes. (I know I'm slow by Rails OG's standard, but I'm enjoying this.)
<img width="960" alt="2024-06-10 20_23_32-Settings" src="https://github.com/bhagyeshsp/stockdiary/assets/165566941/3734695f-4a1c-41ac-9577-620ae73a6943">


Footnotes:
[1] Paul Earnden's post on his latest rails project: https://x.com/paulearnden/status/1799575307218796805 
[2] A Powerful Trick to Improve Decision Making https://bhagyeshpathak.com/blog//a-powerful-trick-to-improve-decision-making-skills
[3] Decision Diary-Key to Self-Mastery https://wuweied.gumroad.com/l/decisiondiary
