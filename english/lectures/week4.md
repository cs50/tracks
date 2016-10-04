```
1
00:00:00,000 --> 00:00:03,479
[MUSIC PLAYING]

2
00:00:03,479 --> 00:00:15,407


3
00:00:15,407 --> 00:00:20,280
DAVID J. MALAN: All right, this
is CS50, and this is week 4.

4
00:00:20,280 --> 00:00:25,430
So let's consider first what we did
last time, which was focus on numbers

5
00:00:25,430 --> 00:00:28,870
and focus on how we can search
them and how we can sort them.

6
00:00:28,870 --> 00:00:32,070
And in particular, we took a
look at a number of algorithms

7
00:00:32,070 --> 00:00:35,330
that we finally gave names to, a couple
of which we actually saw back in week

8
00:00:35,330 --> 00:00:37,390
0, but didn't treat as formally.

9
00:00:37,390 --> 00:00:40,230
So we looked more formally
last time at linear search,

10
00:00:40,230 --> 00:00:43,970
this process of searching elements
from left to right or right to left

11
00:00:43,970 --> 00:00:46,910
as though you're walking along
a line looking for some value.

12
00:00:46,910 --> 00:00:49,850
We looked at binary search, a
divide and conquer algorithm

13
00:00:49,850 --> 00:00:51,942
whereby we started, in
this case, in the middle,

14
00:00:51,942 --> 00:00:54,400
and then we looked left to
right and then went to the left,

15
00:00:54,400 --> 00:00:57,270
went to the right, and then did
the same problem again and again.

16
00:00:57,270 --> 00:00:59,182
We looked also at bubble sort.

17
00:00:59,182 --> 00:01:00,890
How do you get to the
point where you can

18
00:01:00,890 --> 00:01:03,180
use an algorithm like
binary search, which

19
00:01:03,180 --> 00:01:05,500
assumes that your inputs are sorted?

20
00:01:05,500 --> 00:01:07,260
So how do you get to that sorted state?

21
00:01:07,260 --> 00:01:09,600
Well, bubble sort was one
algorithm that essentially

22
00:01:09,600 --> 00:01:13,150
swapped elements pairwise from
left to right, from left to right,

23
00:01:13,150 --> 00:01:15,630
until finally the biggest
elements bubbled up to the top,

24
00:01:15,630 --> 00:01:17,930
and the whole list
was ultimately sorted.

25
00:01:17,930 --> 00:01:19,670
But we also looked at selection sort.

26
00:01:19,670 --> 00:01:22,780
And selection sort is the
name implied, selected,

27
00:01:22,780 --> 00:01:27,000
then smallest element again and again
and again, plucking it out of the list,

28
00:01:27,000 --> 00:01:28,550
and putting it where it belongs.

29
00:01:28,550 --> 00:01:32,100
Insertion sort, meanwhile, walked
through the list really just once,

30
00:01:32,100 --> 00:01:34,440
and as it encountered
each element, it then

31
00:01:34,440 --> 00:01:39,140
inserted it into the sorted half of
the list, the left half of the list

32
00:01:39,140 --> 00:01:40,670
in its proper place.

33
00:01:40,670 --> 00:01:45,270
And then lastly, and where we really
concluded and really got more bang

34
00:01:45,270 --> 00:01:47,630
for our buck was this
final algorithm merge

35
00:01:47,630 --> 00:01:52,830
sort, which actually solved this same
problem no less correctly, but so much

36
00:01:52,830 --> 00:01:53,950
more efficiently.

37
00:01:53,950 --> 00:01:57,120
And indeed, lends itself perhaps
to a fundamentally better design

38
00:01:57,120 --> 00:02:01,580
in so far as it leverages a much
better running time, so to speak.

39
00:02:01,580 --> 00:02:04,480
In fact, we started to ascribe
these kinds of formulas

40
00:02:04,480 --> 00:02:07,970
to the running times of or the
performance of our algorithms n

41
00:02:07,970 --> 00:02:10,630
squared, otherwise known
as quadratic, whereby

42
00:02:10,630 --> 00:02:14,000
you take n times n number of
steps or minutes or seconds

43
00:02:14,000 --> 00:02:17,800
or some unit of measure, n log in,
which is actually what we achieved

44
00:02:17,800 --> 00:02:20,280
with the merge source,
which was much faster

45
00:02:20,280 --> 00:02:23,450
recall than the end squared algorithms
like bubble sort and selection sort

46
00:02:23,450 --> 00:02:25,770
and insertion sort in
their upper bounds.

47
00:02:25,770 --> 00:02:28,620
n would be something linear, like
a straight line relationship.

48
00:02:28,620 --> 00:02:31,564
Logarithmic of n, log
of n, log base 2 of n,

49
00:02:31,564 --> 00:02:33,730
technically, would be
something like week 0's divide

50
00:02:33,730 --> 00:02:35,910
and conquer approach
looking for Mike Smith,

51
00:02:35,910 --> 00:02:38,084
as well as last time's binary search.

52
00:02:38,084 --> 00:02:40,500
And then one, which doesn't
have to be literally one step.

53
00:02:40,500 --> 00:02:44,700
Maybe it's two, maybe it's 10, but
it is a fixed finite constant number

54
00:02:44,700 --> 00:02:45,330
of steps.

55
00:02:45,330 --> 00:02:47,890
And that too might be the
running time of some algorithm.

56
00:02:47,890 --> 00:02:50,700
Now how do we describe the
running times of algorithms?

57
00:02:50,700 --> 00:02:54,230
Well, we use some special
notation, asymptotic notation,

58
00:02:54,230 --> 00:02:56,940
so to speak, which while it might
look cryptic at first glance,

59
00:02:56,940 --> 00:03:00,750
really is just a handy way of succinctly
expressing the fact that you know what

60
00:03:00,750 --> 00:03:03,450
the upper bound on some
algorithms running time is,

61
00:03:03,450 --> 00:03:06,070
what the lower bounds on some
algorithms running time is.

62
00:03:06,070 --> 00:03:09,160
And if those are one in
the same formulas in theta,

63
00:03:09,160 --> 00:03:14,650
do you have a coincidence of the two
of big O, so speak, and capital theta.

64
00:03:14,650 --> 00:03:16,820
So that, while Greek,
literally is just a way

65
00:03:16,820 --> 00:03:19,780
of expressing a bit more succinctly
what these running times are.

66
00:03:19,780 --> 00:03:21,696
And we'll continue to
revisit this issue as we

67
00:03:21,696 --> 00:03:24,590
look at more algorithms and
soon data structures still.

68
00:03:24,590 --> 00:03:28,170
But this time, we apologize.

69
00:03:28,170 --> 00:03:34,900
We pull back a layer here and admit
that there is no such thing as a string.

70
00:03:34,900 --> 00:03:38,250
Indeed, all this time we've been saying
that there's ins, and there's floats,

71
00:03:38,250 --> 00:03:40,325
and there's chars, and
there's doubles and more.

72
00:03:40,325 --> 00:03:42,200
And we've also been
saying there are strings,

73
00:03:42,200 --> 00:03:43,960
but there really aren't strings.

74
00:03:43,960 --> 00:03:47,210
This is sort of a figment of the
imagination of our so-called CS50

75
00:03:47,210 --> 00:03:48,060
library.

76
00:03:48,060 --> 00:03:50,340
But it's a pedagogical
simplification that we've

77
00:03:50,340 --> 00:03:53,660
been using for the past
several weeks, so as to not get

78
00:03:53,660 --> 00:03:55,894
lost in the weeds, the
lower level implementation

79
00:03:55,894 --> 00:03:58,060
details of what a string
is, so that we can just get

80
00:03:58,060 --> 00:04:00,070
real work done in these first weeks.

81
00:04:00,070 --> 00:04:02,650
But now we'll begin to
look underneath that hood

82
00:04:02,650 --> 00:04:06,520
and see what a string actually
is and what the implications are.

83
00:04:06,520 --> 00:04:09,700
And it turns out, while more
complicated in some sense,

84
00:04:09,700 --> 00:04:12,650
it really just boils down
to some first principles,

85
00:04:12,650 --> 00:04:15,660
what it is the computer is
doing underneath that hood.

86
00:04:15,660 --> 00:04:20,560
So let's take a look at string first
by way of a couple of examples.

87
00:04:20,560 --> 00:04:25,830
Let's go in to CS50 IDE, create a new
file, save it as Compare zero dot C,

88
00:04:25,830 --> 00:04:29,280
and look at the little program
that actually doesn't necessarily

89
00:04:29,280 --> 00:04:32,000
do what we think it's going to do.

90
00:04:32,000 --> 00:04:34,910
In particular, let me go
ahead and include our typical,

91
00:04:34,910 --> 00:04:40,200
include CS 50 dot H. And let me go ahead
and include standard IO dot H as well.

92
00:04:40,200 --> 00:04:42,210
Let me go ahead and use
main void, so I'm not

93
00:04:42,210 --> 00:04:44,680
going to worry about any
command line arguments for now.

94
00:04:44,680 --> 00:04:47,013
And then I'm going to go ahead
and just prompt the user.

95
00:04:47,013 --> 00:04:49,157
Hey user, give me a string
called S for instance.

96
00:04:49,157 --> 00:04:50,740
And then I'm going to have no newline.

97
00:04:50,740 --> 00:04:52,730
I just want that all in one same line.

98
00:04:52,730 --> 00:04:55,950
Now I'm going to go
ahead and do string S,

99
00:04:55,950 --> 00:04:58,460
gets gets string, open
paren and close parens,

100
00:04:58,460 --> 00:05:00,580
so as to get a string from the user.

101
00:05:00,580 --> 00:05:01,670
And then, let me do this.

102
00:05:01,670 --> 00:05:06,000
Let me also print T colon and ask
the user, essentially, for a string

103
00:05:06,000 --> 00:05:10,320
that I'll call T, since T
comes after S quite simply.

104
00:05:10,320 --> 00:05:13,690
And now let me just compare these
strings as the filename suggests.

105
00:05:13,690 --> 00:05:18,396
So I know how to compare,
not with if s equals t,

106
00:05:18,396 --> 00:05:20,020
because that's the assignment operator.

107
00:05:20,020 --> 00:05:25,082
But we know that s equals equals t
should compare the values on the left

108
00:05:25,082 --> 00:05:25,790
and on the right.

109
00:05:25,790 --> 00:05:26,670
So let's try this.

110
00:05:26,670 --> 00:05:32,130
So if s equals equals t, then I'm
going to go ahead and print out same.

111
00:05:32,130 --> 00:05:34,560
Elts, they are presumably
difference, so I'm

112
00:05:34,560 --> 00:05:38,540
going to go ahead and print out
different with a newline character

113
00:05:38,540 --> 00:05:39,620
and then save it.

114
00:05:39,620 --> 00:05:43,310
So a pretty simple program, so let me
go down into my terminal window and run

115
00:05:43,310 --> 00:05:45,430
make compare 0.

116
00:05:45,430 --> 00:05:49,920
Now let me go ahead and
run dot slash compare 0. s,

117
00:05:49,920 --> 00:05:53,760
I'm going to go ahead
and type in Zamyla.

118
00:05:53,760 --> 00:05:56,887
And I'm going to go ahead
now and type in Maria.

119
00:05:56,887 --> 00:05:57,970
OK, and they're different.

120
00:05:57,970 --> 00:05:59,190
I expected as much.

121
00:05:59,190 --> 00:06:01,020
Now let's go ahead and run this again.

122
00:06:01,020 --> 00:06:02,716
Again with Zamyla.

123
00:06:02,716 --> 00:06:07,460
And let's just say
Zamyla again, different.

124
00:06:07,460 --> 00:06:08,464
What did I do wrong?

125
00:06:08,464 --> 00:06:09,380
Let me try this again.

126
00:06:09,380 --> 00:06:11,010
Maybe it's the capitalization.

127
00:06:11,010 --> 00:06:16,120
So Zamyla in all lower case, different.

128
00:06:16,120 --> 00:06:17,810
Well, maybe it's just Zamyla's name.

129
00:06:17,810 --> 00:06:21,570
Let me try Rob or RLB?

130
00:06:21,570 --> 00:06:22,770
How about RLB?

131
00:06:22,770 --> 00:06:25,630
Those are different, as is Rob and Rob.

132
00:06:25,630 --> 00:06:27,450
So what is going on?

133
00:06:27,450 --> 00:06:29,570
Those strings pretty
much look the same to me.

134
00:06:29,570 --> 00:06:31,843
I'm typing the same
incantation of strings,

135
00:06:31,843 --> 00:06:34,620
so what is it that's going on here?

136
00:06:34,620 --> 00:06:37,080
You know what, let me do a
test with something else.

137
00:06:37,080 --> 00:06:39,690
Let me go ahead and
create a new file here.

138
00:06:39,690 --> 00:06:41,350
I'm going to call this copyzero.c.

139
00:06:41,350 --> 00:06:44,130
Maybe I'm just misunderstanding
how comparison works.

140
00:06:44,130 --> 00:06:47,240
But surely I should be able to copy
a string and make an identical copy,

141
00:06:47,240 --> 00:06:48,380
so let's do that now.

142
00:06:48,380 --> 00:06:52,960
Let me go ahead and create
a file called copyzero.c.

143
00:06:52,960 --> 00:06:55,710
And let me do an include cs50.h.

144
00:06:55,710 --> 00:07:01,737
Include standard io.h into
main void, so just as before.

145
00:07:01,737 --> 00:07:04,320
And now, let me go ahead and
just prompt the user like before.

146
00:07:04,320 --> 00:07:05,620
Give me a string s.

147
00:07:05,620 --> 00:07:09,850
And I'll put that in a variable,
s, calling get string as before.

148
00:07:09,850 --> 00:07:14,940
And now, I remember from prior
classes that I'm supposed to do,

149
00:07:14,940 --> 00:07:19,650
if s equals equals null, maybe I
need to do some error checking here.

150
00:07:19,650 --> 00:07:22,130
And if that's the case, I'm
going to arbitrarily return 1.

151
00:07:22,130 --> 00:07:24,250
So recall that main can return values.

152
00:07:24,250 --> 00:07:25,450
0 means all is well.

153
00:07:25,450 --> 00:07:28,050
1 or any other non-zero value
means something is wrong.

154
00:07:28,050 --> 00:07:31,050
So maybe that's what I was doing wrong
earlier, just not error checking.

155
00:07:31,050 --> 00:07:32,090
So let's try that.

156
00:07:32,090 --> 00:07:38,030
Now, let me declare a variable of type
string called t and assign it to s.

157
00:07:38,030 --> 00:07:41,120
So in other words, I
want to copy s into t.

158
00:07:41,120 --> 00:07:43,470
And I know that this happens
from the right to the left.

159
00:07:43,470 --> 00:07:45,880
So that's as I think it should be.

160
00:07:45,880 --> 00:07:53,182
And then, if strleng of
t is greater than 0--

161
00:07:53,182 --> 00:07:55,140
you know what, I'm going
to do one other thing.

162
00:07:55,140 --> 00:07:56,064
Not just copy it.

163
00:07:56,064 --> 00:07:57,480
I'm going to go ahead and do this.

164
00:07:57,480 --> 00:07:59,500
Recall, that you can
treat strings as arrays.

165
00:07:59,500 --> 00:08:02,977
So I'm going to say the zeroth
character, the first character of t--

166
00:08:02,977 --> 00:08:03,560
you know what?

167
00:08:03,560 --> 00:08:05,170
I want to uppercase it.

168
00:08:05,170 --> 00:08:07,960
I want to really make sure that
these two strings are indeed

169
00:08:07,960 --> 00:08:09,540
different as I intend.

170
00:08:09,540 --> 00:08:12,840
And let's go ahead now and do this.

171
00:08:12,840 --> 00:08:17,340
Let me go ahead now and do printf of s.

172
00:08:17,340 --> 00:08:19,520
And let me plug-in s's
value in a new line.

173
00:08:19,520 --> 00:08:20,220
Plug-in s.

174
00:08:20,220 --> 00:08:25,090
And then printf t:%s
for a placeholder again.

175
00:08:25,090 --> 00:08:26,830
Comma t semi-colon.

176
00:08:26,830 --> 00:08:30,520
So in other words, if the length
of t is greater than zero,

177
00:08:30,520 --> 00:08:33,284
let's capitalize it by
changing that first character.

178
00:08:33,284 --> 00:08:34,659
And then, just print out s and t.

179
00:08:34,659 --> 00:08:39,750
And surely, by capitalizing only t, I
should see only one capitalized word.

180
00:08:39,750 --> 00:08:41,562
Now, I'm using both
strleng and two upper.

181
00:08:41,562 --> 00:08:44,770
So rather than let Clang have a chance
to yell at me, I'm going to go in here

182
00:08:44,770 --> 00:08:47,826
and preemptively add ctype.h.

183
00:08:47,826 --> 00:08:49,700
Which recall is a library
you might have seen

184
00:08:49,700 --> 00:08:53,040
or certainly will soon see that
has a number of functions in it.

185
00:08:53,040 --> 00:08:54,220
Among them, two upper.

186
00:08:54,220 --> 00:08:58,314
And then, I also need to include
string.h, so that I can use strlen--

187
00:08:58,314 --> 00:09:00,480
the function that gives me
the length of the string.

188
00:09:00,480 --> 00:09:03,370
So Clang would have yelled at me if I
forgot that, but let me preemptively

189
00:09:03,370 --> 00:09:04,190
solve that problem.

190
00:09:04,190 --> 00:09:06,540
And now, do make copies zero.

191
00:09:06,540 --> 00:09:07,570
All seems to be well.

192
00:09:07,570 --> 00:09:09,431
Let's run dot slash copy 0.

193
00:09:09,431 --> 00:09:09,930
All right.

194
00:09:09,930 --> 00:09:15,980
Let's go ahead and type in-- how about
just my own name in all lowercase.

195
00:09:15,980 --> 00:09:17,290
Huh?

196
00:09:17,290 --> 00:09:19,330
Now, why is this confusing?

197
00:09:19,330 --> 00:09:24,860
So I wrote code that got a string
from the user and stored it in s.

198
00:09:24,860 --> 00:09:28,340
I then wrote code that
declared a second variable, t.

199
00:09:28,340 --> 00:09:31,220
And I set t equal to s,
thereby making I would

200
00:09:31,220 --> 00:09:34,920
think a copy-- as in past weeks
of using the assignment operator.

201
00:09:34,920 --> 00:09:37,130
Then down here, I made
sure t was long enough.

202
00:09:37,130 --> 00:09:38,840
That's just a quick sanity check.

203
00:09:38,840 --> 00:09:42,020
And then on this line
here, I'm just saying,

204
00:09:42,020 --> 00:09:47,870
set the first character of t, t bracket
0, equal to the result of upper casing

205
00:09:47,870 --> 00:09:50,000
the first character of t.

206
00:09:50,000 --> 00:09:53,370
So the only code that's
touching t is this one here.

207
00:09:53,370 --> 00:09:58,750
And yet, somehow my name gets
capitalized both in s and in t.

208
00:09:58,750 --> 00:10:02,420
So what is it that's
actually going on here?

209
00:10:02,420 --> 00:10:04,979
It seems to be broken still.

210
00:10:04,979 --> 00:10:07,770
In fact, let me go ahead and open
another example, rather than type

211
00:10:07,770 --> 00:10:09,500
this one out ourselves.

212
00:10:09,500 --> 00:10:13,920
Let me go ahead and open up
an example called no swap.

213
00:10:13,920 --> 00:10:16,510
As the name suggests,
it's a bit of a spoiler.

214
00:10:16,510 --> 00:10:19,330
I wrote this program in
advance to do the following.

215
00:10:19,330 --> 00:10:22,940
First, I've included standard
io.h, so I can use printf.

216
00:10:22,940 --> 00:10:26,490
I have a prototype of my function
called swap up here, because indeed,

217
00:10:26,490 --> 00:10:30,600
the goal at hand I decided was I just
want to write a simple function that

218
00:10:30,600 --> 00:10:32,290
swaps two values.

219
00:10:32,290 --> 00:10:35,150
Given a and b, make b a and a, b.

220
00:10:35,150 --> 00:10:36,140
And then, return.

221
00:10:36,140 --> 00:10:39,200
So I'm just going to arbitrarily test
this out by declaring a variable x.

222
00:10:39,200 --> 00:10:40,370
Setting it equal to 1.

223
00:10:40,370 --> 00:10:42,720
A variable y setting it equal to 2.

224
00:10:42,720 --> 00:10:46,020
And then, just as a sanity check, I'm
going to print out x is such and such,

225
00:10:46,020 --> 00:10:47,200
y is such and such.

226
00:10:47,200 --> 00:10:50,120
And then, I'm going to
claim swapping dot dot dot.

227
00:10:50,120 --> 00:10:52,800
And then, the key line
is apparently this one.

228
00:10:52,800 --> 00:10:56,310
Call a function called
swap, passing in x and y.

229
00:10:56,310 --> 00:11:00,400
And if I implemented swap correctly,
this should swap the two variables.

230
00:11:00,400 --> 00:11:05,090
Thereafter, I'm going to claim swapped
x as such and such, y as such and such.

231
00:11:05,090 --> 00:11:10,280
So let's run this program and see
what else is apparently a lie.

232
00:11:10,280 --> 00:11:16,900
Make no swap in my source directory.

233
00:11:16,900 --> 00:11:20,610
./noswap enter.

234
00:11:20,610 --> 00:11:25,560
And if we scroll back up in my
history, you'll see x is 1, y is 2.

235
00:11:25,560 --> 00:11:27,220
Swapping swapped.

236
00:11:27,220 --> 00:11:28,651
x is 1, y is 2.

237
00:11:28,651 --> 00:11:29,150
All right.

238
00:11:29,150 --> 00:11:31,110
So maybe just the swap
function is buggy.

239
00:11:31,110 --> 00:11:34,280
This isn't necessarily
indicative of a misunderstanding.

240
00:11:34,280 --> 00:11:36,290
So let's look at the
implementation of swap.

241
00:11:36,290 --> 00:11:40,790
Swap returns no value and I think
that's OK, so long as it takes inputs.

242
00:11:40,790 --> 00:11:45,430
Swap takes two inputs, an ints and
an ints, called a and b respectively.

243
00:11:45,430 --> 00:11:47,150
And then, let's consider how this works.

244
00:11:47,150 --> 00:11:50,375
So I've declared a temporary
variable, called temp--

245
00:11:50,375 --> 00:11:52,000
though I could call it anything I want.

246
00:11:52,000 --> 00:11:54,280
And I'm storing in it the value a.

247
00:11:54,280 --> 00:11:56,255
So I'm taking a-- and it's the number 1.

248
00:11:56,255 --> 00:11:58,130
And I'm just temporarily
storing the number 1

249
00:11:58,130 --> 00:12:00,350
in this additional temporary
variable, so that I now

250
00:12:00,350 --> 00:12:03,690
have two copies of the number
one-- in a and in temp.

251
00:12:03,690 --> 00:12:06,780
Then, I change the
value of a to equal b.

252
00:12:06,780 --> 00:12:10,700
So at this point in the story,
a should have a value of 2.

253
00:12:10,700 --> 00:12:12,320
b should have a value of 2.

254
00:12:12,320 --> 00:12:16,200
Which could be problematic, except
I've saved the original value 1

255
00:12:16,200 --> 00:12:17,790
in my temporary variable.

256
00:12:17,790 --> 00:12:21,760
And so, indeed I change b to
equal that temporary value.

257
00:12:21,760 --> 00:12:24,390
So indeed, I can't do
this magical switcheroo.

258
00:12:24,390 --> 00:12:27,390
Because if I simultaneously
took one value and one value

259
00:12:27,390 --> 00:12:30,190
and put them in each other's
places, I would essentially

260
00:12:30,190 --> 00:12:31,744
risk clobbering one or the other.

261
00:12:31,744 --> 00:12:33,910
Because the computer typically
can only do one thing

262
00:12:33,910 --> 00:12:36,880
at a time underneath the hood,
even though it's super fast.

263
00:12:36,880 --> 00:12:42,310
So I run the risk of somehow getting
two copies of that same value,

264
00:12:42,310 --> 00:12:43,270
unless I'm careful.

265
00:12:43,270 --> 00:12:46,980
I really want to take one value,
put it in a temporary space.

266
00:12:46,980 --> 00:12:48,700
Then, copy one value over.

267
00:12:48,700 --> 00:12:50,540
And then, do that switcheroo.

268
00:12:50,540 --> 00:12:52,080
But it doesn't seem to work.

269
00:12:52,080 --> 00:12:55,060
And yet, this is a good
opportunity for one more tool.

270
00:12:55,060 --> 00:12:56,540
Let me do a further check.

271
00:12:56,540 --> 00:13:01,040
Let me go ahead and run
debug 50 on no swap.

272
00:13:01,040 --> 00:13:01,790
And you know what?

273
00:13:01,790 --> 00:13:05,120
I'm going to set a break point right at
the beginning of this program on line

274
00:13:05,120 --> 00:13:09,110
10 by simply clicking in the so-called
gutter of the line number here.

275
00:13:09,110 --> 00:13:12,150
A red dot appears, so that
now when I run debug 50,

276
00:13:12,150 --> 00:13:14,320
notice my right hand bar pops out.

277
00:13:14,320 --> 00:13:18,280
Notice that the line 10 in question
is highlighted, because execution is

278
00:13:18,280 --> 00:13:19,480
paused at this line.

279
00:13:19,480 --> 00:13:22,480
Let's take a look at what's going on
the right hand side of my debugger.

280
00:13:22,480 --> 00:13:26,580
Notice that x has a value
of 1 and y has a value of 2.

281
00:13:26,580 --> 00:13:27,730
And that's what I intend.

282
00:13:27,730 --> 00:13:30,070
Now, let's begin to
step over these lines.

283
00:13:30,070 --> 00:13:31,840
So let's step over the printf.

284
00:13:31,840 --> 00:13:34,250
And we see on my terminal
window that x is 1.

285
00:13:34,250 --> 00:13:37,240
Step over the next printf
and we see that y is 2.

286
00:13:37,240 --> 00:13:40,860
Now, let's step over that and we
see indeed swapping dot dot dot.

287
00:13:40,860 --> 00:13:45,170
But rather than step over my call to
the swap function, let's step into it.

288
00:13:45,170 --> 00:13:47,840
So I can actually see
maybe my logic is buggy.

289
00:13:47,840 --> 00:13:50,210
So let's go ahead and step into swap.

290
00:13:50,210 --> 00:13:54,630
And notice that debug 50 immediately
jumps down to the first line and swap.

291
00:13:54,630 --> 00:13:57,800
And notice now on the right
hand side, what's going on?

292
00:13:57,800 --> 00:14:00,010
a is 1 and b is 2.

293
00:14:00,010 --> 00:14:03,230
And that's as expected,
because I passed an x and y.

294
00:14:03,230 --> 00:14:08,030
Swap calls it's two inputs a and
b respectively, so a is 1, b is 2.

295
00:14:08,030 --> 00:14:14,659
Temp though, very curiously is 32,767.

296
00:14:14,659 --> 00:14:15,950
And where is that value coming?

297
00:14:15,950 --> 00:14:19,330
Well, it turns out when
you declare a variable,

298
00:14:19,330 --> 00:14:22,910
but haven't yet said it's of some
value it's going to by definition have

299
00:14:22,910 --> 00:14:24,090
an undefined value.

300
00:14:24,090 --> 00:14:25,600
A so-called garbage value.

301
00:14:25,600 --> 00:14:28,370
Remnants of other
aspects of your program

302
00:14:28,370 --> 00:14:30,540
having used that chunk of memory before.

303
00:14:30,540 --> 00:14:32,310
And we'll see why this is in just a bit.

304
00:14:32,310 --> 00:14:33,560
So this is anomalous.

305
00:14:33,560 --> 00:14:34,810
It's not a bug in the program.

306
00:14:34,810 --> 00:14:37,030
It's to be expected, because
I haven't yet assigned

307
00:14:37,030 --> 00:14:40,140
temp a value until-- let me zoom out.

308
00:14:40,140 --> 00:14:46,720
Until I step over line 21 and
actually let temp equal a.

309
00:14:46,720 --> 00:14:49,470
And notice, if you watch the
right hand side of my screen now,

310
00:14:49,470 --> 00:14:53,500
temp is currently 32,767.

311
00:14:53,500 --> 00:14:56,010
And when I step over it, OK.

312
00:14:56,010 --> 00:14:57,050
It becomes 1.

313
00:14:57,050 --> 00:14:58,340
So that's as expected.

314
00:14:58,340 --> 00:15:00,950
Now, a is about to become b.

315
00:15:00,950 --> 00:15:05,150
And indeed, we now see that a
is 2 b is 2 and temp is still 1.

316
00:15:05,150 --> 00:15:08,550
So now we have to put temp into
b, so let's step over that line.

317
00:15:08,550 --> 00:15:12,120
And indeed, we've done
a switcheroo of a and b.

318
00:15:12,120 --> 00:15:14,300
a is 2, b is 1.

319
00:15:14,300 --> 00:15:14,800
OK.

320
00:15:14,800 --> 00:15:17,350
Let's go ahead and play this out.

321
00:15:17,350 --> 00:15:18,410
Let's continue here.

322
00:15:18,410 --> 00:15:19,930
I claim that I've swapped.

323
00:15:19,930 --> 00:15:26,610
I'm printing x-- and somehow
x and y are still 1 and 2.

324
00:15:26,610 --> 00:15:28,580
Even though the debunker
told me it would

325
00:15:28,580 --> 00:15:30,910
seem that my swap function was correct.

326
00:15:30,910 --> 00:15:35,150
So what is happening after all of these
weeks of CS50 and all of these problems

327
00:15:35,150 --> 00:15:35,942
solved thus far?

328
00:15:35,942 --> 00:15:38,150
It would seem that all of
our understanding of things

329
00:15:38,150 --> 00:15:39,209
is kind of unraveling.

330
00:15:39,209 --> 00:15:42,000
And that's because we've been very
careful over the past few weeks,

331
00:15:42,000 --> 00:15:42,930
at least in class.

332
00:15:42,930 --> 00:15:46,340
And in sections to try to avoid
tripping over some of these lower-level

333
00:15:46,340 --> 00:15:47,600
implementation details.

334
00:15:47,600 --> 00:15:49,160
And there's not that many of them.

335
00:15:49,160 --> 00:15:53,280
But today, is now a time
to peel back this layer

336
00:15:53,280 --> 00:15:56,110
and understand exactly
what it is that's going on.

337
00:15:56,110 --> 00:16:00,170
Indeed, all of this time when you
run a program on your computer,

338
00:16:00,170 --> 00:16:03,060
double-click an icon or run the
program's name with dot slash

339
00:16:03,060 --> 00:16:05,620
something or other at your
terminal window-- what happens

340
00:16:05,620 --> 00:16:10,550
is that your computer gives that program
the illusion of a really big chunk

341
00:16:10,550 --> 00:16:11,890
of memory all of its own.

342
00:16:11,890 --> 00:16:14,940
Maybe two gigabytes of memory,
even though it doesn't necessarily

343
00:16:14,940 --> 00:16:16,277
use all of that memory.

344
00:16:16,277 --> 00:16:18,860
And that memory-- if you just
think of your computer's memory,

345
00:16:18,860 --> 00:16:20,985
as we've done before, is
like a rectangular region.

346
00:16:20,985 --> 00:16:22,907
And we could number of
the bytes in my memory.

347
00:16:22,907 --> 00:16:25,990
But it doesn't really matter what the
addresses are, what the numbers are,

348
00:16:25,990 --> 00:16:27,770
just that it exists.

349
00:16:27,770 --> 00:16:30,960
It turns out that when
you run a program,

350
00:16:30,960 --> 00:16:34,750
your operating system typically lays
out your program's memory in a fairly

351
00:16:34,750 --> 00:16:36,400
standard way.

352
00:16:36,400 --> 00:16:39,920
There's a chunk of memory down here for
something called environment variables.

353
00:16:39,920 --> 00:16:43,580
There's a bigger growable chunk
of memory down here called

354
00:16:43,580 --> 00:16:45,160
the so-called stack.

355
00:16:45,160 --> 00:16:47,539
On the opposite side of the
picture is a so-called heap.

356
00:16:47,539 --> 00:16:50,330
Another chunk of memory that actually
grows in the other direction.

357
00:16:50,330 --> 00:16:53,370
So long story short, bad things
can happen if both of those

358
00:16:53,370 --> 00:16:55,150
grow bigger than you intend.

359
00:16:55,150 --> 00:16:58,680
Then, there's some kind of uninitialized
and initialized data up top.

360
00:16:58,680 --> 00:17:00,070
And then, text.

361
00:17:00,070 --> 00:17:03,270
Now, it turns out text is
the segment of memory where

362
00:17:03,270 --> 00:17:05,569
your program's zeros and ones live.

363
00:17:05,569 --> 00:17:07,680
So when you double-click
an icon on your Mac or PC

364
00:17:07,680 --> 00:17:09,750
or when you run the command
dot slash something,

365
00:17:09,750 --> 00:17:13,290
those zeros and ones are loaded from
your hard disk or solid state disk

366
00:17:13,290 --> 00:17:14,930
into RAM or memory.

367
00:17:14,930 --> 00:17:18,310
And it's put conceptually
at the top of the memory

368
00:17:18,310 --> 00:17:19,950
that your computer program is using.

369
00:17:19,950 --> 00:17:24,099
And below that is the actual
data that your program is using.

370
00:17:24,099 --> 00:17:26,550
The variables and the
values inside of it.

371
00:17:26,550 --> 00:17:29,610
Now, each of these types of
memory have different purposes.

372
00:17:29,610 --> 00:17:33,100
And we'll see in just a moment
what it is that's going on.

373
00:17:33,100 --> 00:17:35,410
And we'll ultimately
peel back these layers.

374
00:17:35,410 --> 00:17:38,940
So what is it that's actually
going on underneath the hood here?

375
00:17:38,940 --> 00:17:41,710
Well, let's consider this
to be my computer's memory.

376
00:17:41,710 --> 00:17:44,700
So focusing on just that
bottom most portion,

377
00:17:44,700 --> 00:17:46,780
which I called the stack a moment ago.

378
00:17:46,780 --> 00:17:50,425
So if we draw just the bottom of my
computer's memory kind of like this,

379
00:17:50,425 --> 00:17:52,999
the bottom of it has technically
environment variables.

380
00:17:52,999 --> 00:17:55,040
But let's focus on the
region known as the stack.

381
00:17:55,040 --> 00:17:58,720
And the stack, as the name implies,
is kind of like the stack of trays

382
00:17:58,720 --> 00:18:00,900
that you might see in a
cafeteria or a dining hall,

383
00:18:00,900 --> 00:18:04,790
where you put trays on top of another
until it can get potentially pretty

384
00:18:04,790 --> 00:18:05,410
tall.

385
00:18:05,410 --> 00:18:08,150
And it turns out when
you run a program, not

386
00:18:08,150 --> 00:18:11,660
only is your program given the illusion
of this really big memory space laid

387
00:18:11,660 --> 00:18:14,890
out as proposed, but
it also by convention

388
00:18:14,890 --> 00:18:17,830
uses this memory in a
fairly standard way.

389
00:18:17,830 --> 00:18:23,300
Specifically, when main is called,
main is given a chunk of memory

390
00:18:23,300 --> 00:18:25,780
at the bottom, so to
speak, of this stack space.

391
00:18:25,780 --> 00:18:28,450
And so, let me go ahead
here and write main.

392
00:18:28,450 --> 00:18:33,450
And any local variables that main
has and any arguments to main,

393
00:18:33,450 --> 00:18:36,950
namely argc an argv, end up inside here.

394
00:18:36,950 --> 00:18:41,630
So if indeed you are using
something like argv and argc,

395
00:18:41,630 --> 00:18:44,460
you might have a value
like this down here.

396
00:18:44,460 --> 00:18:48,920
And you might have another chunk
of memory carved out here for argv.

397
00:18:48,920 --> 00:18:52,950
And if you have a couple of
local variables, for instance x

398
00:18:52,950 --> 00:18:58,430
and another one, y, those two would
be allocated space in this slice

399
00:18:58,430 --> 00:18:58,960
if you will.

400
00:18:58,960 --> 00:19:01,170
This frame of memory.

401
00:19:01,170 --> 00:19:05,890
Meanwhile, if main calls a
function, like swap-- swap

402
00:19:05,890 --> 00:19:11,340
is allocated a swath of memory, a
frame of memory, above main by design.

403
00:19:11,340 --> 00:19:14,900
So if I've called swap,
its memory ends up here.

404
00:19:14,900 --> 00:19:18,160
And if the swap function
itself has arguments,

405
00:19:18,160 --> 00:19:21,100
like a and b or any
other local variables,

406
00:19:21,100 --> 00:19:25,200
those values too are put inside
of the so-called stack frame.

407
00:19:25,200 --> 00:19:28,859
So this might be a and this might be b.

408
00:19:28,859 --> 00:19:31,150
In other words, the concepts
that we've been taking for

409
00:19:31,150 --> 00:19:35,630
granted, both in Scratch and in C, at
the end of the day, boil down to values

410
00:19:35,630 --> 00:19:37,730
needing to go somewhere physically.

411
00:19:37,730 --> 00:19:40,040
And so, if you assume that
the big rectangular region

412
00:19:40,040 --> 00:19:41,480
here is your computer's memory.

413
00:19:41,480 --> 00:19:43,970
And then, you consider that
the operating system really

414
00:19:43,970 --> 00:19:49,130
just slices and dices this memory,
such that mains memory is down here.

415
00:19:49,130 --> 00:19:51,730
Any function that main calls
is immediately above it.

416
00:19:51,730 --> 00:19:56,270
And frankly, if swap called its own
function, it would end up above it.

417
00:19:56,270 --> 00:20:00,430
But now, given this basic
definition of memory management

418
00:20:00,430 --> 00:20:03,300
and the layout of computer
program's memory space,

419
00:20:03,300 --> 00:20:07,530
you can perhaps start to infer
why all of these failures

420
00:20:07,530 --> 00:20:09,610
have started to happen in my program.

421
00:20:09,610 --> 00:20:12,490
A moment ago, I didn't
have argv and argc.

422
00:20:12,490 --> 00:20:14,530
I just had for instance x and y.

423
00:20:14,530 --> 00:20:18,740
And I had the value 1
and I had the value 2.

424
00:20:18,740 --> 00:20:25,270
Main then called swap and put a copy
of 1 there and a copy of 2 there.

425
00:20:25,270 --> 00:20:27,610
And indeed, that's the key insight.

426
00:20:27,610 --> 00:20:32,160
When a function calls another function,
passing in arguments as inputs,

427
00:20:32,160 --> 00:20:35,880
that the function is being
passed to copies of those inputs.

428
00:20:35,880 --> 00:20:38,890
So at this point in time, if you
opened up the lid of your computer

429
00:20:38,890 --> 00:20:42,192
and looked inside digitally,
you would see 1 and 2 down here.

430
00:20:42,192 --> 00:20:43,900
And you would see
another pattern of bits

431
00:20:43,900 --> 00:20:46,770
representing 1 and 2
up here in duplicate.

432
00:20:46,770 --> 00:20:49,750
So now when my swap
function operates, it

433
00:20:49,750 --> 00:20:52,440
declares a temporary
variable recall, called temp.

434
00:20:52,440 --> 00:20:55,060
So let me draw that here.

435
00:20:55,060 --> 00:20:59,030
And as I recall, it stores
in temp, which value?

436
00:20:59,030 --> 00:21:00,550
The value of a.

437
00:21:00,550 --> 00:21:02,660
The value of a is 1.

438
00:21:02,660 --> 00:21:10,130
It then took the value of b, put it
in a-- which puts that value here.

439
00:21:10,130 --> 00:21:13,280
And now at this point in the
story, a and b are incorrect.

440
00:21:13,280 --> 00:21:15,730
We still need to put the value 1 in b.

441
00:21:15,730 --> 00:21:19,660
And that's why we then took
temps value, put it in b.

442
00:21:19,660 --> 00:21:26,740
Thereby giving the me ultimately
the number 1 in b's slot as well.

443
00:21:26,740 --> 00:21:29,840
And so, at this point in the
story, temp still exists.

444
00:21:29,840 --> 00:21:33,630
And a and b have the correct
answers, 2 and 1 respectively.

445
00:21:33,630 --> 00:21:40,500
But the catch is the moment
that swap returns, this happens.

446
00:21:40,500 --> 00:21:44,860
Essentially, everything that was
being used above main disappears.

447
00:21:44,860 --> 00:21:45,959
It's not actually deleted.

448
00:21:45,959 --> 00:21:48,500
All of those bits are still
there, so technically the numbers

449
00:21:48,500 --> 00:21:49,170
are still there.

450
00:21:49,170 --> 00:21:51,370
But the computer just
forgets about those values.

451
00:21:51,370 --> 00:21:54,710
And indeed, the key
takeaway here is that when

452
00:21:54,710 --> 00:21:58,670
execution returns to main-- that
is when swap says, return I'm done.

453
00:21:58,670 --> 00:22:03,687
And main takes over operation again,
1 and 2 are completely unchanged.

454
00:22:03,687 --> 00:22:05,520
So all of the word that
we just did up there

455
00:22:05,520 --> 00:22:07,520
was a complete waste
of time in some sense.

456
00:22:07,520 --> 00:22:10,750
Because even though it was correct
in so far as it swapped a and b,

457
00:22:10,750 --> 00:22:14,530
it did not actually have a
permanent impact on the variables

458
00:22:14,530 --> 00:22:16,200
that I actually cared about.

459
00:22:16,200 --> 00:22:18,260
Let's consider another example now.

460
00:22:18,260 --> 00:22:23,050
Recall my previous example where when I
whipped up some code to compare values,

461
00:22:23,050 --> 00:22:26,140
I called get string once and
stored its return value in s.

462
00:22:26,140 --> 00:22:29,800
I called get string twice and
stored its return value in t.

463
00:22:29,800 --> 00:22:32,720
And then, I just tried
to compare s and t.

464
00:22:32,720 --> 00:22:34,830
Well, what does that actually mean?

465
00:22:34,830 --> 00:22:37,940
It turns out that when
you call get string,

466
00:22:37,940 --> 00:22:41,240
it's not technically
returning a string to per say.

467
00:22:41,240 --> 00:22:45,050
It's not technically returning
to you a sequence of characters.

468
00:22:45,050 --> 00:22:48,410
It's actually returning
something much simpler.

469
00:22:48,410 --> 00:23:00,170
When I call get string and do this--
string s gets get underscore string,

470
00:23:00,170 --> 00:23:02,860
all that's happening is this.

471
00:23:02,860 --> 00:23:06,280
The left hand side of this expression
is telling the computer, hey, computer.

472
00:23:06,280 --> 00:23:11,790
I need a variable called s that's big
enough to fit a string so to speak.

473
00:23:11,790 --> 00:23:14,880
On the right hand side, get string
indeed gets a string from the user,

474
00:23:14,880 --> 00:23:18,380
like D-A-V-I-D or Z-A-M-Y-L-A.

475
00:23:18,380 --> 00:23:20,180
But where does that string come from?

476
00:23:20,180 --> 00:23:22,970
It turns out it comes from
somewhere else in memory.

477
00:23:22,970 --> 00:23:29,090
And suppose that the user has indeed
typed in Z-A-M-Y-L-A quote unquote

478
00:23:29,090 --> 00:23:29,760
so to speak.

479
00:23:29,760 --> 00:23:32,640
That's just kind of floating
somewhere in my computer's memory.

480
00:23:32,640 --> 00:23:38,300
And if this string happens to
exist at address number 123,

481
00:23:38,300 --> 00:23:41,600
byte number 123 in my computer's memory.

482
00:23:41,600 --> 00:23:47,980
What's actually going to get
returned is the value 123.

483
00:23:47,980 --> 00:23:52,440
In other words, a string is
technically just the address

484
00:23:52,440 --> 00:23:54,360
of a character in memory.

485
00:23:54,360 --> 00:23:56,680
In fact, if we zoom
in further on Zamyla,

486
00:23:56,680 --> 00:24:01,560
recall that Zamyla's name really
looks like this underneath the hood.

487
00:24:01,560 --> 00:24:06,240
It's an array, a block of
contiguous memory with a backslash 0

488
00:24:06,240 --> 00:24:07,350
at the very end.

489
00:24:07,350 --> 00:24:11,400
And if this first byte just
happens to be the number 123,

490
00:24:11,400 --> 00:24:13,680
the second byte is going to be 124.

491
00:24:13,680 --> 00:24:16,070
The third byte it's going to be 125.

492
00:24:16,070 --> 00:24:16,717
And so forth.

493
00:24:16,717 --> 00:24:18,800
In other words, if my
computer has a billion bytes

494
00:24:18,800 --> 00:24:22,749
of memory, 2 billion bytes of memory--
like a gigabyte or two gigabytes,

495
00:24:22,749 --> 00:24:25,290
you can certainly number each
of those bytes and the computer

496
00:24:25,290 --> 00:24:26,670
does underneath the hood.

497
00:24:26,670 --> 00:24:35,340
And so Z-A-M-Y-L-A backslash 0 is simply
a sequence of 7 characters that live

498
00:24:35,340 --> 00:24:37,420
somewhere physically in memory.

499
00:24:37,420 --> 00:24:43,390
And what a string technically is,
is just kind of a breadcrumb--

500
00:24:43,390 --> 00:24:48,960
specifically the address of, the number
of the first byte of Zamyla's name.

501
00:24:48,960 --> 00:24:54,309
So when you return a string, you're not
handing back Z-A-M-Y-L-A backslash 0,

502
00:24:54,309 --> 00:24:56,100
you're handing back
something much smaller.

503
00:24:56,100 --> 00:25:00,410
A little scrap of paper, if you
will, that's a map to Zamyla's name

504
00:25:00,410 --> 00:25:03,420
somewhere in your computer's memory.

505
00:25:03,420 --> 00:25:08,510
And so over here, this number 123 is
generally called, not just a number,

506
00:25:08,510 --> 00:25:09,910
but an address.

507
00:25:09,910 --> 00:25:14,830
Much like post boxes and houses have
addresses physically that uniquely

508
00:25:14,830 --> 00:25:18,490
identify them, 123 uniquely
identifies that byte in memory.

509
00:25:18,490 --> 00:25:21,395
And so via this address,
this map if you will,

510
00:25:21,395 --> 00:25:26,490
can my program later on find Zamyla's
name and do something with it.

511
00:25:26,490 --> 00:25:30,720
Like printed out, or capitalize it,
or compare it, or anything else.

512
00:25:30,720 --> 00:25:33,860
And so, how though
does the computer know

513
00:25:33,860 --> 00:25:36,290
where Zamyla's name begins and ends?

514
00:25:36,290 --> 00:25:39,080
Well, it begins at 123.

515
00:25:39,080 --> 00:25:44,150
And again, recall from two weeks
ago, it ends with backslash 0.

516
00:25:44,150 --> 00:25:46,660
So with those two markers,
where does it begin?

517
00:25:46,660 --> 00:25:47,480
Where does it end?

518
00:25:47,480 --> 00:25:50,150
Can you infer the
entirety of someone's name

519
00:25:50,150 --> 00:25:51,980
or the entirety of a string in between?

520
00:25:51,980 --> 00:25:54,090
Now, consider my second line of code.

521
00:25:54,090 --> 00:25:58,070
String t gets get string.

522
00:25:58,070 --> 00:25:59,870
So what does this mean?

523
00:25:59,870 --> 00:26:01,720
This is another function call.

524
00:26:01,720 --> 00:26:07,260
And suppose that I just happen to type
in Z-A-M-Y-L-A enter, just like before.

525
00:26:07,260 --> 00:26:11,390
What's happening there is that the
computer, blind to the fact that,

526
00:26:11,390 --> 00:26:13,650
that might already exist
somewhere in memory,

527
00:26:13,650 --> 00:26:20,300
is going to give me another chunk of
memory somewhere with Z-A-M-Y-L-A.

528
00:26:20,300 --> 00:26:22,320
And then, backslash 0.

529
00:26:22,320 --> 00:26:25,292
Whereby, this is effectively
an array of its own.

530
00:26:25,292 --> 00:26:26,500
And I don't know where it is.

531
00:26:26,500 --> 00:26:32,780
Maybe it's at address number
234, followed by 235 dot dot dot.

532
00:26:32,780 --> 00:26:34,030
It's somewhere else in memory.

533
00:26:34,030 --> 00:26:36,290
I don't know or need to
even care where it is.

534
00:26:36,290 --> 00:26:43,800
But the key detail here is that t in
so far is it is a variable itself.

535
00:26:43,800 --> 00:26:46,440
It gets what value?

536
00:26:46,440 --> 00:26:49,110
Well, if the string's Zamyla,
the second time I type it in it

537
00:26:49,110 --> 00:26:51,990
just happens to end up at location 234.

538
00:26:51,990 --> 00:26:57,430
What ends up in t is
simply the number 234.

539
00:26:57,430 --> 00:27:04,331
So if we change back to my code where
I was comparing s and t, as I am here.

540
00:27:04,331 --> 00:27:06,455
I've called get string
once, stored the value in s.

541
00:27:06,455 --> 00:27:08,371
Called get string twice
stored the value in t.

542
00:27:08,371 --> 00:27:12,895
And then, I'm quite simply saying,
if s equals equals t, then say same.

543
00:27:12,895 --> 00:27:15,210
Else, say different.

544
00:27:15,210 --> 00:27:20,120
Now, when you consider what is really
going on underneath the hood all

545
00:27:20,120 --> 00:27:25,510
these weeks, certainly 123
is not the same as 234.

546
00:27:25,510 --> 00:27:30,410
And so, s does not equal t.

547
00:27:30,410 --> 00:27:31,829
Capitalization meanwhile.

548
00:27:31,829 --> 00:27:33,370
What happens with that other program?

549
00:27:33,370 --> 00:27:35,440
Well, we'll do this one more quickly.

550
00:27:35,440 --> 00:27:42,320
But if I for instance,
call string s gets get

551
00:27:42,320 --> 00:27:46,390
underscore string open
paren close paren.

552
00:27:46,390 --> 00:27:48,650
That again, is going to
give me something like this.

553
00:27:48,650 --> 00:27:55,960
And it's going to give me something
like Z-A-M-Y-L-A backslash 0,

554
00:27:55,960 --> 00:28:01,610
all of which I can think of, as before,
like an array-- if sloppily drawn.

555
00:28:01,610 --> 00:28:03,970
Maybe starting again at address 123.

556
00:28:03,970 --> 00:28:06,055
And so that's what ends up in s.

557
00:28:06,055 --> 00:28:09,370
But in my copy 0 program,
recall that I did this.

558
00:28:09,370 --> 00:28:13,980
String t gets s.

559
00:28:13,980 --> 00:28:15,630
I didn't call get string again.

560
00:28:15,630 --> 00:28:18,710
I just said, store s inside of t.

561
00:28:18,710 --> 00:28:21,700
Effectively, I thought,
making a copy of it.

562
00:28:21,700 --> 00:28:24,810
What this left-hand side gives
me is another box called t.

563
00:28:24,810 --> 00:28:27,550
If this is s, this is t.

564
00:28:27,550 --> 00:28:30,870
But what goes inside of this new box t?

565
00:28:30,870 --> 00:28:33,210
Well, what goes inside
is literally a copy of s.

566
00:28:33,210 --> 00:28:35,150
What is s? s is 123.

567
00:28:35,150 --> 00:28:41,700
OK. t then, is 123, which
means later in my copy program,

568
00:28:41,700 --> 00:28:47,780
when I simply decided to
capitalize t bracket 0,

569
00:28:47,780 --> 00:28:51,430
the first character in
my string t-- that's

570
00:28:51,430 --> 00:28:56,080
kind of misleading, because my
string t is really just my string s.

571
00:28:56,080 --> 00:28:58,440
They're sort of synonyms for
one another at this point,

572
00:28:58,440 --> 00:29:00,460
because one indeed equals the other.

573
00:29:00,460 --> 00:29:06,360
And so what has happened is that I
have gone to the first character in t,

574
00:29:06,360 --> 00:29:07,730
which of course is z.

575
00:29:07,730 --> 00:29:11,250
And recall from my example earlier when
I typed it in all lowercase, David,

576
00:29:11,250 --> 00:29:16,560
for instance, with a lowercase d, it
capitalized it not only in t, but also

577
00:29:16,560 --> 00:29:17,346
in s.

578
00:29:17,346 --> 00:29:21,530
In other words-- and frankly, it
doesn't really matter, typically,

579
00:29:21,530 --> 00:29:22,770
what these addresses are.

580
00:29:22,770 --> 00:29:26,750
I'm just using 123 and 234 because
they're sort of easy to say.

581
00:29:26,750 --> 00:29:30,040
But you can really think of
s as again, being a map that

582
00:29:30,040 --> 00:29:32,660
leads you to the string you care about.

583
00:29:32,660 --> 00:29:33,810
A pointer, if you will.

584
00:29:33,810 --> 00:29:34,770
Literally an arrow.

585
00:29:34,770 --> 00:29:37,940
And t, similarly, can be
thought of as a pointer.

586
00:29:37,940 --> 00:29:44,440
And the key detail here is that
because I've set s equal to t-- or t

587
00:29:44,440 --> 00:29:50,320
equal to s-- they are effectively
pointing at the same thing.

588
00:29:50,320 --> 00:29:51,650
So strings are a lie.

589
00:29:51,650 --> 00:29:53,740
There is no such thing
as a string data type.

590
00:29:53,740 --> 00:29:56,140
There are things called
chars, characters

591
00:29:56,140 --> 00:29:57,590
that can live somewhere in memory.

592
00:29:57,590 --> 00:30:00,250
And we humans can
arbitrarily decide that hey,

593
00:30:00,250 --> 00:30:04,990
if we put a backslash 0 character at the
end of a sequence of other characters,

594
00:30:04,990 --> 00:30:09,020
we can all just agree universally
to treat that as the end of a quote

595
00:30:09,020 --> 00:30:11,290
unquote "string," that
is a word or a phrase

596
00:30:11,290 --> 00:30:13,590
or paragraph or anything even bigger.

597
00:30:13,590 --> 00:30:17,286
But we need a convention for
remembering where strings begin.

598
00:30:17,286 --> 00:30:19,410
We've already solved the
where do they end problem.

599
00:30:19,410 --> 00:30:20,730
So where does the string begin?

600
00:30:20,730 --> 00:30:22,560
It begins at an address.

601
00:30:22,560 --> 00:30:24,770
It begins with a pointer.

602
00:30:24,770 --> 00:30:27,710
And so this special data type
that we declare in CS50's library

603
00:30:27,710 --> 00:30:32,940
called string really is just
in CS50 IDE an 8-byte value,

604
00:30:32,940 --> 00:30:38,450
a 64-bit value that is just a
really big number that represents

605
00:30:38,450 --> 00:30:40,190
the address in memory of a string.

606
00:30:40,190 --> 00:30:42,880
And I say really big just
because the IDE gives you access

607
00:30:42,880 --> 00:30:46,020
to lots of memory, certainly
numbers bigger than 123.

608
00:30:46,020 --> 00:30:52,450
But a string is just a number, is
just an address, AKA a pointer.

609
00:30:52,450 --> 00:30:55,520
And that explains, then, why
all three of these examples

610
00:30:55,520 --> 00:30:58,900
did not behave as I might
have hoped, because rather

611
00:30:58,900 --> 00:31:02,790
they were taking things
a little too literally.

612
00:31:02,790 --> 00:31:06,410
Or I was failing to appreciate
what's actually going on.

613
00:31:06,410 --> 00:31:08,900
Let's pause for a moment,
take things down a notch.

614
00:31:08,900 --> 00:31:11,390
Make things a little more
real with a bit of claymation

615
00:31:11,390 --> 00:31:14,460
that will motivate, eventually,
peeling back this layer further

616
00:31:14,460 --> 00:31:17,670
and seeing what's really going on.

617
00:31:17,670 --> 00:31:19,070
[STRUMMED CHORD]

618
00:31:19,070 --> 00:31:19,437


619
00:31:19,437 --> 00:31:20,520
NICK PARLANTE: Hey, Binky.

620
00:31:20,520 --> 00:31:21,260
Wake up.

621
00:31:21,260 --> 00:31:23,770
It's time for pointer fun.

622
00:31:23,770 --> 00:31:24,980
BINKY: What's that?

623
00:31:24,980 --> 00:31:26,728
Learn about pointers?

624
00:31:26,728 --> 00:31:29,517
Oh, goodie!

625
00:31:29,517 --> 00:31:32,100
DAVID J. MALAN: Binky, who exist
here only in claymation form,

626
00:31:32,100 --> 00:31:35,472
is the product of a good friend of
ours, Nick Parlante at Stanford,

627
00:31:35,472 --> 00:31:36,930
who teaches computer science there.

628
00:31:36,930 --> 00:31:40,550
You'll see more of Binky and hear
more of Nick in just a moment.

629
00:31:40,550 --> 00:31:42,940
But these here are
sort of metaphorically

630
00:31:42,940 --> 00:31:45,500
the training wheels that we've
had on for the past few weeks.

631
00:31:45,500 --> 00:31:47,870
And the goal now at hand
is to take these off,

632
00:31:47,870 --> 00:31:52,670
and to finally start looking at what's
really going on underneath the hood.

633
00:31:52,670 --> 00:31:55,096
And starting to remove,
if you will, let's

634
00:31:55,096 --> 00:31:59,660
see if-- [BANG] --probably
not the best idea.

635
00:31:59,660 --> 00:32:01,680
Remove, if you will,
these training wheels,

636
00:32:01,680 --> 00:32:04,550
and actually see what's
going on, and understand

637
00:32:04,550 --> 00:32:06,120
and take advantage of the same.

638
00:32:06,120 --> 00:32:06,900
As follows.

639
00:32:06,900 --> 00:32:11,080
Let's go ahead now into CS50
IDE, and go ahead and open up,

640
00:32:11,080 --> 00:32:17,490
let's say, compare1.c, which I
wrote in advance to look as follows.

641
00:32:17,490 --> 00:32:20,530
And you'll notice that it works a
little differently from version zero.

642
00:32:20,530 --> 00:32:22,790
Here we have a prompt for string s.

643
00:32:22,790 --> 00:32:26,590
And we store in it the
return value of get string.

644
00:32:26,590 --> 00:32:30,230
But notice what's on the left-hand side.

645
00:32:30,230 --> 00:32:32,810
Char star s, all of a sudden.

646
00:32:32,810 --> 00:32:34,990
Indeed, all of this time,
I've been treating things

647
00:32:34,990 --> 00:32:38,530
as though they are strings, literally.

648
00:32:38,530 --> 00:32:43,640
But it turns out a
string is just a synonym

649
00:32:43,640 --> 00:32:46,180
for a data type known as a char star.

650
00:32:46,180 --> 00:32:48,690
And the new syntax today,
then, is this star operator.

651
00:32:48,690 --> 00:32:52,470
The asterisk that actually has special
meaning in certain contexts, not just

652
00:32:52,470 --> 00:32:53,410
multiplication.

653
00:32:53,410 --> 00:32:57,150
But in this case, it specifies
that the type of a variable

654
00:32:57,150 --> 00:33:00,940
is not a char literally,
but a char star, the address

655
00:33:00,940 --> 00:33:04,240
of a char, a pointer to a char.

656
00:33:04,240 --> 00:33:04,940
Now, why char?

657
00:33:04,940 --> 00:33:06,606
I thought we were talking about strings.

658
00:33:06,606 --> 00:33:09,780
But again, recall that a string
is just a sequence of characters

659
00:33:09,780 --> 00:33:14,290
back to back to back, and
therefore, you can define a string

660
00:33:14,290 --> 00:33:17,090
by the address of its first character.

661
00:33:17,090 --> 00:33:19,400
Ergo, what we really
need underneath the hood

662
00:33:19,400 --> 00:33:24,690
is a data type that lets us
store the address of a character.

663
00:33:24,690 --> 00:33:26,370
There is no string.

664
00:33:26,370 --> 00:33:28,290
And so what does this allow us to do?

665
00:33:28,290 --> 00:33:32,300
Let me go into CS50 IDE, and let
me declare then, on this line

666
00:33:32,300 --> 00:33:37,280
here, that s, this time, will
not be a "string" quote unquote.

667
00:33:37,280 --> 00:33:38,940
That was from the CS50 library.

668
00:33:38,940 --> 00:33:41,962
But rather it's going to be a char star.

669
00:33:41,962 --> 00:33:44,420
It turns out that all this time
get string, again, does not

670
00:33:44,420 --> 00:33:48,750
return a string, it returns
the address of a string, AKA

671
00:33:48,750 --> 00:33:52,400
the address of the first
character in a string.

672
00:33:52,400 --> 00:33:56,230
And so the type of value it's
returning is not just a number.

673
00:33:56,230 --> 00:33:57,190
It's not just an int.

674
00:33:57,190 --> 00:33:59,280
It's a special type of an int.

675
00:33:59,280 --> 00:34:00,790
It's used for a different purpose.

676
00:34:00,790 --> 00:34:04,660
It's simply an integer that
represents the address of a char.

677
00:34:04,660 --> 00:34:09,400
And the way you type out address
of a char is literally char star.

678
00:34:09,400 --> 00:34:14,670
So this, then, is identical to my
previously in weeks past having typed

679
00:34:14,670 --> 00:34:15,750
string s.

680
00:34:15,750 --> 00:34:18,510
Now I'm going to start
typing it as char star.

681
00:34:18,510 --> 00:34:20,219
Meanwhile, t is going to be the same.

682
00:34:20,219 --> 00:34:22,344
So when I prompt the user
for another string there,

683
00:34:22,344 --> 00:34:25,350
I'm going to store that
return value inside of t.

684
00:34:25,350 --> 00:34:28,120
And now, notice, just for
good measure, I'm making sure

685
00:34:28,120 --> 00:34:30,830
that both s and t are not null.

686
00:34:30,830 --> 00:34:33,870
I'm using a bit of conditional
logic there, saying if s is not null

687
00:34:33,870 --> 00:34:35,969
and t is not null, it's safe to proceed.

688
00:34:35,969 --> 00:34:39,564
Because recall that get string can
accidentally return null sometimes

689
00:34:39,564 --> 00:34:42,230
if your computer is out of memory,
or something else goes wrong.

690
00:34:42,230 --> 00:34:45,400
Or not so much
accidentally, but by design.

691
00:34:45,400 --> 00:34:48,250
But notice this new chunk of code.

692
00:34:48,250 --> 00:34:51,050
It turns out-- and we
know now from a moment

693
00:34:51,050 --> 00:34:52,872
ago-- you can't just
compare s against t.

694
00:34:52,872 --> 00:34:54,580
They're not going to
equal the same thing

695
00:34:54,580 --> 00:34:56,920
if you type in two independent strings.

696
00:34:56,920 --> 00:35:02,250
We need a special function that actually
compares strings in a conceptual way.

697
00:35:02,250 --> 00:35:08,080
I mean that a string is equal to another
string if every one of its characters

698
00:35:08,080 --> 00:35:10,910
equals every one of the
other string's characters.

699
00:35:10,910 --> 00:35:15,580
Thankfully, there exists in C a function
that does exactly that called strcomp,

700
00:35:15,580 --> 00:35:18,670
string compare, and it
takes two arguments.

701
00:35:18,670 --> 00:35:19,810
The first is a string.

702
00:35:19,810 --> 00:35:20,820
The second is a string.

703
00:35:20,820 --> 00:35:23,400
Or more properly, the first
is the address of a string.

704
00:35:23,400 --> 00:35:27,700
Or even more properly, the first
is the address of a character.

705
00:35:27,700 --> 00:35:29,950
The second is the
address of a character.

706
00:35:29,950 --> 00:35:34,870
And str compare is just going to
hope that both of those strings

707
00:35:34,870 --> 00:35:38,880
eventually end in a
backslash zero, so that they

708
00:35:38,880 --> 00:35:40,480
don't loop forever through memory.

709
00:35:40,480 --> 00:35:43,330
They eventually hit that
special null terminating byte.

710
00:35:43,330 --> 00:35:47,560
And if so, and those characters are
all entirely equal, you print same.

711
00:35:47,560 --> 00:35:51,800
Else, as before, we print out different.

712
00:35:51,800 --> 00:35:55,440
So now, when I compile this
program, make compare 1,

713
00:35:55,440 --> 00:36:00,170
and then I do ./compare1.

714
00:36:00,170 --> 00:36:04,121
Now I'll type in david in all
lowercase, david in all lowercase.

715
00:36:04,121 --> 00:36:05,120
They're indeed the same.

716
00:36:05,120 --> 00:36:06,060
Let's do it again.

717
00:36:06,060 --> 00:36:10,990
Zamyla with a capital Z. Zamyla with a
capital Z. There are indeed the same.

718
00:36:10,990 --> 00:36:14,960
Let's do Zamyla with a capital
Z. zamyla with a lowercase z.

719
00:36:14,960 --> 00:36:16,050
Different.

720
00:36:16,050 --> 00:36:19,000
And then FUBAR, clearly different.

721
00:36:19,000 --> 00:36:21,700
Now we're actually comparing
these things properly.

722
00:36:21,700 --> 00:36:25,460
Because now we're appreciating what
it actually means to be a string,

723
00:36:25,460 --> 00:36:29,150
and we are underneath the hood
comparing what we should be doing.

724
00:36:29,150 --> 00:36:31,360
Now, underneath the hood,
what is str compare doing?

725
00:36:31,360 --> 00:36:34,070
Honestly, it's probably just
a while loop or a for loop

726
00:36:34,070 --> 00:36:36,740
that is iterating over the
string and their lengths

727
00:36:36,740 --> 00:36:39,790
and looking at the i-th
character in each string,

728
00:36:39,790 --> 00:36:42,280
and making sure they're
all in fact equal.

729
00:36:42,280 --> 00:36:44,860
Let's go ahead and fix
copy with version 1 here.

730
00:36:44,860 --> 00:36:48,920
Copy 1.c that I've written in
advance now looks like this.

731
00:36:48,920 --> 00:36:53,650
I still prompt the user for a
string s with these lines here.

732
00:36:53,650 --> 00:36:56,650
I then, just to be safe, say
hey, wait a minute, if s equals

733
00:36:56,650 --> 00:36:57,829
equals null, return 1.

734
00:36:57,829 --> 00:36:59,120
And again, 1 is just arbitrary.

735
00:36:59,120 --> 00:37:02,710
I just want to get out, lest
I break something later.

736
00:37:02,710 --> 00:37:04,937
Now, down here, this
is a new line of code.

737
00:37:04,937 --> 00:37:07,270
And this is perhaps one of
the most powerful ingredients

738
00:37:07,270 --> 00:37:10,820
we'll see this week, is this
new function called malloc,

739
00:37:10,820 --> 00:37:12,460
memory allocate.

740
00:37:12,460 --> 00:37:17,510
This is a special function via which
you can ask the operating system, Linux

741
00:37:17,510 --> 00:37:20,910
in the case here, or Mac OS, or Windows,
if you're running the code locally,

742
00:37:20,910 --> 00:37:26,130
hey operating system, please give
me a bunch of bytes of memory.

743
00:37:26,130 --> 00:37:27,300
Now, why do I want this?

744
00:37:27,300 --> 00:37:28,940
This program is copy 1.c.

745
00:37:28,940 --> 00:37:33,180
The goal at hand is to create a
program that copies a string s

746
00:37:33,180 --> 00:37:35,650
and stores the copy in t, so to speak.

747
00:37:35,650 --> 00:37:38,710
Last time, it was not sufficient
just to say t equals s,

748
00:37:38,710 --> 00:37:40,580
because that copied the addresses.

749
00:37:40,580 --> 00:37:47,890
That didn't give me a copy of
Z-A-M-Y-- Z-A-M-Y-L-A backlash 0.

750
00:37:47,890 --> 00:37:50,160
It instead just gave me
a copy of the address.

751
00:37:50,160 --> 00:37:54,340
So how do I get a complete
copy of Zamyla's name?

752
00:37:54,340 --> 00:37:56,970
I need to preemptively do
a little bit of arithmetic

753
00:37:56,970 --> 00:37:59,020
and say, all right, how
long is Zamyla's name?

754
00:37:59,020 --> 00:38:03,080
Well, it's the length
of s, str len of s.

755
00:38:03,080 --> 00:38:04,303
But plus one.

756
00:38:04,303 --> 00:38:07,181
Why plus one?

757
00:38:07,181 --> 00:38:08,590
Why plus one?

758
00:38:08,590 --> 00:38:10,640
Yeah?

759
00:38:10,640 --> 00:38:11,230
Exactly.

760
00:38:11,230 --> 00:38:14,140
We now were hit the lowest
level of the computer.

761
00:38:14,140 --> 00:38:19,187
If we don't ask the operating system for
memory for that extra backslash 0 byte,

762
00:38:19,187 --> 00:38:20,270
we're not going to get it.

763
00:38:20,270 --> 00:38:22,536
So we have to explicitly
say, give me one more byte,

764
00:38:22,536 --> 00:38:25,160
because I know how strings are
implemented underneath the hood.

765
00:38:25,160 --> 00:38:27,460
I need to put that backslash
zero there, ultimately,

766
00:38:27,460 --> 00:38:31,910
and then whatever that expression is,
the length of Zamyla, so Z-A-M-Y-L-A,

767
00:38:31,910 --> 00:38:34,860
six, plus one, seven bytes.

768
00:38:34,860 --> 00:38:36,760
Times the size of a character.

769
00:38:36,760 --> 00:38:39,020
Turns out it's always going
to be one, by definition.

770
00:38:39,020 --> 00:38:42,510
But just for good measure, I'm
clearly saying, give me seven times

771
00:38:42,510 --> 00:38:44,880
the size of a char,
which is going to be one.

772
00:38:44,880 --> 00:38:46,840
That gives me seven total bytes.

773
00:38:46,840 --> 00:38:48,250
So just to simplify.

774
00:38:48,250 --> 00:38:51,060
If you multiply all this out,
because the line looks unnecessarily

775
00:38:51,060 --> 00:38:57,360
cryptic at the moment, this really
is equivalent, at the moment,

776
00:38:57,360 --> 00:38:58,540
to just this.

777
00:38:58,540 --> 00:38:59,990
Call the function malloc.

778
00:38:59,990 --> 00:39:03,650
Give it the number seven, so that
malloc, and in turn, the operating

779
00:39:03,650 --> 00:39:06,350
system, looks inside of its memory
bank, so to speak, and says,

780
00:39:06,350 --> 00:39:09,930
hmm, where are there are seven available
bytes that aren't currently in use?

781
00:39:09,930 --> 00:39:11,660
Ah, here is a chunk of them.

782
00:39:11,660 --> 00:39:13,030
And it's a contiguous chunk.

783
00:39:13,030 --> 00:39:16,470
It's going to find a block of memory,
a rectangular region, if you will,

784
00:39:16,470 --> 00:39:23,110
and grab seven bytes, and
return them to my main function.

785
00:39:23,110 --> 00:39:25,450
But what do I mean to
return a chunk of memory?

786
00:39:25,450 --> 00:39:29,370
Well, just as get
string returns a string

787
00:39:29,370 --> 00:39:33,320
by returning the address of the
first character in that string,

788
00:39:33,320 --> 00:39:37,220
so does malloc equivalently
simply return the address

789
00:39:37,220 --> 00:39:40,920
of the first byte of memory.

790
00:39:40,920 --> 00:39:43,990
But the danger now is
that unlike a string,

791
00:39:43,990 --> 00:39:45,870
malloc is not giving you characters.

792
00:39:45,870 --> 00:39:49,800
It's just giving you seven bytes in
a row that you are now free to use.

793
00:39:49,800 --> 00:39:52,990
It does not give you a backslash
zero at the end of them.

794
00:39:52,990 --> 00:39:56,420
If you want to remember the
length of the chunk of memory

795
00:39:56,420 --> 00:40:00,102
you just allocated, the burden is
entirely on you, the programmer.

796
00:40:00,102 --> 00:40:03,060
And indeed, one of the most common
sources of bugs in writing code in C

797
00:40:03,060 --> 00:40:05,610
is to forget about how long
was this chunk of memory,

798
00:40:05,610 --> 00:40:08,986
and to accidentally, with a loop,
go too far past the end of it.

799
00:40:08,986 --> 00:40:10,860
And we'll see what can
happen in those cases.

800
00:40:10,860 --> 00:40:14,780
So now, assuming I do have in t the
address of that chunk of memory,

801
00:40:14,780 --> 00:40:18,510
let me just say, if t equals
equals null, return 1.

802
00:40:18,510 --> 00:40:21,720
Something happened that's bad,
probably the operating system just

803
00:40:21,720 --> 00:40:23,990
didn't have seven extra
bytes of memory to give me.

804
00:40:23,990 --> 00:40:25,500
So fine, I'll quit.

805
00:40:25,500 --> 00:40:27,380
Then down here, what do I want to do?

806
00:40:27,380 --> 00:40:32,360
Well, I now need to implement, at
least in this example, my own copying

807
00:40:32,360 --> 00:40:33,820
process.

808
00:40:33,820 --> 00:40:37,940
Here, at this point in the story,
I have two variables, s and t.

809
00:40:37,940 --> 00:40:40,915
s contains the address
of Zamyla's name. t

810
00:40:40,915 --> 00:40:44,410
contains the address of a new
chunk of memory of length seven.

811
00:40:44,410 --> 00:40:45,630
So here's what I want to do.

812
00:40:45,630 --> 00:40:47,550
Just like a couple of
weeks ago, I'm going

813
00:40:47,550 --> 00:40:51,200
to iterate from zero on up
to the length of the string.

814
00:40:51,200 --> 00:40:53,884
But not up to, but up through
the length of the string.

815
00:40:53,884 --> 00:40:56,550
Because in this case, I actually
want to iterate with a for loop

816
00:40:56,550 --> 00:40:59,880
up through that backslash 0 byte.

817
00:40:59,880 --> 00:41:02,290
And then just this syntax
from a couple of weeks ago,

818
00:41:02,290 --> 00:41:08,350
when we simply manipulated strings as
for our cryptography ciphers, character

819
00:41:08,350 --> 00:41:09,330
by character.

820
00:41:09,330 --> 00:41:13,280
Make the i-th character of t
equal to the i-th character of s.

821
00:41:13,280 --> 00:41:16,600
And this is perfectly valid,
because so long as this loop doesn't

822
00:41:16,600 --> 00:41:22,180
go past n, the number of characters
that I allocated, seven, in this case,

823
00:41:22,180 --> 00:41:27,820
I can go to t bracket 0, bracket 1,
bracket 2, all the way up through n,

824
00:41:27,820 --> 00:41:30,480
effectively copying the string.

825
00:41:30,480 --> 00:41:38,600
And so now when I actually print out s
and t, I should see truly a copy of t.

826
00:41:38,600 --> 00:41:40,970
Because even when I
force its first character

827
00:41:40,970 --> 00:41:44,210
to lower case with this same
line of code here as before,

828
00:41:44,210 --> 00:41:47,094
I'm actually changing different memory.

829
00:41:47,094 --> 00:41:48,010
So let's compile this.

830
00:41:48,010 --> 00:41:51,630
Make copy 1, ./copy1.

831
00:41:51,630 --> 00:41:55,520
And let me go ahead and type
in zamyla in all lowercase,

832
00:41:55,520 --> 00:41:58,380
and now notice the
program does seem to work.

833
00:41:58,380 --> 00:42:02,050
Zamyla is reprinted in lower
case for s, but it's then

834
00:42:02,050 --> 00:42:04,670
print in uppercase for
its first letter for t.

835
00:42:04,670 --> 00:42:07,600
And because the z's look pretty
similar, let's do my name again,

836
00:42:07,600 --> 00:42:10,070
whereby I type david in all lowercase.

837
00:42:10,070 --> 00:42:10,710
Type Enter.

838
00:42:10,710 --> 00:42:13,850
And now, you see s is
still david all lowercase,

839
00:42:13,850 --> 00:42:17,210
but t has only now been
capitalized itself.

840
00:42:17,210 --> 00:42:19,190
It hasn't had a side
effect of some sort on s,

841
00:42:19,190 --> 00:42:21,761
because they're different
chunks of memory.

842
00:42:21,761 --> 00:42:22,260
Why?

843
00:42:22,260 --> 00:42:25,980
Well, what has just happened
in this program is this.

844
00:42:25,980 --> 00:42:30,710
We have, again, done
string s gets get string.

845
00:42:30,710 --> 00:42:33,340


846
00:42:33,340 --> 00:42:38,860
And when we typed get
string, this gives me

847
00:42:38,860 --> 00:42:41,180
a chunk of memory for the address of s.

848
00:42:41,180 --> 00:42:46,020
Get string gives me a name,
like D-A-V-I-D in all lowercase,

849
00:42:46,020 --> 00:42:47,660
plus that backslash 0.

850
00:42:47,660 --> 00:42:51,260
Which again, is really just an
array underneath the hood like this,

851
00:42:51,260 --> 00:42:54,706
that starts at some byte, and maybe
it's again, by coincidence, 123.

852
00:42:54,706 --> 00:42:56,580
Just because it's easy
to say, but that's not

853
00:42:56,580 --> 00:42:58,204
where it's necessarily going to end up.

854
00:42:58,204 --> 00:43:01,380
And so what ends up here is 123.

855
00:43:01,380 --> 00:43:05,330
And then later, when
I allocate t, I again

856
00:43:05,330 --> 00:43:08,410
get this little chunk of
memory that's supposed

857
00:43:08,410 --> 00:43:10,820
to store the address of a character.

858
00:43:10,820 --> 00:43:13,040
And actually, recall
that we're now doing this

859
00:43:13,040 --> 00:43:16,350
as char star, not even string.

860
00:43:16,350 --> 00:43:18,710
So t is similarly a char star.

861
00:43:18,710 --> 00:43:22,280
And what happens, malloc,
when I ask it for seven bytes,

862
00:43:22,280 --> 00:43:27,750
gives me 1, 2, 3, 4, 5,
6, 7 bytes of memory.

863
00:43:27,750 --> 00:43:29,770
There's no null terminating
character just yet.

864
00:43:29,770 --> 00:43:30,960
It's just a block of memory.

865
00:43:30,960 --> 00:43:34,380
And frankly, there could be
some random values here, as

866
00:43:34,380 --> 00:43:36,170
denoted with question marks here.

867
00:43:36,170 --> 00:43:38,850
It's just a chunk of memory that
might have been used previously

868
00:43:38,850 --> 00:43:40,510
in my program for some other purpose.

869
00:43:40,510 --> 00:43:45,630
But what gets stored here, if
this happens to be at address 234,

870
00:43:45,630 --> 00:43:48,480
is this value here, 234.

871
00:43:48,480 --> 00:43:50,660
And if you're not liking
the numbers, again, you

872
00:43:50,660 --> 00:43:54,510
can think of these as just
being pointers, arrows,

873
00:43:54,510 --> 00:43:56,250
to these chunks of memory.

874
00:43:56,250 --> 00:44:05,490
But now, in my C code, when I have
a few lines above this loop whereby

875
00:44:05,490 --> 00:44:09,280
I am copying from s
bracket i into t bracket

876
00:44:09,280 --> 00:44:14,480
i, each of the characters in my
loop, what's actually happening?

877
00:44:14,480 --> 00:44:19,440
Well, fairly intuitively, this lower
case d ends up getting copied here.

878
00:44:19,440 --> 00:44:22,132
This lower case a ends
up getting copied here.

879
00:44:22,132 --> 00:44:25,350
V-I-D, on through.

880
00:44:25,350 --> 00:44:28,817
And David can't count,
so-- backslash-- oh, right.

881
00:44:28,817 --> 00:44:31,900
David's name is shorter than Zamyla's
name, which means we didn't actually

882
00:44:31,900 --> 00:44:34,690
ask for this many characters over here.

883
00:44:34,690 --> 00:44:37,180
But we have taken the
computer more literally now.

884
00:44:37,180 --> 00:44:39,710
Give me six bytes, not
seven bytes, in this case.

885
00:44:39,710 --> 00:44:43,650
And then literally copy each of the
characters from the original string

886
00:44:43,650 --> 00:44:48,650
into this new string all the way up
through that backslash 0 character.

887
00:44:48,650 --> 00:44:52,380
And then when you capitalize
the first character in t,

888
00:44:52,380 --> 00:44:57,650
you are literally only changing
this-- we can do better than this.

889
00:44:57,650 --> 00:45:01,870
We are only changing this
first character here,

890
00:45:01,870 --> 00:45:05,330
which looks like that now.

891
00:45:05,330 --> 00:45:07,870
And that's what's going
on underneath the hood.

892
00:45:07,870 --> 00:45:10,050
So this is why, then, in
the beginning of the class,

893
00:45:10,050 --> 00:45:12,240
we don't introduce
strings as char stars,

894
00:45:12,240 --> 00:45:15,037
because you very quickly get
caught up in a lot of this minutia.

895
00:45:15,037 --> 00:45:17,370
But at the end of the day,
it's not all that complicated

896
00:45:17,370 --> 00:45:20,320
once you realize that a
string is just an address,

897
00:45:20,320 --> 00:45:23,570
and malloc, this new function,
also just returns an address.

898
00:45:23,570 --> 00:45:25,740
This is very powerful,
because now you have

899
00:45:25,740 --> 00:45:29,890
these sort of breadcrumbs that can
lead you to different places in memory.

900
00:45:29,890 --> 00:45:33,840
A little map, so to speak, that can
lead you to actual strings in memory,

901
00:45:33,840 --> 00:45:36,620
and can actually now solve
problems more effectively.

902
00:45:36,620 --> 00:45:39,090
For instance, we can go back
and solve one other problem

903
00:45:39,090 --> 00:45:43,260
we saw a moment ago, which was swap.

904
00:45:43,260 --> 00:45:47,440
So this version of swap was broken why?

905
00:45:47,440 --> 00:45:51,430
What was the source of
this fundamental problem?

906
00:45:51,430 --> 00:45:52,749
Yeah?

907
00:45:52,749 --> 00:45:53,582
STUDENT: [INAUDIBLE]

908
00:45:53,582 --> 00:45:55,765


909
00:45:55,765 --> 00:45:56,640
DAVID J. MALAN: Yeah.

910
00:45:56,640 --> 00:45:59,640
When you went back to main, you
erased the memory on top of it,

911
00:45:59,640 --> 00:46:05,190
and the fundamental problem there
was when I passed in x and y,

912
00:46:05,190 --> 00:46:09,670
they became copies called a and
b, in different chunks of memory.

913
00:46:09,670 --> 00:46:12,600
And so the fundamental
problem seems to be

914
00:46:12,600 --> 00:46:15,210
that swap is incorrectly implemented.

915
00:46:15,210 --> 00:46:16,790
It's logically correct.

916
00:46:16,790 --> 00:46:17,990
It does swap two values.

917
00:46:17,990 --> 00:46:22,760
And we saw that with debug 50, but it's
kind of fundamentally flawed in so far

918
00:46:22,760 --> 00:46:26,570
as it requires, it
seems, by design of C,

919
00:46:26,570 --> 00:46:31,370
that a and b be passed in by
value as copies, so to speak.

920
00:46:31,370 --> 00:46:35,990
We need some way to change this function
to say main, hey, uh-uh, don't give me

921
00:46:35,990 --> 00:46:37,570
copies of your variables.

922
00:46:37,570 --> 00:46:41,060
Give me a treasure map that
will lead me to your variables.

923
00:46:41,060 --> 00:46:43,180
Give me the address of x.

924
00:46:43,180 --> 00:46:45,090
Give me the address of y.

925
00:46:45,090 --> 00:46:47,460
And I'll still call them a
and b, or whatever I want,

926
00:46:47,460 --> 00:46:49,960
but lead me to the original values.

927
00:46:49,960 --> 00:46:52,890
Don't just pass me
copies of those values.

928
00:46:52,890 --> 00:46:57,210
And so we can change swap as follows
from a program or a function that's

929
00:46:57,210 --> 00:47:02,440
incorrect entirely, but
into one that is correct.

930
00:47:02,440 --> 00:47:04,560
And we need to change
the syntax a little bit.

931
00:47:04,560 --> 00:47:07,760
So before is what we had here.

932
00:47:07,760 --> 00:47:09,990
After is what we now have.

933
00:47:09,990 --> 00:47:12,110
Before, after.

934
00:47:12,110 --> 00:47:13,729
Before, after.

935
00:47:13,729 --> 00:47:15,520
So if you see it in
rapid succession there,

936
00:47:15,520 --> 00:47:19,160
all you see is that a whole bunch
of stars are appearing in the code.

937
00:47:19,160 --> 00:47:23,010
And unfortunately, C was not
designed in the best of ways

938
00:47:23,010 --> 00:47:25,580
to make clear what star
means in different contexts,

939
00:47:25,580 --> 00:47:27,720
but it's all related as follows.

940
00:47:27,720 --> 00:47:32,330
The fact that I have now
changed a and b to be not ints,

941
00:47:32,330 --> 00:47:39,750
but ints stars, int pointers, if you
will, means that when main calls swap,

942
00:47:39,750 --> 00:47:43,820
it is by design of the C language,
going to pass in the address of x

943
00:47:43,820 --> 00:47:44,770
and the address of y.

944
00:47:44,770 --> 00:47:46,020
So that's what the star means.

945
00:47:46,020 --> 00:47:50,100
Give me the address of an int and the
address of an int, not actual ints.

946
00:47:50,100 --> 00:47:53,330
Now, down here, the star unfortunately
means something slightly different,

947
00:47:53,330 --> 00:47:55,120
but related in spirit.

948
00:47:55,120 --> 00:47:59,900
Int temp just gives me an integer,
an int variable called temp.

949
00:47:59,900 --> 00:48:04,910
Star a, in this context, without
the word int in front of it again,

950
00:48:04,910 --> 00:48:07,570
means go to that location.

951
00:48:07,570 --> 00:48:09,370
Follow the treasure map, so to speak.

952
00:48:09,370 --> 00:48:12,080
Go to the address that is in a.

953
00:48:12,080 --> 00:48:15,860
So for instance, if the
address of a is say,

954
00:48:15,860 --> 00:48:18,599
33 Oxford Street,
Cambridge, Massachusetts.

955
00:48:18,599 --> 00:48:21,140
That happens to be the address
of the CS building at Harvard.

956
00:48:21,140 --> 00:48:26,200
Star a means go to 33 Oxford
Street in Cambridge, Massachusetts.

957
00:48:26,200 --> 00:48:30,320
The star just means go to
that particular address.

958
00:48:30,320 --> 00:48:34,490
So what does that mean, then, down
here, when I say star a gets star b?

959
00:48:34,490 --> 00:48:38,050
That means go to the address
in b and get its value,

960
00:48:38,050 --> 00:48:41,500
and store it at whenever
a is pointing at to.

961
00:48:41,500 --> 00:48:44,470
So go to a and wait for me for a value.

962
00:48:44,470 --> 00:48:49,080
Go to b, get a value, and put
that value at the location in a.

963
00:48:49,080 --> 00:48:52,725
And then lastly, this just
means go to the location in b,

964
00:48:52,725 --> 00:48:55,020
go to whatever building
that is, so to speak,

965
00:48:55,020 --> 00:48:59,900
and put the value that is in
temp inside of that building.

966
00:48:59,900 --> 00:49:02,860
So a pointer is just an address.

967
00:49:02,860 --> 00:49:06,610
These stars just mean
pointers are involved.

968
00:49:06,610 --> 00:49:09,650
Give me the address of an int,
give me the address of an int.

969
00:49:09,650 --> 00:49:12,230
And again, confusing,
admittedly, the star

970
00:49:12,230 --> 00:49:15,960
in this context where we don't have
the word int in front of it again,

971
00:49:15,960 --> 00:49:18,790
on the side of the equal sign,
just means go to that address.

972
00:49:18,790 --> 00:49:20,080
Go to that building.

973
00:49:20,080 --> 00:49:23,630
Go to that other building
and put something there.

974
00:49:23,630 --> 00:49:27,610
So we can now fix our
swap program correctly.

975
00:49:27,610 --> 00:49:32,710
We can now open up, as I will here,
swap dot c, which I wrote in advance.

976
00:49:32,710 --> 00:49:36,650
That looks almost the same, except
that I've changed the swap function

977
00:49:36,650 --> 00:49:40,150
as follows. a is now
int*, b is now int*,

978
00:49:40,150 --> 00:49:43,770
and I also borrowed the stars
inside of the function, as well.

979
00:49:43,770 --> 00:49:45,650
But something's gotta change.

980
00:49:45,650 --> 00:49:50,110
There's one more line of code I need
to change for all of this to work.

981
00:49:50,110 --> 00:49:50,780
What is that?

982
00:49:50,780 --> 00:49:54,161


983
00:49:54,161 --> 00:49:55,810
What line needs to change?

984
00:49:55,810 --> 00:49:57,540
Well who cares about swap?

985
00:49:57,540 --> 00:50:00,610
It's main that was calling
this thing in the first place,

986
00:50:00,610 --> 00:50:02,900
so let's go back to the original story.

987
00:50:02,900 --> 00:50:08,630
Main, here, declares x and y as 1 and
2, does some printfs here, as before.

988
00:50:08,630 --> 00:50:10,270
But notice this line has to change.

989
00:50:10,270 --> 00:50:13,009
So one more piece of syntax today.

990
00:50:13,009 --> 00:50:14,550
And we're running out of new symbols.

991
00:50:14,550 --> 00:50:16,660
We've seen most of C already.

992
00:50:16,660 --> 00:50:23,660
&x and &y means get me the address
of x, and get me the address of y,

993
00:50:23,660 --> 00:50:25,550
and pass those in instead.

994
00:50:25,550 --> 00:50:29,660
So x,y would just mean pass in
a copy of x and a copy of y,

995
00:50:29,660 --> 00:50:31,890
or the values thereof.

996
00:50:31,890 --> 00:50:37,250
&x &y means give me a little, you know,
map with the address of x and a little

997
00:50:37,250 --> 00:50:41,960
map with the address of y, so that
swap-- who's receiving those maps--

998
00:50:41,960 --> 00:50:43,940
can go there.

999
00:50:43,940 --> 00:50:46,750
So what does this mean
in pictorial form?

1000
00:50:46,750 --> 00:50:49,010
If we now go back to the
beginning of this story,

1001
00:50:49,010 --> 00:50:53,540
where we were looking at my computer's
memory as this big rectangular region

1002
00:50:53,540 --> 00:50:54,800
like this.

1003
00:50:54,800 --> 00:50:59,410
With main's chunk of
memory at the bottom here.

1004
00:50:59,410 --> 00:51:05,570
And inside of main was two variables,
like x, and another variable y.

1005
00:51:05,570 --> 00:51:08,970
And inside of those were
the numbers 1 and 2.

1006
00:51:08,970 --> 00:51:10,890
And then I called swap.

1007
00:51:10,890 --> 00:51:14,460
And so swap gets its own frame
on the stack, so to speak.

1008
00:51:14,460 --> 00:51:16,230
This is swap's frame.

1009
00:51:16,230 --> 00:51:22,702
It, too, had a variable called
a and a variable called b.

1010
00:51:22,702 --> 00:51:24,340
But what goes in there now?

1011
00:51:24,340 --> 00:51:25,830
It's not 1 and 2.

1012
00:51:25,830 --> 00:51:28,630
We need to know a little something
more about my computer's memory.

1013
00:51:28,630 --> 00:51:30,850
And I don't know where
everything's laid out,

1014
00:51:30,850 --> 00:51:34,270
but let me just arbitrarily
assume that, you know,

1015
00:51:34,270 --> 00:51:36,190
it's inside of my computer's memory.

1016
00:51:36,190 --> 00:51:38,670
Maybe this is byte number 90.

1017
00:51:38,670 --> 00:51:40,640
This is going to be 91.

1018
00:51:40,640 --> 00:51:44,550
This here is going to be 92,
93, 94, 95, and so forth.

1019
00:51:44,550 --> 00:51:47,880
I just need to know that there's
some kind of numbering scheme there.

1020
00:51:47,880 --> 00:51:51,390
So what goes inside of a is 91.

1021
00:51:51,390 --> 00:51:55,330
What goes inside of b is 92.

1022
00:51:55,330 --> 00:52:02,550
And not the values 1 and 2, but rather
the addresses of those values 1 and 2.

1023
00:52:02,550 --> 00:52:06,780
Because now my code for the swap
function, consider what it does.

1024
00:52:06,780 --> 00:52:10,220
It says, upon receiving
the address of an integer,

1025
00:52:10,220 --> 00:52:14,751
called a, upon receiving the address
of another integer, called b,

1026
00:52:14,751 --> 00:52:18,220
go there and store that value in temp.

1027
00:52:18,220 --> 00:52:22,680
Go to the address in b and store
that value at the address in a.

1028
00:52:22,680 --> 00:52:26,280
Store the value in temp
at the address in b.

1029
00:52:26,280 --> 00:52:28,540
So let's see what happens then.

1030
00:52:28,540 --> 00:52:33,050
So first of all, I need another
variable here, called temp.

1031
00:52:33,050 --> 00:52:36,610
Temp, meanwhile, is not a pointer.

1032
00:52:36,610 --> 00:52:40,150
It's just an integer,
but what does it store?

1033
00:52:40,150 --> 00:52:44,700
Well, according to my
code, temp gets the value

1034
00:52:44,700 --> 00:52:47,950
of going to a, going
to the address in a.

1035
00:52:47,950 --> 00:52:49,533
So what is a?

1036
00:52:49,533 --> 00:52:51,310
a is 99.

1037
00:52:51,310 --> 00:52:54,710
That's like a treasure map leading
to, OK, this chunk of memory

1038
00:52:54,710 --> 00:52:56,320
down here in my computer.

1039
00:52:56,320 --> 00:52:58,430
And what value is there
once I've gone there?

1040
00:52:58,430 --> 00:53:02,230
Once I've gone to the CS building
inside of it, I see the number 1,

1041
00:53:02,230 --> 00:53:05,350
and so I put the number 1 in temp.

1042
00:53:05,350 --> 00:53:10,145
Meanwhile, my second line of
code says go to the address in b

1043
00:53:10,145 --> 00:53:15,160
and grab its value, and put
it at the address that's in a.

1044
00:53:15,160 --> 00:53:16,800
So what does that mean?

1045
00:53:16,800 --> 00:53:21,567
Well, star b means
start here and go to 92.

1046
00:53:21,567 --> 00:53:23,900
So it's like an arrow-- kind
of like chutes and ladders,

1047
00:53:23,900 --> 00:53:26,540
if you know the game--
like go to address 92.

1048
00:53:26,540 --> 00:53:27,530
What value is there?

1049
00:53:27,530 --> 00:53:28,510
The number 2.

1050
00:53:28,510 --> 00:53:30,510
And the other half of the
equation, on the left,

1051
00:53:30,510 --> 00:53:33,300
said, go to the address
in a, which is here,

1052
00:53:33,300 --> 00:53:38,190
and copy the 2 into that location.

1053
00:53:38,190 --> 00:53:40,800
And then the last line--
only one more line--

1054
00:53:40,800 --> 00:53:46,330
is this, get the value in temp-- that's
easy-- and put it at the address in b.

1055
00:53:46,330 --> 00:53:49,620
So we have to go to b
and put temp in there.

1056
00:53:49,620 --> 00:53:53,970
So to do that, here's
temp, it's the number 1.

1057
00:53:53,970 --> 00:53:55,660
I have to go to the address in b.

1058
00:53:55,660 --> 00:53:56,840
The address and b is 92.

1059
00:53:56,840 --> 00:54:00,280
So let's go there, and
aha, let me go ahead then,

1060
00:54:00,280 --> 00:54:07,670
and overwrite the value that's
there with the number 1.

1061
00:54:07,670 --> 00:54:11,170
So now this frame of
memory on the stack--

1062
00:54:11,170 --> 00:54:13,620
the 91, the 92, and the
temporary variable--

1063
00:54:13,620 --> 00:54:17,050
they are, by design of my
new function, disposable.

1064
00:54:17,050 --> 00:54:22,120
I really don't care, after swap
returns, if those things continue--

1065
00:54:22,120 --> 00:54:23,580
I did care a little bit about that.

1066
00:54:23,580 --> 00:54:27,430


1067
00:54:27,430 --> 00:54:29,950
I don't care if those
things continue to exist.

1068
00:54:29,950 --> 00:54:34,160
All I care about is that
x and y continue to exist.

1069
00:54:34,160 --> 00:54:38,070
So in this way is the new and
improved version of the swap function

1070
00:54:38,070 --> 00:54:40,960
actually having a permanent
impact on my data?

1071
00:54:40,960 --> 00:54:44,030
And with the frame, the
memory still looks like that,

1072
00:54:44,030 --> 00:54:46,040
because it's gone to the address in a.

1073
00:54:46,040 --> 00:54:50,190
Gone to the address in b, which
leads it to the original x and y.

1074
00:54:50,190 --> 00:54:53,060
And so by way of pointers,
by way of these addresses,

1075
00:54:53,060 --> 00:54:57,810
do we have the ability to actually
go much, much deeper into a program

1076
00:54:57,810 --> 00:55:01,240
and actually get at
values that previously we

1077
00:55:01,240 --> 00:55:04,280
had no way of even expressing.

1078
00:55:04,280 --> 00:55:09,410
So it's at this point in the story where
I usually admit that, at least for me,

1079
00:55:09,410 --> 00:55:13,320
this has been among the most challenging
topics when I, myself, was a student.

1080
00:55:13,320 --> 00:55:16,225
And in fact, all these years later--
it's like, 20, 20 year-- yeah,

1081
00:55:16,225 --> 00:55:17,600
I think we're up to 20 years ago.

1082
00:55:17,600 --> 00:55:20,560
20 years ago-- I didn't
take this photo then--

1083
00:55:20,560 --> 00:55:24,150
but I sat in what was, at the time,
the back right hand corner of Elliot

1084
00:55:24,150 --> 00:55:26,220
House's dining hall, here at Harvard.

1085
00:55:26,220 --> 00:55:29,150
And I sat down with my teaching
fellow, who of all the TFs I had

1086
00:55:29,150 --> 00:55:31,570
as an undergrad, still remember to
this day, [? Nishat ?] [? Meda ?].

1087
00:55:31,570 --> 00:55:34,090
And we just reconnected on
Facebook, all these years later.

1088
00:55:34,090 --> 00:55:35,050
Very exciting.

1089
00:55:35,050 --> 00:55:37,469
And it was he who
wonderfully sat down with me

1090
00:55:37,469 --> 00:55:39,260
at office hours one
day in the dining hall,

1091
00:55:39,260 --> 00:55:42,290
trying to help me understand pointers,
because it was just so much more

1092
00:55:42,290 --> 00:55:43,748
technical than all the other stuff.

1093
00:55:43,748 --> 00:55:46,890
Like, there is no puzzle piece in
Scratch for the address of something

1094
00:55:46,890 --> 00:55:50,420
that leads you somewhere so
powerfully as these stars seem

1095
00:55:50,420 --> 00:55:51,431
to be able to, here.

1096
00:55:51,431 --> 00:55:53,930
And this is only to say that
this is among those topics that

1097
00:55:53,930 --> 00:55:57,260
might take a little bit of
time to sink in, but it does.

1098
00:55:57,260 --> 00:56:00,650
And when it does, it really is that
proverbial light bulb that goes off.

1099
00:56:00,650 --> 00:56:05,550
And for me, that light bulb
went off right then and there.

1100
00:56:05,550 --> 00:56:08,920
Now, what more can we do with these
things, after that motivational speech?

1101
00:56:08,920 --> 00:56:10,140
Pointer arithmetic.

1102
00:56:10,140 --> 00:56:13,720
So, sort of complicated sounding
topic, but really, it just

1103
00:56:13,720 --> 00:56:16,840
goes back to first principles,
as to what a pointer actually is.

1104
00:56:16,840 --> 00:56:18,830
And it allows us now
to do things like this.

1105
00:56:18,830 --> 00:56:22,210
Let me go ahead and open up one other
program that I wrote in advance here,

1106
00:56:22,210 --> 00:56:24,320
called pointers dot c.

1107
00:56:24,320 --> 00:56:26,740
And take a look at what
this thing does here.

1108
00:56:26,740 --> 00:56:29,460
It works a little differently
from the syntax we're used to,

1109
00:56:29,460 --> 00:56:32,550
and from any of our
crypto problems thus far.

1110
00:56:32,550 --> 00:56:36,630
So notice on this first line here,
I get string and I store in s.

1111
00:56:36,630 --> 00:56:38,480
No more string right
now, just char star.

1112
00:56:38,480 --> 00:56:42,030
We can be real and talk about
it as the address of a char.

1113
00:56:42,030 --> 00:56:44,470
A little sanity check,
is s equal equal to null?

1114
00:56:44,470 --> 00:56:45,410
If so, just return.

1115
00:56:45,410 --> 00:56:47,730
Something went wrong, so
let's not deal with it now.

1116
00:56:47,730 --> 00:56:49,480
Down here, a for loop.

1117
00:56:49,480 --> 00:56:53,190
For i gets 0 all the way up to n.

1118
00:56:53,190 --> 00:56:56,240
So this is just a standard syntax
we've used a few times now, even back

1119
00:56:56,240 --> 00:56:58,600
in week 1 when we just
wanted iterate over.

1120
00:56:58,600 --> 00:57:02,270
Or in week 2, when we wanted iterate
over the characters in a string.

1121
00:57:02,270 --> 00:57:05,120
But we've never seen this
kind of craziness before.

1122
00:57:05,120 --> 00:57:08,590
A star, and then some
arithmetic in parentheses.

1123
00:57:08,590 --> 00:57:13,590
In the past, when we wanted to print
out a character, as implied by %c here,

1124
00:57:13,590 --> 00:57:17,290
we quite simply, as I recall, did this.

1125
00:57:17,290 --> 00:57:18,790
Which was nice and intuitive, right?

1126
00:57:18,790 --> 00:57:21,117
The square brackets
denote to treat the string

1127
00:57:21,117 --> 00:57:23,950
as though it's an array, which it
really is, an array of characters.

1128
00:57:23,950 --> 00:57:27,000
And that means get the
i-th character of s.

1129
00:57:27,000 --> 00:57:32,120
But now that we understand what s is, we
don't need to use this syntactic sugar,

1130
00:57:32,120 --> 00:57:32,760
as it's called.

1131
00:57:32,760 --> 00:57:35,680
Any time a language has a
feature that's convenient to use,

1132
00:57:35,680 --> 00:57:38,370
and easier to read sometimes,
but isn't fundamentally

1133
00:57:38,370 --> 00:57:40,120
necessary to express
yourself, it's often

1134
00:57:40,120 --> 00:57:44,010
called syntactic sugar, which means
it's just kind of a nicety to have.

1135
00:57:44,010 --> 00:57:46,990
And indeed, that square
bracket notation is just

1136
00:57:46,990 --> 00:57:54,410
sugar for this more arcane, but
perhaps more well-defined syntax now.

1137
00:57:54,410 --> 00:57:58,910
The star operator in this context is
the dereference operator, technically.

1138
00:57:58,910 --> 00:58:01,850
It's the go there operator,
as I've been describing it.

1139
00:58:01,850 --> 00:58:03,370
Go to some address.

1140
00:58:03,370 --> 00:58:05,280
Well s, recall, is a string.

1141
00:58:05,280 --> 00:58:06,550
But there is no string.

1142
00:58:06,550 --> 00:58:08,870
Strings are just the
addresses of characters now.

1143
00:58:08,870 --> 00:58:10,810
The first in a string.

1144
00:58:10,810 --> 00:58:14,230
So initially in this
loop, what am I doing?

1145
00:58:14,230 --> 00:58:17,560
s is the address of a string, the
address of its first character.

1146
00:58:17,560 --> 00:58:20,260
And I'm saying, add to s, the value i.

1147
00:58:20,260 --> 00:58:24,530
Well, i is just this variable in my
for loop that's initialized to 0.

1148
00:58:24,530 --> 00:58:27,720
So s plus 0 is obviously just s.

1149
00:58:27,720 --> 00:58:29,580
s is the address of a char.

1150
00:58:29,580 --> 00:58:32,550
*s means go to s.

1151
00:58:32,550 --> 00:58:34,460
What do you find when you get there?

1152
00:58:34,460 --> 00:58:38,280
A character, because s is a char
star, the address of a character.

1153
00:58:38,280 --> 00:58:42,690
And so printing out %c
*s effectively means,

1154
00:58:42,690 --> 00:58:44,890
go print that character right there.

1155
00:58:44,890 --> 00:58:47,850
On the second iteration of
the loop, i is, of course, 1.

1156
00:58:47,850 --> 00:58:52,310
So s plus 1 is 1 byte farther
from the beginning of the string.

1157
00:58:52,310 --> 00:58:56,900
And the star means go to that
character and print it with %c.

1158
00:58:56,900 --> 00:58:59,250
One more iteration, i is now 2.

1159
00:58:59,250 --> 00:59:01,600
s plus 2 is 2 bytes away
from the start of the string.

1160
00:59:01,600 --> 00:59:04,600
Go there and print that
character in the string.

1161
00:59:04,600 --> 00:59:05,170
And so forth.

1162
00:59:05,170 --> 00:59:08,470
And do this up until the
length of the string.

1163
00:59:08,470 --> 00:59:10,590
Now this is perfectly correct.

1164
00:59:10,590 --> 00:59:13,060
And if you really kind of want
to look cool with your code

1165
00:59:13,060 --> 00:59:15,601
you can use pointer arithmetic
in this way, because all it is

1166
00:59:15,601 --> 00:59:19,269
is just expressing more precisely
what is going on underneath the hood.

1167
00:59:19,269 --> 00:59:20,560
But it's a little more cryptic.

1168
00:59:20,560 --> 00:59:22,850
It's certainly a couple more characters.

1169
00:59:22,850 --> 00:59:25,940
But it is functionally
equivalent to what

1170
00:59:25,940 --> 00:59:29,800
we've been doing for weeks, which
has been, again, just s [i].

1171
00:59:29,800 --> 00:59:32,700
So whereas some of today's
ideas are admittedly

1172
00:59:32,700 --> 00:59:35,390
new-- allocating memory
and actually looking

1173
00:59:35,390 --> 00:59:37,280
underneath the hood
at what a string is--

1174
00:59:37,280 --> 00:59:40,530
we're not really getting
newfound capabilities

1175
00:59:40,530 --> 00:59:45,350
that we didn't already have when it
comes to manipulating existing strings.

1176
00:59:45,350 --> 00:59:48,890
So this is pointer arithmetic,
so to speak, insofar

1177
00:59:48,890 --> 00:59:52,770
as we are doing
arithmetic with pointers.

1178
00:59:52,770 --> 00:59:55,500
Math with pointers.

1179
00:59:55,500 --> 01:00:01,270
All right, let's take a look now
at where things can go wrong.

1180
01:00:01,270 --> 01:00:04,410
So this is a program written by our
friend Nick Parlante at Stanford,

1181
01:00:04,410 --> 01:00:06,990
inspired by Binky, who will
return in just a moment.

1182
01:00:06,990 --> 01:00:08,550
And it's fundamentally broken.

1183
01:00:08,550 --> 01:00:09,720
This code is incorrect.

1184
01:00:09,720 --> 01:00:11,980
It also doesn't really
do anything useful.

1185
01:00:11,980 --> 01:00:14,700
But it's meant to be demonstrative
of things that can go wrong.

1186
01:00:14,700 --> 01:00:18,920
So at the top of this program, notice
we are declaring two variables, x and y.

1187
01:00:18,920 --> 01:00:22,330
But today those variables are not ints,
as they might have been in weeks past,

1188
01:00:22,330 --> 01:00:25,130
they are int*s, the addresses ints.

1189
01:00:25,130 --> 01:00:28,030
They're not being initialized
yet to any value, so that's fine.

1190
01:00:28,030 --> 01:00:30,870
So really, this is just
giving us, if you will,

1191
01:00:30,870 --> 01:00:32,720
like, two boxes on the screen.

1192
01:00:32,720 --> 01:00:36,950
So x at this point in the story looks
like this, y at this point in the story

1193
01:00:36,950 --> 01:00:38,020
looks like this.

1194
01:00:38,020 --> 01:00:40,000
I have no idea what's inside of them.

1195
01:00:40,000 --> 01:00:42,060
They have garbage value, so to speak.

1196
01:00:42,060 --> 01:00:43,850
Because if we didn't
assign them a value,

1197
01:00:43,850 --> 01:00:45,640
the computer is not
going to do it for us,

1198
01:00:45,640 --> 01:00:48,570
so they might just have remnants
of some past usage of that memory.

1199
01:00:48,570 --> 01:00:50,195
So we don't know what's inside of them.

1200
01:00:50,195 --> 01:00:56,650
But that's OK, because on this next
line I call malloc and actually allocate

1201
01:00:56,650 --> 01:00:58,600
enough memory for one int.

1202
01:00:58,600 --> 01:01:00,690
Now this is kind of a silly use.

1203
01:01:00,690 --> 01:01:03,420
It's not the best way
to give yourself an int.

1204
01:01:03,420 --> 01:01:05,310
We've seen for weeks
now how you get an int.

1205
01:01:05,310 --> 01:01:10,434
You say, like, int x, or int y, or int
z, and the computer gives you an int.

1206
01:01:10,434 --> 01:01:12,850
But if we want to use malloc
in the simplest way possible,

1207
01:01:12,850 --> 01:01:16,710
we can just say, hey, malloc,
give me enough space for an int.

1208
01:01:16,710 --> 01:01:21,950
And recall from the past that an
int here is generally 4 bytes.

1209
01:01:21,950 --> 01:01:24,560
So give me 4 bytes of
memory, specifically

1210
01:01:24,560 --> 01:01:26,720
the address of the first of those bytes.

1211
01:01:26,720 --> 01:01:29,480
That's all malloc is doing, and
it's storing that address in x.

1212
01:01:29,480 --> 01:01:32,560
For good measure I should check for
null, but we're not, in this case,

1213
01:01:32,560 --> 01:01:33,560
per Binky.

1214
01:01:33,560 --> 01:01:35,590
So what's the next line do?

1215
01:01:35,590 --> 01:01:41,530
This next line means go to the address
in x and put the number 42 there.

1216
01:01:41,530 --> 01:01:42,410
That seems OK.

1217
01:01:42,410 --> 01:01:45,210
Because assuming malloc
returns the address

1218
01:01:45,210 --> 01:01:48,210
of a chunk of memory, the
first address of 4 bytes,

1219
01:01:48,210 --> 01:01:55,542
we can go there and put the number 42
in binary, in 4 bytes worth of bits.

1220
01:01:55,542 --> 01:01:57,960
But what about this line?

1221
01:01:57,960 --> 01:02:00,770
I've flagged it in red
because this program probably

1222
01:02:00,770 --> 01:02:02,480
is going to go no further.

1223
01:02:02,480 --> 01:02:06,940
In fact, something very,
very bad is about to happen.

1224
01:02:06,940 --> 01:02:07,932
Why?

1225
01:02:07,932 --> 01:02:11,210
Well, what is the value in y?

1226
01:02:11,210 --> 01:02:14,840
Well, originally x was a garbage
value until I called malloc

1227
01:02:14,840 --> 01:02:18,600
and asked malloc, hey, malloc,
give me enough space for an int.

1228
01:02:18,600 --> 01:02:20,260
So I'll draw it as a box here.

1229
01:02:20,260 --> 01:02:22,470
Give me the address of
that chunk of memory.

1230
01:02:22,470 --> 01:02:26,390
So this question mark is really now
an arrow to that chunk of memory.

1231
01:02:26,390 --> 01:02:32,950
And then I said, hey, computer, go
ahead and go there and put the value 42.

1232
01:02:32,950 --> 01:02:37,110
But then my next line of code said,
hey, computer, go to the value in y

1233
01:02:37,110 --> 01:02:39,580
and put the unlucky number 13 there.

1234
01:02:39,580 --> 01:02:46,620
So that's like saying, go-- I don't know
where to go, because this has no value.

1235
01:02:46,620 --> 01:02:49,410
And so something very
bad is going to happen.

1236
01:02:49,410 --> 01:02:52,060
Because the question mark
implies, this is a garbage value.

1237
01:02:52,060 --> 01:02:55,350
Maybe it's 0, maybe it's 1,000, maybe
it's some number in between or bigger.

1238
01:02:55,350 --> 01:02:58,620
It's some garbage value, which
means if I just go there,

1239
01:02:58,620 --> 01:03:00,200
who knows where I'm going to end up?

1240
01:03:00,200 --> 01:03:02,080
But odds are I'm going
to end up somewhere

1241
01:03:02,080 --> 01:03:06,410
I shouldn't, because I should not be
touching memory that is not my own.

1242
01:03:06,410 --> 01:03:11,790
And indeed, thanks to Binky, we're about
to see that bad things indeed happen

1243
01:03:11,790 --> 01:03:14,100
when you touch memory
that you shouldn't.

1244
01:03:14,100 --> 01:03:14,994
Let's take a look.

1245
01:03:14,994 --> 01:03:15,660
[VIDEO PLAYBACK]

1246
01:03:15,660 --> 01:03:17,236


1247
01:03:17,236 --> 01:03:19,380
-Hey, Binky, wake up.

1248
01:03:19,380 --> 01:03:21,396
It's time for pointer fun.

1249
01:03:21,396 --> 01:03:23,090
-What's that?

1250
01:03:23,090 --> 01:03:24,670
Learn about pointers?

1251
01:03:24,670 --> 01:03:26,440
Oh, goody!

1252
01:03:26,440 --> 01:03:29,450
-Well, to get started, I guess we're
going to need a couple pointers.

1253
01:03:29,450 --> 01:03:30,250
-OK.

1254
01:03:30,250 --> 01:03:33,990
This code allocates two pointers
which can point to integers.

1255
01:03:33,990 --> 01:03:36,447
-OK, well, I see the
two pointers, but they

1256
01:03:36,447 --> 01:03:38,030
don't seem to be pointing to anything.

1257
01:03:38,030 --> 01:03:38,840
-That's right.

1258
01:03:38,840 --> 01:03:40,960
Initially, pointers
don't point to anything.

1259
01:03:40,960 --> 01:03:43,940
The things they point to are called
pointees, and setting them up's

1260
01:03:43,940 --> 01:03:45,170
a separate step.

1261
01:03:45,170 --> 01:03:46,820
-Oh, right, right, I knew that.

1262
01:03:46,820 --> 01:03:48,470
The pointees are separate.

1263
01:03:48,470 --> 01:03:51,080
Er, so how do you allocate a pointee?

1264
01:03:51,080 --> 01:03:54,860
-OK, well, this code allocates
a new integer pointee,

1265
01:03:54,860 --> 01:03:57,950
and this part sets x to point to it.

1266
01:03:57,950 --> 01:03:59,100
-Hey, that looks better.

1267
01:03:59,100 --> 01:04:00,850
So make it do something.

1268
01:04:00,850 --> 01:04:06,470
-OK, I'll dereference the pointer x to
store the number 42 into its pointee.

1269
01:04:06,470 --> 01:04:10,030
For this trick I'll need my
magic wand of dereferencing.

1270
01:04:10,030 --> 01:04:12,800
-Your magic wand of dereferencing?

1271
01:04:12,800 --> 01:04:15,180
Uh, that's great.

1272
01:04:15,180 --> 01:04:16,960
-This is what the code looks like.

1273
01:04:16,960 --> 01:04:18,515
I'll just set up the number and--

1274
01:04:18,515 --> 01:04:19,086
[POP]

1275
01:04:19,086 --> 01:04:19,586


1276
01:04:19,586 --> 01:04:22,020
-Hey, look, there it goes.

1277
01:04:22,020 --> 01:04:26,860
So doing a dereference on x follows
the arrow to access its pointee.

1278
01:04:26,860 --> 01:04:29,030
In this case, to store 42 in there.

1279
01:04:29,030 --> 01:04:33,470
Hey, try using it to store the number
13 through the other pointer, y.

1280
01:04:33,470 --> 01:04:39,170
-OK, I'll just go over here to
y and get the number 13 set up,

1281
01:04:39,170 --> 01:04:42,916
and then take the wand of
dereferencing and just--

1282
01:04:42,916 --> 01:04:43,415
[BUZZER]

1283
01:04:43,415 --> 01:04:44,240
Oh!

1284
01:04:44,240 --> 01:04:46,950
-Oh, hey, that didn't work.

1285
01:04:46,950 --> 01:04:50,590
Say, Binky, I don't think the
dereferencing y is a good idea,

1286
01:04:50,590 --> 01:04:53,840
because, you know, setting up
the pointee is a separate step,

1287
01:04:53,840 --> 01:04:55,610
and I don't think we ever did it.

1288
01:04:55,610 --> 01:04:57,500
-Oh, good point.

1289
01:04:57,500 --> 01:05:02,110
-Yeah, we allocated the pointer y, but
we never set it to point to a pointee.

1290
01:05:02,110 --> 01:05:04,130
-Hm, very observant.

1291
01:05:04,130 --> 01:05:06,320
-Hey, you're looking good there, Binky.

1292
01:05:06,320 --> 01:05:09,280
Can you fix it so that y points
to the same pointee as x?

1293
01:05:09,280 --> 01:05:09,850
-Sure.

1294
01:05:09,850 --> 01:05:12,660
I'll use my magic wand
of pointer assignment.

1295
01:05:12,660 --> 01:05:14,850
-Is that going to be a
problem, like before?

1296
01:05:14,850 --> 01:05:16,650
-No, this doesn't touch the pointees.

1297
01:05:16,650 --> 01:05:20,220
It just changes one pointer to
point to the same thing as another.

1298
01:05:20,220 --> 01:05:21,310
-Oh, I see.

1299
01:05:21,310 --> 01:05:24,080
Now y points to the same place as x.

1300
01:05:24,080 --> 01:05:25,860
So wait, now y is fixed.

1301
01:05:25,860 --> 01:05:28,890
It has a pointee, so you can try
the wand of dereferencing again

1302
01:05:28,890 --> 01:05:30,678
to send the 13 over.

1303
01:05:30,678 --> 01:05:34,080
-Oh, OK, here goes,

1304
01:05:34,080 --> 01:05:35,200
-Hey, look at that.

1305
01:05:35,200 --> 01:05:36,930
Now dereferencing works on y.

1306
01:05:36,930 --> 01:05:41,040
And because the pointers are sharing
that one pointee, they both see the 13.

1307
01:05:41,040 --> 01:05:42,840
-Yeah, sharing, whatever.

1308
01:05:42,840 --> 01:05:44,650
So are we going to switch places now?

1309
01:05:44,650 --> 01:05:46,610
-Oh look, we're out of time.

1310
01:05:46,610 --> 01:05:47,450
-But--

1311
01:05:47,450 --> 01:05:49,390
-Just remember the three pointer rules.

1312
01:05:49,390 --> 01:05:52,440
Number one, the basic structure
is that you have a pointer

1313
01:05:52,440 --> 01:05:54,550
and it points over to a pointee.

1314
01:05:54,550 --> 01:05:56,510
But the pointer and
pointee are separate,

1315
01:05:56,510 --> 01:05:58,500
and the common error
is to set up a pointer,

1316
01:05:58,500 --> 01:06:00,880
but to forget to give it a pointee.

1317
01:06:00,880 --> 01:06:04,010
Number two, pointer dereferencing
starts at the pointer

1318
01:06:04,010 --> 01:06:06,910
and follows its arrow over
to access its pointee.

1319
01:06:06,910 --> 01:06:10,790
As we all know, this only works if there
is a pointee, which kind of gets back

1320
01:06:10,790 --> 01:06:12,130
to rule number one.

1321
01:06:12,130 --> 01:06:14,910
Number three, pointer
assignment takes one pointer

1322
01:06:14,910 --> 01:06:18,220
and changes it to point to the
same pointee as another pointer.

1323
01:06:18,220 --> 01:06:21,790
So after the assignment the two
pointers will point to the same pointee.

1324
01:06:21,790 --> 01:06:23,657
Sometimes that's called sharing.

1325
01:06:23,657 --> 01:06:25,240
And that's all there is to it, really.

1326
01:06:25,240 --> 01:06:26,760
Bye bye, now.

1327
01:06:26,760 --> 01:06:27,696
[END PLAYBACK]

1328
01:06:27,696 --> 01:06:29,570
DAVID J. MALAN: So what
else can go wrong now

1329
01:06:29,570 --> 01:06:31,930
that we have the ability
to touch, correctly

1330
01:06:31,930 --> 01:06:34,120
or incorrectly, any
memory that we actually

1331
01:06:34,120 --> 01:06:35,970
have access to inside of our program?

1332
01:06:35,970 --> 01:06:38,280
Well, memory leaks are one such problem.

1333
01:06:38,280 --> 01:06:42,120
Now that you have the capability to
ask the operating system for memory

1334
01:06:42,120 --> 01:06:46,310
via the malloc function, you
have the ability to accidentally

1335
01:06:46,310 --> 01:06:48,030
not give that memory back.

1336
01:06:48,030 --> 01:06:51,080
In fact, a very common mistake
in some programming languages

1337
01:06:51,080 --> 01:06:53,340
is to ask the operating
system for a chunk of memory,

1338
01:06:53,340 --> 01:06:55,860
use it, and then never actually free it.

1339
01:06:55,860 --> 01:06:58,560
To give it back so that
other parts of your program,

1340
01:06:58,560 --> 01:07:02,520
or other programs on the computer,
can actually make use of that memory.

1341
01:07:02,520 --> 01:07:05,780
But fortunately there exist tools
via which we can detect this,

1342
01:07:05,780 --> 01:07:07,380
and one of them is called Valgrind.

1343
01:07:07,380 --> 01:07:09,421
So this is another debugging
tool that you'll now

1344
01:07:09,421 --> 01:07:12,100
be able to use once
you start dynamically

1345
01:07:12,100 --> 01:07:13,970
allocating memory in your program.

1346
01:07:13,970 --> 01:07:16,410
So up until now you probably
have not used malloc,

1347
01:07:16,410 --> 01:07:19,610
and therefore you have
not likely actually asked

1348
01:07:19,610 --> 01:07:22,860
the operating system for more
memory in this very dynamic way.

1349
01:07:22,860 --> 01:07:26,220
Instead, you have just declared
an integer or an array,

1350
01:07:26,220 --> 01:07:30,740
and asked the computer for memory
in other ways, not using malloc.

1351
01:07:30,740 --> 01:07:33,000
But suppose that we have
a program like this.

1352
01:07:33,000 --> 01:07:36,720
In memory dot c I've made some mistakes.

1353
01:07:36,720 --> 01:07:40,334
Deliberately, but mistakes nonetheless.

1354
01:07:40,334 --> 01:07:43,500
And indeed, this draws inspiration from
the documentation for this very tool

1355
01:07:43,500 --> 01:07:45,960
to highlight a couple of
its most useful features.

1356
01:07:45,960 --> 01:07:47,480
So let's look at this program here.

1357
01:07:47,480 --> 01:07:49,250
There's no prototype
for this function f,

1358
01:07:49,250 --> 01:07:52,650
just because the example that Valgrind,
this tool, gives just puts it up top,

1359
01:07:52,650 --> 01:07:53,560
and that's fine.

1360
01:07:53,560 --> 01:07:55,250
But let's focus on main first.

1361
01:07:55,250 --> 01:07:58,130
Main takes no command line
arguments, per it's mention of void,

1362
01:07:58,130 --> 01:08:00,110
and it returns an int as usual.

1363
01:08:00,110 --> 01:08:02,550
The function f gets called here.

1364
01:08:02,550 --> 01:08:05,930
So f open bracket, close bracket
just means call the function f,

1365
01:08:05,930 --> 01:08:08,990
but pass it no inputs, and
then eventually return 0.

1366
01:08:08,990 --> 01:08:09,810
So let's look at f.

1367
01:08:09,810 --> 01:08:10,870
What happens?

1368
01:08:10,870 --> 01:08:13,920
Well, f takes no inputs,
produces no outputs.

1369
01:08:13,920 --> 01:08:16,467
It only apparently has
these two lines of code.

1370
01:08:16,467 --> 01:08:17,800
And let's consider what it does.

1371
01:08:17,800 --> 01:08:22,130
It calls malloc, memory allocate,
10 times the size of int.

1372
01:08:22,130 --> 01:08:26,729
So that just means, hey, malloc,
give me enough space for 10 integers.

1373
01:08:26,729 --> 01:08:31,979
Now we know on CS50 IDE that the size
of an int recall is 4 bytes, or 32 bits.

1374
01:08:31,979 --> 01:08:36,870
So this is like saying, hey,
computer, give me 40 bytes total.

1375
01:08:36,870 --> 01:08:38,130
4 times 10.

1376
01:08:38,130 --> 01:08:41,479
Malloc recall returns the
address of that chunk of memory,

1377
01:08:41,479 --> 01:08:45,569
and it stores it in x, which, according
to the star, is the address of an int.

1378
01:08:45,569 --> 01:08:46,380
So that's all.

1379
01:08:46,380 --> 01:08:49,130
So borrowing some of the same
ideas from the Binky example.

1380
01:08:49,130 --> 01:08:53,720
What is bad about this
is this next line.

1381
01:08:53,720 --> 01:08:58,242
Why is x[10]=0 a problem?

1382
01:08:58,242 --> 01:09:02,090
Well, the size of this chunk of
memory is what, 10 ints worth.

1383
01:09:02,090 --> 01:09:03,930
So 10 times 4, 40 bytes.

1384
01:09:03,930 --> 01:09:07,299
But remember how chunks
of memory are indexed

1385
01:09:07,299 --> 01:09:08,840
when you use square bracket notation.

1386
01:09:08,840 --> 01:09:10,840
When you use square bracket
notation, you better

1387
01:09:10,840 --> 01:09:14,840
start counting at 0, which means
if we have 10 ints, first one is 0,

1388
01:09:14,840 --> 01:09:19,170
the last one is 9, the
10th one does not exist.

1389
01:09:19,170 --> 01:09:22,319
And so if I'm saying
xx[10] gets any value,

1390
01:09:22,319 --> 01:09:25,600
that's like saying go there
and put the value 0 there,

1391
01:09:25,600 --> 01:09:28,029
but I don't have access
to that chunk of memory.

1392
01:09:28,029 --> 01:09:30,390
I did not ask the
computer for that memory.

1393
01:09:30,390 --> 01:09:35,029
I asked the computer for all of this
other memory, only 10 of these bytes.

1394
01:09:35,029 --> 01:09:36,580
So this feels problematic.

1395
01:09:36,580 --> 01:09:40,279
Moreover, I have asked the operating
system for memory via malloc,

1396
01:09:40,279 --> 01:09:41,609
hey, give me 40 bytes.

1397
01:09:41,609 --> 01:09:43,700
I never handed it back.

1398
01:09:43,700 --> 01:09:47,920
Thereby introducing what we
would call a memory leak.

1399
01:09:47,920 --> 01:09:51,550
Now, as an aside, once your program
quits, all of the memory it's allocated

1400
01:09:51,550 --> 01:09:54,270
is actually automatically
given back, but the problem is

1401
01:09:54,270 --> 01:09:56,810
that, for long running programs,
things like your browsers,

1402
01:09:56,810 --> 01:09:59,331
or word processing
programs, or any number--

1403
01:09:59,331 --> 01:10:02,080
Skype-- or any number of other
programs that you might run locally

1404
01:10:02,080 --> 01:10:06,020
on your Mac or PC, if those bigger
programs have memory leaks, such

1405
01:10:06,020 --> 01:10:08,680
that they keep asking Mac
OS or Windows for memory

1406
01:10:08,680 --> 01:10:11,390
and never actually
remember to give it back,

1407
01:10:11,390 --> 01:10:15,560
you might experience what you might
have in the past of your Mac or PC

1408
01:10:15,560 --> 01:10:19,700
really starting to slow
down and kind of crawl.

1409
01:10:19,700 --> 01:10:22,680
And that can be for any number
of reasons, but one of them

1410
01:10:22,680 --> 01:10:26,890
is if your program or programs inside
of them have some form of memory leak.

1411
01:10:26,890 --> 01:10:31,250
Not your fault. It's the programmer's
fault. But memory leaks, nonetheless.

1412
01:10:31,250 --> 01:10:33,890
So what is Valgrind good for here?

1413
01:10:33,890 --> 01:10:38,930
Well, it turns out, that in Valgrind
you can run the command like here.

1414
01:10:38,930 --> 01:10:39,670
Valgrind.

1415
01:10:39,670 --> 01:10:41,380
Leak check equals full.

1416
01:10:41,380 --> 01:10:41,964
Dot slash.

1417
01:10:41,964 --> 01:10:43,380
And then the name of your program.

1418
01:10:43,380 --> 01:10:44,430
And so let me do that.

1419
01:10:44,430 --> 01:10:49,740
Let me go ahead back into CS50 IDE
and let me go ahead and make memory.

1420
01:10:49,740 --> 01:10:52,480
Compiles OK, so it doesn't appear
to be syntactically flawed.

1421
01:10:52,480 --> 01:10:54,570
Dot slash memory.

1422
01:10:54,570 --> 01:10:56,200
Nothing bad seems to happen.

1423
01:10:56,200 --> 01:10:57,770
So that's all fine and good.

1424
01:10:57,770 --> 01:11:01,960
And you might think that, OK my
program works, it's time to submit,

1425
01:11:01,960 --> 01:11:04,230
all is well, but not necessarily.

1426
01:11:04,230 --> 01:11:06,420
Let me go ahead and run Valgrind.

1427
01:11:06,420 --> 01:11:08,734
And let me actually go
ahead-- let me go up here

1428
01:11:08,734 --> 01:11:10,650
and not create a new
file, but a new terminal.

1429
01:11:10,650 --> 01:11:12,400
Just so that we have
a much bigger window.

1430
01:11:12,400 --> 01:11:17,340
And let me go ahead into this directory
and run Valgrind, dot slash memory.

1431
01:11:17,340 --> 01:11:19,990
Without any command line
arguments besides that.

1432
01:11:19,990 --> 01:11:20,900
And hit Enter.

1433
01:11:20,900 --> 01:11:23,260
And the downside of
Valgrind, frankly, is

1434
01:11:23,260 --> 01:11:25,160
that it's just-- output is atrocious.

1435
01:11:25,160 --> 01:11:26,840
Like it's just not easy to read.

1436
01:11:26,840 --> 01:11:29,290
But you start to learn
to notice patterns in it.

1437
01:11:29,290 --> 01:11:33,210
So I've learned to notice when I make
mistakes in programs that invalid right

1438
01:11:33,210 --> 01:11:34,950
of size 4, not a good thing.

1439
01:11:34,950 --> 01:11:37,070
That's indeed a problem of some sort.

1440
01:11:37,070 --> 01:11:39,900
But what's nice about
Valgrind is that it tells me

1441
01:11:39,900 --> 01:11:43,440
that the source of this invalid
right, whatever that means,

1442
01:11:43,440 --> 01:11:51,360
starts in memory.c line 13 and really
rears its head in line 8 of memory.c.

1443
01:11:51,360 --> 01:11:52,550
Well, what are those lines?

1444
01:11:52,550 --> 01:11:54,670
Let's go to line 13.

1445
01:11:54,670 --> 01:11:57,270
Ah, that's my call to F. And line 8.

1446
01:11:57,270 --> 01:12:01,060
Oh, that's my use of x bracket 10.

1447
01:12:01,060 --> 01:12:04,950
So why is Valgrind telling
me invalid right of size 4?

1448
01:12:04,950 --> 01:12:06,270
Well, size 4 sounds familiar.

1449
01:12:06,270 --> 01:12:07,980
That's the size of an int.

1450
01:12:07,980 --> 01:12:09,510
Invalid just means bad.

1451
01:12:09,510 --> 01:12:12,870
Right means change something,
like mutate a value.

1452
01:12:12,870 --> 01:12:17,250
So invalid right of size
4 maybe just means this.

1453
01:12:17,250 --> 01:12:21,700
I am in an invalid way
changing 4 bytes of memory

1454
01:12:21,700 --> 01:12:25,990
by storing 0 from the right hand side
into x bracket 10 on the left hand

1455
01:12:25,990 --> 01:12:31,250
side because, again, that x
bracket 10 is an 11th byte, rather,

1456
01:12:31,250 --> 01:12:35,320
an 11th int, that I never
ask the operating system for.

1457
01:12:35,320 --> 01:12:38,300
I only asked it for 10, not 11.

1458
01:12:38,300 --> 01:12:42,990
And so Valgrind is telling me, somewhat
cryptically, that I've screwed up.

1459
01:12:42,990 --> 01:12:47,220
On line 8 ultimately I've screwed
up by touching 4 bytes of memory

1460
01:12:47,220 --> 01:12:48,850
that I shouldn't have.

1461
01:12:48,850 --> 01:12:51,590
Meanwhile, a little
more worrisome is this.

1462
01:12:51,590 --> 01:12:54,220
Address such and such as
zero bytes after a block

1463
01:12:54,220 --> 01:12:56,160
of size 4 allots, da-da da-da.

1464
01:12:56,160 --> 01:12:56,940
Oh, not that.

1465
01:12:56,940 --> 01:13:00,043
Let's focus on-- here we go.

1466
01:13:00,043 --> 01:13:00,790
Uh oh.

1467
01:13:00,790 --> 01:13:01,850
Leak summary.

1468
01:13:01,850 --> 01:13:02,970
Definitely lost.

1469
01:13:02,970 --> 01:13:03,680
Oh, my god.

1470
01:13:03,680 --> 01:13:06,390
Like I have lost 40 bytes
of the computer's memory.

1471
01:13:06,390 --> 01:13:07,470
Now what does that mean?

1472
01:13:07,470 --> 01:13:09,480
This simply means that
Valgrind has noticed

1473
01:13:09,480 --> 01:13:11,920
that I must have called malloc
or some similar function,

1474
01:13:11,920 --> 01:13:15,690
asked for memory, 40 bytes'
worth, and never gave it back.

1475
01:13:15,690 --> 01:13:18,580
Well, we haven't introduced the
way of giving memory back so let

1476
01:13:18,580 --> 01:13:20,210
me at least address that now.

1477
01:13:20,210 --> 01:13:21,660
But let me take this advice.

1478
01:13:21,660 --> 01:13:24,659
Rerun with leak check full to
see details of leaked memory.

1479
01:13:24,659 --> 01:13:25,950
So let me go ahead and do that.

1480
01:13:25,950 --> 01:13:30,273
Let me go ahead and copy
this so I can rerun Valgrind.

1481
01:13:30,273 --> 01:13:31,240
Whoops.

1482
01:13:31,240 --> 01:13:32,097
Valgrind.

1483
01:13:32,097 --> 01:13:33,430
With that command line argument.

1484
01:13:33,430 --> 01:13:35,010
Dot slash memory.

1485
01:13:35,010 --> 01:13:37,880
And now I'll see a little
more detail sometimes.

1486
01:13:37,880 --> 01:13:41,240
Although, it appears in this
case it's already pretty verbose.

1487
01:13:41,240 --> 01:13:44,930
And so indeed I've still
lost 40 bytes in one block.

1488
01:13:44,930 --> 01:13:48,940
And up here again is a reiteration
of that invalid right of size 4.

1489
01:13:48,940 --> 01:13:50,320
So how do I fix this?

1490
01:13:50,320 --> 01:13:52,060
Well, let me go back into my program.

1491
01:13:52,060 --> 01:13:52,820
And you know what?

1492
01:13:52,820 --> 01:13:56,730
The program's still pretty useless,
but at least let me fix that mistake.

1493
01:13:56,730 --> 01:14:00,160
And go ahead now and go at x bracket 9.

1494
01:14:00,160 --> 01:14:01,510
Let me remake my program.

1495
01:14:01,510 --> 01:14:02,990
Make memory.

1496
01:14:02,990 --> 01:14:09,890
And let me in my bigger terminal
window do Valgrind dot slash memory.

1497
01:14:09,890 --> 01:14:11,010
And now, oh, damn it.

1498
01:14:11,010 --> 01:14:13,540
Still have definitely lost
40 bytes in one blocks,

1499
01:14:13,540 --> 01:14:16,730
but notice the output
is much shorter now.

1500
01:14:16,730 --> 01:14:19,300
I don't have a mistake that
was higher up here before.

1501
01:14:19,300 --> 01:14:20,500
So I fixed one problem.

1502
01:14:20,500 --> 01:14:22,360
Let me go ahead and
fix that other problem.

1503
01:14:22,360 --> 01:14:26,560
After using this memory,
let me go ahead and free x.

1504
01:14:26,560 --> 01:14:29,660
So free is the opposite
of malloc in this case.

1505
01:14:29,660 --> 01:14:33,100
And if I go ahead and recompile
make memory and then run it

1506
01:14:33,100 --> 01:14:36,500
in my bigger terminal window, nice.

1507
01:14:36,500 --> 01:14:38,800
All heap blocks were freed.

1508
01:14:38,800 --> 01:14:41,150
No leaks are possible.

1509
01:14:41,150 --> 01:14:42,340
Now what does that mean?

1510
01:14:42,340 --> 01:14:46,464
Well, it turns out, when we
look at our computer's memory,

1511
01:14:46,464 --> 01:14:49,380
there is indeed that stack at the
bottom that we talked about earlier.

1512
01:14:49,380 --> 01:14:53,340
And the stack is where frames of
memory go, slices of memory go,

1513
01:14:53,340 --> 01:14:55,870
that are used when
functions are being called.

1514
01:14:55,870 --> 01:14:58,050
And they get layered
on top of each other

1515
01:14:58,050 --> 01:15:00,690
and get un-layered only
once the function's return.

1516
01:15:00,690 --> 01:15:04,460
The heap, meanwhile, is a chunk of
memory above the stack, by design.

1517
01:15:04,460 --> 01:15:06,050
At least as we've drawn it here.

1518
01:15:06,050 --> 01:15:10,490
And in the heap you have just
a pool of available memory

1519
01:15:10,490 --> 01:15:13,250
that you can draw from at any point.

1520
01:15:13,250 --> 01:15:15,620
And what's powerful
about the heap is that,

1521
01:15:15,620 --> 01:15:18,900
whereas the stack keeps growing
up and then as functions return

1522
01:15:18,900 --> 01:15:22,570
it grows back down thereby
throwing away, effectively

1523
01:15:22,570 --> 01:15:25,260
losing track of, any memory
that we had on the stack,

1524
01:15:25,260 --> 01:15:28,960
like x's and y's and a's and
b's and temp variables still,

1525
01:15:28,960 --> 01:15:34,400
the heap does not experience
that kind of disposal of memory.

1526
01:15:34,400 --> 01:15:39,780
If you ask for memory via malloc, malloc
gives you a chunk of memory over here,

1527
01:15:39,780 --> 01:15:44,700
or over here, or over here, up above
the stack inside of the so-called heap.

1528
01:15:44,700 --> 01:15:48,470
And even when your function
returns, whether it's f, or swap,

1529
01:15:48,470 --> 01:15:53,960
or something else, that use of
memory persists permanently.

1530
01:15:53,960 --> 01:15:57,070
Only once you call free do
you give that chunk of memory

1531
01:15:57,070 --> 01:15:59,750
back to the operating
system and allow it to reuse

1532
01:15:59,750 --> 01:16:02,230
that memory for something else.

1533
01:16:02,230 --> 01:16:05,460
But unfortunately this
picture kind of suggests

1534
01:16:05,460 --> 01:16:08,080
a problem and bad design in some sense.

1535
01:16:08,080 --> 01:16:10,450
Although, given a finite
amount of memory, eventually

1536
01:16:10,450 --> 01:16:12,630
something's got to bump
up against something else

1537
01:16:12,630 --> 01:16:15,010
if you want to keep asking
for and using memory.

1538
01:16:15,010 --> 01:16:18,560
Those arrows kind of suggest
that the stack and the heap

1539
01:16:18,560 --> 01:16:21,700
are really destined to collide
with each other if what happens?

1540
01:16:21,700 --> 01:16:23,607
Well, if the stack grows too large.

1541
01:16:23,607 --> 01:16:26,690
In other words, if you keep calling
function after function after function

1542
01:16:26,690 --> 01:16:28,120
after function and never return.

1543
01:16:28,120 --> 01:16:29,390
And maybe this is accidental.

1544
01:16:29,390 --> 01:16:31,580
Maybe you're using
recursion, per last time,

1545
01:16:31,580 --> 01:16:33,865
and you accidentally
don't have a base case

1546
01:16:33,865 --> 01:16:35,660
so you just keep calling functions.

1547
01:16:35,660 --> 01:16:39,070
So much so that you
run out of stack space.

1548
01:16:39,070 --> 01:16:43,600
Or maybe you call malloc so many
times that the heap keeps growing down

1549
01:16:43,600 --> 01:16:45,800
and down and hits the stack, meanwhile.

1550
01:16:45,800 --> 01:16:47,650
Either of those problems can persist.

1551
01:16:47,650 --> 01:16:49,880
And you might recognize
some familiar terms.

1552
01:16:49,880 --> 01:16:52,481
The first of those scenarios
describe stack overflow.

1553
01:16:52,481 --> 01:16:55,230
So if any of you have ever discovered
the website, Stack Overflow,

1554
01:16:55,230 --> 01:16:58,862
which is a wonderful
place to go for advice

1555
01:16:58,862 --> 01:17:01,070
and tips and tricks with
programming, more generally.

1556
01:17:01,070 --> 01:17:05,940
stackoverflow.com draws its name
from exactly that programming

1557
01:17:05,940 --> 01:17:07,440
risk and problem.

1558
01:17:07,440 --> 01:17:09,362
Heap overflow is similar in spirit.

1559
01:17:09,362 --> 01:17:10,320
It's just the opposite.

1560
01:17:10,320 --> 01:17:13,080
When the heap grows down
too far, as we've drawn it.

1561
01:17:13,080 --> 01:17:15,070
And they're both
examples, more generally,

1562
01:17:15,070 --> 01:17:17,320
of what you might call buffer overflows.

1563
01:17:17,320 --> 01:17:21,630
A buffer is a chunk of space that's
typically finite in some form

1564
01:17:21,630 --> 01:17:25,100
and you can eventually overflow it
by trying to use more memory then

1565
01:17:25,100 --> 01:17:25,790
you should have.

1566
01:17:25,790 --> 01:17:28,320
And a buffer overflows
typically actually relates

1567
01:17:28,320 --> 01:17:30,490
to arrays and chunks of memory.

1568
01:17:30,490 --> 01:17:33,660
And, in fact, a great example
from Wikipedia is this one here.

1569
01:17:33,660 --> 01:17:37,700
The code is a little cryptic too because
it doesn't really do anything useful,

1570
01:17:37,700 --> 01:17:40,050
but it's fundamentally
flawed in the following way.

1571
01:17:40,050 --> 01:17:44,090
Let's consider exactly what happens
when you have a stack overflow.

1572
01:17:44,090 --> 01:17:47,480
It turns out that this is a bad
enough problem that you can actually

1573
01:17:47,480 --> 01:17:50,250
lose control over your computer itself.

1574
01:17:50,250 --> 01:17:53,460
It can be hacked into if
an adversary, a bad guy,

1575
01:17:53,460 --> 01:17:58,870
has the ability somehow to inject his
or her own adversarial code, code that

1576
01:17:58,870 --> 01:18:02,660
deletes your files, or encrypt your
files, or does something malicious,

1577
01:18:02,660 --> 01:18:05,790
into your program because of a
memory related mistake you've made.

1578
01:18:05,790 --> 01:18:07,090
Let's consider this example.

1579
01:18:07,090 --> 01:18:08,240
Here's the main function.

1580
01:18:08,240 --> 01:18:12,310
In this particular example, it takes
command line arguments arg-c and arg-v

1581
01:18:12,310 --> 01:18:17,310
and just apparently calls this function
foo, passing in the second word

1582
01:18:17,310 --> 01:18:18,330
that the user typed in.

1583
01:18:18,330 --> 01:18:21,160
So the first command line argument
that the user ran at the prompt.

1584
01:18:21,160 --> 01:18:22,410
And it just blindly does this.

1585
01:18:22,410 --> 01:18:25,940
It doesn't check arg-c, it doesn't check
for null, it doesn't check anything.

1586
01:18:25,940 --> 01:18:28,654
It just blindly passes
in arg-v bracket 1.

1587
01:18:28,654 --> 01:18:30,070
And that's generally bad practice.

1588
01:18:30,070 --> 01:18:30,570
Right?

1589
01:18:30,570 --> 01:18:34,140
If you're not error checking, bad things
are likely going to happen eventually.

1590
01:18:34,140 --> 01:18:35,900
Well, what does foo do?

1591
01:18:35,900 --> 01:18:38,890
Foo takes a char star as inputs.

1592
01:18:38,890 --> 01:18:41,684
Now, a week ago, we would
have said string bar,

1593
01:18:41,684 --> 01:18:43,600
but we don't need to
hide that detail anymore.

1594
01:18:43,600 --> 01:18:46,940
Bar is just the address of a character.

1595
01:18:46,940 --> 01:18:48,130
It's a string.

1596
01:18:48,130 --> 01:18:50,660
Foo returns nothing, but
has two lines of code.

1597
01:18:50,660 --> 01:18:54,540
First, it declares an array
called c-- just because.

1598
01:18:54,540 --> 01:18:57,820
This is kind of a
contrived example online,

1599
01:18:57,820 --> 01:19:00,946
but the pictures will
tell it all-- of size 12.

1600
01:19:00,946 --> 01:19:02,320
So this is saying, hey, computer.

1601
01:19:02,320 --> 01:19:04,480
Give me an array of 12 characters.

1602
01:19:04,480 --> 01:19:08,745
Or give me a chunk of memory of size
12 that I plan to put characters into.

1603
01:19:08,745 --> 01:19:10,870
And then, mem copy, you
might not have seen before,

1604
01:19:10,870 --> 01:19:15,670
but it essentially does this it
copies into this chunk of memory

1605
01:19:15,670 --> 01:19:20,260
whatever is at that chunk of
memory up to this many bytes.

1606
01:19:20,260 --> 01:19:23,840
So mem copy, as the names
suggests, copies memory from here

1607
01:19:23,840 --> 01:19:27,850
to here a total number
of this many bytes.

1608
01:19:27,850 --> 01:19:29,980
So why is this worrisome?

1609
01:19:29,980 --> 01:19:34,100
Well, if for whatever reason
you have only allocated 12 bytes

1610
01:19:34,100 --> 01:19:36,920
and the user has typed
a word at the prompt

1611
01:19:36,920 --> 01:19:40,700
when running your program
that is more than 12 bytes,

1612
01:19:40,700 --> 01:19:47,400
it would seem that the user
is able to touch memory

1613
01:19:47,400 --> 01:19:49,210
that you the programmer never intended.

1614
01:19:49,210 --> 01:19:49,990
Why?

1615
01:19:49,990 --> 01:19:53,630
Well, your use of mem copy is
checking the length of something,

1616
01:19:53,630 --> 01:19:55,550
but it's checking the length of bar.

1617
01:19:55,550 --> 01:19:59,260
So if the user types in not 12
characters, but 20 characters,

1618
01:19:59,260 --> 01:20:01,920
strleng of bar is going to be 20.

1619
01:20:01,920 --> 01:20:03,700
The user's input is 20 characters long.

1620
01:20:03,700 --> 01:20:09,200
So your code is saying copy
20 characters from bar into c.

1621
01:20:09,200 --> 01:20:14,560
Unfortunately, c is only of size 12 and
so that's 8 bytes you end up copying

1622
01:20:14,560 --> 01:20:15,910
that you shouldn't.

1623
01:20:15,910 --> 01:20:19,710
So if you were given a chunk of
memory here that's only of size 8

1624
01:20:19,710 --> 01:20:23,640
and you're just 12, you're touching
8 more bytes to the right of it,

1625
01:20:23,640 --> 01:20:26,900
so to speak, that don't
actually belong to you.

1626
01:20:26,900 --> 01:20:28,956
Now, at best, nothing's going to happen.

1627
01:20:28,956 --> 01:20:31,080
Your computer, your program
is not going to notice.

1628
01:20:31,080 --> 01:20:34,470
Things are just going to hum along
and all is going to seem fine.

1629
01:20:34,470 --> 01:20:36,410
Much like my memory
program a moment ago.

1630
01:20:36,410 --> 01:20:39,200
Seemed fine, but Valgrind
thought otherwise.

1631
01:20:39,200 --> 01:20:42,520
In this case, really
bad things can happen.

1632
01:20:42,520 --> 01:20:47,370
Because if what the human adversary,
the bad guy, has typed at the prompt

1633
01:20:47,370 --> 01:20:51,350
is not just some word like foo,
or bar, or David, or Zamyla,

1634
01:20:51,350 --> 01:20:54,450
or any number of sort
of innocuous strings,

1635
01:20:54,450 --> 01:20:58,380
but is actually the ASCII equivalent,
so the textual equivalent,

1636
01:20:58,380 --> 01:21:03,250
of some malicious code-- so if he or
she actually somehow typed at the prompt

1637
01:21:03,250 --> 01:21:07,150
a pattern of characters that really
represent a pattern of bits that

1638
01:21:07,150 --> 01:21:09,320
do something bad, like
delete all your files,

1639
01:21:09,320 --> 01:21:12,930
or spam everyone in your address
book, or any number of things.

1640
01:21:12,930 --> 01:21:16,670
If they provide a string that's
longer than 12 characters,

1641
01:21:16,670 --> 01:21:19,920
the overflow is going to
end up somewhere in memory.

1642
01:21:19,920 --> 01:21:21,090
And where is that?

1643
01:21:21,090 --> 01:21:25,610
Well, let's zoom in a little lower level
to what your computer's memory looks

1644
01:21:25,610 --> 01:21:27,390
like on the stack.

1645
01:21:27,390 --> 01:21:28,910
So it's a little more detail.

1646
01:21:28,910 --> 01:21:30,870
So let's absorb this for just a moment.

1647
01:21:30,870 --> 01:21:35,540
Think of this now as the bottom of
the stack, parent routines stack.

1648
01:21:35,540 --> 01:21:39,180
So you can think of this as main, or
foo, or some function on the stack.

1649
01:21:39,180 --> 01:21:41,370
It turns out-- and I didn't
mention this earlier--

1650
01:21:41,370 --> 01:21:44,490
that besides there being arguments
or parameters on the stack

1651
01:21:44,490 --> 01:21:48,700
and local variables on the stack,
it turns out that the computer also

1652
01:21:48,700 --> 01:21:54,380
uses the stack just to kind of store
a reminder for itself of the address

1653
01:21:54,380 --> 01:21:57,610
in memory of the
function that called it.

1654
01:21:57,610 --> 01:22:03,430
So if this picture represents foo, the
function right now, who called foo?

1655
01:22:03,430 --> 01:22:07,790
Main called foo and so what foo
does is, on its own stack, it

1656
01:22:07,790 --> 01:22:10,790
just kind of jots down a note to
itself here in pink, where it says,

1657
01:22:10,790 --> 01:22:14,030
return address, when I'm done,
return to this address of main.

1658
01:22:14,030 --> 01:22:16,590
The computer does that for itself.

1659
01:22:16,590 --> 01:22:19,860
So when foo is done executing,
previously, I just wipe the screen

1660
01:22:19,860 --> 01:22:20,900
and remove foo.

1661
01:22:20,900 --> 01:22:24,324
But how does the program know where
to go back to after foo is done?

1662
01:22:24,324 --> 01:22:26,490
It's because it put a little
bread crumb for itself.

1663
01:22:26,490 --> 01:22:28,602
The address of main, itself.

1664
01:22:28,602 --> 01:22:31,310
Not the address of variables, the
address of the function itself,

1665
01:22:31,310 --> 01:22:34,770
which, recall, is in the text
segment of your computer's memory.

1666
01:22:34,770 --> 01:22:36,720
But never mind that for now.

1667
01:22:36,720 --> 01:22:42,161
So now, let's look at what the stack
frame for foo is actually like.

1668
01:22:42,161 --> 01:22:44,080
Here is that array of size 12.

1669
01:22:44,080 --> 01:22:45,500
And it's drawn as a rectangle.

1670
01:22:45,500 --> 01:22:49,600
If we made it wider, we could just
do 0, 1, 2, all the way through C 11,

1671
01:22:49,600 --> 01:22:54,230
but the author of this graphic has just
drawn things a little more square like.

1672
01:22:54,230 --> 01:22:58,750
So this is the first byte in C and
this is the last byte in C, 0 and 11,

1673
01:22:58,750 --> 01:22:59,600
respectively.

1674
01:22:59,600 --> 01:23:02,680
And then bar, recall, is the
only argument to the foo function

1675
01:23:02,680 --> 01:23:07,120
and that, as I did mention before,
belongs on the stack as well.

1676
01:23:07,120 --> 01:23:08,450
But here's the problem.

1677
01:23:08,450 --> 01:23:09,890
And this is by design.

1678
01:23:09,890 --> 01:23:13,890
It appears that whoever
designed the stack,

1679
01:23:13,890 --> 01:23:16,550
has it growing upwards,
as in this picture.

1680
01:23:16,550 --> 01:23:18,450
And that's how I described it earlier.

1681
01:23:18,450 --> 01:23:20,290
So the stack itself grows up.

1682
01:23:20,290 --> 01:23:22,680
Frames go up and up and up and up.

1683
01:23:22,680 --> 01:23:25,060
But within a frame, notice what happens.

1684
01:23:25,060 --> 01:23:29,890
Within a frame, if you've got a buffer,
an array of memory, a chunk of memory,

1685
01:23:29,890 --> 01:23:34,430
and you write to it, you start
writing to that memory, by design,

1686
01:23:34,430 --> 01:23:38,720
at the top left corner, so to
speak, to the right, and then down,

1687
01:23:38,720 --> 01:23:39,820
and then down.

1688
01:23:39,820 --> 01:23:42,580
So top left to bottom
right, so to speak.

1689
01:23:42,580 --> 01:23:44,080
Pictorially.

1690
01:23:44,080 --> 01:23:48,000
This was not necessarily a good
thing, at least in this case.

1691
01:23:48,000 --> 01:23:52,470
Because if the stack is growing up
and this is the top of foo's frame

1692
01:23:52,470 --> 01:23:56,380
and it's use of the array
c is by design going down,

1693
01:23:56,380 --> 01:24:00,760
that's all fine if the user only
provides a string of length 12 or less,

1694
01:24:00,760 --> 01:24:05,800
12 or shorter, but in this case if
the adversary types in a 20 character

1695
01:24:05,800 --> 01:24:08,450
string or 200 character
string, the computer

1696
01:24:08,450 --> 01:24:09,890
is not just going to stop there.

1697
01:24:09,890 --> 01:24:11,750
Unless you wrote code
with an if condition

1698
01:24:11,750 --> 01:24:15,670
to check the length that the user
is trying to pass in and protect

1699
01:24:15,670 --> 01:24:17,970
against that, it's
going to overwrite all

1700
01:24:17,970 --> 01:24:22,480
of these bytes, all of these bytes,
whatever this is, all of these bytes,

1701
01:24:22,480 --> 01:24:24,120
and this is what's worrisome.

1702
01:24:24,120 --> 01:24:27,580
If you have a really smart
adversary up against you,

1703
01:24:27,580 --> 01:24:32,160
trying to hack into your system, and he
or she is smart enough or lucky enough

1704
01:24:32,160 --> 01:24:37,770
to figure out how to inject a pattern
of bits into your program in this way,

1705
01:24:37,770 --> 01:24:41,220
such that he or she overwrites
this return address,

1706
01:24:41,220 --> 01:24:44,680
a really clever adversary
can trick your program

1707
01:24:44,680 --> 01:24:49,670
into returning to, not the
function that called foo, main,

1708
01:24:49,670 --> 01:24:53,990
but returning to the address
of the adversary's own function

1709
01:24:53,990 --> 01:24:59,490
that he or she has somehow injected
by way of typing input at the prompt,

1710
01:24:59,490 --> 01:25:00,600
in this case.

1711
01:25:00,600 --> 01:25:05,220
In other words, if the user types in
just, hello, h-e-l-l-o, backslash, 0,

1712
01:25:05,220 --> 01:25:08,270
all is fine and good and it
fits perfectly in that frame.

1713
01:25:08,270 --> 01:25:10,210
But because we didn't
have good error checking

1714
01:25:10,210 --> 01:25:13,000
on the length of the
memory we're copying,

1715
01:25:13,000 --> 01:25:16,490
suppose the adversary includes a
whole bunch of adversarial code, which

1716
01:25:16,490 --> 01:25:20,630
the author here abstracted away as a,
a, a, adversary, or attack, attack,

1717
01:25:20,630 --> 01:25:23,420
attack, what might actually happen here?

1718
01:25:23,420 --> 01:25:27,700
Well, if that adversary gets
lucky enough or is smart enough,

1719
01:25:27,700 --> 01:25:32,860
he or she might be able to
overwrite these 4 bytes here

1720
01:25:32,860 --> 01:25:38,730
with the address, brilliantly,
of his or her own attack code,

1721
01:25:38,730 --> 01:25:42,240
which is the bits or the characters
that he or she typed at the prompt.

1722
01:25:42,240 --> 01:25:43,700
So again, a lot of this is luck.

1723
01:25:43,700 --> 01:25:45,780
Or a lot of this is trial
and error sometimes,

1724
01:25:45,780 --> 01:25:48,060
to attack a program in
this way, but if you

1725
01:25:48,060 --> 01:25:51,880
can trick the computer into
jumping to an address that

1726
01:25:51,880 --> 01:25:56,270
happens to point at data you
injected into the program,

1727
01:25:56,270 --> 01:25:59,100
you have effectively taken
over that user's program,

1728
01:25:59,100 --> 01:26:04,140
tricking the program into running
any and all code that in this case

1729
01:26:04,140 --> 01:26:07,730
you provided by a arg-v. So if you've
ever heard of a server getting hacked,

1730
01:26:07,730 --> 01:26:10,210
or in the future you will hear
of a server getting hacked,

1731
01:26:10,210 --> 01:26:13,310
or a program getting compromised,
could mean any number of things,

1732
01:26:13,310 --> 01:26:15,750
but one of them, and an
all too common approach,

1733
01:26:15,750 --> 01:26:20,430
is that the programmer who wrote
the software used a buffer,

1734
01:26:20,430 --> 01:26:22,670
used an array, a chunk
of memory, and he or she

1735
01:26:22,670 --> 01:26:27,230
did not check the boundaries
of that array sufficiently.

1736
01:26:27,230 --> 01:26:29,020
Did not make sure that
his or her own code

1737
01:26:29,020 --> 01:26:34,660
was not going too far as was
this particular example here.

1738
01:26:34,660 --> 01:26:37,430
So now that we have this
power of going anywhere

1739
01:26:37,430 --> 01:26:42,790
we want in memory, it's incredibly easy
to accidentally or maliciously use,

1740
01:26:42,790 --> 01:26:43,820
but that's it.

1741
01:26:43,820 --> 01:26:45,830
That boils down to just
this basic understanding

1742
01:26:45,830 --> 01:26:48,288
of what's going on underneath
the hood and what you can now

1743
01:26:48,288 --> 01:26:50,610
do with the computer's memory.

1744
01:26:50,610 --> 01:26:53,570


1745
01:26:53,570 --> 01:26:58,380
And now, let's transition to the
second of our real world demands.

1746
01:26:58,380 --> 01:27:01,480
Now that we have the ability
to talk about memory addresses

1747
01:27:01,480 --> 01:27:04,920
and actually do things at
this lower level, turns out,

1748
01:27:04,920 --> 01:27:07,920
we can start solving some really
interesting problems, among them

1749
01:27:07,920 --> 01:27:13,610
related to images and forensics, the art
and science of recovering information.

1750
01:27:13,610 --> 01:27:16,890
In fact, you might recall from various
TV shows or movies, that it's all

1751
01:27:16,890 --> 01:27:20,272
too common for the good guys
in the movies and the TV

1752
01:27:20,272 --> 01:27:22,230
shows to be looking over
the shoulder of a tech

1753
01:27:22,230 --> 01:27:25,610
and seeing some footage of a burglary
or some other crime that's committed

1754
01:27:25,610 --> 01:27:27,350
and say, hey, can you clean that up?

1755
01:27:27,350 --> 01:27:29,120
Or can you enhance that?

1756
01:27:29,120 --> 01:27:32,680
And, indeed, let's take a look at
one such clip from the real world

1757
01:27:32,680 --> 01:27:35,090
and see how it relates
to the actual world

1758
01:27:35,090 --> 01:27:38,260
and how we can leverage some of this
new found savvy with memory addresses

1759
01:27:38,260 --> 01:27:43,064
and computing to actually solve
some of these problems for real.

1760
01:27:43,064 --> 01:27:43,730
[VIDEO PLAYBACK]

1761
01:27:43,730 --> 01:27:45,580
-He's lying.

1762
01:27:45,580 --> 01:27:46,240
-About what?

1763
01:27:46,240 --> 01:27:49,132
-I don't know.

1764
01:27:49,132 --> 01:27:51,874
-So what do we know?

1765
01:27:51,874 --> 01:27:55,143
-That at 9:15 Ray
Santoya was at the ATM.

1766
01:27:55,143 --> 01:27:59,110
-OK, so the question is,
what was he doing at 9:16?

1767
01:27:59,110 --> 01:28:01,920
-Shooting the 9 mm at something.

1768
01:28:01,920 --> 01:28:03,550
Maybe he saw the sniper.

1769
01:28:03,550 --> 01:28:05,322
-Or was working with him.

1770
01:28:05,322 --> 01:28:06,822
-Wait.

1771
01:28:06,822 --> 01:28:07,794
Go back one.

1772
01:28:07,794 --> 01:28:08,766
-What do you see?

1773
01:28:08,766 --> 01:28:16,056


1774
01:28:16,056 --> 01:28:17,060
-Bring his face up.

1775
01:28:17,060 --> 01:28:20,160
Full screen.

1776
01:28:20,160 --> 01:28:20,820
-His glasses.

1777
01:28:20,820 --> 01:28:22,320
-There's a reflection.

1778
01:28:22,320 --> 01:28:32,560


1779
01:28:32,560 --> 01:28:34,070
-That's the Nuevita's baseball team.

1780
01:28:34,070 --> 01:28:35,450
That's their logo.

1781
01:28:35,450 --> 01:28:37,667
-And he's talking to
whoever's wearing that jacket.

1782
01:28:37,667 --> 01:28:38,250
[END PLAYBACK]

1783
01:28:38,250 --> 01:28:39,050
DAVID J. MALAN: OK.

1784
01:28:39,050 --> 01:28:40,310
So this is just nonsense.

1785
01:28:40,310 --> 01:28:42,420
Like, you can't just
clean up an image, or look

1786
01:28:42,420 --> 01:28:44,420
at something that's very
pixelated, so to speak,

1787
01:28:44,420 --> 01:28:47,090
where pixels are dots on the
screen, and just kind of zoom in

1788
01:28:47,090 --> 01:28:49,034
and clean that up and enhance it.

1789
01:28:49,034 --> 01:28:50,950
And, indeed, that's kind
of this running joke.

1790
01:28:50,950 --> 01:28:54,360
Enhance doesn't really
generally mean enhance when you

1791
01:28:54,360 --> 01:28:55,940
have a finite amount of information.

1792
01:28:55,940 --> 01:28:58,520
For instance, here is a
finite amount of information.

1793
01:28:58,520 --> 01:29:02,050
A photograph of Zamyla that
looks to be of very high quality.

1794
01:29:02,050 --> 01:29:03,620
You can see lots of detail.

1795
01:29:03,620 --> 01:29:07,090
And so you might think that we can
maybe see the reflection of someone

1796
01:29:07,090 --> 01:29:11,150
in her eye if we really just
zoom in and enhance, but no.

1797
01:29:11,150 --> 01:29:15,090
This is what you see, and it's actually
kind of creepy at this distance.

1798
01:29:15,090 --> 01:29:20,150
This is what you see when you zoom
in on that exact same photo of Zamyla

1799
01:29:20,150 --> 01:29:23,550
to find that glint in her eye of the
bad guy, or the badge on his shoulder,

1800
01:29:23,550 --> 01:29:24,820
or whatever it was.

1801
01:29:24,820 --> 01:29:27,390
There is only a finite
amount of information here.

1802
01:29:27,390 --> 01:29:30,780
There is literally only a finite
number of rows and columns

1803
01:29:30,780 --> 01:29:34,280
and therefore really big pixels
from which to glean information.

1804
01:29:34,280 --> 01:29:38,540
Now, there do exist algorithms and
software that can smooth this out.

1805
01:29:38,540 --> 01:29:41,920
You can enhance the image in the
sense that you can kind of maybe

1806
01:29:41,920 --> 01:29:45,830
tweak the color so that it looks a
little more gradual, the color changes,

1807
01:29:45,830 --> 01:29:49,740
and a little less jarring, but
you can't just put pixels there,

1808
01:29:49,740 --> 01:29:54,140
put bits there that are not
existent in the first place.

1809
01:29:54,140 --> 01:29:58,780
And so, with this, invites the
question well, then what is an image,

1810
01:29:58,780 --> 01:30:01,950
how do you represent it, and what
can you actually glean from it

1811
01:30:01,950 --> 01:30:02,790
and do from it?

1812
01:30:02,790 --> 01:30:05,890
Well, let's consider in the simplest
case what an image might be.

1813
01:30:05,890 --> 01:30:08,770
Here is an image of a
wonderfully simple smiley face.

1814
01:30:08,770 --> 01:30:10,070
It's black and white.

1815
01:30:10,070 --> 01:30:14,120
And if it's black and white, frankly, we
can get away with just ones and zeros.

1816
01:30:14,120 --> 01:30:19,340
I might arbitrarily say that the number
1 shall represent the color white

1817
01:30:19,340 --> 01:30:22,760
and the number 0 shall represent
the color black and, as such,

1818
01:30:22,760 --> 01:30:26,680
if I just have a bunch of patterns
of 8 bits, ones and zeros,

1819
01:30:26,680 --> 01:30:29,020
I can effectively think
of them as a grid.

1820
01:30:29,020 --> 01:30:30,380
Rows and columns.

1821
01:30:30,380 --> 01:30:34,890
And if I see a 0 pixel, assume it's
a black dot, if I see a 1 pixel,

1822
01:30:34,890 --> 01:30:36,920
it's a white dot.

1823
01:30:36,920 --> 01:30:40,550
And, as such, I can
create a bitmapped image.

1824
01:30:40,550 --> 01:30:45,020
Bitmap, it's like a map, x's and
y's, of bits, bitmapped image.

1825
01:30:45,020 --> 01:30:48,014
There is the simplest, perhaps,
smiley face we can draw.

1826
01:30:48,014 --> 01:30:49,430
Now it's not all that interesting.

1827
01:30:49,430 --> 01:30:52,410
It would be a pretty useless
photograph if you only

1828
01:30:52,410 --> 01:30:54,009
had dots of that level of detail.

1829
01:30:54,009 --> 01:30:56,550
And indeed we saw, when you
really zoom in on Zumilah's eyes,

1830
01:30:56,550 --> 01:30:57,634
you have really big grids.

1831
01:30:57,634 --> 01:31:00,258
And those were colorful, but
there isn't that much information.

1832
01:31:00,258 --> 01:31:01,340
We need more resolution.

1833
01:31:01,340 --> 01:31:04,160
We need more dots,
more pixels, more bits.

1834
01:31:04,160 --> 01:31:07,460
And so the general case is to use
not something as simple as this,

1835
01:31:07,460 --> 01:31:09,430
but a more standard format like JPEG.

1836
01:31:09,430 --> 01:31:12,700
JPEG is what you see on Facebook
and on your cameras, most likely.

1837
01:31:12,700 --> 01:31:16,970
It's an image format that
photographs are commonly stored in,

1838
01:31:16,970 --> 01:31:20,670
because it stores millions of
colors-- potentially for photographs--

1839
01:31:20,670 --> 01:31:23,860
and it also allows you to compress them.

1840
01:31:23,860 --> 01:31:26,950
You can compress JPEGs in
such a way that you throw away

1841
01:31:26,950 --> 01:31:29,870
some of the 0's and 1's,
thereby degrading the image.

1842
01:31:29,870 --> 01:31:32,630
So it's a little blurrier,
or a little splotchy,

1843
01:31:32,630 --> 01:31:36,460
but at least it's much, much smaller
and can be emailed or texted or stored

1844
01:31:36,460 --> 01:31:38,630
with far less space involved.

1845
01:31:38,630 --> 01:31:42,040
And it turns out, if we
put on our forensics hats

1846
01:31:42,040 --> 01:31:47,800
now-- it turns out that JPEGs
all share something in common.

1847
01:31:47,800 --> 01:31:51,220
Any of the JPEGs you see on the
internet or have on your hard drive

1848
01:31:51,220 --> 01:31:56,210
or on your phone start with the
same three bytes, typically.

1849
01:31:56,210 --> 01:32:03,650
Specifically, the first three bytes
are the numbers 255, 216, 255.

1850
01:32:03,650 --> 01:32:04,170
Why that?

1851
01:32:04,170 --> 01:32:08,320
It's just the standard that was
adopted some time ago for JPEGs.

1852
01:32:08,320 --> 01:32:11,500
It's like a magic number, if you
will, at the start of the image.

1853
01:32:11,500 --> 01:32:13,330
Now it turns out these
are decimal numbers.

1854
01:32:13,330 --> 01:32:16,300
And frankly, in the world
of computing, and really

1855
01:32:16,300 --> 01:32:19,447
the world of file inputs and
output-- file management--

1856
01:32:19,447 --> 01:32:20,780
we don't really talk in decimal.

1857
01:32:20,780 --> 01:32:22,070
It's just not commonly done.

1858
01:32:22,070 --> 01:32:25,650
More commonly done is to talk,
not in decimal, not in binary

1859
01:32:25,650 --> 01:32:28,560
as we did in week 0, but in hexadecimal.

1860
01:32:28,560 --> 01:32:32,270
So it looks a little spooky
at first, but it really

1861
01:32:32,270 --> 01:32:37,174
is an alphabet of 16 characters
instead of 10, instead of 2.

1862
01:32:37,174 --> 01:32:40,507
And you start counting at 0, as the real
world does-- 0, 1, 2, 3, 4, 5, 6, 7, 8,

1863
01:32:40,507 --> 01:32:45,150
9-- but there is no 10, because
these are single digits.

1864
01:32:45,150 --> 01:32:50,280
So after 9 comes A, B, C,
D, E. So with hexadecimal,

1865
01:32:50,280 --> 01:32:54,230
you can effectively count
from 0 to 15 so long

1866
01:32:54,230 --> 01:32:56,080
as you borrow some
letters of the alphabet

1867
01:32:56,080 --> 01:32:59,910
to do 10, 11, 12, 13, 14, and 15.

1868
01:32:59,910 --> 01:33:03,470
So let's map that onto
this pattern of numbers

1869
01:33:03,470 --> 01:33:05,500
that demarcates the start of a JPEG.

1870
01:33:05,500 --> 01:33:09,000
These numbers, if we do them
out in binary, equals this.

1871
01:33:09,000 --> 01:33:11,400
And we can leave this
as an exercise at home

1872
01:33:11,400 --> 01:33:15,760
if you'd like, but trust
me, per week 0, that these

1873
01:33:15,760 --> 01:33:20,500
are the patterns of bits that are
equivalent to 255, 216, and 255.

1874
01:33:20,500 --> 01:33:23,490
Those are the light bulbs you
would need to turn on and off.

1875
01:33:23,490 --> 01:33:28,910
Meanwhile, we can add some
space there-- so before, after--

1876
01:33:28,910 --> 01:33:30,690
and I did this deliberately.

1877
01:33:30,690 --> 01:33:37,600
Because it turns out that hexadecimal,
insofar as you can count as high as 15

1878
01:33:37,600 --> 01:33:41,570
for 16 total characters-- it turns
out that hexadecimal is really useful.

1879
01:33:41,570 --> 01:33:45,280
Because with four bits,
four 0's and 1's, you

1880
01:33:45,280 --> 01:33:49,780
can count from zero
all the way up to what?

1881
01:33:49,780 --> 01:33:54,560
All the way up to 15, which is perfect,
because if you have four 1 bits,

1882
01:33:54,560 --> 01:33:55,330
that's 15.

1883
01:33:55,330 --> 01:33:57,380
If you have four 0 bits, that's 0.

1884
01:33:57,380 --> 01:34:01,600
And it turns out that patterns
of 4 bits-- so half of a byte--

1885
01:34:01,600 --> 01:34:04,070
map perfectly to hexadecimal characters.

1886
01:34:04,070 --> 01:34:08,180
You can express chunks of 4 bits with
hexadecimal characters perfectly.

1887
01:34:08,180 --> 01:34:13,340
As such, it turns out that 15,
again, is F. So we have FF.

1888
01:34:13,340 --> 01:34:18,759
And it turns out that
1101 and 1000 from 216.

1889
01:34:18,759 --> 01:34:20,800
If you take those 8 bits
and just spread them out

1890
01:34:20,800 --> 01:34:25,010
slightly into two groups of four, is the
letter D in hexadecimal and the number

1891
01:34:25,010 --> 01:34:26,250
8 in hexadecimal.

1892
01:34:26,250 --> 01:34:30,660
And then we have another couple
of 15's-- two sets of four 1 bits.

1893
01:34:30,660 --> 01:34:31,840
So that's FF.

1894
01:34:31,840 --> 01:34:37,070
Which is to say that the first
three bytes at the start of any JPEG

1895
01:34:37,070 --> 01:34:39,880
happen to be FF D8 FF.

1896
01:34:39,880 --> 01:34:43,910
And it's human convention to prefix
hexadecimal digits for clarity

1897
01:34:43,910 --> 01:34:45,670
in the real world with just 0x.

1898
01:34:45,670 --> 01:34:48,840
It means nothing fundamentally
other than, hey world, here comes

1899
01:34:48,840 --> 01:34:52,670
a hexadecimal number, so that the
world just knows what it's looking at

1900
01:34:52,670 --> 01:34:55,870
and doesn't confuse it for some
other numeric or base system.

1901
01:34:55,870 --> 01:34:59,810
So 0x just means here comes a
series of hexadecimal digits.

1902
01:34:59,810 --> 01:35:02,690
So that is what is at
the beginning of a JPEG.

1903
01:35:02,690 --> 01:35:07,020
And in fact, one of the problems
we put before you in CS50 each year

1904
01:35:07,020 --> 01:35:09,830
is to recover some JPEGs.

1905
01:35:09,830 --> 01:35:13,840
In fact, it's all too common,
unfortunately, to lose photographs

1906
01:35:13,840 --> 01:35:17,050
from a memory card or to accidentally
delete files from your computer.

1907
01:35:17,050 --> 01:35:19,450
And typically, you might
freak out or be worried

1908
01:35:19,450 --> 01:35:23,310
that, damn, I didn't mean to delete
those photos or delete those files.

1909
01:35:23,310 --> 01:35:25,430
And sometimes they are gone for good.

1910
01:35:25,430 --> 01:35:27,770
But it turns out that
computers and even phones

1911
01:35:27,770 --> 01:35:29,730
don't necessarily delete
photos right away.

1912
01:35:29,730 --> 01:35:32,645
They forget where they are, but
they don't outright delete them.

1913
01:35:32,645 --> 01:35:35,770
They don't change the 0's to 1's and
the 1's to 0's unless you start taking

1914
01:35:35,770 --> 01:35:37,410
more and more photos immediately.

1915
01:35:37,410 --> 01:35:40,970
But if you have accidentally formatted
or corrupted your memory card

1916
01:35:40,970 --> 01:35:45,390
in a phone or a computer, such that
you think you've now lost your photos,

1917
01:35:45,390 --> 01:35:46,530
what if you did this?

1918
01:35:46,530 --> 01:35:51,020
What if you wrote software that iterated
from the start of your memory card

1919
01:35:51,020 --> 01:35:55,570
or your phone all the way to the end of
your phone or your memory card's memory

1920
01:35:55,570 --> 01:35:59,470
looking for this pattern of
bits, this pattern of numbers

1921
01:35:59,470 --> 01:36:04,410
or hexadecimal digits, this pattern
of 24 bits-- 8 plus 8 plus 8?

1922
01:36:04,410 --> 01:36:07,070
With high probability,
if, upon iterating

1923
01:36:07,070 --> 01:36:12,200
through your phone's memory or
camera's memory, you see FF D8 and FF,

1924
01:36:12,200 --> 01:36:17,360
you can perhaps infer that the following
megabytes-- 2 megabytes, however

1925
01:36:17,360 --> 01:36:21,000
big the photograph is-- is
the entirety of a photo.

1926
01:36:21,000 --> 01:36:23,000
And if you just grab those
bits and save a copy,

1927
01:36:23,000 --> 01:36:25,350
maybe you can recover
all or some of the photo.

1928
01:36:25,350 --> 01:36:28,254
And indeed, one of the challenges
you'll soon see in our problems

1929
01:36:28,254 --> 01:36:30,420
that focus on forensics is
going to be exactly this.

1930
01:36:30,420 --> 01:36:34,890
We will accidentally format a memory
card from a camera or a phone.

1931
01:36:34,890 --> 01:36:38,300
We will give you a forensic image
of that memory card, so to speak,

1932
01:36:38,300 --> 01:36:42,970
a perfect copy of all of the 0's and
1's therein, give it to you as a file,

1933
01:36:42,970 --> 01:36:46,760
and challenge you with writing software
that iterates over that file's bytes,

1934
01:36:46,760 --> 01:36:50,425
from the 0th byte all the way to the end
of the file, looking for this pattern.

1935
01:36:50,425 --> 01:36:54,100
And any time you see this
pattern, you will need to say,

1936
01:36:54,100 --> 01:36:55,610
this is probably a JPEG.

1937
01:36:55,610 --> 01:37:00,900
Let me start copying these bytes into
a separate file name-- something.jpg.

1938
01:37:00,900 --> 01:37:05,640
And indeed, if you get the code right,
suddenly out of this forensic image

1939
01:37:05,640 --> 01:37:11,120
pops any number of photographs
that we thought were lost forever.

1940
01:37:11,120 --> 01:37:16,010
Bitmap is another type of
image file-- older, perhaps,

1941
01:37:16,010 --> 01:37:18,880
than JPEG and simpler--
truly a bitmapped image

1942
01:37:18,880 --> 01:37:21,700
with slightly less fancy
algorithms for compression.

1943
01:37:21,700 --> 01:37:25,260
But if you remember this
world, this is perhaps

1944
01:37:25,260 --> 01:37:29,710
a perfect example of a bitmap image
from Windows XP back in the day.

1945
01:37:29,710 --> 01:37:33,400
The wallpaper or desktop image that many
of you might have had on your computers

1946
01:37:33,400 --> 01:37:34,270
looked like this.

1947
01:37:34,270 --> 01:37:36,770
As an aside, if you go poking
around I think on Wikipedia,

1948
01:37:36,770 --> 01:37:39,500
someone wonderfully went
to this same spot, found it

1949
01:37:39,500 --> 01:37:42,656
where the artist had taken
this photograph for Microsoft,

1950
01:37:42,656 --> 01:37:43,780
and it now looks like this.

1951
01:37:43,780 --> 01:37:47,390
So it's not quite the
beautiful place it once was,

1952
01:37:47,390 --> 01:37:48,884
but that, indeed, is the same hill.

1953
01:37:48,884 --> 01:37:50,800
And this is really just
an opportunity to talk

1954
01:37:50,800 --> 01:37:53,400
about this picture,
which is what's really

1955
01:37:53,400 --> 01:37:57,000
underneath the hood of that
beautiful grassy meadow.

1956
01:37:57,000 --> 01:37:59,470
It's this kind of file header.

1957
01:37:59,470 --> 01:38:02,810
We very quickly can make nature
seem very boring quickly with this.

1958
01:38:02,810 --> 01:38:06,140
But this is a very complicated,
convoluted looking way

1959
01:38:06,140 --> 01:38:10,360
of just formalizing
what we mean by a file.

1960
01:38:10,360 --> 01:38:11,450
Like, what is a file?

1961
01:38:11,450 --> 01:38:15,320
A file is just a bunch of bits, 0's and
1's, stored somewhere on your laptop,

1962
01:38:15,320 --> 01:38:17,687
or desktop, or phone, or wherever.

1963
01:38:17,687 --> 01:38:19,520
But what does it mean
to be a Microsoft Word

1964
01:38:19,520 --> 01:38:25,520
file versus a JPEG versus
a bitmap versus an Excel

1965
01:38:25,520 --> 01:38:27,770
file versus any number
of other file formats

1966
01:38:27,770 --> 01:38:29,560
that you might have on your computer?

1967
01:38:29,560 --> 01:38:35,190
MPEG4, or MP3, or AAC, or any number
of media formats as well-- well really,

1968
01:38:35,190 --> 01:38:40,330
what it means to be a file, is to be
filled with 0's and 1's-- that's true--

1969
01:38:40,330 --> 01:38:45,410
but to follow a certain pattern of 0's
and 1's such that the first several

1970
01:38:45,410 --> 01:38:49,980
bits or first many bits of a
file typically follow a pattern.

1971
01:38:49,980 --> 01:38:52,110
And indeed, JPEGs have
a pretty simple pattern.

1972
01:38:52,110 --> 01:38:54,250
Those first three bytes,
those first 24 bits,

1973
01:38:54,250 --> 01:38:58,110
follow a certain pattern
of 255, 216, 255.

1974
01:38:58,110 --> 01:38:59,999
And that demarcates the start of a JPEG.

1975
01:38:59,999 --> 01:39:01,915
And there's some more
complexity therein, too.

1976
01:39:01,915 --> 01:39:05,050
In a bitmap, this looks
overwhelming at first glance,

1977
01:39:05,050 --> 01:39:07,520
but this is how the world
decided to standardize

1978
01:39:07,520 --> 01:39:10,650
what's inside of the first
few bytes of a bitmap

1979
01:39:10,650 --> 01:39:13,310
file like that grassy
meadow from Windows XP.

1980
01:39:13,310 --> 01:39:17,000
And we'll come back to this in more
detail and the problem set before long.

1981
01:39:17,000 --> 01:39:20,390
But you'll notice some identifiers
here that might jump out at you.

1982
01:39:20,390 --> 01:39:25,939
So width, height, size, compression--
so there are some key words in there

1983
01:39:25,939 --> 01:39:27,480
that might make some intuitive sense.

1984
01:39:27,480 --> 01:39:31,440
And indeed, somewhere inside of a
bitmap image, like that grassy meadow,

1985
01:39:31,440 --> 01:39:33,940
is information stored, like
what is the width of that image?

1986
01:39:33,940 --> 01:39:35,314
What is the height of that image?

1987
01:39:35,314 --> 01:39:36,430
Is it compressed, and how?

1988
01:39:36,430 --> 01:39:40,070
And then more interestingly,
at the bottom of this picture

1989
01:39:40,070 --> 01:39:46,060
is the beginning of what bitmap calls
RGB triples-- Red, Green, Blue triples.

1990
01:39:46,060 --> 01:39:51,480
It turns out with
patterns of three bytes,

1991
01:39:51,480 --> 01:39:55,740
you can represent, top to bottom,
left to right, essentially, the color

1992
01:39:55,740 --> 01:39:58,660
of every one of the dots in an image.

1993
01:39:58,660 --> 01:40:02,340
So when we enhanced Zamyla's image, and
you literally saw those really big dots

1994
01:40:02,340 --> 01:40:02,950
or pixels.

1995
01:40:02,950 --> 01:40:07,050
Each of those dots or pixels
has 24 bits representing

1996
01:40:07,050 --> 01:40:09,590
its color-- how much red,
how much green, how much blue

1997
01:40:09,590 --> 01:40:12,290
per our discussion of colors in week 0.

1998
01:40:12,290 --> 01:40:14,720
And so that's what most
of a bitmap file is here.

1999
01:40:14,720 --> 01:40:18,082
The dot dot dot just means these
can go on for quite some time.

2000
01:40:18,082 --> 01:40:19,040
What color is this dot?

2001
01:40:19,040 --> 01:40:19,998
What color is this dot?

2002
01:40:19,998 --> 01:40:20,970
What color is this dot?

2003
01:40:20,970 --> 01:40:24,390
All of that is standardized
inside of the file.

2004
01:40:24,390 --> 01:40:30,170
And it turns out in C, we can express
and represent that kind of structure

2005
01:40:30,170 --> 01:40:32,790
using one last keyword for this week.

2006
01:40:32,790 --> 01:40:37,910
In C, there is also a keyword
called struct-- structure--

2007
01:40:37,910 --> 01:40:40,550
that allows you to create
an actual structure

2008
01:40:40,550 --> 01:40:42,570
inside of which you store information.

2009
01:40:42,570 --> 01:40:45,300
For instance, the programming
language C does not

2010
01:40:45,300 --> 01:40:47,440
come with a data type
that represents students.

2011
01:40:47,440 --> 01:40:50,420
It comes with ints, and chars,
and floats-- heck, it doesn't even

2012
01:40:50,420 --> 01:40:51,500
come with string.

2013
01:40:51,500 --> 01:40:53,500
It certainly doesn't come with student.

2014
01:40:53,500 --> 01:40:56,147
But I would generally
think of a student as being

2015
01:40:56,147 --> 01:40:57,480
the combination of a few things.

2016
01:40:57,480 --> 01:40:58,521
And let's keep it simple.

2017
01:40:58,521 --> 01:41:02,280
A student is a combination of the
student's name and their dorm.

2018
01:41:02,280 --> 01:41:06,380
And bunches of other detail, but for
now, let's just focus on name and dorm.

2019
01:41:06,380 --> 01:41:08,190
Now the syntax is a
little new for us here,

2020
01:41:08,190 --> 01:41:13,830
but all this is saying is, hey,
C, define a type for me that

2021
01:41:13,830 --> 01:41:18,470
is a structure containing two
fields inside of it, name and dorm,

2022
01:41:18,470 --> 01:41:20,454
and call this new type students.

2023
01:41:20,454 --> 01:41:23,120
So it's a little more complicated
than our typedef for a string,

2024
01:41:23,120 --> 01:41:25,670
because a string was just
a synonym for char star.

2025
01:41:25,670 --> 01:41:30,440
This case, a student, is a synonym
for this container of things.

2026
01:41:30,440 --> 01:41:34,480
It's like encapsulating two
pieces of data-- name and dorm.

2027
01:41:34,480 --> 01:41:37,980
But this is really useful as follows.

2028
01:41:37,980 --> 01:41:42,810
With this kind of C code, can
we now do things like this?

2029
01:41:42,810 --> 01:41:46,311
Let me go ahead and open up structs.h.

2030
01:41:46,311 --> 01:41:48,310
And you'll see a little
header file I whipped up

2031
01:41:48,310 --> 01:41:51,580
here that contains very
little information,

2032
01:41:51,580 --> 01:41:55,580
just that same typedef
for struct, but I've also

2033
01:41:55,580 --> 01:41:58,600
included CS50.h in my own header file.

2034
01:41:58,600 --> 01:41:59,152
Why?

2035
01:41:59,152 --> 01:42:00,860
Well, just for today's
purposes, I wanted

2036
01:42:00,860 --> 01:42:05,540
to relax our discussion of char star
for a moment and talk about string.

2037
01:42:05,540 --> 01:42:08,410
But technically, I could just do this.

2038
01:42:08,410 --> 01:42:10,150
And technically I could do this.

2039
01:42:10,150 --> 01:42:13,960
And then I could get rid of that,
because now this is true C code.

2040
01:42:13,960 --> 01:42:15,690
There is no need for the CS50 library.

2041
01:42:15,690 --> 01:42:18,815
But either is equivalent, and whatever
you're more comfortable with for now

2042
01:42:18,815 --> 01:42:21,210
is certainly fine.

2043
01:42:21,210 --> 01:42:26,530
But let me now open up structs-0.c
and do something with this.

2044
01:42:26,530 --> 01:42:29,060
So in this program, notice
that the top of this file, I

2045
01:42:29,060 --> 01:42:33,530
first define a value
called students to be 3.

2046
01:42:33,530 --> 01:42:35,000
This is an example of a constant.

2047
01:42:35,000 --> 01:42:40,060
Sharp define or pound define here
says, define, not a variable,

2048
01:42:40,060 --> 01:42:42,830
but a constant-- and the
convention in programming

2049
01:42:42,830 --> 01:42:46,200
is to use all capital letters--
define a constant equal to some value.

2050
01:42:46,200 --> 01:42:48,660
This is not a variable
whose value can change.

2051
01:42:48,660 --> 01:42:51,350
This is just a keyword,
STUDENTS, in all caps,

2052
01:42:51,350 --> 01:42:53,820
that is fixed now on that value 3.

2053
01:42:53,820 --> 01:42:57,290
And it's one way to define a constant
in C, a value that does not change.

2054
01:42:57,290 --> 01:42:59,180
What am I now going
to do with this value?

2055
01:42:59,180 --> 01:43:04,514
I first, here, declare a variable called
students containing three students.

2056
01:43:04,514 --> 01:43:07,430
So it's a little confusing that we've
got students, STUDENTS, student,

2057
01:43:07,430 --> 01:43:08,888
but they all mean different things.

2058
01:43:08,888 --> 01:43:11,440
students is just going
by the name of my array.

2059
01:43:11,440 --> 01:43:15,560
STUDENTS in all caps is the value
3 from that constant up above.

2060
01:43:15,560 --> 01:43:22,190
And then student is the type of this
array per the header file, structs.h.

2061
01:43:22,190 --> 01:43:24,520
So this is just really a
succinct way of saying,

2062
01:43:24,520 --> 01:43:30,620
hey, computer, give me an array of size
3 inside of which are three students,

2063
01:43:30,620 --> 01:43:31,690
ultimately.

2064
01:43:31,690 --> 01:43:34,750
Now here's an array that
iterates from i up to three.

2065
01:43:34,750 --> 01:43:38,890
I print out name colon, prompting
the user with getstring for a name.

2066
01:43:38,890 --> 01:43:42,490
And then notice this new operator dot.

2067
01:43:42,490 --> 01:43:49,110
Because struct is being used, and
students bracket i is a structure, not

2068
01:43:49,110 --> 01:43:53,530
an int, or a float, or a string itself,
we have to go inside of that structure

2069
01:43:53,530 --> 01:43:55,320
to get its field called name.

2070
01:43:55,320 --> 01:43:58,670
So dot name says, here's the
structure student-- go inside,

2071
01:43:58,670 --> 01:44:01,920
and get at the name field, and
put at that name field whatever

2072
01:44:01,920 --> 01:44:03,469
the return value of getstring is.

2073
01:44:03,469 --> 01:44:04,760
And do the same thing for dorm.

2074
01:44:04,760 --> 01:44:10,110
Go into the i-th student's structure,
and store at the dorm field

2075
01:44:10,110 --> 01:44:12,390
the string that has been typed in next.

2076
01:44:12,390 --> 01:44:14,590
Now let's scroll down a
little lower and take a look

2077
01:44:14,590 --> 01:44:16,840
at what this program proceeds to do.

2078
01:44:16,840 --> 01:44:20,480
It's a very simple loop that sort
of, just for demonstration's sake,

2079
01:44:20,480 --> 01:44:24,950
says so-and-so is in such-and-such,
printing out the student's name

2080
01:44:24,950 --> 01:44:26,610
and dorm respectively.

2081
01:44:26,610 --> 01:44:30,510
In other words, if I go down here
and compile structs-0, and then

2082
01:44:30,510 --> 01:44:33,070
run structs-0-- I'm going
to go ahead and type

2083
01:44:33,070 --> 01:44:41,770
in David Mather and Rob and
Kirkland and Zumilah and Courier,

2084
01:44:41,770 --> 01:44:44,810
and you see literally a
regurgitation of what I wrote.

2085
01:44:44,810 --> 01:44:47,400
But what's key here is the
syntax that I've introduced.

2086
01:44:47,400 --> 01:44:50,790
I'm using a struct, and I'm
accessing its properties or fields

2087
01:44:50,790 --> 01:44:52,850
within by way of this dot operator.

2088
01:44:52,850 --> 01:44:55,410
Just means go inside the
struct and get that value.

2089
01:44:55,410 --> 01:45:00,790
But more cool than that is that
now that we understand files,

2090
01:45:00,790 --> 01:45:04,300
and now that we have the ability to
store arbitrary structures that did not

2091
01:45:04,300 --> 01:45:08,540
come with C, so to speak,
notice what else we can do.

2092
01:45:08,540 --> 01:45:13,080
In this version of the program,
I'm adding one final feature,

2093
01:45:13,080 --> 01:45:16,980
combining today's discussion
of pointers with this most

2094
01:45:16,980 --> 01:45:19,400
recent discussion of files.

2095
01:45:19,400 --> 01:45:22,050
It turns out, in C-- and
it's a little inconsistent--

2096
01:45:22,050 --> 01:45:26,594
there is a data type called FILE in all
capital letters, for whatever reason.

2097
01:45:26,594 --> 01:45:29,760
In lower case here, I'm just saying
hey, computer, give me a variable called

2098
01:45:29,760 --> 01:45:31,980
file of type file star.

2099
01:45:31,980 --> 01:45:34,520
That is, give me a
variable that will store

2100
01:45:34,520 --> 01:45:38,560
a pointer to a file, the
address of a file, if you will.

2101
01:45:38,560 --> 01:45:42,600
fopen is a new function that
we've not used before that says,

2102
01:45:42,600 --> 01:45:46,460
hey, browser, open up the
file called students.csv

2103
01:45:46,460 --> 01:45:48,870
in write mode. w means write mode.

2104
01:45:48,870 --> 01:45:53,620
So I want to save a file, not open and
read a file, but write and save a file.

2105
01:45:53,620 --> 01:45:55,641
Sanity check-- is file
not equal to null?

2106
01:45:55,641 --> 01:45:56,890
If so, we're going to proceed.

2107
01:45:56,890 --> 01:45:58,310
I just want to make
sure nothing went wrong.

2108
01:45:58,310 --> 01:46:01,490
And something might go wrong, if maybe
I don't have permission on the computer

2109
01:46:01,490 --> 01:46:04,615
to create files, maybe the computer's
out of space or something-- something

2110
01:46:04,615 --> 01:46:09,160
could go wrong and null is returned per
the documentation for fopen or its man

2111
01:46:09,160 --> 01:46:10,170
page.

2112
01:46:10,170 --> 01:46:11,390
So here I have a loop.

2113
01:46:11,390 --> 01:46:15,380
For i from 0 to 3-- so do
this 3 times-- fprintf.

2114
01:46:15,380 --> 01:46:18,010
So fprintf is identical
to printf that you've

2115
01:46:18,010 --> 01:46:22,130
come to get to know in recent
weeks, but fprintf is file printf.

2116
01:46:22,130 --> 01:46:26,850
And it allows you to print strings,
not to the screen, but to a file.

2117
01:46:26,850 --> 01:46:28,940
So its first argument
is the name of the file

2118
01:46:28,940 --> 01:46:30,890
that you've opened that
you want to print to.

2119
01:46:30,890 --> 01:46:33,830
Second argument-- and all the others--
are just the same as printf as always--

2120
01:46:33,830 --> 01:46:36,070
a string, maybe with some
format codes, and then some

2121
01:46:36,070 --> 01:46:39,270
values that you want to
plug in here and here.

2122
01:46:39,270 --> 01:46:44,410
So if you've ever seen a CSV file in the
real world-- a Comma Separated Values,

2123
01:46:44,410 --> 01:46:47,880
these are very simple
Microsoft Excel files

2124
01:46:47,880 --> 01:46:50,020
or Apple Numbers files
or Google Spreadsheets

2125
01:46:50,020 --> 01:46:54,210
can export these as well-- they are just
text files whereby all of the fields

2126
01:46:54,210 --> 01:46:56,110
are separated by commas.

2127
01:46:56,110 --> 01:46:59,670
And so we now, today, have the ability
not only to understand what's going on

2128
01:46:59,670 --> 01:47:01,780
underneath the hood
memory-wise, but we now

2129
01:47:01,780 --> 01:47:05,980
have the ability to use the star
operator-- and therefore pointers more

2130
01:47:05,980 --> 01:47:09,370
generally, which are required
in order to manipulate files

2131
01:47:09,370 --> 01:47:15,750
with fopen and this file data type-- and
with fprintf can I write information?

2132
01:47:15,750 --> 01:47:17,920
Can I print information to those files?

2133
01:47:17,920 --> 01:47:20,705
So for the first time ever,
I have written a program

2134
01:47:20,705 --> 01:47:23,330
that, when I run in just a moment,
is going to have the ability

2135
01:47:23,330 --> 01:47:25,220
to save information.

2136
01:47:25,220 --> 01:47:28,060
I have effectively implemented the
equivalent of the File Save menu

2137
01:47:28,060 --> 01:47:29,030
for the first time.

2138
01:47:29,030 --> 01:47:30,905
Every other program
we've written so far just

2139
01:47:30,905 --> 01:47:34,470
throws its information and its
memory away, but not this time.

2140
01:47:34,470 --> 01:47:42,680
Let me go ahead and do
make structs-1, and then

2141
01:47:42,680 --> 01:47:50,480
dot slash structs-1, and let me go ahead
and type in David and Mather and Rob

2142
01:47:50,480 --> 01:47:54,980
and Kirkland and Zumilah and Courier.

2143
01:47:54,980 --> 01:47:56,060
Enter.

2144
01:47:56,060 --> 01:47:57,680
Nothing seems to happen.

2145
01:47:57,680 --> 01:48:03,930
But let me go to my file browser in the
IDE, and notice this-- students.csv.

2146
01:48:03,930 --> 01:48:09,060
If I open that, I have created this
file-- David comma Mather, Rob comma

2147
01:48:09,060 --> 01:48:10,690
Kirkland, Zamyla comma Courier.

2148
01:48:10,690 --> 01:48:13,230
And if I downloaded this
file, double-clicked it

2149
01:48:13,230 --> 01:48:16,520
as you can now if you'd like,
and open it on your Mac or PC,

2150
01:48:16,520 --> 01:48:20,180
if you have Numbers installed or Excel
installed or some comparable program.

2151
01:48:20,180 --> 01:48:23,830
That should open that program, because
it will recognize the .csv extension.

2152
01:48:23,830 --> 01:48:27,270
And it will display all of those
names and all of those dorms

2153
01:48:27,270 --> 01:48:29,660
or houses in separate columns.

2154
01:48:29,660 --> 01:48:32,790
Because the world decided some
time ago that the format known

2155
01:48:32,790 --> 01:48:36,130
as CSV, Comma Separated Values,
is just simple text file

2156
01:48:36,130 --> 01:48:39,500
with commas separating values.

2157
01:48:39,500 --> 01:48:44,150
And so we now have the ability
to express all of this and more.

2158
01:48:44,150 --> 01:48:48,400
So on the horizon is to solve some
of these same kinds of problems

2159
01:48:48,400 --> 01:48:52,640
and to actually implement for yourself
code that writes files and reads files.

2160
01:48:52,640 --> 01:48:55,390
But to solve actual problems
motivated from the real world domain,

2161
01:48:55,390 --> 01:48:57,460
to recover information
that's been deliberately

2162
01:48:57,460 --> 01:48:59,890
scrambled or obscured,
to recover information

2163
01:48:59,890 --> 01:49:02,120
that's been accidentally
or maliciously deleted,

2164
01:49:02,120 --> 01:49:04,970
to recover things, photographs,
memories that you actually

2165
01:49:04,970 --> 01:49:08,890
care about-- all with a
fundamental understanding of what's

2166
01:49:08,890 --> 01:49:11,130
going on inside of your own computer.

2167
01:49:11,130 --> 01:49:16,122
But until then, keep an eye out for
such TV shows and movies as these.

2168
01:49:16,122 --> 01:49:16,788
[VIDEO PLAYBACK]

2169
01:49:16,788 --> 01:49:18,270
-OK.

2170
01:49:18,270 --> 01:49:20,246
Now let's get a good look at you.

2171
01:49:20,246 --> 01:49:27,162


2172
01:49:27,162 --> 01:49:28,150
-Hold it.

2173
01:49:28,150 --> 01:49:29,138
Run that back.

2174
01:49:29,138 --> 01:49:30,126
-Wait a minute.

2175
01:49:30,126 --> 01:49:31,940
Go right.

2176
01:49:31,940 --> 01:49:32,440
-There.

2177
01:49:32,440 --> 01:49:32,940
Freeze that.

2178
01:49:32,940 --> 01:49:33,732
-Full screen.

2179
01:49:33,732 --> 01:49:34,450
-OK, freeze that.

2180
01:49:34,450 --> 01:49:35,700
-Tighten up on that, will you?

2181
01:49:35,700 --> 01:49:37,630
-Vector in on that guy
by the back of you.

2182
01:49:37,630 --> 01:49:40,270
-Zoom in right here on this spot.

2183
01:49:40,270 --> 01:49:44,130
-With the right equipment, the
image can be enlarged and sharpened.

2184
01:49:44,130 --> 01:49:44,833
-What's that?

2185
01:49:44,833 --> 01:49:46,055
-It's an enhancement program.

2186
01:49:46,055 --> 01:49:47,680
-Can you clear that up any?

2187
01:49:47,680 --> 01:49:48,980
-I don't know.

2188
01:49:48,980 --> 01:49:50,000
Let's enhance it.

2189
01:49:50,000 --> 01:49:52,520
-Enhance section A6.

2190
01:49:52,520 --> 01:49:53,822
-I enhanced the detail and--

2191
01:49:53,822 --> 01:49:55,280
-I think there's enough to enhance.

2192
01:49:55,280 --> 01:49:56,279
Release it to my screen.

2193
01:49:56,279 --> 01:49:58,151
-Enhance the reflection in her eye.

2194
01:49:58,151 --> 01:49:59,900
-Let's run this through
video enhancement.

2195
01:49:59,900 --> 01:50:01,108
-Edgar, can you enhance this?

2196
01:50:01,108 --> 01:50:02,790
-Hang on.

2197
01:50:02,790 --> 01:50:04,840
-I've been working on this reflection.

2198
01:50:04,840 --> 01:50:05,850
-Someone's reflection.

2199
01:50:05,850 --> 01:50:06,804
-Reflection.

2200
01:50:06,804 --> 01:50:08,470
-There's a reflection of the man's face.

2201
01:50:08,470 --> 01:50:09,136
-The reflection.

2202
01:50:09,136 --> 01:50:10,220
-There's a reflection.

2203
01:50:10,220 --> 01:50:11,570
-Zoom in on the mirror.

2204
01:50:11,570 --> 01:50:13,639
-You can see a reflection.

2205
01:50:13,639 --> 01:50:15,180
-Can you enhance the image from here?

2206
01:50:15,180 --> 01:50:16,220
-Can you enhance it right here?

2207
01:50:16,220 --> 01:50:17,053
-Can you enhance it?

2208
01:50:17,053 --> 01:50:17,960
-Can you enhance it?

2209
01:50:17,960 --> 01:50:18,730
-Can we enhance this?

2210
01:50:18,730 --> 01:50:19,480
-Can you enhance it?

2211
01:50:19,480 --> 01:50:20,230
-Hold on a second.

2212
01:50:20,230 --> 01:50:20,820
I'll enhance.

2213
01:50:20,820 --> 01:50:21,930
-Zoom in on the door.

2214
01:50:21,930 --> 01:50:22,914
-Times 10.

2215
01:50:22,914 --> 01:50:23,414
-Zoom.

2216
01:50:23,414 --> 01:50:24,370
-Move in.

2217
01:50:24,370 --> 01:50:25,040
More.

2218
01:50:25,040 --> 01:50:25,760
-Wait, stop.

2219
01:50:25,760 --> 01:50:26,260
-Stop.

2220
01:50:26,260 --> 01:50:26,830
-Pause it.

2221
01:50:26,830 --> 01:50:30,310
-Rotate it 75 degrees
around the vertical, please.

2222
01:50:30,310 --> 01:50:31,636
-Stop.

2223
01:50:31,636 --> 01:50:34,816
And go back to the part
above the doors again.

2224
01:50:34,816 --> 01:50:36,440
-Got an image enhancer that can bitmap.

2225
01:50:36,440 --> 01:50:39,622
-Maybe we can use the Pradeep
Sen method see into the windows.

2226
01:50:39,622 --> 01:50:41,080
-This software is state of the art.

2227
01:50:41,080 --> 01:50:42,770
-The eigenvalue is off.

2228
01:50:42,770 --> 01:50:45,160
-With the right
combination of algorithms--

2229
01:50:45,160 --> 01:50:47,440
-He's taken illumination
algorithms to the next level,

2230
01:50:47,440 --> 01:50:49,640
and I can use them to
enhance this photograph.

2231
01:50:49,640 --> 01:50:52,270
-Lock on and enlarge the z-axis.

2232
01:50:52,270 --> 01:50:53,280
-Enhance.

2233
01:50:53,280 --> 01:50:53,850
-Enhance.

2234
01:50:53,850 --> 01:50:54,450
-Enhance.

2235
01:50:54,450 --> 01:50:55,473
-Freeze and enhance.

2236
01:50:55,473 --> 01:50:56,056
[END PLAYBACK]

2237
01:50:56,056 --> 01:50:57,139
DAVID J. MALAN: All right.

2238
01:50:57,139 --> 01:50:58,630
That's it for CS50.

2239
01:50:58,630 --> 01:51:00,367
We will see you next time.

2240
01:51:00,367 --> 01:51:04,023


2241
01:51:04,023 --> 01:51:06,590
[VIDEO PLAYBACK]

2242
01:51:06,590 --> 01:51:10,370
-Everyone knows you went to Yale,
but nobody knows what happened.

2243
01:51:10,370 --> 01:51:12,180
What can you tell me about that weekend?

2244
01:51:12,180 --> 01:51:14,990
What can you tell me about Rosebud?

2245
01:51:14,990 --> 01:51:17,390
[DRAMATIC CHORD]

2246
01:51:17,390 --> 01:51:42,290
[DRAMATIC MUSIC PLAYING]

2247
01:51:42,290 --> 01:51:43,540
[END PLAYBACK]
```
