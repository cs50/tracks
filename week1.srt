1
00:00:00,000 --> 00:00:00,000

2
00:00:00,000 --> 00:00:00,000
[MUSIC PLAYING]

3
00:00:00,000 --> 00:00:13,950

4
00:00:13,950 --> 00:00:16,240
>> DAVID J. MALAN: All right, this is CS50.

5
00:00:16,240 --> 00:00:18,010
And this is week one.

6
00:00:18,010 --> 00:00:22,050
So recall that last time in week zero,
we focused on computational thinking.

7
00:00:22,050 --> 00:00:25,440
And we transitioned from that to
Scratch, a graphical programming

8
00:00:25,440 --> 00:00:27,360
language from our friends
at MIT's Media Lab.

9
00:00:27,360 --> 00:00:31,730
>> And with Scratch, did we explore
ideas like functions, and conditions,

10
00:00:31,730 --> 00:00:35,210
and loops, and variables, and even
events, and threads, and more.

11
00:00:35,210 --> 00:00:37,880
And today, we're going to
continue using those ideas,

12
00:00:37,880 --> 00:00:40,630
and really taking them for
granted, but translate them

13
00:00:40,630 --> 00:00:44,220
to another language known as C. Now,
C is a more traditional language.

14
00:00:44,220 --> 00:00:46,020
It's a lower level
language, if you will.

15
00:00:46,020 --> 00:00:47,300
>> It's purely textual.

16
00:00:47,300 --> 00:00:49,910
And so at first glance, it's
all going to look rather cryptic

17
00:00:49,910 --> 00:00:51,430
if you've never programmed before.

18
00:00:51,430 --> 00:00:53,530
We're going to have
semi-colons, and parentheses,

19
00:00:53,530 --> 00:00:55,150
and curly braces, and more.

20
00:00:55,150 --> 00:00:57,240
But realize that even
though the syntax is

21
00:00:57,240 --> 00:01:00,600
about to look a little unfamiliar
to most of you, see past that.

22
00:01:00,600 --> 00:01:03,220
And try to see the ideas
that are, indeed, familiar,

23
00:01:03,220 --> 00:01:06,750
because here in week one what
we'll begin to do is to compare,

24
00:01:06,750 --> 00:01:08,980
initially, Scratch versus C.

25
00:01:08,980 --> 00:01:12,350
>> So, for instance, recall that when we
implemented the first of our programs

26
00:01:12,350 --> 00:01:16,220
last time, we had a block that looked
a little something like this-- when

27
00:01:16,220 --> 00:01:19,990
green flag clicked, and then we had
one or more puzzle pieces below it,

28
00:01:19,990 --> 00:01:22,150
in this case, say, hello world.

29
00:01:22,150 --> 00:01:24,870
So, indeed, in Scratch,
when I click that green flag

30
00:01:24,870 --> 00:01:27,390
to run my program, so
to speak, these are

31
00:01:27,390 --> 00:01:29,520
the blocks that get executed, or run.

32
00:01:29,520 --> 00:01:32,230
And, specifically, Scratch
said, hello, world.

33
00:01:32,230 --> 00:01:35,377
>> Now, I could have specified
different words here.

34
00:01:35,377 --> 00:01:37,960
But we'll see that, indeed, many
of these blocks-- and indeed,

35
00:01:37,960 --> 00:01:41,880
in C many functions-- can be
parametrized or customized

36
00:01:41,880 --> 00:01:43,150
to do different things.

37
00:01:43,150 --> 00:01:45,520
In fact, in C if we
want to convert, now,

38
00:01:45,520 --> 00:01:47,567
this Scratch program
to this other language,

39
00:01:47,567 --> 00:01:49,650
we're going to write a
little something like this.

40
00:01:49,650 --> 00:01:52,540
>> Granted, there is some unfamiliar
syntax there most likely, int,

41
00:01:52,540 --> 00:01:54,380
and parentheses, and void.

42
00:01:54,380 --> 00:01:57,740
But printf-- even though you would
think it would just be print.

43
00:01:57,740 --> 00:02:00,120
But print means print
formatted, as we'll soon see.

44
00:02:00,120 --> 00:02:02,140
This literally will print
to the screen whatever

45
00:02:02,140 --> 00:02:05,990
is inside of those parentheses, which
of course in this case is, hello world.

46
00:02:05,990 --> 00:02:09,290
>> But you'll notice some other
syntax, some double quotes,

47
00:02:09,290 --> 00:02:11,890
that the parentheses at the end,
the semi-colon and the like.

48
00:02:11,890 --> 00:02:15,027
So there's a bit of overhead,
so to speak, both cognitively

49
00:02:15,027 --> 00:02:17,860
and syntactically, that we're going
to have to remember before long.

50
00:02:17,860 --> 00:02:20,720
But realize that with practice,
this will start to jump out at you.

51
00:02:20,720 --> 00:02:24,920
>> In fact, let's focus on that one
function specifically-- in this case,

52
00:02:24,920 --> 00:02:26,290
say hello world.

53
00:02:26,290 --> 00:02:27,560
So say is the function.

54
00:02:27,560 --> 00:02:31,320
Hello world is its parameter,
or argument, its customisation.

55
00:02:31,320 --> 00:02:34,320
>> And the equivalence in C is just
going to be this one line here,

56
00:02:34,320 --> 00:02:38,710
where printf is equivalent to, say,
the double quoted string, hello

57
00:02:38,710 --> 00:02:41,470
world is equivalent, of course,
to what's in the white box there.

58
00:02:41,470 --> 00:02:45,680
And the backslash n, though a little
strange and absent from Scratch,

59
00:02:45,680 --> 00:02:49,380
simply is going to have the effect we'll
see in a computer, like my Mac or a PC,

60
00:02:49,380 --> 00:02:51,660
of just moving the
cursor to the next line.

61
00:02:51,660 --> 00:02:53,970
It's like hitting
Enter on your keyboard.

62
00:02:53,970 --> 00:02:55,580
>> So we'll see that again before long.

63
00:02:55,580 --> 00:02:58,640
But first, let's take a look at this
other example in the case of loops.

64
00:02:58,640 --> 00:03:02,830
We had this forever loop last time,
which was a series of puzzle pieces

65
00:03:02,830 --> 00:03:05,490
that did something literally
forever-- in this case,

66
00:03:05,490 --> 00:03:08,360
say, hello world, hello world,
hello world, hello world.

67
00:03:08,360 --> 00:03:10,350
So it's an infinite loop by design.

68
00:03:10,350 --> 00:03:14,580
>> In C, if we want to implement this
same idea, we might simply do this.

69
00:03:14,580 --> 00:03:19,570
While true, printf hello world-- now
while, just semantically, kind of

70
00:03:19,570 --> 00:03:23,090
conjures up the idea of doing
something again, and again, and again,

71
00:03:23,090 --> 00:03:23,980
and for how long?

72
00:03:23,980 --> 00:03:27,990
Well, true-- recall that
true is just on or one.

73
00:03:27,990 --> 00:03:30,660
>> And true is, of course, always true.

74
00:03:30,660 --> 00:03:33,060
So it's kind of a meaningless
statement just to say true.

75
00:03:33,060 --> 00:03:36,890
But indeed, this is deliberate,
because if true is just always true,

76
00:03:36,890 --> 00:03:40,850
than while true just implies,
if a little indirectly,

77
00:03:40,850 --> 00:03:44,070
that the following lines of code
in between those curly braces

78
00:03:44,070 --> 00:03:48,320
should just execute again, and again,
and again, and never actually stop.

79
00:03:48,320 --> 00:03:50,230
>> But if you do want your
loop to stop, as we

80
00:03:50,230 --> 00:03:54,500
did last time with something like
this, repeat the following 50 times,

81
00:03:54,500 --> 00:03:57,700
in C we can do the same with what's
called a for loop-- the keyword

82
00:03:57,700 --> 00:03:59,330
not being while, but for.

83
00:03:59,330 --> 00:04:03,290
And then we have some new syntax here,
with int i equals 0, i less than 50,

84
00:04:03,290 --> 00:04:03,880
i++.

85
00:04:03,880 --> 00:04:05,430
And we'll come back to that.

86
00:04:05,430 --> 00:04:09,660
But this is simply how we would
translate the set of Scratch blocks

87
00:04:09,660 --> 00:04:13,079
to a set of C lines of code.

88
00:04:13,079 --> 00:04:14,450
>> Meanwhile, consider variables.

89
00:04:14,450 --> 00:04:16,540
And, in fact, we just
saw one a moment ago.

90
00:04:16,540 --> 00:04:21,220
And in the case of Scratch, if we
wanted to declare a variable called i

91
00:04:21,220 --> 00:04:24,590
for i being integer, just a number,
and we want to set it to some value,

92
00:04:24,590 --> 00:04:28,410
we would use this orange
block here-- set i to 0.

93
00:04:28,410 --> 00:04:30,800
>> And we'll see today and
beyond, just like last week,

94
00:04:30,800 --> 00:04:33,850
programmers do almost always
start counting from zero, really

95
00:04:33,850 --> 00:04:34,950
by convention.

96
00:04:34,950 --> 00:04:37,250
But also because recall from
our discussion of binary,

97
00:04:37,250 --> 00:04:39,990
the smallest number you can
represent with any number of bits

98
00:04:39,990 --> 00:04:41,640
is just going to be 0 itself.

99
00:04:41,640 --> 00:04:45,190
And so we'll generally start
initializing even our variables to 0.

100
00:04:45,190 --> 00:04:47,710
>> And in C to do the same,
we're going to say int

101
00:04:47,710 --> 00:04:50,110
for integer, i just by convention.

102
00:04:50,110 --> 00:04:53,390
I could have called this variable
anything I want, just like in Scratch.

103
00:04:53,390 --> 00:04:57,770
And then equals 0 just assigns
the value 0 from the right

104
00:04:57,770 --> 00:05:01,319
and puts it into the variable, or the
storage container there, on the left.

105
00:05:01,319 --> 00:05:04,360
And the semi-colon as we'll see-- and
we've seen a few of these already--

106
00:05:04,360 --> 00:05:06,530
just means end of thought.

107
00:05:06,530 --> 00:05:09,430
Proceed to do something else
on the lines that follow.

108
00:05:09,430 --> 00:05:11,330
>> Now, what about Boolean expressions?

109
00:05:11,330 --> 00:05:14,320
Recall that in Scratch,
these were expressions

110
00:05:14,320 --> 00:05:16,740
that are either true
or false-- questions,

111
00:05:16,740 --> 00:05:18,910
really, that are either true or false.

112
00:05:18,910 --> 00:05:21,960
So in the case of Scratch, we might
ask a simple question like this,

113
00:05:21,960 --> 00:05:24,586
is i less than 50?

114
00:05:24,586 --> 00:05:25,710
So i, again, is an integer.

115
00:05:25,710 --> 00:05:27,210
Maybe we're using it
in a Scratch program

116
00:05:27,210 --> 00:05:29,310
to keep track of a score
or something like that.

117
00:05:29,310 --> 00:05:33,810
So this syntax here in Scratch
just means, is i less than 50?

118
00:05:33,810 --> 00:05:37,330
Well, thankfully, something is
simple in C. And to translate,

119
00:05:37,330 --> 00:05:41,780
this we would simply say i less
than 50, using the familiar key

120
00:05:41,780 --> 00:05:42,850
on your keyboard.

121
00:05:42,850 --> 00:05:45,141
>> Meanwhile, if you wanted to
say something more general,

122
00:05:45,141 --> 00:05:49,890
like, well, is x less than y where each
of x and y are themselves variables?

123
00:05:49,890 --> 00:05:52,280
We can do the same thing
in C, so long as we've

124
00:05:52,280 --> 00:05:53,942
created these variables already.

125
00:05:53,942 --> 00:05:55,650
And we'll see how to
do that before long.

126
00:05:55,650 --> 00:05:58,590
We would simply say x less than y.

127
00:05:58,590 --> 00:06:00,530
>> So you're starting to
see some similarities.

128
00:06:00,530 --> 00:06:03,490
And those folks who made
Scratch were certainly

129
00:06:03,490 --> 00:06:05,250
inspired by some of these basic ideas.

130
00:06:05,250 --> 00:06:10,350
And you'll see this kind of
syntax in many languages--

131
00:06:10,350 --> 00:06:12,160
not just Scratch, not
just C, but Python,

132
00:06:12,160 --> 00:06:14,790
and JavaScript, and
other languages still.

133
00:06:14,790 --> 00:06:18,270
>> Let's consider another construct
from C, the notion of a condition,

134
00:06:18,270 --> 00:06:20,370
doing something conditionally.

135
00:06:20,370 --> 00:06:22,720
If something is true, do this.

136
00:06:22,720 --> 00:06:24,457
If something else is true, do that.

137
00:06:24,457 --> 00:06:27,040
It's sort of the programming
equivalent of a fork in the road.

138
00:06:27,040 --> 00:06:29,730
Maybe it's a two-way fork,
a three-way fork, or more.

139
00:06:29,730 --> 00:06:32,800
And in Scratch, we might have
seen something like this.

140
00:06:32,800 --> 00:06:34,010
>> So this one's a big one.

141
00:06:34,010 --> 00:06:36,750
But consider the relative
simplicity of the logic.

142
00:06:36,750 --> 00:06:44,010
If x is less than y, then say x is less
than y, else if x is greater than y,

143
00:06:44,010 --> 00:06:46,230
then say x is greater than y.

144
00:06:46,230 --> 00:06:48,300
And then, logically, if
you think back to Scratch

145
00:06:48,300 --> 00:06:52,610
or just your own human intuition,
well, if x is not greater than y, and x

146
00:06:52,610 --> 00:06:57,000
is not less than y, then of course
x is going to be equal to y.

147
00:06:57,000 --> 00:06:59,690
So in this case, by nesting
those Scratch blocks,

148
00:06:59,690 --> 00:07:02,580
can we achieve a three
way fork in the road?

149
00:07:02,580 --> 00:07:04,980
>> Meanwhile, if we want to
do that in C, it arguably

150
00:07:04,980 --> 00:07:08,420
looks a little simpler-- at least
once you get familiar with the syntax.

151
00:07:08,420 --> 00:07:12,050
If x is less than y,
printf x is less than y.

152
00:07:12,050 --> 00:07:16,140
Else if x is greater than y,
printf x is greater than y.

153
00:07:16,140 --> 00:07:21,210
Else printf x is equal to y-- and,
again, with those backslash ends just

154
00:07:21,210 --> 00:07:24,160
for those new lines so that if you
actually ran this kind of program

155
00:07:24,160 --> 00:07:25,940
it would just move
your cursor ultimately

156
00:07:25,940 --> 00:07:28,100
to the next line of the screen.

157
00:07:28,100 --> 00:07:31,270
>> Now, meanwhile Scratch had other
more sophisticated features, only

158
00:07:31,270 --> 00:07:34,320
some of which we're going to
initially move over to the world of C.

159
00:07:34,320 --> 00:07:37,010
And one of them was
called a list in Scratch.

160
00:07:37,010 --> 00:07:39,100
And this was a special
type of variable that

161
00:07:39,100 --> 00:07:42,840
allowed you to store multiple things
in it back, to back, to back, to back.

162
00:07:42,840 --> 00:07:45,540
>> In C, it doesn't have
lists, per se, but something

163
00:07:45,540 --> 00:07:48,090
that are more generally
called arrays, although we'll

164
00:07:48,090 --> 00:07:50,590
come back later this semester
to looking at something

165
00:07:50,590 --> 00:07:52,780
called a list, or really a linked list.

166
00:07:52,780 --> 00:07:55,510
But for now, the closest
equivalent in C for us

167
00:07:55,510 --> 00:07:57,345
is going to be something
called an array.

168
00:07:57,345 --> 00:07:59,740
And an array is simply a
special type of variable

169
00:07:59,740 --> 00:08:03,160
that allows you to store data
back, to back, to back, to back.

170
00:08:03,160 --> 00:08:05,840
>> And, indeed, in Scratch,
if we wanted to access

171
00:08:05,840 --> 00:08:09,030
the first element of an array or
a list-- and I'm going to call it,

172
00:08:09,030 --> 00:08:13,600
by convention, argv, argument
vector, but more on that before long.

173
00:08:13,600 --> 00:08:17,090
If I want to get at the first element
of argv, in the world of Scratch

174
00:08:17,090 --> 00:08:20,930
you actually do typically
start counting from 1.

175
00:08:20,930 --> 00:08:22,850
>> And so I might get item 1 of argv.

176
00:08:22,850 --> 00:08:26,310
That's just how MIT implemented
the notion of lists.

177
00:08:26,310 --> 00:08:29,860
But in C, I'm going to
more simply just say, argv,

178
00:08:29,860 --> 00:08:32,758
which again is the name of my
list-- or to be clear, an array.

179
00:08:32,758 --> 00:08:34,549
And if I want the first
elements, I'm going

180
00:08:34,549 --> 00:08:37,890
to use square brackets, which you
might not often used under a keyboard.

181
00:08:37,890 --> 00:08:40,150
>> But 0 just means, get me the first.

182
00:08:40,150 --> 00:08:42,160
So on occasion and as
time passes, we're going

183
00:08:42,160 --> 00:08:44,570
to start to see these dichotomies
between Scratch and C,

184
00:08:44,570 --> 00:08:46,070
whereby Scratch uses one.

185
00:08:46,070 --> 00:08:47,670
We in C use 0 here.

186
00:08:47,670 --> 00:08:49,420
But you'll quickly see
once you understand

187
00:08:49,420 --> 00:08:52,920
the foundations of each language, that
these things start to get all the more

188
00:08:52,920 --> 00:08:56,860
familiar through practice and practice.

189
00:08:56,860 --> 00:08:59,700
>> So let's actually look now at a program.

190
00:08:59,700 --> 00:09:04,031
Here shall be the first of our C
source code for complete programs.

191
00:09:04,031 --> 00:09:06,280
And the program we're going
to offer for consideration

192
00:09:06,280 --> 00:09:09,340
is the one that's equivalent
to that earlier Scratch piece.

193
00:09:09,340 --> 00:09:13,210
>> So in here, we have what's
arguably the simplest C program

194
00:09:13,210 --> 00:09:15,410
you can write that
actually does something.

195
00:09:15,410 --> 00:09:18,250
Now, we'll look past,
for now, has include,

196
00:09:18,250 --> 00:09:21,190
standard io.h, and these angle
brackets, and int, and void,

197
00:09:21,190 --> 00:09:22,840
and the curly braces, and the like.

198
00:09:22,840 --> 00:09:25,390
>> And let's just focus on
what, at least intuitively,

199
00:09:25,390 --> 00:09:26,860
might jump out at you already.

200
00:09:26,860 --> 00:09:30,300
In fact, main, I don't
necessarily know what this is,

201
00:09:30,300 --> 00:09:34,580
but much like Scratch had that when
green flag clicked puzzle piece,

202
00:09:34,580 --> 00:09:39,070
so does C as a programming language
have a main piece of code that

203
00:09:39,070 --> 00:09:43,380
gets executed by default. And, indeed,
it's literally going to be called main.

204
00:09:43,380 --> 00:09:44,720
>> So main is a function.

205
00:09:44,720 --> 00:09:48,720
And it's a special function that exists
in C that when you run a program,

206
00:09:48,720 --> 00:09:52,720
it is main that gets run by
default. In the world of Scratch,

207
00:09:52,720 --> 00:09:56,970
it was usually when green flag
clicked that got run by default.

208
00:09:56,970 --> 00:10:01,130
>> Meanwhile, we've seen this before,
printf or print formatted, that's

209
00:10:01,130 --> 00:10:05,620
going to be a function that comes with
C, along with a whole bunch of others,

210
00:10:05,620 --> 00:10:10,140
that will from time and time
again, in order to do exactly

211
00:10:10,140 --> 00:10:12,450
as its name suggests, print something.

212
00:10:12,450 --> 00:10:13,500
What do we want to print?

213
00:10:13,500 --> 00:10:15,770
Well, we'll see that
by enclosing characters

214
00:10:15,770 --> 00:10:18,680
like these-- hello world,
backslash n in double quotes,

215
00:10:18,680 --> 00:10:23,040
we can tell printf exactly
what to print on the screen.

216
00:10:23,040 --> 00:10:26,430
>> But in order to do
that, we unfortunately

217
00:10:26,430 --> 00:10:30,010
need to take something that is
already cryptic to us humans,

218
00:10:30,010 --> 00:10:34,510
but at least it's somewhat readable--
sharp include, standard io.h, int,

219
00:10:34,510 --> 00:10:39,340
main, void, printf, all of the magical
incantations we just saw on the screen.

220
00:10:39,340 --> 00:10:42,470
But we actually have to
go more arcane still.

221
00:10:42,470 --> 00:10:47,140
We first need to translate the code
that we write into machine code.

222
00:10:47,140 --> 00:10:51,370
And recall from last week that machines,
at least the ones we know here,

223
00:10:51,370 --> 00:10:54,450
at the end of the day only
understand zeros and ones.

224
00:10:54,450 --> 00:10:58,100
>> And my God, if we had to write these
zeros and ones to actually program,

225
00:10:58,100 --> 00:11:01,260
it would very, very quickly
take the fun out of anything.

226
00:11:01,260 --> 00:11:05,150
But it turns out, per last week,
that these patterns of zeros and ones

227
00:11:05,150 --> 00:11:06,400
just have special meaning.

228
00:11:06,400 --> 00:11:08,500
In certain contexts,
they might mean numbers.

229
00:11:08,500 --> 00:11:11,840
>> In some contexts, they might mean
letters, or colors, or any number

230
00:11:11,840 --> 00:11:14,710
of other abstractions there upon.

231
00:11:14,710 --> 00:11:18,450
But just as your computer has
a CPU, Central Processing Unit,

232
00:11:18,450 --> 00:11:20,390
or the brains inside of your computer.

233
00:11:20,390 --> 00:11:22,240
It's usually Intel
inside, because that's

234
00:11:22,240 --> 00:11:24,900
one of the biggest companies
that makes CPUs for computers.

235
00:11:24,900 --> 00:11:28,910
>> Well, Intel CPUs and others
simply have decided in advance

236
00:11:28,910 --> 00:11:33,970
that certain patterns of zeros and
ones shall mean specific things.

237
00:11:33,970 --> 00:11:37,040
Certain patterns of zeros and ones
will mean, print this to the screen,

238
00:11:37,040 --> 00:11:39,710
or add these two numbers, or
subtract these two numbers,

239
00:11:39,710 --> 00:11:43,310
or move this piece of data from
my computer's memory over here,

240
00:11:43,310 --> 00:11:47,870
or any number of other very low level,
but ultimately useful, operations.

241
00:11:47,870 --> 00:11:53,022
But, thankfully, we humans are not going
to need to know this level of detail.

242
00:11:53,022 --> 00:11:56,230
Indeed, just like last time, where we
abstracted again, and again, and again,

243
00:11:56,230 --> 00:11:58,930
building from very low level
primitives like zeros and ones

244
00:11:58,930 --> 00:12:01,160
to higher level concepts
like numbers, and letters,

245
00:12:01,160 --> 00:12:04,330
and colors, and more,
so can we as programmers

246
00:12:04,330 --> 00:12:07,080
stand on the shoulders of
others who have come before us

247
00:12:07,080 --> 00:12:11,260
and use software that other
people have written before us--

248
00:12:11,260 --> 00:12:14,340
namely programs called compilers.

249
00:12:14,340 --> 00:12:17,770
>> C is a language that
is usually compiled,

250
00:12:17,770 --> 00:12:22,130
which means converted from
source code to machine code.

251
00:12:22,130 --> 00:12:25,230
In particular, what this means
is that if you've got your source

252
00:12:25,230 --> 00:12:29,530
code that you yourself write, as we soon
will in just a moment on the screen,

253
00:12:29,530 --> 00:12:33,140
and you want to convert it
ultimately to machine code--

254
00:12:33,140 --> 00:12:37,100
those zeros and ones that
only your Mac or your PC

255
00:12:37,100 --> 00:12:41,230
understands-- you've got a first
feed that source code in as

256
00:12:41,230 --> 00:12:46,340
input to a special
program called a compiler,

257
00:12:46,340 --> 00:12:48,974
the output of which we
shall see is machine code.

258
00:12:48,974 --> 00:12:51,890
And, indeed, last time we talked
about, really, at the end of the day,

259
00:12:51,890 --> 00:12:52,610
problem solving.

260
00:12:52,610 --> 00:12:53,360
You've got inputs.

261
00:12:53,360 --> 00:12:54,318
And you've got outputs.

262
00:12:54,318 --> 00:12:56,560
And you've got some kind
of algorithm in the middle.

263
00:12:56,560 --> 00:12:59,830
>> Algorithms can surely be
implemented in software,

264
00:12:59,830 --> 00:13:02,900
as we saw with pseudocode last week
and as we'll see with actual code

265
00:13:02,900 --> 00:13:03,490
this week.

266
00:13:03,490 --> 00:13:06,430
And so a compiler really just
has a set of algorithms inside

267
00:13:06,430 --> 00:13:10,060
of it that know how to
convert the special keywords,

268
00:13:10,060 --> 00:13:12,180
like main, and printf,
and others that we just

269
00:13:12,180 --> 00:13:17,620
saw into the patterns of zeros and
ones that Intel inside and other CPUs

270
00:13:17,620 --> 00:13:20,020
actually understands.

271
00:13:20,020 --> 00:13:22,460
So how do we do this?

272
00:13:22,460 --> 00:13:24,470
Where do we get a compiler?

273
00:13:24,470 --> 00:13:26,400
>> Most of us here have a Mac or a PC.

274
00:13:26,400 --> 00:13:29,152
And you're running Mac OS, or
Windows, or Linux, or Solaris,

275
00:13:29,152 --> 00:13:30,860
or any number of other
operating systems.

276
00:13:30,860 --> 00:13:32,568
And, indeed, we could
go out onto the web

277
00:13:32,568 --> 00:13:35,710
and download a compiler
for your Mac or your PC

278
00:13:35,710 --> 00:13:37,360
for your particular operating system.

279
00:13:37,360 --> 00:13:39,617
But we would all be on
different pages, so to speak.

280
00:13:39,617 --> 00:13:41,450
We'd have slightly
different configurations.

281
00:13:41,450 --> 00:13:43,210
And things wouldn't work all the same.

282
00:13:43,210 --> 00:13:45,280
And, indeed, these days
many of us don't use

283
00:13:45,280 --> 00:13:47,516
software that runs only on our laptops.

284
00:13:47,516 --> 00:13:49,390
Instead, we use something
like a browser that

285
00:13:49,390 --> 00:13:52,930
allows us to access web-based
applications in the cloud.

286
00:13:52,930 --> 00:13:55,630
And later this semester,
we will do exactly that.

287
00:13:55,630 --> 00:13:59,660
We will write applications or
software using code-- not C,

288
00:13:59,660 --> 00:14:02,860
but other languages like Python and
JavaScript-- that run in the cloud.

289
00:14:02,860 --> 00:14:05,860
>> And to do that, we ourselves
during the semester

290
00:14:05,860 --> 00:14:11,890
will actually use a cloud-based
environment known as CS50 IDE.

291
00:14:11,890 --> 00:14:16,030
This is a web-based programming
environment, or integrated development

292
00:14:16,030 --> 00:14:20,610
environment, IDe, that's built atop some
open source software called Cloud 9.

293
00:14:20,610 --> 00:14:22,966
And we've made some pedagogical
simplifications to it

294
00:14:22,966 --> 00:14:25,840
so as to hide certain features in
the first weeks that we don't need,

295
00:14:25,840 --> 00:14:27,770
after which you can
reveal them and do most

296
00:14:27,770 --> 00:14:29,400
anything you want with the environment.

297
00:14:29,400 --> 00:14:32,470
>> And it allows us, too, to
pre-install certain software.

298
00:14:32,470 --> 00:14:35,330
Things like a so-called CS50
library, which we'll soon see

299
00:14:35,330 --> 00:14:39,210
provides us in C with some
additional functionality.

300
00:14:39,210 --> 00:14:44,392
So if you go to, ultimately, CS50.io,
you'll be prompted to log in,

301
00:14:44,392 --> 00:14:46,350
and once you do and create
an account for free,

302
00:14:46,350 --> 00:14:52,150
you will be able to access an
environment that looks quite like this.

303
00:14:52,150 --> 00:14:53,760
>> Now, this is in the default mode.

304
00:14:53,760 --> 00:14:55,650
Everything is nice and
bright on the screen.

305
00:14:55,650 --> 00:14:57,941
Many of us have a habit of
working on CS50 piece that's

306
00:14:57,941 --> 00:14:59,150
quite late into the night.

307
00:14:59,150 --> 00:15:02,400
And so some of you might prefer to
turn it into night mode, so to speak.

308
00:15:02,400 --> 00:15:05,550
>> But, ultimately, what you're
going to see within CS50 IDE

309
00:15:05,550 --> 00:15:08,340
is three distinct areas--
an area on the left where

310
00:15:08,340 --> 00:15:12,604
your files are going to be in the
cloud, an area on the top right

311
00:15:12,604 --> 00:15:14,270
where your code is going to be editable.

312
00:15:14,270 --> 00:15:16,650
You'll be able to open
individual tabs for any program

313
00:15:16,650 --> 00:15:19,670
that you write this semester inside
of that top right hand corner.

314
00:15:19,670 --> 00:15:23,070
And then most arcanely,
and yet powerfully,

315
00:15:23,070 --> 00:15:26,610
is going to be this thing at the
bottom known as a terminal window.

316
00:15:26,610 --> 00:15:29,450
>> This is an old school
Command Line Interface,

317
00:15:29,450 --> 00:15:32,240
or CLI, that allows
you to execute commands

318
00:15:32,240 --> 00:15:35,260
on the computer-- in this case,
the computer in the cloud--

319
00:15:35,260 --> 00:15:39,090
to do things like compile your code
from source code to machine code,

320
00:15:39,090 --> 00:15:43,600
to run your programs, or to start your
web server, or to access your database,

321
00:15:43,600 --> 00:15:47,454
and any number of other techniques
that we'll start to use before long.

322
00:15:47,454 --> 00:15:49,370
But to get there, we're
going to actually have

323
00:15:49,370 --> 00:15:51,240
to go online and start playing.

324
00:15:51,240 --> 00:15:54,399
And to do that, let's first
start tinkering with main,

325
00:15:54,399 --> 00:15:55,940
and write the main part of a program.

326
00:15:55,940 --> 00:15:59,170
And let's use that function
printf, which we used earlier,

327
00:15:59,170 --> 00:16:01,050
simply to say something.

328
00:16:01,050 --> 00:16:04,910
>> So here I am already inside of CS50 IDE.

329
00:16:04,910 --> 00:16:05,930
I've logged in advance.

330
00:16:05,930 --> 00:16:07,360
And I full screened the window.

331
00:16:07,360 --> 00:16:09,670
And so, ultimately, you
too in coming problems

332
00:16:09,670 --> 00:16:12,960
will follow similar steps that
will provide online documentation.

333
00:16:12,960 --> 00:16:16,360
So you don't need to worry about
absorbing every little technical step

334
00:16:16,360 --> 00:16:17,730
that I do here today.

335
00:16:17,730 --> 00:16:19,222
>> But you'll get a screen like this.

336
00:16:19,222 --> 00:16:20,430
I happen to be in night mode.

337
00:16:20,430 --> 00:16:22,944
And you can brighten everything
up by disabling night mode.

338
00:16:22,944 --> 00:16:24,860
And at the end of the
day, you're going to see

339
00:16:24,860 --> 00:16:30,090
these three main areas-- the file
browser at left, the code tabs up top,

340
00:16:30,090 --> 00:16:32,430
and the terminal window at the bottom.

341
00:16:32,430 --> 00:16:34,890
>> Let me go ahead and
write my first program.

342
00:16:34,890 --> 00:16:42,300
I'm going to preemptively go to File,
Save, and save my file as hello.c.

343
00:16:42,300 --> 00:16:46,850
Indeed, by convention, any program we
write that's written in the C language

344
00:16:46,850 --> 00:16:49,739
should be named something
dot c, by convention.

345
00:16:49,739 --> 00:16:53,030
So I'm going to name it hello.c, because
I just want to say hello to the world.

346
00:16:53,030 --> 00:16:54,820
Now I'm going to zoom
out and click Save.

347
00:16:54,820 --> 00:16:58,180
And all I have here now is a tab
in which I can start writing code.

348
00:16:58,180 --> 00:16:59,490
>> This is not going to compile.

349
00:16:59,490 --> 00:17:00,300
This means nothing.

350
00:17:00,300 --> 00:17:02,750
And so even if I converted
this to zeros and ones,

351
00:17:02,750 --> 00:17:05,390
the CPU is going to have no
idea what's going around.

352
00:17:05,390 --> 00:17:14,170
But if I write lines that do match
up with C's conventions-- C being,

353
00:17:14,170 --> 00:17:20,150
again, this language-- with syntax like
this, printf hello world-- and I've

354
00:17:20,150 --> 00:17:22,210
gotten comfortable with
doing this over time.

355
00:17:22,210 --> 00:17:24,510
So I don't think I made
any typographical errors.

356
00:17:24,510 --> 00:17:27,910
>> But, invariably, the very first
time you do this, you will.

357
00:17:27,910 --> 00:17:31,090
And what I am about to do might very
well not work for you the first time.

358
00:17:31,090 --> 00:17:33,610
And that's perfectly OK,
because right now you

359
00:17:33,610 --> 00:17:37,662
might just see a whole lot of newness,
but over time once you get familiar

360
00:17:37,662 --> 00:17:39,870
with this environment, and
this language, and others,

361
00:17:39,870 --> 00:17:42,370
you'll start to see things that
are either correct or incorrect.

362
00:17:42,370 --> 00:17:44,369
>> And this is what the
teaching fellows and course

363
00:17:44,369 --> 00:17:48,780
assistants get so good at over time, is
spotting mistakes or bugs in your code.

364
00:17:48,780 --> 00:17:52,110
But I claim that there
are no bugs in this code.

365
00:17:52,110 --> 00:17:53,990
So I now want to run this program.

366
00:17:53,990 --> 00:17:57,440
>> Now on my own Mac or PC, I'm in
the habit of double clicking icons

367
00:17:57,440 --> 00:17:59,350
when I want to run some program.

368
00:17:59,350 --> 00:18:01,080
But that's not the model here.

369
00:18:01,080 --> 00:18:04,570
In this environment, which is CS50 IDE.

370
00:18:04,570 --> 00:18:07,192
We are using an operating
system called Linux.

371
00:18:07,192 --> 00:18:09,900
Linux is reminiscent of another
operating system, generally known

372
00:18:09,900 --> 00:18:10,850
as Unix.

373
00:18:10,850 --> 00:18:16,340
And Linux is particularly known for
having a Command Line Environment, CLI.

374
00:18:16,340 --> 00:18:20,070
Now, we're using a specific
flavor of Linux called Ubuntu.

375
00:18:20,070 --> 00:18:22,770
And Ubuntu is simply a
certain version of Linux.

376
00:18:22,770 --> 00:18:27,900
>> But these Linux's these days do actually
come with graphical user interfaces.

377
00:18:27,900 --> 00:18:30,360
And the one we happen to
be using here is web-based.

378
00:18:30,360 --> 00:18:32,735
So this might look even a
little different from something

379
00:18:32,735 --> 00:18:35,310
you yourself might have
seen or run in the past.

380
00:18:35,310 --> 00:18:37,910
>> So I'm going to go ahead
now and do the following.

381
00:18:37,910 --> 00:18:40,950
I've saved this file as hello.c.

382
00:18:40,950 --> 00:18:47,350
I'm going to go ahead and
type clanghello.c So Clang

383
00:18:47,350 --> 00:18:49,850
for the C language is a compiler.

384
00:18:49,850 --> 00:18:51,952
It's pre-installed in CS50 IDE.

385
00:18:51,952 --> 00:18:54,910
And you can absolutely download and
install this on your own Mac or PC.

386
00:18:54,910 --> 00:18:57,910
>> But, again, you wouldn't have all of
the pre-configuration done for you.

387
00:18:57,910 --> 00:19:00,940
So for now, I'm just
going to run clanghello.c.

388
00:19:00,940 --> 00:19:03,240
And now notice this syntax
here will eventually

389
00:19:03,240 --> 00:19:06,930
realize just means that I'm in a
folder or directory called Workspace.

390
00:19:06,930 --> 00:19:11,030
This dollar sign is just convention
for meaning, type your commands here.

391
00:19:11,030 --> 00:19:14,560
>> It's what's called a prompt, just
by convention is dollar sign.

392
00:19:14,560 --> 00:19:19,130
And if I go ahead now and click
Enter, nothing seems to have happened.

393
00:19:19,130 --> 00:19:20,930
But that's actually a good thing.

394
00:19:20,930 --> 00:19:23,650
The less that happens on
your screen, the more likely

395
00:19:23,650 --> 00:19:26,710
your code is to be correct,
at least syntactically.

396
00:19:26,710 --> 00:19:29,120
>> So if I want to run this
program, what do I do?

397
00:19:29,120 --> 00:19:33,770
Well, it turns out that the
default name by convention

398
00:19:33,770 --> 00:19:38,854
for programs when you don't specify a
name for your program is just a.out.

399
00:19:38,854 --> 00:19:41,270
And this syntax too, you'll
get familiar with before long.

400
00:19:41,270 --> 00:19:47,500
>> Dot slash just means, hey, CS50
IDE, run a program called a.out

401
00:19:47,500 --> 00:19:49,400
that's inside my current directory.

402
00:19:49,400 --> 00:19:51,520
That dot means the current directory.

403
00:19:51,520 --> 00:19:55,040
And we'll see what other such sequences
of characters means before long.

404
00:19:55,040 --> 00:19:58,430
>> So here we go, Enter, hello world.

405
00:19:58,430 --> 00:20:00,080
And you'll notice, that what happened?

406
00:20:00,080 --> 00:20:01,580
Not only did it print hello world.

407
00:20:01,580 --> 00:20:05,990
It also moved the
cursor to the next line.

408
00:20:05,990 --> 00:20:07,160
>> And why was that?

409
00:20:07,160 --> 00:20:12,400
What was the code that we wrote before
that ensured that the cursor would

410
00:20:12,400 --> 00:20:14,882
go on the next line?

411
00:20:14,882 --> 00:20:16,840
Funny thing about a
computer is it's only going

412
00:20:16,840 --> 00:20:18,570
to do literally what you tell it to do.

413
00:20:18,570 --> 00:20:26,050
>> So if you tell it to printf hello,
comma, space, world, close quote,

414
00:20:26,050 --> 00:20:29,090
it's literally only going
to print those characters.

415
00:20:29,090 --> 00:20:31,980
But I had this special character
at the end, recall, backslash n.

416
00:20:31,980 --> 00:20:34,230
And that's what ensured
that the character went

417
00:20:34,230 --> 00:20:36,570
to the next line of the screen.

418
00:20:36,570 --> 00:20:38,097
>> In fact, let me go and do this.

419
00:20:38,097 --> 00:20:39,430
Let me go ahead and delete this.

420
00:20:39,430 --> 00:20:41,180
Now, notice that the
top of my screen there's

421
00:20:41,180 --> 00:20:42,890
a little red light in
the tab indicating,

422
00:20:42,890 --> 00:20:45,047
hey, you've not saved your file.

423
00:20:45,047 --> 00:20:47,880
So I'm going to go ahead with control
S or command S, save the file.

424
00:20:47,880 --> 00:20:51,130
Now it goes-- went for a moment-- green.

425
00:20:51,130 --> 00:20:53,760
And now it's back to
just being a close icon.

426
00:20:53,760 --> 00:21:01,860
>> If I now run clanghello.c again,
Enter, dot slash, a.out, Enter,

427
00:21:01,860 --> 00:21:04,110
you'll see that it still worked.

428
00:21:04,110 --> 00:21:06,020
But it's arguably a little buggy.

429
00:21:06,020 --> 00:21:08,714
Right now, my prompt-- workspace,
and then that dollar sign,

430
00:21:08,714 --> 00:21:10,880
and then my actual prompt--
is all on the same line.

431
00:21:10,880 --> 00:21:14,540
So this certainly an aesthetic bug,
even if it's not really a logical bug.

432
00:21:14,540 --> 00:21:16,250
>> So I'm going to undo what I just did.

433
00:21:16,250 --> 00:21:18,560
I'm going to rerun a.out.

434
00:21:18,560 --> 00:21:22,710
Notice I've added the
newline character back.

435
00:21:22,710 --> 00:21:24,280
I've saved the file.

436
00:21:24,280 --> 00:21:31,630
>> So I'm going to rerun a.out, and--
dammit, a bug, a bug meaning mistake.

437
00:21:31,630 --> 00:21:35,020
So the bug is that even though
I added the backslash n there,

438
00:21:35,020 --> 00:21:41,180
re-saved, re-ran the program,
the behavior was the same.

439
00:21:41,180 --> 00:21:42,640
Why would that be?

440
00:21:42,640 --> 00:21:43,910
>> I'm missing a step, right?

441
00:21:43,910 --> 00:21:47,620
That key step earlier was that you have
to-- when you change your source code,

442
00:21:47,620 --> 00:21:49,610
it turns out also run
it through the compiler

443
00:21:49,610 --> 00:21:51,102
again so you get new machine code.

444
00:21:51,102 --> 00:21:52,810
And the machine code,
the zeros and ones,

445
00:21:52,810 --> 00:21:56,260
are going to be almost identical, but
not perfectly so, because we need,

446
00:21:56,260 --> 00:21:57,510
of course, that new line.

447
00:21:57,510 --> 00:22:02,640
>> So to fix this, I'm going to need
to rerun clanghello.c, enter, dot

448
00:22:02,640 --> 00:22:03,800
slash, a.out.

449
00:22:03,800 --> 00:22:08,402
And now, hello world is back
to where I expect it to be.

450
00:22:08,402 --> 00:22:09,610
So this is all fine and good.

451
00:22:09,610 --> 00:22:13,150
But a.out is a pretty stupid name for a
program, even though it happens to be,

452
00:22:13,150 --> 00:22:16,530
for historical reasons, the
default-- meaning assembly outputs.

453
00:22:16,530 --> 00:22:20,780
>> But let me go ahead here
and do this differently.

454
00:22:20,780 --> 00:22:24,760
I want my hello world program
to actually be called hello.

455
00:22:24,760 --> 00:22:28,320
So if it were an icon on my
desktop, it wouldn't be a.out.

456
00:22:28,320 --> 00:22:29,730
It would be called hello.

457
00:22:29,730 --> 00:22:33,660
>> So to do this, it turns out
that Clang, like many programs,

458
00:22:33,660 --> 00:22:37,980
supports command line arguments,
or flags, or switches,

459
00:22:37,980 --> 00:22:39,600
which simply influence its behavior.

460
00:22:39,600 --> 00:22:45,160
Specifically, Clang supports a dash o
flag, which then takes a second word.

461
00:22:45,160 --> 00:22:48,190
In this case, I'll arbitrarily,
but reasonably, call it hello.

462
00:22:48,190 --> 00:22:50,710
But I could call it anything
I want, except a.out, which

463
00:22:50,710 --> 00:22:52,390
would be rather besides the point.

464
00:22:52,390 --> 00:22:55,640
>> And then just specify the name
of the file I do want to compile.

465
00:22:55,640 --> 00:22:59,190
So now even though at the beginning
of the command I still have Clang,

466
00:22:59,190 --> 00:23:01,410
at the end of the command
I still have the filename,

467
00:23:01,410 --> 00:23:05,520
I now have these command line
arguments, these flags that are saying,

468
00:23:05,520 --> 00:23:11,180
oh, by the way, output-o, a file
called hello, not the default a.out.

469
00:23:11,180 --> 00:23:13,810
>> So if I hit Enter now, nothing
seems to have happened.

470
00:23:13,810 --> 00:23:17,900
And, yet, now I can do dot slash hello.

471
00:23:17,900 --> 00:23:19,089
So it's the same program.

472
00:23:19,089 --> 00:23:21,380
The zeros and ones are
identical at the end of the day.

473
00:23:21,380 --> 00:23:24,210
>> But they're in two
different files-- a.out,

474
00:23:24,210 --> 00:23:26,490
which is the first version
and just foolishly named,

475
00:23:26,490 --> 00:23:30,250
and now hello, which is a much
more compelling name for a program.

476
00:23:30,250 --> 00:23:33,195
But, honestly, I am never
going to remember this again,

477
00:23:33,195 --> 00:23:34,070
and again, and again.

478
00:23:34,070 --> 00:23:36,411
And, actually, as we write
more complicated programs,

479
00:23:36,411 --> 00:23:38,160
the commands you're
going to have to write

480
00:23:38,160 --> 00:23:40,920
are going to get even
more complicated still.

481
00:23:40,920 --> 00:23:41,940
>> And so not to worry.

482
00:23:41,940 --> 00:23:46,220
It turns out that humans before
us have realized they too

483
00:23:46,220 --> 00:23:47,530
had this exact same problem.

484
00:23:47,530 --> 00:23:50,900
They too did not enjoy having to
type fairly long, arcane commands,

485
00:23:50,900 --> 00:23:52,200
let alone remember them.

486
00:23:52,200 --> 00:23:56,070
And so humans before us have made
other programs that make it easier

487
00:23:56,070 --> 00:23:57,670
to compile your software.

488
00:23:57,670 --> 00:24:01,609
>> And, indeed, one such
program is called Make.

489
00:24:01,609 --> 00:24:03,150
So I'm going to go ahead and do this.

490
00:24:03,150 --> 00:24:05,691
I'm going to undo everything I
just did in the following way.

491
00:24:05,691 --> 00:24:07,690
Let me type LS.

492
00:24:07,690 --> 00:24:10,980
And you'll notice three things--
a.out, and a star, hello

493
00:24:10,980 --> 00:24:12,810
and a star, and hello.c.

494
00:24:12,810 --> 00:24:14,730
Hopefully, this should
be a little intuitive,

495
00:24:14,730 --> 00:24:18,220
insofar as earlier there was
nothing in this workspace.

496
00:24:18,220 --> 00:24:21,240
There was nothing that I had
created until we started class.

497
00:24:21,240 --> 00:24:22,840
>> And I created hello.c.

498
00:24:22,840 --> 00:24:24,544
I then compiled it, and called it a.out.

499
00:24:24,544 --> 00:24:27,460
And then I compiled it again slightly
differently and called it hello.

500
00:24:27,460 --> 00:24:32,830
So I have three files in this directory,
in this folder called Workspace.

501
00:24:32,830 --> 00:24:35,005
Now, I can see that as well
if I zoom out actually.

502
00:24:35,005 --> 00:24:37,530
>> If I zoom out here and
look at that top right hand

503
00:24:37,530 --> 00:24:39,940
corner, as promised the left
hand side of your screen

504
00:24:39,940 --> 00:24:42,990
is always going to show you
what's in your account, what's

505
00:24:42,990 --> 00:24:44,790
inside of CS50 IDE.

506
00:24:44,790 --> 00:24:46,680
And there is three files there.

507
00:24:46,680 --> 00:24:49,070
>> So I want to get rid of a.out and hello.

508
00:24:49,070 --> 00:24:51,275
And as you might
imagine intuitively, you

509
00:24:51,275 --> 00:24:53,400
could sort of control click
or right click on this.

510
00:24:53,400 --> 00:24:54,590
And this little menu pops up.

511
00:24:54,590 --> 00:24:57,170
You can download the file, run
it, preview it, refresh, rename,

512
00:24:57,170 --> 00:24:57,700
or what not.

513
00:24:57,700 --> 00:25:00,260
>> And I could just delete,
and it would go away.

514
00:25:00,260 --> 00:25:05,260
But let's do things with a command
line for now, so as to get comfortable

515
00:25:05,260 --> 00:25:07,010
with this, and do the following.

516
00:25:07,010 --> 00:25:12,345
I'm going to go ahead and remove
a.out by typing literally rma.out.

517
00:25:12,345 --> 00:25:14,890
It turns out, the command for
removing or deleting something,

518
00:25:14,890 --> 00:25:16,280
is not remove or delete.

519
00:25:16,280 --> 00:25:21,260
>> It's more succinctly RM, just to save
you some keystrokes, and hit Enter.

520
00:25:21,260 --> 00:25:24,707
Now we're going to be somewhat
cryptically remove regular file a.out.

521
00:25:24,707 --> 00:25:27,040
I don't really know what an
irregular file would be yet.

522
00:25:27,040 --> 00:25:28,660
But I do want to remove it.

523
00:25:28,660 --> 00:25:30,150
>> So I'm going to type y for yes.

524
00:25:30,150 --> 00:25:31,940
Or I could type it out, and hit Enter.

525
00:25:31,940 --> 00:25:33,440
And, again, nothing seems to happen.

526
00:25:33,440 --> 00:25:35,840
But that is, generally, a good thing.

527
00:25:35,840 --> 00:25:40,490
>> If I type LS this time,
what should I see?

528
00:25:40,490 --> 00:25:44,930
Hopefully, just hello and hello.c.

529
00:25:44,930 --> 00:25:47,286
Now, as an aside, you'll
notice this star, asterisk,

530
00:25:47,286 --> 00:25:48,660
that's at the end of my programs.

531
00:25:48,660 --> 00:25:50,201
And they're also showing up in green.

532
00:25:50,201 --> 00:25:53,970
That is just CS50 IDE's way
of cluing you into the fact

533
00:25:53,970 --> 00:25:55,280
that that's not source code.

534
00:25:55,280 --> 00:25:58,880
That's an executable, a runnable
program that you can actually run

535
00:25:58,880 --> 00:26:01,020
by doing dot slash, and then it's name.

536
00:26:01,020 --> 00:26:05,860
>> Now, let me go ahead and remove
this, rm hello, Enter, remove regular

537
00:26:05,860 --> 00:26:08,010
file hello, yes.

538
00:26:08,010 --> 00:26:11,180
And now if I type LS,
we're back to hello.c.

539
00:26:11,180 --> 00:26:13,917
Try not to delete your
actual source code.

540
00:26:13,917 --> 00:26:16,250
Even though there are features
built into CS50 IDE where

541
00:26:16,250 --> 00:26:19,870
you can go through your revision history
and rewind in time if you accidentally

542
00:26:19,870 --> 00:26:23,660
delete something, do be mindful
as per these prompts yes or no,

543
00:26:23,660 --> 00:26:25,381
of what you actually want to do.

544
00:26:25,381 --> 00:26:27,380
And if I go up to the top
left hand corner here,

545
00:26:27,380 --> 00:26:30,696
all that remains is hello.c.

546
00:26:30,696 --> 00:26:32,570
So there's bunches of
other commands that you

547
00:26:32,570 --> 00:26:37,550
can execute in the world of Linux,
one of which is, again, Make.

548
00:26:37,550 --> 00:26:40,180
And we're going to Make
my program now as follows.

549
00:26:40,180 --> 00:26:43,270
>> Instead of doing clang,
instead of doing clang-o,

550
00:26:43,270 --> 00:26:45,860
I'm going to simply
literally type, make hello.

551
00:26:45,860 --> 00:26:49,630
And now notice, I am
not typing make hello.c.

552
00:26:49,630 --> 00:26:50,910
I am typing make hello.

553
00:26:50,910 --> 00:26:54,840
>> And this program Make that
comes with CS50 IDE, and more

554
00:26:54,840 --> 00:26:57,090
generally with Linux,
is a program that's

555
00:26:57,090 --> 00:26:59,120
going to make a program called Hello.

556
00:26:59,120 --> 00:27:03,680
And it's going to assume, by convention,
that if this program can be made,

557
00:27:03,680 --> 00:27:09,030
it's going to be made from a source
code file ending in dot c, hello.c.

558
00:27:09,030 --> 00:27:12,210
>> So if I hit Enter now, notice that
the command that gets executed

559
00:27:12,210 --> 00:27:14,340
is actually even longer
before than before.

560
00:27:14,340 --> 00:27:16,670
And that's because we've
preconfigured CS50 IDE to have

561
00:27:16,670 --> 00:27:19,878
some additional features built in that
we don't need just yet, but soon will.

562
00:27:19,878 --> 00:27:23,470
But the key thing to realize
is now I have a Hello program.

563
00:27:23,470 --> 00:27:27,080
>> If I type LS again, I
have a hello program.

564
00:27:27,080 --> 00:27:32,070
And I can run it with
dot slash a.out, no,

565
00:27:32,070 --> 00:27:35,590
because the whole point of this
exercise was dot slash hello.

566
00:27:35,590 --> 00:27:38,089
And now I have my hello world program.

567
00:27:38,089 --> 00:27:39,880
So moving forward,
we're almost always just

568
00:27:39,880 --> 00:27:42,088
going to compile our programs
using the command Make.

569
00:27:42,088 --> 00:27:45,300
And then we're going to run them by
dot slash, and the program's name.

570
00:27:45,300 --> 00:27:49,610
But realize what Make is doing for
you, is it is itself not a compiler.

571
00:27:49,610 --> 00:27:53,310
It's just a convenience program
that knows how to trigger a compiler

572
00:27:53,310 --> 00:27:56,470
to run so that you yourself can use it.

573
00:27:56,470 --> 00:28:00,220
>> What other commands exist in
Linux, and in turn the CS50 IDE?

574
00:28:00,220 --> 00:28:03,107
We'll soon see that there's a
CD command, Change Directory.

575
00:28:03,107 --> 00:28:05,190
This allows you within
your command line interface

576
00:28:05,190 --> 00:28:07,610
to move forward, and back,
and open up different folders

577
00:28:07,610 --> 00:28:08,860
without using your mouse.

578
00:28:08,860 --> 00:28:12,470
>> LS we saw, which stands for list
the files in the current directory.

579
00:28:12,470 --> 00:28:14,650
Make Dir, you can
probably start to infer

580
00:28:14,650 --> 00:28:18,150
what these mean now-- make directory,
if you want to create a folder.

581
00:28:18,150 --> 00:28:21,270
RM for remove, RM Dir for
remove directory-- and these,

582
00:28:21,270 --> 00:28:24,160
again, are the command line
equivalents of what you

583
00:28:24,160 --> 00:28:26,945
could do in CS50 IDE with your mouse.

584
00:28:26,945 --> 00:28:28,820
But you'll soon find
that sometimes it's just

585
00:28:28,820 --> 00:28:30,610
a lot faster to do
things with a keyboard,

586
00:28:30,610 --> 00:28:33,690
and ultimately a lot more powerful.

587
00:28:33,690 --> 00:28:36,440
>> But it's hard to argue that
anything we've been doing so far

588
00:28:36,440 --> 00:28:39,990
is all that powerful, when all
we've been saying is, hello world.

589
00:28:39,990 --> 00:28:43,740
And, in fact, I hardcoded the
words hello world into my program.

590
00:28:43,740 --> 00:28:45,530
There is no dynamism yet.

591
00:28:45,530 --> 00:28:49,320
Scratch was an order of magnitude
more interesting last week.

592
00:28:49,320 --> 00:28:51,220
>> And so let's get there.

593
00:28:51,220 --> 00:28:55,310
Let's take a step toward that by
way of some of these functions.

594
00:28:55,310 --> 00:28:59,470
So not only does C come with printf,
and bunches of other functions

595
00:28:59,470 --> 00:29:01,850
some of which we'll see
over time, it doesn't

596
00:29:01,850 --> 00:29:05,760
make it all that easy right out
of the gate in getting user input.

597
00:29:05,760 --> 00:29:08,140
>> In fact, one of the weaknesses
of languages like C,

598
00:29:08,140 --> 00:29:10,140
and even Java and yet
others, is that it doesn't

599
00:29:10,140 --> 00:29:15,860
make it easy to just get things like
integers from users, or strings, words,

600
00:29:15,860 --> 00:29:19,970
and phrases, let alone things like
floating point values, or real numbers

601
00:29:19,970 --> 00:29:23,240
with decimal points, and really
long numbers, as we'll soon see.

602
00:29:23,240 --> 00:29:27,000
So this list of functions here, these
are like other Scratch puzzle pieces

603
00:29:27,000 --> 00:29:31,090
that we have pre-installed in CS50
IDE that we'll use for a few weeks

604
00:29:31,090 --> 00:29:34,010
as training wheels of sorts, and
eventually take them off, and look

605
00:29:34,010 --> 00:29:37,210
underneath the hood, perhaps, at
how these things are implemented.

606
00:29:37,210 --> 00:29:40,460
>> But to do this, let's
actually write a program.

607
00:29:40,460 --> 00:29:41,770
Let me go ahead now.

608
00:29:41,770 --> 00:29:44,750
And I'm going to create a new
file by clicking this little plus,

609
00:29:44,750 --> 00:29:45,970
and clicking New File.

610
00:29:45,970 --> 00:29:49,250
>> I'm going to save this next
one as, let's say, string.c,

611
00:29:49,250 --> 00:29:50,750
because I want to play with strings.

612
00:29:50,750 --> 00:29:53,990
And string in C is just
a sequence of characters.

613
00:29:53,990 --> 00:29:56,090
So now let's go ahead
and do the following.

614
00:29:56,090 --> 00:30:01,204
>> Include standard IO.h-- and
it turns out standard IO,

615
00:30:01,204 --> 00:30:03,360
IO just means input and output.

616
00:30:03,360 --> 00:30:05,920
So it turns out that
this line here is what

617
00:30:05,920 --> 00:30:08,140
is the neighboring us to use printf.

618
00:30:08,140 --> 00:30:10,410
Printf, of course, produces output.

619
00:30:10,410 --> 00:30:15,000
So in order to use printf, it turns
out you have to have this line of code

620
00:30:15,000 --> 00:30:16,040
at the top of your file.

621
00:30:16,040 --> 00:30:18,456
>> And we'll come back to what
that really means before long.

622
00:30:18,456 --> 00:30:20,400
It turns out that in
any C program I write,

623
00:30:20,400 --> 00:30:23,640
I've got to start it with
code that looks like this.

624
00:30:23,640 --> 00:30:26,860
And you'll notice CS50 IDE, and
other integrated development

625
00:30:26,860 --> 00:30:30,050
environments like it,
are going to try as best

626
00:30:30,050 --> 00:30:31,780
they can to finish your thought.

627
00:30:31,780 --> 00:30:35,930
In fact, a moment ago if I undo
what I just did, I hit Enter.

628
00:30:35,930 --> 00:30:39,160
>> I then hit open curly
brace, hit Enter again.

629
00:30:39,160 --> 00:30:40,430
And it finished my thought.

630
00:30:40,430 --> 00:30:45,140
It gave me a new line, indented no less
for nice stylistic reasons we'll see.

631
00:30:45,140 --> 00:30:48,559
And then it automatically gave me
that curly brace to finish my thought.

632
00:30:48,559 --> 00:30:50,600
Now, it doesn't always
guess what you want to do.

633
00:30:50,600 --> 00:30:53,620
But in large part, it does
save you some keystrokes.

634
00:30:53,620 --> 00:30:59,560
So a moment ago, we ran this program--
hello, world, and then compiled it,

635
00:30:59,560 --> 00:31:00,460
and then ran it.

636
00:31:00,460 --> 00:31:01,867
But there's no dynamism here.

637
00:31:01,867 --> 00:31:03,700
What if we wanted to
do something different?

638
00:31:03,700 --> 00:31:07,630
Well, what if I wanted to actually
get a string from the user?

639
00:31:07,630 --> 00:31:11,250
I'm going to use a puzzle piece
called exactly that-- get string.

640
00:31:11,250 --> 00:31:15,860
>> Turns out in C that when you don't want
to provide input to a puzzle piece,

641
00:31:15,860 --> 00:31:19,360
or more properly to a function, you
literally just do open parenthesis,

642
00:31:19,360 --> 00:31:20,430
close parenthesis.

643
00:31:20,430 --> 00:31:25,540
So it's as though there's
no white box to type into.

644
00:31:25,540 --> 00:31:27,720
The say block before
had a little white box.

645
00:31:27,720 --> 00:31:29,660
We don't have that white box now.

646
00:31:29,660 --> 00:31:33,310
>> But when I call get string, I
want to put the result somewhere.

647
00:31:33,310 --> 00:31:37,680
So a very common paradigm in C is to
call a function, like get string here,

648
00:31:37,680 --> 00:31:41,070
and then store its return value.

649
00:31:41,070 --> 00:31:44,450
It's the result of its
effort in something.

650
00:31:44,450 --> 00:31:47,630
>> And what is the
construct in programming,

651
00:31:47,630 --> 00:31:53,450
whether in Scratch or now C, that we
can use to actually store something?

652
00:31:53,450 --> 00:31:55,990
Called it a variable, right?

653
00:31:55,990 --> 00:32:00,320
And in Scratch, we don't really
care what was going in variables.

654
00:32:00,320 --> 00:32:02,170
>> But in this case, we actually do.

655
00:32:02,170 --> 00:32:03,719
I'm going to say string.

656
00:32:03,719 --> 00:32:05,510
And then I could call
this anything I want.

657
00:32:05,510 --> 00:32:08,340
I'm going to call it
name, gets get string.

658
00:32:08,340 --> 00:32:10,250
>> And now even if you're
a little new to this,

659
00:32:10,250 --> 00:32:11,984
notice that I'm lacking some detail.

660
00:32:11,984 --> 00:32:13,150
I'm forgetting a semi-colon.

661
00:32:13,150 --> 00:32:14,400
I need to finish this thought.

662
00:32:14,400 --> 00:32:17,480
So I'm going to move my cursor,
and hit semi-colon there.

663
00:32:17,480 --> 00:32:19,130
And what have I just done?

664
00:32:19,130 --> 00:32:21,440
In this line of code,
number 5 at the moment,

665
00:32:21,440 --> 00:32:23,799
I'm calling get string with no inputs.

666
00:32:23,799 --> 00:32:26,090
So there's no little white
box like the Save block has.

667
00:32:26,090 --> 00:32:28,590
>> I'm just saying, hey,
computer, get me a string.

668
00:32:28,590 --> 00:32:31,390
The equal sign is not really
an equal sign, per se.

669
00:32:31,390 --> 00:32:33,790
It's the assignment
operator, which means,

670
00:32:33,790 --> 00:32:37,860
hey, computer, move the value
from the right over to the left.

671
00:32:37,860 --> 00:32:40,480
And in the left, I have the following.

672
00:32:40,480 --> 00:32:43,580
>> Hey, computer, give me a string--
a sequence of characters.

673
00:32:43,580 --> 00:32:45,637
And call that string Name.

674
00:32:45,637 --> 00:32:47,220
And I don't even have to call it Name.

675
00:32:47,220 --> 00:32:49,970
>> I could call it, conventionally,
something like S,

676
00:32:49,970 --> 00:32:52,900
much like we used i to
call the variable i.

677
00:32:52,900 --> 00:32:54,829
But now I need to do something with it.

678
00:32:54,829 --> 00:32:57,370
It would be pretty stupid to
try compiling this code, running

679
00:32:57,370 --> 00:32:59,410
this program, even though
I'm getting a string,

680
00:32:59,410 --> 00:33:01,580
because it's still just
going to say hello world.

681
00:33:01,580 --> 00:33:06,140
>> But what if I do want to change this.

682
00:33:06,140 --> 00:33:07,940
Why don't I do this?

683
00:33:07,940 --> 00:33:11,632
Percent s, comma s.

684
00:33:11,632 --> 00:33:13,090
And this is a little cryptic still.

685
00:33:13,090 --> 00:33:15,560
>> So let me make my variables more clear.

686
00:33:15,560 --> 00:33:17,510
Let me name this variable Name.

687
00:33:17,510 --> 00:33:20,230
And let's see if we can't tease
apart what's happening here.

688
00:33:20,230 --> 00:33:22,770
>> So on line five, I'm getting a string.

689
00:33:22,770 --> 00:33:25,620
And I'm storing that string,
whatever the user has typed in

690
00:33:25,620 --> 00:33:28,430
at his or her keyboard,
in a variable called Name.

691
00:33:28,430 --> 00:33:30,590
And it turns out that
printf doesn't just

692
00:33:30,590 --> 00:33:34,220
take one argument in double
quotes, one input in double quotes.

693
00:33:34,220 --> 00:33:39,100
>> It can take two, or three, or more, such
that the second, or third, or fourth,

694
00:33:39,100 --> 00:33:42,320
are all the names of variables,
or specifically values,

695
00:33:42,320 --> 00:33:48,610
that you want to plug into,
dynamically, that string in quotes.

696
00:33:48,610 --> 00:33:52,110
In other words, what
would be wrong with this?

697
00:33:52,110 --> 00:33:57,920
If I just said hello name, backslash
n, saved my file, compiled my code,

698
00:33:57,920 --> 00:34:01,660
and ran this, what would happen?

699
00:34:01,660 --> 00:34:05,139
>> It's just going to say, hello
name, literally N-A-M-E,

700
00:34:05,139 --> 00:34:07,900
which is kind of stupid because
it's no different from world.

701
00:34:07,900 --> 00:34:10,400
So anything in quotes is
what literally gets printed.

702
00:34:10,400 --> 00:34:12,520
So if I want to have
a placeholder there,

703
00:34:12,520 --> 00:34:14,422
I actually need to use
some special syntax.

704
00:34:14,422 --> 00:34:17,380
And it turns out if you read the
documentation for the printf function,

705
00:34:17,380 --> 00:34:21,320
it will tell you that
if you use percent s,

706
00:34:21,320 --> 00:34:23,920
you can substitute a value as follows.

707
00:34:23,920 --> 00:34:27,190
>> After a comma after that
double quote, you simply

708
00:34:27,190 --> 00:34:29,179
write the name of the
variable that you want

709
00:34:29,179 --> 00:34:33,790
to plug in into that format
code, or format specifier,

710
00:34:33,790 --> 00:34:35,469
percent s for strings.

711
00:34:35,469 --> 00:34:39,190
And now if I've saved my file,
I go back down to my terminal.

712
00:34:39,190 --> 00:34:42,870
And I type Make String,
because, again, the name of this

713
00:34:42,870 --> 00:34:45,510
file that I chose before is string.c.

714
00:34:45,510 --> 00:34:48,510
>> So I'm going to say Make String, enter.

715
00:34:48,510 --> 00:34:51,550
Oh my goodness, look at all of
the mistakes we've made already.

716
00:34:51,550 --> 00:34:55,540
And this is-- what, this is really
like a six, seven line program?

717
00:34:55,540 --> 00:34:57,790
So this is where it can very
quickly get overwhelming.

718
00:34:57,790 --> 00:35:00,890
>> This terminal window has
now just regurgitated

719
00:35:00,890 --> 00:35:03,230
a huge number of error messages.

720
00:35:03,230 --> 00:35:07,560
Surely, I don't have more error
messages than I have lines of code.

721
00:35:07,560 --> 00:35:08,680
So what is going on?

722
00:35:08,680 --> 00:35:10,920
>> Well, the best strategy
to do anytime you

723
00:35:10,920 --> 00:35:13,710
do encounter an overwhelming
list of errors like that,

724
00:35:13,710 --> 00:35:16,690
is scroll back, look for the command
you just ran, which in my case

725
00:35:16,690 --> 00:35:18,020
is make string.

726
00:35:18,020 --> 00:35:21,630
Look at what make did, and that's that
long Clang command, no big deal there.

727
00:35:21,630 --> 00:35:22,950
>> But the red is bad.

728
00:35:22,950 --> 00:35:24,750
Green is trying to be
gentle and helpful.

729
00:35:24,750 --> 00:35:26,140
But it's still bad, in this case.

730
00:35:26,140 --> 00:35:27,510
But where is it bad?

731
00:35:27,510 --> 00:35:31,450
>> String.c, line five, character five.

732
00:35:31,450 --> 00:35:32,930
So this is just common convention.

733
00:35:32,930 --> 00:35:36,060
Something colon something means
line number and character number.

734
00:35:36,060 --> 00:35:41,080
Error, use of undeclared
identifier string.

735
00:35:41,080 --> 00:35:42,900
Did you mean standard in?

736
00:35:42,900 --> 00:35:45,530
>> So, unfortunately, Clang
is trying to be helpful.

737
00:35:45,530 --> 00:35:46,850
But it's wrong, in this case.

738
00:35:46,850 --> 00:35:49,350
No, Clang, I did not mean standard IO.

739
00:35:49,350 --> 00:35:51,070
I meant that on line one, yes.

740
00:35:51,070 --> 00:35:53,420
>> But line five is this one here.

741
00:35:53,420 --> 00:35:57,040
And Clang does not
understand S-T-R-I-N-G.

742
00:35:57,040 --> 00:36:01,490
It's an undeclared identifier, a
word it just has never seen before.

743
00:36:01,490 --> 00:36:05,730
And that's because C, the language
we're writing code in right now,

744
00:36:05,730 --> 00:36:08,070
does not have variables called strings.

745
00:36:08,070 --> 00:36:11,380
>> It doesn't, by default, support
something called a string.

746
00:36:11,380 --> 00:36:16,750
That's a CS50 piece of
jargon, but very conventional.

747
00:36:16,750 --> 00:36:18,600
But I can fix this as follows.

748
00:36:18,600 --> 00:36:22,090
>> If I add one line of code
to the top of this program,

749
00:36:22,090 --> 00:36:27,890
include CS50.h, which is another file
somewhere inside of CS50 IDE, somewhere

750
00:36:27,890 --> 00:36:30,820
on the hard drive, so to speak,
of the Ubuntu operating system

751
00:36:30,820 --> 00:36:33,590
that I'm running, that
is the file that's

752
00:36:33,590 --> 00:36:38,740
going to teach the operating
system what a string is, just

753
00:36:38,740 --> 00:36:41,930
like standard io.h is the file
in the operating system that's

754
00:36:41,930 --> 00:36:44,430
going to teach it what printf is.

755
00:36:44,430 --> 00:36:46,810
>> Indeed, we would have gotten
a very similar message

756
00:36:46,810 --> 00:36:50,600
if IO had admitted standard
IO.h and tried to use printf.

757
00:36:50,600 --> 00:36:53,632
So I'm going to go ahead and just
take Control L to clear my screen.

758
00:36:53,632 --> 00:36:56,340
Or you can type clear and it will
just clear the terminal window.

759
00:36:56,340 --> 00:36:58,020
But you can still scroll back in time.

760
00:36:58,020 --> 00:37:01,100
>> And I'm going to rerun Make String.

761
00:37:01,100 --> 00:37:03,660
Cross my fingers this time, Enter.

762
00:37:03,660 --> 00:37:05,380
Oh my God, it worked.

763
00:37:05,380 --> 00:37:09,280
it shows me a long cryptic command
that is what Make generated via Clang,

764
00:37:09,280 --> 00:37:10,460
but no error messages.

765
00:37:10,460 --> 00:37:12,460
So realize, even though
you might get completely

766
00:37:12,460 --> 00:37:14,480
overwhelmed with the
number of error messages,

767
00:37:14,480 --> 00:37:17,540
it just might be this annoying cascading
effect, where Clang doesn't understand

768
00:37:17,540 --> 00:37:19,620
one thing, which means it then
doesn't understand the next word,

769
00:37:19,620 --> 00:37:20,560
or the next line.

770
00:37:20,560 --> 00:37:22,850
And so it just chokes on your code.

771
00:37:22,850 --> 00:37:24,440
But the fix might be simple.

772
00:37:24,440 --> 00:37:27,822
And so always focus on the
very first line of output.

773
00:37:27,822 --> 00:37:29,530
And if you don't
understand it, just look

774
00:37:29,530 --> 00:37:32,480
for keywords that might be
clues, and the line number,

775
00:37:32,480 --> 00:37:34,650
and the character, where
that mistake might be.

776
00:37:34,650 --> 00:37:40,328
>> Now let me go ahead and type
dot slash, string, enter.

777
00:37:40,328 --> 00:37:44,340
Hm, it's not saying hello anything.

778
00:37:44,340 --> 00:37:46,210
Why?

779
00:37:46,210 --> 00:37:48,170
Well, recall, where is it running?

780
00:37:48,170 --> 00:37:53,730
>> It's probably stuck at the moment
in a loop, if you will, on line six,

781
00:37:53,730 --> 00:37:56,950
because Get String by design,
written by CS50 staff,

782
00:37:56,950 --> 00:38:00,350
is literally meant to just sit
there waiting, and waiting,

783
00:38:00,350 --> 00:38:01,850
and waiting for a string.

784
00:38:01,850 --> 00:38:03,792
All we mean by string is human input.

785
00:38:03,792 --> 00:38:04,500
So you know what?

786
00:38:04,500 --> 00:38:05,166
Let me go ahead.

787
00:38:05,166 --> 00:38:08,704
And just on a whim, let me
type my name, David, enter.

788
00:38:08,704 --> 00:38:10,120
Now I have a more dynamic program.

789
00:38:10,120 --> 00:38:11,240
It said, hello David.

790
00:38:11,240 --> 00:38:16,280
>> If I go ahead and run this again,
let me try say Zamila name, enter.

791
00:38:16,280 --> 00:38:17,940
And now we have a dynamic program.

792
00:38:17,940 --> 00:38:19,380
I haven't hard coded world.

793
00:38:19,380 --> 00:38:21,760
I haven't hard coded
name, or David, or Zamila.

794
00:38:21,760 --> 00:38:25,350
>> Now it's much more like the programs
we know, where if it take input,

795
00:38:25,350 --> 00:38:27,870
it produces slightly different output.

796
00:38:27,870 --> 00:38:31,020
Now, this is not the best
user experience, or UX.

797
00:38:31,020 --> 00:38:33,000
I run the program.

798
00:38:33,000 --> 00:38:35,830
>> I don't know what I'm supposed
to do, unless I actually look at

799
00:38:35,830 --> 00:38:37,290
or remember the source code.

800
00:38:37,290 --> 00:38:39,640
So let's make the user
experience a little better

801
00:38:39,640 --> 00:38:41,240
with the simplest of things.

802
00:38:41,240 --> 00:38:44,782
Let me go back into this
program, and simply say printf.

803
00:38:44,782 --> 00:38:48,870
>> And let me go ahead and say name, colon,
and a space, and then a semi-colon.

804
00:38:48,870 --> 00:38:51,170
And just for kicks, no backlash n.

805
00:38:51,170 --> 00:38:52,980
And that's deliberate,
because I don't want

806
00:38:52,980 --> 00:38:54,590
the prompt to move to the next line.

807
00:38:54,590 --> 00:38:58,800
>> I want to, instead, do this, make string
to recompile my code into new machine

808
00:38:58,800 --> 00:39:00,980
code dot slash string.

809
00:39:00,980 --> 00:39:02,460
Ah, this is much prettier.

810
00:39:02,460 --> 00:39:05,780
Now I actually know what the computer
wants me to do, give it a name.

811
00:39:05,780 --> 00:39:10,020
>> So I'm going to go ahead and type
in Rob, enter, and hello, Rob.

812
00:39:10,020 --> 00:39:13,640
So, realize, this is still, at the end
of the day, only a nine line program.

813
00:39:13,640 --> 00:39:15,090
But we've taken these baby steps.

814
00:39:15,090 --> 00:39:18,380
>> We wrote one line with which we
were familiar, printf, hello world.

815
00:39:18,380 --> 00:39:19,980
Then we undid a little bit of that.

816
00:39:19,980 --> 00:39:21,560
And we actually used get string.

817
00:39:21,560 --> 00:39:23,362
And we tossed that value in a variable.

818
00:39:23,362 --> 00:39:26,070
And then we went ahead and improved
it further with a third line.

819
00:39:26,070 --> 00:39:29,220
And this iterative process of
writing software is truly key.

820
00:39:29,220 --> 00:39:33,420
In CS50, and in life in general,
you should generally not sit down,

821
00:39:33,420 --> 00:39:36,800
have a program in mind, and try writing
the whole damn thing all at once.

822
00:39:36,800 --> 00:39:40,810
>> It will, inevitably, result in way
more errors than we ourselves saw here.

823
00:39:40,810 --> 00:39:44,070
Even I, to this day, constantly
make other stupid mistakes,

824
00:39:44,070 --> 00:39:47,480
are actually harder mistakes
that are harder to figure out.

825
00:39:47,480 --> 00:39:52,095
But you will make more mistakes the more
lines of code you write all at once.

826
00:39:52,095 --> 00:39:54,220
And so this practice of,
write a little bit of code

827
00:39:54,220 --> 00:39:57,930
that you're comfortable with, compile
it, run it, test it more generally,

828
00:39:57,930 --> 00:40:01,370
then move on-- so just like we kept
layering and layering last week,

829
00:40:01,370 --> 00:40:04,190
building from something very
simple to something more complex,

830
00:40:04,190 --> 00:40:05,200
do the same here.

831
00:40:05,200 --> 00:40:08,500
Don't sit down, and try to
write an entire problem.

832
00:40:08,500 --> 00:40:10,780
Actually take these baby steps.

833
00:40:10,780 --> 00:40:15,100
>> Now, strings aren't all
that useful unto themselves.

834
00:40:15,100 --> 00:40:18,210
We'd actually, ideally, like to
have something else in our toolkit.

835
00:40:18,210 --> 00:40:20,990
So let's actually do exactly that.

836
00:40:20,990 --> 00:40:24,900
>> Let me go ahead now and whip up
a slightly different program.

837
00:40:24,900 --> 00:40:28,320
And we'll call this int.c, for integer.

838
00:40:28,320 --> 00:40:30,870
I'm going to, similarly,
include CS550.h.

839
00:40:30,870 --> 00:40:33,060
I'm going to include standard IO.

840
00:40:33,060 --> 00:40:36,630
And that's going to be pretty common
in these first few days of the class.

841
00:40:36,630 --> 00:40:39,050
>> And I'm going to ready
myself with a main function.

842
00:40:39,050 --> 00:40:43,370
And now instead of getting a string,
let's go ahead and get an int.

843
00:40:43,370 --> 00:40:49,285
Let's call it i, and call it get
int, close parens, semi-colon.

844
00:40:49,285 --> 00:40:51,410
And now let's do
something with it, printf.

845
00:40:51,410 --> 00:40:56,190
>> Let's say something like
hello, backslash n, comma i.

846
00:40:56,190 --> 00:41:00,010
So I'm pretty much mimicking
what I did just a moment ago.

847
00:41:00,010 --> 00:41:01,660
I have a placeholder here.

848
00:41:01,660 --> 00:41:05,150
I have comma i here, because I want
to plug i into that placeholder.

849
00:41:05,150 --> 00:41:07,250
>> So let's go ahead and try
compiling this program.

850
00:41:07,250 --> 00:41:10,060
The file is called int.c.

851
00:41:10,060 --> 00:41:12,920
So I'm going to say, make int, enter.

852
00:41:12,920 --> 00:41:16,420
Oh my God, but no big deal, right?

853
00:41:16,420 --> 00:41:17,230
There's a mistake.

854
00:41:17,230 --> 00:41:19,810
>> There's a syntactic mistake
here such that the program can't

855
00:41:19,810 --> 00:41:25,460
be compiled inside int.c, line
seven, character 27, error format

856
00:41:25,460 --> 00:41:28,400
specifies type char
star, whatever that is.

857
00:41:28,400 --> 00:41:30,020
But the argument type is int.

858
00:41:30,020 --> 00:41:33,110
>> So here, too, we're not going to--
even though today is a lot of material,

859
00:41:33,110 --> 00:41:35,710
we're going to overwhelm you with
absolutely every feature of C,

860
00:41:35,710 --> 00:41:38,070
and programming more generally,
in just these first few weeks.

861
00:41:38,070 --> 00:41:40,400
So there's often going to be jargon
with which you're not familiar.

862
00:41:40,400 --> 00:41:43,350
And, in fact, char star is something
we're going to come back to

863
00:41:43,350 --> 00:41:44,830
in a week or two's time.

864
00:41:44,830 --> 00:41:47,530
>> But for now, let's see if we can
parse words that are familiar.

865
00:41:47,530 --> 00:41:50,750
Formats-- so we heard format
specifier, format code before.

866
00:41:50,750 --> 00:41:51,840
That's familiar.

867
00:41:51,840 --> 00:41:53,840
Type-- but the argument has type int.

868
00:41:53,840 --> 00:41:55,980
Wait a minute, i is an int.

869
00:41:55,980 --> 00:41:59,230
>> Maybe percent s actually
has some defined meaning.

870
00:41:59,230 --> 00:42:00,230
And, indeed, it does.

871
00:42:00,230 --> 00:42:03,101
An integer, if you want
printf to substitute it,

872
00:42:03,101 --> 00:42:05,350
you actually have to use a
different format specifier.

873
00:42:05,350 --> 00:42:06,890
And you wouldn't know this
unless someone told you,

874
00:42:06,890 --> 00:42:07,973
or you had done it before.

875
00:42:07,973 --> 00:42:10,490
But percent i is what
can be commonly used

876
00:42:10,490 --> 00:42:12,240
in printf for plugging in an integer.

877
00:42:12,240 --> 00:42:14,920
You can also use percent
d for a decimal integer.

878
00:42:14,920 --> 00:42:16,490
But i is nice and simple here.

879
00:42:16,490 --> 00:42:17,590
So we'll go with that.

880
00:42:17,590 --> 00:42:21,160
>> Now let me go ahead and
rerun make int, Enter.

881
00:42:21,160 --> 00:42:23,328
That's good, no errors.

882
00:42:23,328 --> 00:42:27,260
Dot slash int-- OK, bad user experience,
because I haven't told myself

883
00:42:27,260 --> 00:42:27,760
what to do.

884
00:42:27,760 --> 00:42:28,426
But that's fine.

885
00:42:28,426 --> 00:42:29,480
I'm catching on quickly.

886
00:42:29,480 --> 00:42:36,260
>> And now let me go ahead and
type in David, OK, Zamila, Rob.

887
00:42:36,260 --> 00:42:37,820
OK, so this is a good thing.

888
00:42:37,820 --> 00:42:41,710
This time, I'm using a function,
a puzzle piece, called get int.

889
00:42:41,710 --> 00:42:44,230
And it turns out-- and we'll
see this later in the term--

890
00:42:44,230 --> 00:42:47,730
the CS50 staff has implemented
get string in such a way

891
00:42:47,730 --> 00:42:50,350
that it will only physically
get a string for you.

892
00:42:50,350 --> 00:42:54,340
>> It has implemented get int in
such a way that it will only

893
00:42:54,340 --> 00:42:55,590
get an integer for you.

894
00:42:55,590 --> 00:42:57,830
And if you, the human,
don't cooperate, it's

895
00:42:57,830 --> 00:43:00,590
literally just going to
say retry, retry, retry,

896
00:43:00,590 --> 00:43:05,200
literally sitting there looping, until
you oblige with some magical number,

897
00:43:05,200 --> 00:43:07,670
like 50, and hello 50.

898
00:43:07,670 --> 00:43:11,440
>> Or if we run this again
and type in 42, hello 42.

899
00:43:11,440 --> 00:43:15,750
And so the get int function
inside of that puzzle piece

900
00:43:15,750 --> 00:43:19,050
is enough logic, enough thought,
to figure out, what is a word?

901
00:43:19,050 --> 00:43:20,330
And what is a number?

902
00:43:20,330 --> 00:43:23,165
Only accepting, ultimately, numbers.

903
00:43:23,165 --> 00:43:25,690

904
00:43:25,690 --> 00:43:30,230
>> So it turns out that this
isn't all that expressive.

905
00:43:30,230 --> 00:43:30,910
so far.

906
00:43:30,910 --> 00:43:33,690
So, yay, last time we
went pretty quickly

907
00:43:33,690 --> 00:43:38,320
into implementing games, and animation,
and artistic works in Scratch.

908
00:43:38,320 --> 00:43:42,260
And here, we are being content
with hello world, and hello 50.

909
00:43:42,260 --> 00:43:43,696
>> It's not all that inspiring.

910
00:43:43,696 --> 00:43:46,070
And, indeed, these first few
examples will take some time

911
00:43:46,070 --> 00:43:47,510
to ramp up in excitement.

912
00:43:47,510 --> 00:43:49,854
But we have so much more
control now, in fact.

913
00:43:49,854 --> 00:43:51,770
And we're going to very
quickly start layering

914
00:43:51,770 --> 00:43:53,870
on top of these basic primitives.

915
00:43:53,870 --> 00:43:56,370
>> But first, let's understand
what the limitations are.

916
00:43:56,370 --> 00:43:58,620
In fact, one of the things
Scratch doesn't easily

917
00:43:58,620 --> 00:44:00,990
let us do is really look
underneath the hood,

918
00:44:00,990 --> 00:44:03,740
and understand what a
computer is, what it can do,

919
00:44:03,740 --> 00:44:05,250
and what its limitations are.

920
00:44:05,250 --> 00:44:08,580
And, indeed, that lack of
understanding, potentially, long-term

921
00:44:08,580 --> 00:44:12,520
can lead to our own mistakes-- writing
bugs, writing insecure software that

922
00:44:12,520 --> 00:44:13,880
gets hacked in some way.

923
00:44:13,880 --> 00:44:17,130
>> So let's take some steps toward
understanding this a little better by

924
00:44:17,130 --> 00:44:19,710
way of, say, the following example.

925
00:44:19,710 --> 00:44:23,550
I'm going to go ahead and implement
real quick a program called Adder.

926
00:44:23,550 --> 00:44:25,134
Like, let's add some numbers together.

927
00:44:25,134 --> 00:44:27,800
And I'm going to code some corners
here, and just copy and paste

928
00:44:27,800 --> 00:44:30,270
where I was before, just
so we can get going sooner.

929
00:44:30,270 --> 00:44:33,090
So now I've got the basic beginnings
of a program called Adder.

930
00:44:33,090 --> 00:44:34,670
>> And let's go ahead and do this.

931
00:44:34,670 --> 00:44:38,680
I'm going to go ahead and
say, intx gets get int.

932
00:44:38,680 --> 00:44:39,430
And you know what?

933
00:44:39,430 --> 00:44:40,990
Let's make a better user experience.

934
00:44:40,990 --> 00:44:45,740
>> So let's just say x is, and effectively
prompt the user to give us x.

935
00:44:45,740 --> 00:44:50,600
And then let me go ahead and say, printf
how about y is, this time expecting

936
00:44:50,600 --> 00:44:53,140
two values from the user.

937
00:44:53,140 --> 00:44:59,759
And then let's just go ahead and
say, printf, the sum of x and y is.

938
00:44:59,759 --> 00:45:01,300
And now I don't want to do percent s.

939
00:45:01,300 --> 00:45:09,080
I want to do percent i, backslash
n, and then plug in sum value.

940
00:45:09,080 --> 00:45:10,620
>> So how can I go about doing this?

941
00:45:10,620 --> 00:45:11,270
You know what?

942
00:45:11,270 --> 00:45:12,840
I know how to use variables.

943
00:45:12,840 --> 00:45:15,140
Let me just declare a new one, int z.

944
00:45:15,140 --> 00:45:16,770
>> And I'm going to take a guess here.

945
00:45:16,770 --> 00:45:21,470
If there are equal signs in this
language, maybe I can just do x plus y,

946
00:45:21,470 --> 00:45:23,660
so long as I end my
thought with a semi-colon?

947
00:45:23,660 --> 00:45:28,170
Now I can go back down here, plug in z,
finish this thought with a semi-colon.

948
00:45:28,170 --> 00:45:33,160
And let's see now, if these
sequences of lines-- x is get int.

949
00:45:33,160 --> 00:45:34,770
Y is get int.

950
00:45:34,770 --> 00:45:37,980
>> Add x and y, store the value in z--
so, again, remember the equal sign

951
00:45:37,980 --> 00:45:38,560
is not equal.

952
00:45:38,560 --> 00:45:41,100
It's assignment from right to left.

953
00:45:41,100 --> 00:45:45,180
And let's print out that the sum
of x and y is not literally z,

954
00:45:45,180 --> 00:45:46,830
but what's inside of z.

955
00:45:46,830 --> 00:45:50,090
So let's make Adder --
nice, no mistakes this time.

956
00:45:50,090 --> 00:45:53,030
Dot slash Adder, enter,
x is going to be 1.

957
00:45:53,030 --> 00:45:55,380
>> Y is going to be 2.

958
00:45:55,380 --> 00:45:58,964
And the sum of x and y is 3.

959
00:45:58,964 --> 00:46:00,130
So that's all fine and good.

960
00:46:00,130 --> 00:46:03,260
>> So you would imagine that math
should work in a program like this.

961
00:46:03,260 --> 00:46:04,040
But you know what?

962
00:46:04,040 --> 00:46:06,904
Is this variable, line
12, even necessary?

963
00:46:06,904 --> 00:46:09,820
You don't need to get in the habit
of just storing things in variables

964
00:46:09,820 --> 00:46:10,980
just because you can.

965
00:46:10,980 --> 00:46:13,550
And, in fact, it's generally
considered bad design

966
00:46:13,550 --> 00:46:18,100
if you are creating a variable, called
z in this case, storing something in it,

967
00:46:18,100 --> 00:46:21,390
and then immediately
using it, but never again.

968
00:46:21,390 --> 00:46:24,700
Why give something a name
like z if you're literally

969
00:46:24,700 --> 00:46:26,770
going to use that
thing only once, and so

970
00:46:26,770 --> 00:46:29,380
proximal to where you created
it in the first place,

971
00:46:29,380 --> 00:46:31,052
so close in terms of lines of code?

972
00:46:31,052 --> 00:46:31,760
So you know what?

973
00:46:31,760 --> 00:46:34,480
It turns out that C is pretty flexible.

974
00:46:34,480 --> 00:46:36,586
If I actually want to
plug-in values here,

975
00:46:36,586 --> 00:46:38,210
I don't need to declare a new variable.

976
00:46:38,210 --> 00:46:41,680
I could just plug-in x plus
y, because C understands

977
00:46:41,680 --> 00:46:43,390
arithmetic, and mathematical operators.

978
00:46:43,390 --> 00:46:47,140
>> So I can simply say, do this math,
x plus y, whatever those values are,

979
00:46:47,140 --> 00:46:50,780
plug the resulting
integer into that string.

980
00:46:50,780 --> 00:46:53,730
So this might be, though
only one line shorter,

981
00:46:53,730 --> 00:46:58,480
a better design, a better program,
because there's less code, therefore

982
00:46:58,480 --> 00:46:59,921
less for me to understand.

983
00:46:59,921 --> 00:47:01,920
And it's also just cleaner,
insofar as we're not

984
00:47:01,920 --> 00:47:04,620
introducing new words,
new symbols, like z,

985
00:47:04,620 --> 00:47:07,510
even though they don't really
serve much of a purpose.

986
00:47:07,510 --> 00:47:12,890
>> Unfortunately, math isn't
all that reliable sometimes.

987
00:47:12,890 --> 00:47:15,270
Let's go ahead and do this.

988
00:47:15,270 --> 00:47:18,200
I'm going to go ahead
now and do the following.

989
00:47:18,200 --> 00:47:27,650
>> Let's do printf, percent i, plus percent
i, shall be percent i, backslash n.

990
00:47:27,650 --> 00:47:32,240
And I'm going to do this-- xyx plus y.

991
00:47:32,240 --> 00:47:34,821
So I'm just going to rewrite
this slightly differently here.

992
00:47:34,821 --> 00:47:36,320
Let me just do a quick sanity check.

993
00:47:36,320 --> 00:47:37,986
Again, let's not get ahead of ourselves.

994
00:47:37,986 --> 00:47:41,420
Make adder, dot slash adder.

995
00:47:41,420 --> 00:47:44,950
x is 1, y is 2, 1 plus 2 is 3.

996
00:47:44,950 --> 00:47:45,870
So that's good.

997
00:47:45,870 --> 00:47:49,060
But let's complicate this now
a bit, and create a new file.

998
00:47:49,060 --> 00:47:53,350
>> I'm going to call this one,
say, ints, plural for integers.

999
00:47:53,350 --> 00:47:55,980
Let me start where I was a moment ago.

1000
00:47:55,980 --> 00:47:57,770
But now let's do a few other lines.

1001
00:47:57,770 --> 00:48:03,430
Let me go ahead and do the following,
printf, percent i, minus percent i,

1002
00:48:03,430 --> 00:48:08,959
is percent i, comma x, comma yx minus y.

1003
00:48:08,959 --> 00:48:10,750
So I'm doing slightly
different math there.

1004
00:48:10,750 --> 00:48:11,624
Let's do another one.

1005
00:48:11,624 --> 00:48:16,610
So percent i times percent
i is percent i, backslash n.

1006
00:48:16,610 --> 00:48:21,430
Let's plug-in x, and y, and x times y.

1007
00:48:21,430 --> 00:48:24,530
We'll use the asterisk on
your computer for times.

1008
00:48:24,530 --> 00:48:26,390
>> You don't use x. x is
a variable name here.

1009
00:48:26,390 --> 00:48:28,270
You use the star for multiplication.

1010
00:48:28,270 --> 00:48:29,020
Let's do one more.

1011
00:48:29,020 --> 00:48:34,580
Printf percent I, divided
by percent i, is percent i,

1012
00:48:34,580 --> 00:48:40,460
backslash n. xy divided by y--
so you use the forward slash in C

1013
00:48:40,460 --> 00:48:41,502
to do division.

1014
00:48:41,502 --> 00:48:42,460
And let's do one other.

1015
00:48:42,460 --> 00:48:47,920

1016
00:48:47,920 --> 00:48:55,240
Remainder of percent i, divided
by percent i, is percent i.

1017
00:48:55,240 --> 00:48:59,550
xy-- and now remainder
is what's left over.

1018
00:48:59,550 --> 00:49:02,980
When you try dividing a
denominator into a numerator,

1019
00:49:02,980 --> 00:49:05,570
how much is left over that
you couldn't divide out?

1020
00:49:05,570 --> 00:49:07,910
>> So there isn't really,
necessarily, a symbol

1021
00:49:07,910 --> 00:49:09,470
we've used in grade school for this.

1022
00:49:09,470 --> 00:49:13,830
But there in C. You can
say x modulo y, where

1023
00:49:13,830 --> 00:49:18,000
this percent sign in this context--
confusingly when you're inside

1024
00:49:18,000 --> 00:49:20,170
of the double quotes,
inside of printf, percent

1025
00:49:20,170 --> 00:49:21,830
is used as the format specifier.

1026
00:49:21,830 --> 00:49:25,420
>> When you use percent outside of
that in a mathematical expression,

1027
00:49:25,420 --> 00:49:29,910
it's the modulo operator for modular
arithmetic-- for our purposes

1028
00:49:29,910 --> 00:49:33,650
here, just means, what is the
remainder of x divided by y?

1029
00:49:33,650 --> 00:49:36,130
So x divided by y is x slash y.

1030
00:49:36,130 --> 00:49:38,220
What's the remainder of x divided by y?

1031
00:49:38,220 --> 00:49:41,780
It's x mod y, as a programmer would say.

1032
00:49:41,780 --> 00:49:48,300
>> So if I made no mistakes here, let me
go ahead and make ints, plural, nice,

1033
00:49:48,300 --> 00:49:50,010
and dot slash ints.

1034
00:49:50,010 --> 00:49:55,270
And let's go ahead and
do, let's say, 1, 10.

1035
00:49:55,270 --> 00:49:58,390
All right, 1 plus 10 is 11, check.

1036
00:49:58,390 --> 00:50:01,240
1 minus 10 is negative 9, check.

1037
00:50:01,240 --> 00:50:03,420
>> 1 times 10 is 10, check.

1038
00:50:03,420 --> 00:50:07,090
1 divided by 10 is--
OK, we'll skip that one.

1039
00:50:07,090 --> 00:50:09,480
Remainder of 1 divided by 10 is 1.

1040
00:50:09,480 --> 00:50:10,680
That's correct.

1041
00:50:10,680 --> 00:50:12,630
But there's a bug in here.

1042
00:50:12,630 --> 00:50:15,390
>> So the one I put my
hand over, not correct.

1043
00:50:15,390 --> 00:50:16,670
I mean, it's close to 0.

1044
00:50:16,670 --> 00:50:20,670
1 divided by 10, you know, if we're
cutting some corners, sure, it's zero.

1045
00:50:20,670 --> 00:50:28,050
But it should really be 1/10,
0.1, or 0.10, 0.1000, or so forth.

1046
00:50:28,050 --> 00:50:30,600
>> It should not really be zero.

1047
00:50:30,600 --> 00:50:35,990
Well, it turns out that the computer is
doing literally what we told it to do.

1048
00:50:35,990 --> 00:50:39,460
We are doing math like x divided by y.

1049
00:50:39,460 --> 00:50:44,680
And both x and y, per the lines
of code earlier, are integers.

1050
00:50:44,680 --> 00:50:50,440
>> Moreover, on line 15, we are
telling printf, hey, printf plug-in

1051
00:50:50,440 --> 00:50:54,230
an integer, plug-in an integer,
plug-in an integer-- specifically

1052
00:50:54,230 --> 00:50:57,580
x, and then y, and then x
divided by y. x and y are ints.

1053
00:50:57,580 --> 00:50:59,060
We're good there.

1054
00:50:59,060 --> 00:51:01,250
>> But what is x divided by x?

1055
00:51:01,250 --> 00:51:06,790
x divided by y should be,
mathematically, 1/10, or 0.1,

1056
00:51:06,790 --> 00:51:11,600
which is a real number, a real number
having, potentially, a decimal point.

1057
00:51:11,600 --> 00:51:13,230
It's not an integer.

1058
00:51:13,230 --> 00:51:18,290
>> But what is the closest
integer to 1/10, or 0.1?

1059
00:51:18,290 --> 00:51:21,114
Yeah, it kind of is zero.

1060
00:51:21,114 --> 00:51:22,030
0.1 is like this much.

1061
00:51:22,030 --> 00:51:22,890
And 1 is this much.

1062
00:51:22,890 --> 00:51:25,870
So 1/10 is closer to
0 than it is to one.

1063
00:51:25,870 --> 00:51:30,800
>> And so what C is doing for us--
kind of because we told it to--

1064
00:51:30,800 --> 00:51:32,600
is truncating that integer.

1065
00:51:32,600 --> 00:51:40,540
It's taking the value, which again is
supposed to be something like 0.1000,

1066
00:51:40,540 --> 00:51:41,800
0 and so forth.

1067
00:51:41,800 --> 00:51:45,320
And it's truncating everything
after the decimal point

1068
00:51:45,320 --> 00:51:47,510
so that all of this
stuff, because it doesn't

1069
00:51:47,510 --> 00:51:51,910
fit in the notion of an integer, which
is just a number like negative 1, 0, 1,

1070
00:51:51,910 --> 00:51:55,830
up and down, it throws away everything
after the decimal point because you

1071
00:51:55,830 --> 00:51:59,020
can't fit a decimal point
in an integer by definition.

1072
00:51:59,020 --> 00:52:01,290
>> So the answer here is zero.

1073
00:52:01,290 --> 00:52:02,600
So how do we fix this?

1074
00:52:02,600 --> 00:52:04,400
We need another solution all together.

1075
00:52:04,400 --> 00:52:06,880
And we can do this, as follows.

1076
00:52:06,880 --> 00:52:12,820
>> Let me go ahead and create a new
file, this one called floats.c.

1077
00:52:12,820 --> 00:52:16,500
And save it here in the
same directory, float.c.

1078
00:52:16,500 --> 00:52:19,360

1079
00:52:19,360 --> 00:52:23,260
And let me go ahead and copy
some of that code from earlier.

1080
00:52:23,260 --> 00:52:27,690
>> But instead of getting
an int, let's do this.

1081
00:52:27,690 --> 00:52:31,037
Give me a floating point value
called x. where a floating point

1082
00:52:31,037 --> 00:52:33,370
value is just literally
something with a floating point.

1083
00:52:33,370 --> 00:52:34,410
It can move to the left, to the right.

1084
00:52:34,410 --> 00:52:35,530
It's a real number.

1085
00:52:35,530 --> 00:52:38,050
>> And let me call not
get int, but get float,

1086
00:52:38,050 --> 00:52:41,420
which also was among the menu
of options in the C250 library.

1087
00:52:41,420 --> 00:52:43,220
Let's change y to a float.

1088
00:52:43,220 --> 00:52:45,000
So this becomes get float.

1089
00:52:45,000 --> 00:52:47,620
>> And now, we don't want to plug in ints.

1090
00:52:47,620 --> 00:52:53,130
It turns out we have to use percent
f for float, percent f for float,

1091
00:52:53,130 --> 00:52:54,560
and now save it.

1092
00:52:54,560 --> 00:53:01,220
And now, fingers crossed, make
floats, nice, dot slash floats.

1093
00:53:01,220 --> 00:53:04,280
x is going to be one 1. y
Is going to be 10 again.

1094
00:53:04,280 --> 00:53:08,240
>> And, nice, OK my addition is correct.

1095
00:53:08,240 --> 00:53:10,240
I was hoping for more,
but I forgot to write it.

1096
00:53:10,240 --> 00:53:13,250
So let's go and fix this logical error.

1097
00:53:13,250 --> 00:53:16,280
>> Let's go ahead and grab the following.

1098
00:53:16,280 --> 00:53:18,080
We'll just do a little copy and paste.

1099
00:53:18,080 --> 00:53:20,080
And I'm going to say minus.

1100
00:53:20,080 --> 00:53:21,890
>> And I'm going to say times.

1101
00:53:21,890 --> 00:53:24,060
And I'm going to say divided.

1102
00:53:24,060 --> 00:53:28,240
And I'm not going to do modulo,
which is not as germane here,

1103
00:53:28,240 --> 00:53:33,690
divided by f, and times plus--
OK, let's do this again.

1104
00:53:33,690 --> 00:53:44,210
>> Make floats, dot slash floats,
and 1, 10, and-- nice, no, OK.

1105
00:53:44,210 --> 00:53:45,250
So I'm an idiot.

1106
00:53:45,250 --> 00:53:47,000
So this is very common
in computer science

1107
00:53:47,000 --> 00:53:49,780
to make stupid mistakes like this.

1108
00:53:49,780 --> 00:53:53,100
>> For pedagogical purposes,
what I really wanted to do

1109
00:53:53,100 --> 00:53:57,410
was change the science here
to plus, to minus, to times,

1110
00:53:57,410 --> 00:54:01,140
and to divide, as you hopefully
noticed during this exercise.

1111
00:54:01,140 --> 00:54:04,700
So now let's re-compile this
program, do dot slash floats.

1112
00:54:04,700 --> 00:54:07,950
>> And for the third time, let's
see if it meets my expectations.

1113
00:54:07,950 --> 00:54:21,480
1, 10, enter, yes, OK, 1.000,
divided by 10.000, is 0.100000.

1114
00:54:21,480 --> 00:54:24,952
And it turns out we can control how many
numbers are after those decimal points.

1115
00:54:24,952 --> 00:54:25,660
We actually will.

1116
00:54:25,660 --> 00:54:26,790
We'll come back to that.

1117
00:54:26,790 --> 00:54:28,440
>> But now, in fact, the math is correct.

1118
00:54:28,440 --> 00:54:30,090
So, again, what's the takeaway here?

1119
00:54:30,090 --> 00:54:33,050
It turns out that in C, there are
not only just strings-- and, in fact,

1120
00:54:33,050 --> 00:54:36,120
there aren't really, because we
add those with the CS50 library.

1121
00:54:36,120 --> 00:54:37,710
But there aren't just ints.

1122
00:54:37,710 --> 00:54:38,990
>> There are also floats.

1123
00:54:38,990 --> 00:54:42,810
And it turns out a bunch of other data
types too, that we'll use before long.

1124
00:54:42,810 --> 00:54:46,270
Turns out if you want a single
character, not a string of characters,

1125
00:54:46,270 --> 00:54:47,610
you can use just a char.

1126
00:54:47,610 --> 00:54:52,350
>> Turns out that if you want a bool,
a Boolean value, true or false only,

1127
00:54:52,350 --> 00:54:56,840
thanks to the CS50 library, we've
added to C the bool data type as well.

1128
00:54:56,840 --> 00:54:59,180
But it's also present in
many other languages as well.

1129
00:54:59,180 --> 00:55:04,130
And it turns out that sometimes you
need bigger numbers then come by default

1130
00:55:04,130 --> 00:55:05,210
with ints and floats.

1131
00:55:05,210 --> 00:55:10,590
>> And, in fact, a double is a number
that uses not 32 bits, but 64 bits.

1132
00:55:10,590 --> 00:55:14,990
And a long long is a number that
uses not 32, bits but 64 bits,

1133
00:55:14,990 --> 00:55:19,190
respectively, for floating point
values and integers, respectively.

1134
00:55:19,190 --> 00:55:22,780
So let's actually now
see this in action.

1135
00:55:22,780 --> 00:55:26,150
>> I'm going to go ahead here
and whip up one other program.

1136
00:55:26,150 --> 00:55:32,020
Here, I'm going to go ahead
and do include CS50.h.

1137
00:55:32,020 --> 00:55:34,910
And let me go, include standard IO.h.

1138
00:55:34,910 --> 00:55:37,320
>> And you'll notice something
funky is happening here.

1139
00:55:37,320 --> 00:55:40,592
It's not color coding things in
the same way as it did before.

1140
00:55:40,592 --> 00:55:43,550
And it turns out, that's because I
haven't given the thing a file name.

1141
00:55:43,550 --> 00:55:47,270
>> I'm going to call this one
sizeof.c, and hit Save.

1142
00:55:47,270 --> 00:55:51,039
And notice what happens to my very
white code against that black backdrop.

1143
00:55:51,039 --> 00:55:52,830
Now, at least there's
some purple in there.

1144
00:55:52,830 --> 00:55:54,490
And it is syntax highlighted.

1145
00:55:54,490 --> 00:55:57,700
>> That's because, quite simply, I've
told the IDE what type of file

1146
00:55:57,700 --> 00:56:01,060
it is by giving it a name, and
specifically a file extension.

1147
00:56:01,060 --> 00:56:03,620
Now, let's go ahead and do this.

1148
00:56:03,620 --> 00:56:08,910
I'm going to go ahead and very
simply print out the following-- bool

1149
00:56:08,910 --> 00:56:11,080
is percent LU.

1150
00:56:11,080 --> 00:56:12,950
>> We'll come back to
that in just a moment.

1151
00:56:12,950 --> 00:56:15,840
And then I'm going to
print size of bool.

1152
00:56:15,840 --> 00:56:18,170
And now, just to save
myself some time, I'm

1153
00:56:18,170 --> 00:56:20,280
going to do a whole
bunch of these at once.

1154
00:56:20,280 --> 00:56:24,620
And, specifically, I'm going to
change this to a char and char.

1155
00:56:24,620 --> 00:56:27,760
This one, I'm going to change
to a double and a double.

1156
00:56:27,760 --> 00:56:31,440
>> This one, I'm going to change
to a float and a float.

1157
00:56:31,440 --> 00:56:35,670
This one, I'm going to
change to an int and an int.

1158
00:56:35,670 --> 00:56:38,660
And this one, I'm going
to change to a long long.

1159
00:56:38,660 --> 00:56:40,840
And it's still taking
a long time, long long.

1160
00:56:40,840 --> 00:56:44,572
>> And then, lastly, I gave
myself one too many, string.

1161
00:56:44,572 --> 00:56:47,030
It turns out that in C, there's
the special operator called

1162
00:56:47,030 --> 00:56:50,260
size of that's literally
going to, when run,

1163
00:56:50,260 --> 00:56:52,099
tell us the size of
each of these variables.

1164
00:56:52,099 --> 00:56:53,890
And this is a way, now,
we can connect back

1165
00:56:53,890 --> 00:56:57,140
to last week's discussion
of data and representation.

1166
00:56:57,140 --> 00:57:00,330
>> Let me go ahead and compile
size of dot slash size of.

1167
00:57:00,330 --> 00:57:01,210
And let's see.

1168
00:57:01,210 --> 00:57:05,210
It turns out that in C,
specifically on CS50 IDE,

1169
00:57:05,210 --> 00:57:08,170
specifically on the
operating system Ubuntu,

1170
00:57:08,170 --> 00:57:11,100
which is a 64-bit operating
system in this case,

1171
00:57:11,100 --> 00:57:14,189
a bool is going to
use one byte of space.

1172
00:57:14,189 --> 00:57:16,480
That's how size is measured,
not in bits, but in bytes.

1173
00:57:16,480 --> 00:57:18,690
And recall that one byte is eight bits.

1174
00:57:18,690 --> 00:57:22,030
So a bool, even though you
technically only need a 0 or 1,

1175
00:57:22,030 --> 00:57:24,092
it's a little wasteful
how we've implemented it.

1176
00:57:24,092 --> 00:57:26,800
It's actually going to use a whole
byte-- so all zeros, are maybe

1177
00:57:26,800 --> 00:57:31,050
all ones, or something like that,
or just one 1 among eight bits.

1178
00:57:31,050 --> 00:57:34,962
>> A char, meanwhile, used for a character
like an Ascii character per last week,

1179
00:57:34,962 --> 00:57:36,170
is going to be one character.

1180
00:57:36,170 --> 00:57:42,340
And that synchs up with our notion of
it being no more than 256 bits-- rather,

1181
00:57:42,340 --> 00:57:45,360
synchs up with it being no
longer than 8 bits, which

1182
00:57:45,360 --> 00:57:47,450
gives us as many as 256 values.

1183
00:57:47,450 --> 00:57:49,680
A double is going to
be 8 bytes or 64 bits.

1184
00:57:49,680 --> 00:57:50,510
>> A float is 4.

1185
00:57:50,510 --> 00:57:51,690
An int is 4.

1186
00:57:51,690 --> 00:57:52,980
A long, long is 8.

1187
00:57:52,980 --> 00:57:54,716
And a string is 8.

1188
00:57:54,716 --> 00:57:55,840
But don't worry about that.

1189
00:57:55,840 --> 00:57:57,340
We're going to peel back that layer.

1190
00:57:57,340 --> 00:57:59,940
It turns out, strings can
be longer than 8 bytes.

1191
00:57:59,940 --> 00:58:02,310
>> And, indeed, we've written
strings already, hello world,

1192
00:58:02,310 --> 00:58:03,700
longer than 8 bytes.

1193
00:58:03,700 --> 00:58:06,270
But we'll come back to
that in just a moment.

1194
00:58:06,270 --> 00:58:09,690
But the take away here is the following.

1195
00:58:09,690 --> 00:58:15,320
>> Any computer only has a finite
amount of memory and space.

1196
00:58:15,320 --> 00:58:17,860
You can only store so many
files on your Mac or PC.

1197
00:58:17,860 --> 00:58:23,030
You can only store so many programs in
RAM running at once, necessarily, even

1198
00:58:23,030 --> 00:58:26,360
with virtual memory, because
you have a finite amount of RAM.

1199
00:58:26,360 --> 00:58:28,990
>> And just to picture-- if
you've never opened up a laptop

1200
00:58:28,990 --> 00:58:31,300
or ordered extra memory
for a computer, you

1201
00:58:31,300 --> 00:58:33,670
might not know that
inside of your computer

1202
00:58:33,670 --> 00:58:36,590
is something that looks
a little like this.

1203
00:58:36,590 --> 00:58:40,540
So this is just a common company named
Crucial that makes RAM for computers.

1204
00:58:40,540 --> 00:58:43,620
And RAM is where programs
live while they're running.

1205
00:58:43,620 --> 00:58:46,630
>> So on every Mac or PC, when you double
click a program, and it opens up,

1206
00:58:46,630 --> 00:58:48,921
and it opens some Word document
or something like that,

1207
00:58:48,921 --> 00:58:51,764
it stores it temporarily in
RAM, because RAM is faster

1208
00:58:51,764 --> 00:58:53,680
than your hard disk, or
your solid state disk.

1209
00:58:53,680 --> 00:58:56,600
So it's just where programs go
to live when they're running,

1210
00:58:56,600 --> 00:58:58,060
or when files are being used.

1211
00:58:58,060 --> 00:59:00,890
>> So you have things that look
like this inside of your laptop,

1212
00:59:00,890 --> 00:59:03,320
or slightly bigger things
inside of your desktop.

1213
00:59:03,320 --> 00:59:07,440
But the key is you only have a
finite number of these things.

1214
00:59:07,440 --> 00:59:11,230
And there's only a finite amount of
hardware sitting on this desk right

1215
00:59:11,230 --> 00:59:11,730
here.

1216
00:59:11,730 --> 00:59:15,920
>> So, surely, we can't store
infinitely long numbers.

1217
00:59:15,920 --> 00:59:19,030
And, yet, if you think back to
grade school, how many digits can

1218
00:59:19,030 --> 00:59:21,400
you have to the right
of a decimal point?

1219
00:59:21,400 --> 00:59:24,680
For that matter, how many digits can
you have to the left of a decimal point?

1220
00:59:24,680 --> 00:59:26,300
Really, infinitely many.

1221
00:59:26,300 --> 00:59:30,840
>> Now, we humans might only
know how to pronounce million,

1222
00:59:30,840 --> 00:59:34,990
and billion, trillion, and
quadrillion, and quintillion.

1223
00:59:34,990 --> 00:59:39,370
And I'm pushing the limits of my
understanding-- or my-- I understand

1224
00:59:39,370 --> 00:59:41,110
numbers, but my
pronunciation of numbers.

1225
00:59:41,110 --> 00:59:44,720
But they can get infinitely large with
infinitely many digits to the left

1226
00:59:44,720 --> 00:59:47,050
or to the right of a decimal point.

1227
00:59:47,050 --> 00:59:50,040
>> But computers only have a
finite amount of memory,

1228
00:59:50,040 --> 00:59:53,510
a finite number of transistors, a
finite number of light bulbs inside.

1229
00:59:53,510 --> 00:59:57,350
So what happens when
you run out of space?

1230
00:59:57,350 --> 00:59:59,620
In other words, if you
think back to last week

1231
00:59:59,620 --> 01:00:03,160
when we talked about numbers
themselves being represented in binary,

1232
01:00:03,160 --> 01:00:05,480
suppose that we've got
this 8-bit value here.

1233
01:00:05,480 --> 01:00:08,290
>> And we have seven 1's and one 0.

1234
01:00:08,290 --> 01:00:10,827
And suppose that we want
to add 1 to this value.

1235
01:00:10,827 --> 01:00:12,410
This is a really big number right now.

1236
01:00:12,410 --> 01:00:16,610
>> This is 254, if I remember
the math from last week right.

1237
01:00:16,610 --> 01:00:19,480
But what if I change
that rightmost 0 to a 1?

1238
01:00:19,480 --> 01:00:22,800
The whole number, of
course, becomes eight 1's.

1239
01:00:22,800 --> 01:00:24,050
So we're still good.

1240
01:00:24,050 --> 01:00:27,204
>> And that probably represents
255, though depending on context

1241
01:00:27,204 --> 01:00:29,120
it could actually represent
a negative number.

1242
01:00:29,120 --> 01:00:31,240
But more on that another time.

1243
01:00:31,240 --> 01:00:34,220
This feels like it's about
as high as I can count.

1244
01:00:34,220 --> 01:00:35,290
>> Now, it's only 8 bits.

1245
01:00:35,290 --> 01:00:38,170
And my Mac, surely, has way
more than 8 bits of memory.

1246
01:00:38,170 --> 01:00:39,170
But it does have finite.

1247
01:00:39,170 --> 01:00:43,230
So the same argument applies, even if we
have more of these ones on the screen.

1248
01:00:43,230 --> 01:00:47,020
>> But what happens if you're
storing this number, 255,

1249
01:00:47,020 --> 01:00:49,290
and you want to count 1 bit higher?

1250
01:00:49,290 --> 01:00:51,600
You want to go from 255 to 256.

1251
01:00:51,600 --> 01:00:55,800
The problem, of course, is that if you
start counting at zero like last week,

1252
01:00:55,800 --> 01:00:59,670
you can't count as high
as 256, let alone 257,

1253
01:00:59,670 --> 01:01:02,584
let alone 258,m because what
happens when you add a 1?

1254
01:01:02,584 --> 01:01:05,000
If you do the old grade school
approach, you put a 1 here,

1255
01:01:05,000 --> 01:01:08,150
and then 1 plus 1 is 2, but that's
really a zero, you carry the 1,

1256
01:01:08,150 --> 01:01:09,695
carry the 1, carry the 1.

1257
01:01:09,695 --> 01:01:12,620
All of these things,
these 1's, go to zero.

1258
01:01:12,620 --> 01:01:17,820
And you wind up, yes, as someone
pointed out, a 1 on the left hand side.

1259
01:01:17,820 --> 01:01:22,540
But everything you can
actually see and fit in memory

1260
01:01:22,540 --> 01:01:27,960
is just eight 0's, which is to say
at some point if you, a computer,

1261
01:01:27,960 --> 01:01:32,490
tried counting high enough up, you're
going to wrap around, it would seem,

1262
01:01:32,490 --> 01:01:35,850
to zero, or maybe even negative
numbers, which are even lower than zero.

1263
01:01:35,850 --> 01:01:37,260
>> And we can kind of see this.

1264
01:01:37,260 --> 01:01:39,900
Let me go ahead and write
a real quick program here.

1265
01:01:39,900 --> 01:01:43,690
Let me go ahead and write
a program called Overflow.

1266
01:01:43,690 --> 01:01:49,980
Include CS50.h, include
standard IO.h-- oh,

1267
01:01:49,980 --> 01:01:51,730
I really missed my syntax highlighting.

1268
01:01:51,730 --> 01:01:54,440
So let's save this as overflow.c.

1269
01:01:54,440 --> 01:01:57,084
>> And now int main void--
and before long, we'll

1270
01:01:57,084 --> 01:01:59,500
come back to explaining why
we keep writing int main void.

1271
01:01:59,500 --> 01:02:02,080
But for now, let's just do
it, taking it for granted.

1272
01:02:02,080 --> 01:02:06,200
Let's give myself an int,
and initialize it to 0.

1273
01:02:06,200 --> 01:02:11,716
>> Let's then do for int i get zero--
actually, let's do an infinite loop

1274
01:02:11,716 --> 01:02:12,590
and see what happens.

1275
01:02:12,590 --> 01:02:22,440
While true, then let's print out n
is percent i, backslash n, plug-in n.

1276
01:02:22,440 --> 01:02:27,200
But, now, let's do n gets n plus 1.

1277
01:02:27,200 --> 01:02:29,660
>> So in other words, on each
iteration of this infinite loop,

1278
01:02:29,660 --> 01:02:32,550
let's take n's value,
and add 1 to it, and then

1279
01:02:32,550 --> 01:02:34,350
store the result back in n on the left.

1280
01:02:34,350 --> 01:02:37,150
And, in fact, we've seen syntax
slightly like this, briefly.

1281
01:02:37,150 --> 01:02:39,730
A cool trick is instead
of writing all this out,

1282
01:02:39,730 --> 01:02:42,770
you can actually say an n plus equals 1.

1283
01:02:42,770 --> 01:02:47,480
>> Or if you really want to be fancy,
you can say n plus plus semi-colon.

1284
01:02:47,480 --> 01:02:50,130
But these latter two are just
what we'd call syntactic sugar

1285
01:02:50,130 --> 01:02:50,790
for the first thing.

1286
01:02:50,790 --> 01:02:53,456
>> The first thing is more explicit,
totally fine, totally correct.

1287
01:02:53,456 --> 01:02:55,470
But this is more common, I'll say.

1288
01:02:55,470 --> 01:02:57,210
So we'll do this for just a moment.

1289
01:02:57,210 --> 01:03:01,685
>> Let's now make overflow, which sounds
rather ominous, dot slash overflow.

1290
01:03:01,685 --> 01:03:04,380

1291
01:03:04,380 --> 01:03:09,852
Let's see, n's getting pretty big.

1292
01:03:09,852 --> 01:03:11,310
But let's think, how big can n get?

1293
01:03:11,310 --> 01:03:12,870
>> n is an int.

1294
01:03:12,870 --> 01:03:16,400
We saw a moment ago with the size of
example that an int is four bytes.

1295
01:03:16,400 --> 01:03:22,070
We know from last week, four bytes is
32 bits, because 8 times 4, that's 32.

1296
01:03:22,070 --> 01:03:23,460
That's going to be 4 billion.

1297
01:03:23,460 --> 01:03:25,802
>> And we are up to 800,000.

1298
01:03:25,802 --> 01:03:28,510
This is going to take forever to
count as high as I possibly can.

1299
01:03:28,510 --> 01:03:30,635
So I'm going to go ahead,
as you might before long,

1300
01:03:30,635 --> 01:03:34,910
and hit Control C-- frankly, Control
C, a lot, where Control C generally

1301
01:03:34,910 --> 01:03:36,034
means cancel.

1302
01:03:36,034 --> 01:03:38,200
Unfortunately, because this
is running in the cloud,

1303
01:03:38,200 --> 01:03:41,190
sometimes the cloud is
spitting out so much stuff,

1304
01:03:41,190 --> 01:03:44,180
so much output, it's going to
take a little while for my input

1305
01:03:44,180 --> 01:03:45,630
to get to the cloud.

1306
01:03:45,630 --> 01:03:49,240
So even though I hit
Control C a few seconds ago,

1307
01:03:49,240 --> 01:03:53,110
this is definitely the side
effect of an infinite loop.

1308
01:03:53,110 --> 01:03:56,070
>> And so in such cases, we're
going to leave that be.

1309
01:03:56,070 --> 01:03:59,050
And we're going to add another
terminal window over here

1310
01:03:59,050 --> 01:04:03,186
with the plus, which of course doesn't
like that, since it's still thinking.

1311
01:04:03,186 --> 01:04:05,310
And let's go ahead and be
a little more reasonable.

1312
01:04:05,310 --> 01:04:07,768
>> I'm going to go ahead and do
this only finitely many times.

1313
01:04:07,768 --> 01:04:10,047
Let's use a for loop,
which I alluded to earlier.

1314
01:04:10,047 --> 01:04:10,630
Let's do this.

1315
01:04:10,630 --> 01:04:13,430
Give me another variable int i gets 0.

1316
01:04:13,430 --> 01:04:17,430
i is less than, let's say, 64 i++.

1317
01:04:17,430 --> 01:04:24,010
And now let me go ahead and print
out n is percent i, comma n.

1318
01:04:24,010 --> 01:04:27,547
And then n-- this is still
going to take forever.

1319
01:04:27,547 --> 01:04:28,130
Let's do this.

1320
01:04:28,130 --> 01:04:30,620
>> n gets n times 2.

1321
01:04:30,620 --> 01:04:34,140
Or we could be fancy
and do times equals 2.

1322
01:04:34,140 --> 01:04:37,120
But let's just say n
equals itself, times 2.

1323
01:04:37,120 --> 01:04:39,321
In other words, in this
new version of the program,

1324
01:04:39,321 --> 01:04:41,820
I don't want to wait forever
from like 800,000 to 4 billion.

1325
01:04:41,820 --> 01:04:43,070
Let's just get this over with.

1326
01:04:43,070 --> 01:04:44,920
>> Let's actually double n each time.

1327
01:04:44,920 --> 01:04:47,660
Which, recall, doubling is the
opposite of having, of course.

1328
01:04:47,660 --> 01:04:50,035
And whereas last week we have
something again, and again,

1329
01:04:50,035 --> 01:04:52,200
and again, super fast,
doubling will surely

1330
01:04:52,200 --> 01:04:58,080
get us from 1 to the biggest possible
value that we can count to with an int.

1331
01:04:58,080 --> 01:04:59,750
>> So let's do exactly this.

1332
01:04:59,750 --> 01:05:01,720
And we'll come back to this before long.

1333
01:05:01,720 --> 01:05:04,180
But this, again, is just like
the repeat block in Scratch.

1334
01:05:04,180 --> 01:05:05,600
And you'll use this before long.

1335
01:05:05,600 --> 01:05:10,170
>> This just means count from zero
up to, but not equal, to 64.

1336
01:05:10,170 --> 01:05:14,285
And on each iteration of this
loop, just keep incrementing i.

1337
01:05:14,285 --> 01:05:18,990
So i++-- and this general construct
on line 7 is just a super common way

1338
01:05:18,990 --> 01:05:22,290
of repeating some lines of
code, some number of times.

1339
01:05:22,290 --> 01:05:23,362
Which lines of code?

1340
01:05:23,362 --> 01:05:25,570
These curly braces, as you
may have gleaned from now,

1341
01:05:25,570 --> 01:05:26,780
means, do the following.

1342
01:05:26,780 --> 01:05:29,510
>> It's in like Scratch, when
it has the yellow blocks

1343
01:05:29,510 --> 01:05:32,680
and other colors that kind of
embrace or hug other blocks.

1344
01:05:32,680 --> 01:05:34,750
That's what those curly
braces are doing here.

1345
01:05:34,750 --> 01:05:40,200
So if I got my syntax right-- you
can see the carrot symbol in C means

1346
01:05:40,200 --> 01:05:42,706
that's how many times I was
trying to solve this problem.

1347
01:05:42,706 --> 01:05:45,330
So let's get rid of that one
altogether, and close that window.

1348
01:05:45,330 --> 01:05:46,520
And we'll use the new one.

1349
01:05:46,520 --> 01:05:51,980
Make overflow, dot slash
overflow, Enter, all right,

1350
01:05:51,980 --> 01:05:53,090
it looks bad at first.

1351
01:05:53,090 --> 01:05:56,200
But let's scroll back in time,
because I did this 64 times.

1352
01:05:56,200 --> 01:05:58,700
>> And notice the first time, n is 1.

1353
01:05:58,700 --> 01:06:03,110
Second time, n is 2,
then 4, then 8, then 16.

1354
01:06:03,110 --> 01:06:09,450
And it seems that as soon as
I get to roughly 1 billion,

1355
01:06:09,450 --> 01:06:12,800
if I double it again, that
should give me 2 billion.

1356
01:06:12,800 --> 01:06:14,980
But it turns out, it's
right on the cusp.

1357
01:06:14,980 --> 01:06:18,930
>> And so it actually overflows
an int from 1 billion

1358
01:06:18,930 --> 01:06:23,514
to roughly negative 2
billion, because an integer,

1359
01:06:23,514 --> 01:06:25,430
unlike the numbers we
were assuming last week,

1360
01:06:25,430 --> 01:06:28,397
can be both positive and negative
in reality and in a computer.

1361
01:06:28,397 --> 01:06:30,730
And so at least one of those
bits is effectively stolen.

1362
01:06:30,730 --> 01:06:34,190
So we really only have 31 bits,
or 2 billion possible values.

1363
01:06:34,190 --> 01:06:38,220
>> But for now, the takeaway is quite
simply, whatever these numbers are

1364
01:06:38,220 --> 01:06:42,280
and whatever the math is,
something bad happens eventually,

1365
01:06:42,280 --> 01:06:46,980
because eventually you are trying to
permute the bits one too many times.

1366
01:06:46,980 --> 01:06:51,060
And you effectively go from all
1's to maybe all 0's, or maybe

1367
01:06:51,060 --> 01:06:54,260
just some other pattern that it
clearly, depending on context,

1368
01:06:54,260 --> 01:06:56,342
can be interpreted as a negative number.

1369
01:06:56,342 --> 01:06:59,300
And so it would seem the highest I
can count in this particular program

1370
01:06:59,300 --> 01:07:01,210
is only roughly 1 billion.

1371
01:07:01,210 --> 01:07:02,760
But there's a partial solution here.

1372
01:07:02,760 --> 01:07:03,480
You know what?

1373
01:07:03,480 --> 01:07:07,600
>> Let me change from an
int to a long long.

1374
01:07:07,600 --> 01:07:10,633
And let me go ahead here
and say-- I'm going to have

1375
01:07:10,633 --> 01:07:12,290
to change this to an unsigned long.

1376
01:07:12,290 --> 01:07:16,860
Or, let's see, I never remember myself.

1377
01:07:16,860 --> 01:07:19,920
>> Let's go ahead and make overflow.

1378
01:07:19,920 --> 01:07:21,860
No, that's not it, LLD, thank you.

1379
01:07:21,860 --> 01:07:23,430
So sometimes Clang can be helpful.

1380
01:07:23,430 --> 01:07:27,550
I did not remember what the format
specifier was for a long long.

1381
01:07:27,550 --> 01:07:28,950
>> But, indeed, Clang told me.

1382
01:07:28,950 --> 01:07:31,570
Green is some kind of good,
still means you made a mistake.

1383
01:07:31,570 --> 01:07:33,190
It's guessing that I meant LLD.

1384
01:07:33,190 --> 01:07:38,750
>> So let me take it's advice, a long
long decimal number, save that.

1385
01:07:38,750 --> 01:07:43,190
And let me rerun it, dot
slash overflow, Enter.

1386
01:07:43,190 --> 01:07:45,020
And now what's cool is this.

1387
01:07:45,020 --> 01:07:49,140
>> If I scroll back in time, we still start
counting at the same place-- 1, 2, 4,

1388
01:07:49,140 --> 01:07:50,220
8, 16.

1389
01:07:50,220 --> 01:07:54,860
Notice, we get all the
way up to 1 billion.

1390
01:07:54,860 --> 01:07:57,070
But then we safely get to 2 billion.

1391
01:07:57,070 --> 01:08:01,300
>> Then we get to 4 billion,
then 8 billion, 17 billion.

1392
01:08:01,300 --> 01:08:03,340
And we go higher, and
higher, and higher.

1393
01:08:03,340 --> 01:08:05,740
Eventually, this, too, breaks.

1394
01:08:05,740 --> 01:08:09,350
>> Eventually, with a long long,
which is the 64-bit value, not

1395
01:08:09,350 --> 01:08:13,660
a 32-bit value, if you count
too high, you wrap around 0.

1396
01:08:13,660 --> 01:08:16,410
And in this case, we happen to
end up with a negative number.

1397
01:08:16,410 --> 01:08:17,550
>> So this is a problem.

1398
01:08:17,550 --> 01:08:20,439
And it turns out that this
problem is not all that arcane.

1399
01:08:20,439 --> 01:08:23,060
Even though I've deliberately
induced it with these mistakes,

1400
01:08:23,060 --> 01:08:26,149
it turns out we see it kind of all
around us, or at least some of us do.

1401
01:08:26,149 --> 01:08:28,939
>> So in Lego Star Wars, if
you've ever played the game,

1402
01:08:28,939 --> 01:08:33,830
it turns out you can go around
breaking things up in LEGO world,

1403
01:08:33,830 --> 01:08:36,640
and collecting coins, essentially.

1404
01:08:36,640 --> 01:08:39,200
And if you've ever played
this game way too much time,

1405
01:08:39,200 --> 01:08:42,630
as this unnamed individual
here did, the total number

1406
01:08:42,630 --> 01:08:46,700
of coins that you can collect
is, it would seem, 4 billion.

1407
01:08:46,700 --> 01:08:48,240
>> Now, with it's actually rounded.

1408
01:08:48,240 --> 01:08:50,239
So LEGO was trying to
keep things user friendly.

1409
01:08:50,239 --> 01:08:53,779
They didn't do it exactly 2 to
the 32 power, per last week.

1410
01:08:53,779 --> 01:08:55,310
But 4 billion is a reason.

1411
01:08:55,310 --> 01:08:58,979
It seems, based on this information,
that LEGO, and the company that

1412
01:08:58,979 --> 01:09:02,624
made this actual software, decided
that the maximum number of coins

1413
01:09:02,624 --> 01:09:04,540
the user can accumulate
is, indeed, 4 billion,

1414
01:09:04,540 --> 01:09:12,069
because they chose in their code
to use not a long long, apparently,

1415
01:09:12,069 --> 01:09:16,140
but just an integer, an unsigned
integer, only a positive integer, whose

1416
01:09:16,140 --> 01:09:18,089
max value is roughly that.

1417
01:09:18,089 --> 01:09:19,380
Well, here's another funny one.

1418
01:09:19,380 --> 01:09:23,500
So in the game Civilization, which
some of you might be familiar, with

1419
01:09:23,500 --> 01:09:26,660
it turns out that years ago there
was a bug in this game whereby

1420
01:09:26,660 --> 01:09:28,750
if you played the role
of Gandhi in the game,

1421
01:09:28,750 --> 01:09:34,020
instead of him being very pacifist,
instead was incredibly, incredibly

1422
01:09:34,020 --> 01:09:36,399
aggressive, in some circumstances.

1423
01:09:36,399 --> 01:09:40,529
In particular, the way that Civilization
works is that if you, the player,

1424
01:09:40,529 --> 01:09:44,680
adopt democracy, your
aggressiveness score gets

1425
01:09:44,680 --> 01:09:48,130
decremented by two, so minus
minus, and then minus minus.

1426
01:09:48,130 --> 01:09:50,569
>> So you subtract 2 from
your actual iterating.

1427
01:09:50,569 --> 01:09:56,650
Unfortunately, if your iterating is
initially 1, and you subtract 2 from it

1428
01:09:56,650 --> 01:09:59,050
after adopting democracy
as Gandhi here might

1429
01:09:59,050 --> 01:10:02,200
have done, because he was very passive--
1 on the scale of aggressiveness.

1430
01:10:02,200 --> 01:10:04,830
But if he adopts democracy, then
he goes from 1 to negative 1.

1431
01:10:04,830 --> 01:10:11,470
>> Unfortunately, they were
using unsigned numbers,

1432
01:10:11,470 --> 01:10:15,400
which means they treated even negative
numbers as though they were positive.

1433
01:10:15,400 --> 01:10:19,780
And it turns out that the
positive equivalent of negative 1,

1434
01:10:19,780 --> 01:10:23,480
in typical computer programs, is 255.

1435
01:10:23,480 --> 01:10:27,250
So if Gandhi adopts
democracy, and therefore has

1436
01:10:27,250 --> 01:10:32,470
his aggressiveness score decreased,
it actually rolls around to 255

1437
01:10:32,470 --> 01:10:35,470
and makes him the most
aggressive character in the game.

1438
01:10:35,470 --> 01:10:36,930
So you can Google up on this.

1439
01:10:36,930 --> 01:10:39,380
And it was, indeed, an
accidental programming bug,

1440
01:10:39,380 --> 01:10:43,010
but that's entered quite
the lore ever since.

1441
01:10:43,010 --> 01:10:44,360
>> That's all fun and cute.

1442
01:10:44,360 --> 01:10:47,760
More frightening is when actual
real world devices, and not games,

1443
01:10:47,760 --> 01:10:48,820
have these same bugs.

1444
01:10:48,820 --> 01:10:54,500
In fact, just a year ago an article came
out about the Boeing 787 Dreamliner.

1445
01:10:54,500 --> 01:10:56,850
>> And the article at first
glance reads a little arcane.

1446
01:10:56,850 --> 01:11:01,480
But it said this, a software
vulnerability in Boeing's

1447
01:11:01,480 --> 01:11:04,790
new 787 Dreamliner jet has
the potential to cause pilots

1448
01:11:04,790 --> 01:11:07,220
to lose control of
the aircraft, possibly

1449
01:11:07,220 --> 01:11:11,750
in mid-flight, the FAA officials
warned airlines recently.

1450
01:11:11,750 --> 01:11:14,520
It was the determination
that a model 787

1451
01:11:14,520 --> 01:11:19,770
airplane that has been powered
continuously for 248 days

1452
01:11:19,770 --> 01:11:24,880
can lose all alternating current, AC,
electrical power due to the generator

1453
01:11:24,880 --> 01:11:28,892
control units, GCUs, simultaneously
going into fail safe mode.

1454
01:11:28,892 --> 01:11:29,850
It's kind of losing me.

1455
01:11:29,850 --> 01:11:35,390
But the memo stated, OK, now I got that,
the condition was caused by a software

1456
01:11:35,390 --> 01:11:38,590
counter internal to
the generator control

1457
01:11:38,590 --> 01:11:44,860
units that will overflow after
248 days of continuous power.

1458
01:11:44,860 --> 01:11:47,070
We are issuing this
notice to prevent loss

1459
01:11:47,070 --> 01:11:49,300
of all AC electrical
power, which could result

1460
01:11:49,300 --> 01:11:50,980
in loss of control of the airplane.

1461
01:11:50,980 --> 01:11:55,380
>> So, literally, there is some integer,
or some equivalent data type,

1462
01:11:55,380 --> 01:11:57,960
being used in software
in an actual airplane

1463
01:11:57,960 --> 01:12:00,756
that if you keep your airplane
on long enough, which apparently

1464
01:12:00,756 --> 01:12:03,880
can be the case if you're just running
them constantly and never unplugging

1465
01:12:03,880 --> 01:12:06,810
your airplane, it seems, or
letting its batteries die,

1466
01:12:06,810 --> 01:12:09,840
will eventually count up, and up,
and up, and up, and up, and up.

1467
01:12:09,840 --> 01:12:12,150
>> And, by nature, a
finite amount of memory

1468
01:12:12,150 --> 01:12:15,880
will overflow, rolling back to
zero or some negative value,

1469
01:12:15,880 --> 01:12:19,920
a side effect of which is the
frighteningly real reality

1470
01:12:19,920 --> 01:12:23,970
that the plane might need
to be rebooted, effectively,

1471
01:12:23,970 --> 01:12:27,290
or might fall, worse, as it flies.

1472
01:12:27,290 --> 01:12:29,230
So these kinds of issues
are still with us,

1473
01:12:29,230 --> 01:12:33,130
even-- this was a 2015 article,
all the more frightening

1474
01:12:33,130 --> 01:12:36,100
when you don't necessarily
understand, appreciate, or anticipate

1475
01:12:36,100 --> 01:12:38,640
those kinds of errors.

1476
01:12:38,640 --> 01:12:42,030
>> So it turns out there's one other
bad thing about data representation.

1477
01:12:42,030 --> 01:12:47,080
It turns out that even floats are
kind of flawed, because floats, too,

1478
01:12:47,080 --> 01:12:51,440
I proposed are 32 bits, or
maybe 64 if you use a double.

1479
01:12:51,440 --> 01:12:53,070
But that's still finite.

1480
01:12:53,070 --> 01:12:57,070
>> And the catch is that if you can
put an infinite number of numbers

1481
01:12:57,070 --> 01:12:59,460
after the decimal point,
there is no way you

1482
01:12:59,460 --> 01:13:02,690
can represent all the possible
numbers that we were taught

1483
01:13:02,690 --> 01:13:04,990
in grade school can exist in the world.

1484
01:13:04,990 --> 01:13:08,870
A computer, essentially, has to
choose a subset of those numbers

1485
01:13:08,870 --> 01:13:10,200
to represent accurately.

1486
01:13:10,200 --> 01:13:12,450
>> Now, the computer can
round maybe a little bit,

1487
01:13:12,450 --> 01:13:17,900
and can allow you to roughly store
any number you might possibly want.

1488
01:13:17,900 --> 01:13:20,940
But just intuitively, if you
have a finite number of bits,

1489
01:13:20,940 --> 01:13:24,560
you can only permute them
in so many finite ways.

1490
01:13:24,560 --> 01:13:26,570
So you can't possibly
use a finite number

1491
01:13:26,570 --> 01:13:29,880
of permutation of bits,
patterns of zeros and ones,

1492
01:13:29,880 --> 01:13:32,940
to represent an infinite
number of numbers,

1493
01:13:32,940 --> 01:13:37,370
which suggests that computers might
very well be lying to us sometimes.

1494
01:13:37,370 --> 01:13:38,770
>> In fact, let's do this.

1495
01:13:38,770 --> 01:13:41,239
Let me go back into CS50 IDE.

1496
01:13:41,239 --> 01:13:43,030
Let me go ahead and
create a little program

1497
01:13:43,030 --> 01:13:47,940
called Imprecision, to show that
computers are, indeed, imprecise.

1498
01:13:47,940 --> 01:13:51,910
>> And let me go ahead and start with
some of that code from before,

1499
01:13:51,910 --> 01:13:53,830
and now just do the following.

1500
01:13:53,830 --> 01:14:03,640
Let me go ahead and do printf, percent
f, backslash n, 1 divided by 10.

1501
01:14:03,640 --> 01:14:07,430
In other words, let's dive in deeper
to 1/10, like 1 and divided by 10.

1502
01:14:07,430 --> 01:14:09,760
Surely, a computer can represent 1/10.

1503
01:14:09,760 --> 01:14:13,620
>> So let's go ahead and make imprecision.

1504
01:14:13,620 --> 01:14:14,390
Let's see.

1505
01:14:14,390 --> 01:14:16,210
Format specifies type double.

1506
01:14:16,210 --> 01:14:18,160
But the argument has type int.

1507
01:14:18,160 --> 01:14:19,040
What's going on?

1508
01:14:19,040 --> 01:14:21,970
>> Oh, interesting, so it's a
lesson learned from before.

1509
01:14:21,970 --> 01:14:26,050
I'm saying, hey, computer show
me a float with percent f.

1510
01:14:26,050 --> 01:14:28,200
But I'm giving it 2 ints.

1511
01:14:28,200 --> 01:14:31,120
So it turns out, I can fix
this in a couple of ways.

1512
01:14:31,120 --> 01:14:38,430
>> I could just turn one into 1.0, and
10 into 10.0, which would, indeed,

1513
01:14:38,430 --> 01:14:42,390
have the effect of converting
them into floats-- still hopefully

1514
01:14:42,390 --> 01:14:43,180
the same number.

1515
01:14:43,180 --> 01:14:45,880
Or it turns out there's something
we'll see again before long.

1516
01:14:45,880 --> 01:14:47,170
You could cast the numbers.

1517
01:14:47,170 --> 01:14:49,880
>> You can, using this parenthetical
expression, you can say,

1518
01:14:49,880 --> 01:14:52,560
hey, computer, take this
10, which I know is an int.

1519
01:14:52,560 --> 01:14:54,660
But treat it, please,
as though it's a float.

1520
01:14:54,660 --> 01:14:56,680
But this feels unnecessarily complex.

1521
01:14:56,680 --> 01:14:59,040
>> For our purposes today,
let's just literally

1522
01:14:59,040 --> 01:15:02,700
make them floating point values
with a decimal point, like this.

1523
01:15:02,700 --> 01:15:07,060
Let me go ahead and rerun, make
imprecision, good, dot slash

1524
01:15:07,060 --> 01:15:08,870
imprecision, enter.

1525
01:15:08,870 --> 01:15:10,990
OK, we're looking good.

1526
01:15:10,990 --> 01:15:18,194
>> 1 divided by 10, according to my
Mac here, is, indeed, 0.100000.

1527
01:15:18,194 --> 01:15:21,360
Now, I was taught in grade school there
should be an infinite number of 0's.

1528
01:15:21,360 --> 01:15:23,151
So let's at least try
to see some of those.

1529
01:15:23,151 --> 01:15:26,770
It turns out that printf is a little
fancier still than we've been using.

1530
01:15:26,770 --> 01:15:30,890
It turns out you don't have to specify
just percent f, or just percent i.

1531
01:15:30,890 --> 01:15:33,830
You can actually specify
some control options here.

1532
01:15:33,830 --> 01:15:36,470
>> Specifically, I'm going
to say, hey, printf,

1533
01:15:36,470 --> 01:15:39,660
actually show me 10 decimal points.

1534
01:15:39,660 --> 01:15:40,820
So it looks a little weird.

1535
01:15:40,820 --> 01:15:42,845
But you say percent,
dot, how many numbers

1536
01:15:42,845 --> 01:15:44,970
you want to see after the
decimal point, and then f

1537
01:15:44,970 --> 01:15:48,340
for flat, just because that's
what the documentation says.

1538
01:15:48,340 --> 01:15:50,080
Let me go ahead and save that.

1539
01:15:50,080 --> 01:15:52,460
>> And notice too, I'm getting
tired of retyping things.

1540
01:15:52,460 --> 01:15:55,900
So I'm just setting the up and
down arrow on my keys here.

1541
01:15:55,900 --> 01:15:58,710
And if I keep hitting up, you
can see all of the commands

1542
01:15:58,710 --> 01:16:01,090
that I made, or incorrectly made.

1543
01:16:01,090 --> 01:16:04,630
>> And I'm going to go ahead now and
not actually use that, apparently.

1544
01:16:04,630 --> 01:16:11,416
Make imprecision, dot
slash imprecision-- so

1545
01:16:11,416 --> 01:16:13,290
what I was taught in
grade school checks out.

1546
01:16:13,290 --> 01:16:19,010
Even if I print it to 10 decimal
places it, indeed, is 0.10000.

1547
01:16:19,010 --> 01:16:19,840
But you know what?

1548
01:16:19,840 --> 01:16:21,150
>> Let's get a little greedy.

1549
01:16:21,150 --> 01:16:23,990
Let's say, like, show me 55
points after the decimal.

1550
01:16:23,990 --> 01:16:26,160
Let's really take this
program out for a spin.

1551
01:16:26,160 --> 01:16:31,170
Let me remake it with make
imprecision, dot slash, imprecision.

1552
01:16:31,170 --> 01:16:32,390
>> And here we go.

1553
01:16:32,390 --> 01:16:34,420
Your childhood was a lie.

1554
01:16:34,420 --> 01:16:48,410
Apparently, 1 divided by 10 is indeed
0.100000000000000005551115123--

1555
01:16:48,410 --> 01:16:49,740
>> What is going on?

1556
01:16:49,740 --> 01:16:53,360
Well, it turns out, if you kind of
look far enough out in the underlying

1557
01:16:53,360 --> 01:16:55,950
representation of this
number, it actually

1558
01:16:55,950 --> 01:17:00,400
is not exactly 1/10, or 0.1 and
an infinite number of zeros.

1559
01:17:00,400 --> 01:17:01,630
Now, why is that?

1560
01:17:01,630 --> 01:17:06,250
>> Well, even though this is a simple
number to us humans, 1 divided by 10,

1561
01:17:06,250 --> 01:17:10,910
it's still one of infinitely many
numbers that we could think up.

1562
01:17:10,910 --> 01:17:14,490
But a computer can only represent
finitely many so numbers.

1563
01:17:14,490 --> 01:17:18,710
And so, effectively, what the
computer is showing us is its closest

1564
01:17:18,710 --> 01:17:22,940
approximation to the number
we want to believe is 1/10,

1565
01:17:22,940 --> 01:17:27,760
or really 0.10000 ad infinitum.

1566
01:17:27,760 --> 01:17:30,425
>> Rather, though, this is
as close as it can get.

1567
01:17:30,425 --> 01:17:32,300
And, indeed, if you look
underneath the hood,

1568
01:17:32,300 --> 01:17:37,050
as we are here by looking
55 digits after the decimal,

1569
01:17:37,050 --> 01:17:39,990
we actually see that reality.

1570
01:17:39,990 --> 01:17:42,610
Now as an aside, if you've
ever seen the movie--

1571
01:17:42,610 --> 01:17:45,780
most of you probably haven't--
but Superman 3 some years ago,

1572
01:17:45,780 --> 01:17:49,500
Richard Pryor essentially leveraged this
reality in his company to steal a lot

1573
01:17:49,500 --> 01:17:53,500
of fractions and fractions of pennies,
because the company-- as I recall,

1574
01:17:53,500 --> 01:17:57,210
it's been a while-- was essentially
throwing away anything that didn't fit

1575
01:17:57,210 --> 01:17:58,790
into the notion of cents.

1576
01:17:58,790 --> 01:18:01,480
>> But if you add up all these
tiny, tiny, tiny numbers again,

1577
01:18:01,480 --> 01:18:04,960
and again, and again, you can, as in
his case, make a good amount of money.

1578
01:18:04,960 --> 01:18:08,010
>> That same idea was ripped off by
a more recent, but still now older

1579
01:18:08,010 --> 01:18:10,500
movie, called Office Space,
where the guys in that movie,

1580
01:18:10,500 --> 01:18:13,501
did the same thing, screwed it up
completely, ended up with way too much

1581
01:18:13,501 --> 01:18:14,666
money in their bank account.

1582
01:18:14,666 --> 01:18:15,800
It was all very suspicious.

1583
01:18:15,800 --> 01:18:19,290
But at the end of the day,
imprecision is all around us.

1584
01:18:19,290 --> 01:18:22,240
>> And that, too, can be
frighteningly the case.

1585
01:18:22,240 --> 01:18:25,590
It turns out that Superman 3
and Office Space aside, there

1586
01:18:25,590 --> 01:18:28,460
can be some very real
world ramifications

1587
01:18:28,460 --> 01:18:32,290
of the realities of imprecise
representation of data

1588
01:18:32,290 --> 01:18:34,770
that even we humans to
this day don't necessarily

1589
01:18:34,770 --> 01:18:38,230
understand as well as we should,
or remember as often as we should.

1590
01:18:38,230 --> 01:18:42,950
And, indeed, the following clip is
from a look at some very real world

1591
01:18:42,950 --> 01:18:47,730
ramifications of what happens if you
don't appreciate the imprecision that

1592
01:18:47,730 --> 01:18:50,065
can happen in numbers representation.

1593
01:18:50,065 --> 01:18:51,300
>> [VIDEO PLAYBACK]

1594
01:18:51,300 --> 01:18:55,620
>> -Computers, we've all come to accept
the often frustrating problems that

1595
01:18:55,620 --> 01:19:00,310
go with them-- bugs, viruses,
and software glitches,

1596
01:19:00,310 --> 01:19:03,130
for small prices to pay
for the convenience.

1597
01:19:03,130 --> 01:19:07,800
But in high tech and high speed
military and space program applications,

1598
01:19:07,800 --> 01:19:12,800
the smallest problem can
be magnified into disaster.

1599
01:19:12,800 --> 01:19:18,900
>> On June 4th, 1996, scientists prepared
to launch an unmanned Ariane 5 rocket.

1600
01:19:18,900 --> 01:19:21,220
It was carrying scientific
satellites designed

1601
01:19:21,220 --> 01:19:24,600
to establish precisely how the
earth's magnetic field interacts

1602
01:19:24,600 --> 01:19:27,410
with solar winds.

1603
01:19:27,410 --> 01:19:30,800
The rocket was built for
the European Space Agency,

1604
01:19:30,800 --> 01:19:34,370
and lifted off from its facility
on the coast of French Guiana.

1605
01:19:34,370 --> 01:19:37,540
>> -At about 37 seconds into
the flight, they first

1606
01:19:37,540 --> 01:19:39,270
noticed something was going wrong.

1607
01:19:39,270 --> 01:19:42,250
The nozzles were swiveling in
a way they really shouldn't.

1608
01:19:42,250 --> 01:19:46,580
Around 40 seconds into the flight,
clearly, the vehicle was in trouble.

1609
01:19:46,580 --> 01:19:48,850
>> And that's when they made
a decision to destroy it.

1610
01:19:48,850 --> 01:19:52,780
The range safety officer, with
tremendous guts, pressed the button,

1611
01:19:52,780 --> 01:19:58,150
blew up the rocket, before it could
become a hazard to the public safety.

1612
01:19:58,150 --> 01:20:01,060
>> -This was the maiden
voyage of the Ariane 5.

1613
01:20:01,060 --> 01:20:03,960
And its destruction took
place because of a flaw

1614
01:20:03,960 --> 01:20:05,822
embedded in the rocket's software.

1615
01:20:05,822 --> 01:20:08,280
-The problem on the Ariane was
that there was a number that

1616
01:20:08,280 --> 01:20:10,600
required 64 bits to express.

1617
01:20:10,600 --> 01:20:13,590
And they wanted to convert
it to a 16-bit number.

1618
01:20:13,590 --> 01:20:15,610
They assumed that the
number was never going

1619
01:20:15,610 --> 01:20:20,980
to be very big, that most of those
digits in a 64-bit number were zeroes.

1620
01:20:20,980 --> 01:20:22,440
They were wrong.

1621
01:20:22,440 --> 01:20:25,060
>> -The inability of one
software program to accept

1622
01:20:25,060 --> 01:20:29,510
the kind of number generated by
another was at the root of the failure.

1623
01:20:29,510 --> 01:20:34,350
Software development had become a
very costly part of new technology.

1624
01:20:34,350 --> 01:20:38,140
The Ariane rocket have been very
successful, so much of the software

1625
01:20:38,140 --> 01:20:41,550
created for it was also
used in the Ariane 5.

1626
01:20:41,550 --> 01:20:47,940
>> -The basic problem was that the Ariane
5 was faster, accelerated faster.

1627
01:20:47,940 --> 01:20:51,450
And the software hadn't
accounted for that.

1628
01:20:51,450 --> 01:20:55,060
>> -The destruction of the rocket
was a huge financial disaster,

1629
01:20:55,060 --> 01:20:58,790
all due to a minute software error.

1630
01:20:58,790 --> 01:21:01,210
But this wasn't the first
time data conversion problems

1631
01:21:01,210 --> 01:21:04,820
had plagued modern rocket technology.

1632
01:21:04,820 --> 01:21:08,050
>> -In 1991, with the start
of the first Gulf War,

1633
01:21:08,050 --> 01:21:10,570
the Patriot Missile
experienced a similar kind

1634
01:21:10,570 --> 01:21:12,800
of number conversion problem.

1635
01:21:12,800 --> 01:21:16,090
And as a result, 28 people,
28 American soldiers,

1636
01:21:16,090 --> 01:21:19,080
were killed, and about
100 others wounded,

1637
01:21:19,080 --> 01:21:22,780
when the Patriot, which was supposed
to protect against incoming scuds,

1638
01:21:22,780 --> 01:21:25,830
failed to fire a missile.

1639
01:21:25,830 --> 01:21:31,670
>> -When Iraq invaded Kuwait, and America
launched Desert Storm in early 1991,

1640
01:21:31,670 --> 01:21:35,780
Patriot Missile batteries were deployed
to protect Saudi Arabia and Israel

1641
01:21:35,780 --> 01:21:39,230
from Iraqi Scud missile attacks.

1642
01:21:39,230 --> 01:21:43,810
The Patriot is a US medium-range
surface to air system, manufactured

1643
01:21:43,810 --> 01:21:45,770
by the Raytheon company.

1644
01:21:45,770 --> 01:21:52,340
>> -The size of the Patriot interceptor
itself is about roughly 20 feet long.

1645
01:21:52,340 --> 01:21:55,230
And it weighs about 2,000 pounds.

1646
01:21:55,230 --> 01:21:59,320
And it carries a warhead of about,
I think it's roughly 150 pounds.

1647
01:21:59,320 --> 01:22:03,930
And the warhead itself is
a high explosive, which

1648
01:22:03,930 --> 01:22:07,330
has fragments around it.

1649
01:22:07,330 --> 01:22:11,680
The casing of the warhead is
designed to act like buckshot.

1650
01:22:11,680 --> 01:22:14,110
>> -The missiles are carried
four per container,

1651
01:22:14,110 --> 01:22:17,130
and are transported by a semi trailer.

1652
01:22:17,130 --> 01:22:24,930
>> -The Patriot anti-missile system
goes back at least 20 years now.

1653
01:22:24,930 --> 01:22:28,420
It was originally designed
as an air defense missile

1654
01:22:28,420 --> 01:22:30,720
to shoot down enemy airplanes.

1655
01:22:30,720 --> 01:22:34,500
In the first Gulf War,
when that war came along,

1656
01:22:34,500 --> 01:22:39,745
the Army wanted to use it to
shoot down scuds, not airplanes.

1657
01:22:39,745 --> 01:22:43,620
>> The Iraqi Air Force was
not so much of a problem.

1658
01:22:43,620 --> 01:22:46,670
But the Army was worried about scuds.

1659
01:22:46,670 --> 01:22:50,170
And so they tried to
upgrade the Patriot.

1660
01:22:50,170 --> 01:22:52,800
>> -Intercepting an enemy
missile traveling at mach 5

1661
01:22:52,800 --> 01:22:55,830
was going to be challenging enough.

1662
01:22:55,830 --> 01:22:58,490
But when the Patriot
was rushed into service,

1663
01:22:58,490 --> 01:23:02,860
the Army was not aware of an
Iraqi modification that made

1664
01:23:02,860 --> 01:23:05,930
their scuds nearly impossible to hit.

1665
01:23:05,930 --> 01:23:10,740
>> -What happened is the scuds that
were coming in were unstable.

1666
01:23:10,740 --> 01:23:11,692
They were wobbling.

1667
01:23:11,692 --> 01:23:14,910
The reason for this was
the Iraqis, in order

1668
01:23:14,910 --> 01:23:18,280
to get 600 kilometers
out of a 300 kilometer

1669
01:23:18,280 --> 01:23:21,700
range missile, took weight
out of the front warhead.

1670
01:23:21,700 --> 01:23:23,390
They made the warhead lighter.

1671
01:23:23,390 --> 01:23:27,330
>> So now the Patriot is
trying to come at the Scud.

1672
01:23:27,330 --> 01:23:30,230
And most of the time, the
overwhelming majority of the time,

1673
01:23:30,230 --> 01:23:32,940
it would just fly by the Scud.

1674
01:23:32,940 --> 01:23:37,260
Once the Patriot system operators
realized the Patriot missed its target,

1675
01:23:37,260 --> 01:23:41,690
they detonated the Patriot's warhead
to avoid possible casualties if it

1676
01:23:41,690 --> 01:23:44,570
was allowed to fall to the ground.

1677
01:23:44,570 --> 01:23:48,790
>> -That was what most people saw,
those big fireballs in the sky,

1678
01:23:48,790 --> 01:23:54,550
and misunderstood as
intercepts of Scud warheads.

1679
01:23:54,550 --> 01:23:56,630
>> -Although in the night
skies, Patriots appeared

1680
01:23:56,630 --> 01:24:00,370
to be successfully
destroying Scuds, at Dhahran,

1681
01:24:00,370 --> 01:24:03,360
there could be no mistake
about its performance.

1682
01:24:03,360 --> 01:24:07,970
There, the Patriot's radar system
lost track of an incoming Scud,

1683
01:24:07,970 --> 01:24:10,721
and never launched due
to a software flaw.

1684
01:24:10,721 --> 01:24:14,090

1685
01:24:14,090 --> 01:24:18,940
It was the Israelis who first discovered
that the longer the system was on,

1686
01:24:18,940 --> 01:24:22,690
the greater the time discrepancy
became, due to a clock embedded

1687
01:24:22,690 --> 01:24:24,810
in the system's computer.

1688
01:24:24,810 --> 01:24:28,210
>> -About two weeks before
the tragedy in Dhahran,

1689
01:24:28,210 --> 01:24:30,770
the Israelis reported to
the Defense Department

1690
01:24:30,770 --> 01:24:32,590
that the system was losing time.

1691
01:24:32,590 --> 01:24:35,360
After about eight hours or running,
they noticed that the system

1692
01:24:35,360 --> 01:24:37,720
was becoming noticeably less accurate.

1693
01:24:37,720 --> 01:24:41,900
The Defense Department responded by
telling all of the Patriot batteries

1694
01:24:41,900 --> 01:24:44,950
to not leave the systems
on for a long time.

1695
01:24:44,950 --> 01:24:49,160
They never said what a long time was--
eight hours, 10 hours, 1,000 hours.

1696
01:24:49,160 --> 01:24:51,360
Nobody knew.

1697
01:24:51,360 --> 01:24:53,380
>> -The Patriot battery
stationed at the barracks

1698
01:24:53,380 --> 01:24:58,350
at Dhahran and its flawed internal
clock had been on over 100 hours

1699
01:24:58,350 --> 01:25:01,670
on the night of February 25th.

1700
01:25:01,670 --> 01:25:05,917
>> -It tracked time to an accuracy
of about a tenth of a second.

1701
01:25:05,917 --> 01:25:08,000
Now, a tenth of a second
is an interesting number,

1702
01:25:08,000 --> 01:25:11,920
because it can't be expressed
in binary exactly, which

1703
01:25:11,920 --> 01:25:16,820
means it can't be expressed exactly
in any modern digital computer.

1704
01:25:16,820 --> 01:25:18,540
It's hard to believe.

1705
01:25:18,540 --> 01:25:21,210
>> But use this as an example.

1706
01:25:21,210 --> 01:25:23,540
Let's take the number one third.

1707
01:25:23,540 --> 01:25:27,350
One third cannot be
expressed in decimal exactly.

1708
01:25:27,350 --> 01:25:32,080
One third is 0.333
going on for infinity.

1709
01:25:32,080 --> 01:25:36,480
>> There is no way to do that with
absolute accuracy in decimal.

1710
01:25:36,480 --> 01:25:39,560
That's exactly the kind of problem
that happened in the Patriot.

1711
01:25:39,560 --> 01:25:44,100
The longer the system ran, the
worse the time error became.

1712
01:25:44,100 --> 01:25:48,890
>> -After 100 hours of operation, the
error in time was only about one third

1713
01:25:48,890 --> 01:25:50,600
of a second.

1714
01:25:50,600 --> 01:25:54,210
But in terms of targeting a
missile traveling at mach 5,

1715
01:25:54,210 --> 01:25:58,710
it resulted in a tracking
error of over 600 meters.

1716
01:25:58,710 --> 01:26:02,120
It would be a fatal error
for the soldiers on what

1717
01:26:02,120 --> 01:26:08,940
happened is a Scud launch was
detected by early Warning satellites

1718
01:26:08,940 --> 01:26:12,860
and they knew that the Scud was
coming in their general direction.

1719
01:26:12,860 --> 01:26:15,320
They didn't know where it was coming.

1720
01:26:15,320 --> 01:26:18,250
>> -It was now up to the radar
component of the Patriot system

1721
01:26:18,250 --> 01:26:23,190
defending Dhahran to locate and keep
track of the incoming enemy missile.

1722
01:26:23,190 --> 01:26:24,609
>> -The radar was very smart.

1723
01:26:24,609 --> 01:26:26,650
It would actually track
the position of the Scud,

1724
01:26:26,650 --> 01:26:30,350
and then predict where it probably
would be the next time the radar sent

1725
01:26:30,350 --> 01:26:31,420
a pulse out.

1726
01:26:31,420 --> 01:26:33,110
That was called a range gate.

1727
01:26:33,110 --> 01:26:37,660
>> -Then, once the Patriot
decides enough time has

1728
01:26:37,660 --> 01:26:42,450
passed to go back and check the next
location for this detected object,

1729
01:26:42,450 --> 01:26:43,600
it goes back.

1730
01:26:43,600 --> 01:26:48,650
So when it went back to the wrong
place, it then sees no object.

1731
01:26:48,650 --> 01:26:52,160
And it decides that there was no
object, it was a false detection,

1732
01:26:52,160 --> 01:26:53,930
and drops the track.

1733
01:26:53,930 --> 01:26:57,030
>> -The incoming Scud disappeared
from the radar screen.

1734
01:26:57,030 --> 01:27:00,260
And seconds later, it
slammed into the barracks.

1735
01:27:00,260 --> 01:27:06,150
The Scud killed 28, and was the last
one fired during the first Gulf War.

1736
01:27:06,150 --> 01:27:11,960
>> Tragically, the updated software
arrived at Dhahran the following day.

1737
01:27:11,960 --> 01:27:14,930
The software flaw had
been fixed, closing

1738
01:27:14,930 --> 01:27:19,806
one chapter in the troubled
history of the Patriot missile.

1739
01:27:19,806 --> 01:27:20,729
>> [VIDEO PLAYBACK]

1740
01:27:20,729 --> 01:27:23,520
DAVID J. MALAN: So this is all to
say that these issues of overflow

1741
01:27:23,520 --> 01:27:25,860
and imprecision are all too real.

1742
01:27:25,860 --> 01:27:26,920
So how did we get here?

1743
01:27:26,920 --> 01:27:28,895
We began with just talking about printf.

1744
01:27:28,895 --> 01:27:31,270
Again, this function that
prints something to the screen,

1745
01:27:31,270 --> 01:27:33,450
and we introduced thereafter
a few other functions

1746
01:27:33,450 --> 01:27:34,945
from the so-called CS50's library.

1747
01:27:34,945 --> 01:27:36,910
And we'll continue to
see these in due time.

1748
01:27:36,910 --> 01:27:40,760
And we, particularly, used get string,
and get int, and now also get float,

1749
01:27:40,760 --> 01:27:44,410
and yet others still will we encounter
and use ourselves before long.

1750
01:27:44,410 --> 01:27:47,220
>> But on occasion, have
we already seen a need

1751
01:27:47,220 --> 01:27:50,520
to store what those functions hand back?

1752
01:27:50,520 --> 01:27:52,920
They hand us back a string,
or an int, or a float.

1753
01:27:52,920 --> 01:27:56,070
And sometimes we need to put that
string, or int, or float, somewhere.

1754
01:27:56,070 --> 01:28:00,100
>> And to store those things, recall just
like in Scratch, we have variables.

1755
01:28:00,100 --> 01:28:03,260
But unlike in Scratch,
in C we have actual types

1756
01:28:03,260 --> 01:28:05,530
of variables-- data
types, more generally--

1757
01:28:05,530 --> 01:28:08,640
among them, a string, an int, a
float, and these others still.

1758
01:28:08,640 --> 01:28:12,321
>> And so when we declare variables in C,
we'll have to declare our data types.

1759
01:28:12,321 --> 01:28:14,820
This is not something we'll
have to do later in the semester

1760
01:28:14,820 --> 01:28:16,810
as we transition to other languages.

1761
01:28:16,810 --> 01:28:19,610
But for now, we do need
to a priori in advance,

1762
01:28:19,610 --> 01:28:24,370
explain to the computer what type
of variable we want it to give us.

1763
01:28:24,370 --> 01:28:27,290
>> Now, meanwhile, to print
those kinds of data types,

1764
01:28:27,290 --> 01:28:29,570
we have to tell printf what to expect.

1765
01:28:29,570 --> 01:28:32,450
And we saw percent s for strings,
and percent i for integers,

1766
01:28:32,450 --> 01:28:33,790
and a few others already.

1767
01:28:33,790 --> 01:28:37,237
And those are simply requirements
for the visual presentation

1768
01:28:37,237 --> 01:28:38,070
of that information.

1769
01:28:38,070 --> 01:28:42,080
>> And each of these can actually be
parametrized or tweaked in some way,

1770
01:28:42,080 --> 01:28:45,370
if you want to further control
the type of output that you get.

1771
01:28:45,370 --> 01:28:49,604
And, in fact, it turns out that not only
is there backslash n for a new line.

1772
01:28:49,604 --> 01:28:52,520
There's something else called backslash
r for a carriage return, which

1773
01:28:52,520 --> 01:28:54,360
is more akin to an
old school typewriter,

1774
01:28:54,360 --> 01:28:57,690
and also Windows used for many years.

1775
01:28:57,690 --> 01:28:59,690
>> There's backslash t for tabs.

1776
01:28:59,690 --> 01:29:03,170
Turns out, that if you want to
double quote inside of a string,

1777
01:29:03,170 --> 01:29:05,000
recall that we've used
double quote double

1778
01:29:05,000 --> 01:29:07,900
quote on the left and the right
ends of our strings thus far.

1779
01:29:07,900 --> 01:29:09,420
That would seem to confuse things.

1780
01:29:09,420 --> 01:29:12,503
>> If you want to put a double quote in
the middle of a string-- and, indeed,

1781
01:29:12,503 --> 01:29:13,670
it is confusing to see.

1782
01:29:13,670 --> 01:29:17,120
And so you have to escape, so to
speak, a double quote with something

1783
01:29:17,120 --> 01:29:18,860
like, literally, backslash double quote.

1784
01:29:18,860 --> 01:29:20,230
And there's a few other still.

1785
01:29:20,230 --> 01:29:24,540
And we'll see more of those
in actual use before long.

1786
01:29:24,540 --> 01:29:27,930
>> So let's now transition from
data, and representation,

1787
01:29:27,930 --> 01:29:30,820
and arithmetic operators, all
of which gave us some building

1788
01:29:30,820 --> 01:29:32,070
blocks with which to play.

1789
01:29:32,070 --> 01:29:34,481
But now let's actually give
us the rest of the vocabulary

1790
01:29:34,481 --> 01:29:36,230
that we already had
last week with Scratch

1791
01:29:36,230 --> 01:29:39,350
by taking a look at some other
constructs in C-- not all of them.

1792
01:29:39,350 --> 01:29:41,680
But the ideas we're
about to see really just

1793
01:29:41,680 --> 01:29:45,610
to emphasize the translation from
one language, Scratch, to another, C.

1794
01:29:45,610 --> 01:29:48,470
>> And over time, we'll pick up
more tools for our toolkit,

1795
01:29:48,470 --> 01:29:49,820
so to speak, syntactically.

1796
01:29:49,820 --> 01:29:54,190
And, indeed, you'll see that the ideas
are now rather familiar from last week.

1797
01:29:54,190 --> 01:29:55,200
So let's do this.

1798
01:29:55,200 --> 01:29:58,870
>> Let's go ahead and whip up a program
that actually uses some expressions,

1799
01:29:58,870 --> 01:30:00,720
a Boolean expression.

1800
01:30:00,720 --> 01:30:02,810
Let me go ahead here
and create a new file.

1801
01:30:02,810 --> 01:30:06,090
I'll call this condition.c.

1802
01:30:06,090 --> 01:30:09,350
>> Let me go ahead and
include the CS50 library.

1803
01:30:09,350 --> 01:30:12,640
And let me go ahead and include
standard IO.h for our functions,

1804
01:30:12,640 --> 01:30:14,690
and printf, and more respectively.

1805
01:30:14,690 --> 01:30:18,900
Let me give myself that boilerplate of
int main void, whose explanation we'll

1806
01:30:18,900 --> 01:30:20,360
come back to in the future.

1807
01:30:20,360 --> 01:30:23,820
>> Now let me go ahead and give
myself an int via get int.

1808
01:30:23,820 --> 01:30:25,970
Then let me go ahead and do this.

1809
01:30:25,970 --> 01:30:30,150
I want to say if i is less-- let's
distinguish between positive, negative,

1810
01:30:30,150 --> 01:30:31,260
or zero values.

1811
01:30:31,260 --> 01:30:36,630
>> So if i is less than zero, let me
just have this program simply say,

1812
01:30:36,630 --> 01:30:42,370
negative, backslash n, else
if i is greater than zero.

1813
01:30:42,370 --> 01:30:47,030
Now I'm, of course, going to say
printf positive, backslash n.

1814
01:30:47,030 --> 01:30:50,690
And then else if-- I could do this.

1815
01:30:50,690 --> 01:30:53,410
>> I could do if i equals 0.

1816
01:30:53,410 --> 01:30:55,840
But I'd be making at
least one mistake already.

1817
01:30:55,840 --> 01:30:59,480
Recall that the equal sign is
not equal, as we humans know it.

1818
01:30:59,480 --> 01:31:01,010
>> But it's the assignment operator.

1819
01:31:01,010 --> 01:31:05,640
And we don't want to take 0 on the
right and put it in i on the left.

1820
01:31:05,640 --> 01:31:11,810
So to avoid this confusion, or
perhaps misuse of the equals sign,

1821
01:31:11,810 --> 01:31:14,740
humans decided some years ago
that in many programming languages

1822
01:31:14,740 --> 01:31:18,000
when you want to check for equality
between the left and the right,

1823
01:31:18,000 --> 01:31:19,635
you actually use equals equals.

1824
01:31:19,635 --> 01:31:21,010
So you hit the equals sign twice.

1825
01:31:21,010 --> 01:31:25,600
When you want to assign from right
to left, you use a single equal sign.

1826
01:31:25,600 --> 01:31:29,360
So we could do this-- else
if i equals equals zero.

1827
01:31:29,360 --> 01:31:31,710
>> I could then go and
open my curly braces,

1828
01:31:31,710 --> 01:31:36,087
and say, printf 0, backslash n, done.

1829
01:31:36,087 --> 01:31:38,170
But remember how these
forks in the road can work.

1830
01:31:38,170 --> 01:31:39,836
And, really, just think about the logic.

1831
01:31:39,836 --> 01:31:41,510
i is a number.

1832
01:31:41,510 --> 01:31:43,320
It's an integer, specifically.

1833
01:31:43,320 --> 01:31:48,600
And that means it's going to be less
than 0, or greater than 0, or 0.

1834
01:31:48,600 --> 01:31:51,600
So there is kind of this
implied default case.

1835
01:31:51,600 --> 01:31:54,920
>> And so we could, just like
Scratch, dispense with the else if,

1836
01:31:54,920 --> 01:31:55,747
and just say else.

1837
01:31:55,747 --> 01:31:57,830
Logically, if you the
programmer know there's only

1838
01:31:57,830 --> 01:32:01,635
three buckets into which a
scenario can fall-- the first,

1839
01:32:01,635 --> 01:32:03,510
the second, or the third
in this case-- don't

1840
01:32:03,510 --> 01:32:07,100
bother adding the additional precision
and the additional logic there.

1841
01:32:07,100 --> 01:32:09,690
Just go ahead with the
default case here of else.

1842
01:32:09,690 --> 01:32:11,950
>> Now, let's go ahead
after saving this, make

1843
01:32:11,950 --> 01:32:15,760
conditions dot slash conditions--
not a great user interface,

1844
01:32:15,760 --> 01:32:18,914
because I'm not prompting the
user, as I mentioned earlier.

1845
01:32:18,914 --> 01:32:19,580
But that's fine.

1846
01:32:19,580 --> 01:32:20,454
We'll keep it simple.

1847
01:32:20,454 --> 01:32:21,890
Let's try the number 42.

1848
01:32:21,890 --> 01:32:23,240
And that's positive.

1849
01:32:23,240 --> 01:32:26,120
Let's try the number
negative 42, negative.

1850
01:32:26,120 --> 01:32:28,244
>> Let's try the value 0.

1851
01:32:28,244 --> 01:32:29,160
And, indeed, it works.

1852
01:32:29,160 --> 01:32:33,900
Now, you'll see with problems before
long, testing things three times,

1853
01:32:33,900 --> 01:32:34,980
probably not sufficient.

1854
01:32:34,980 --> 01:32:37,438
You probably want to test some
bigger numbers, some smaller

1855
01:32:37,438 --> 01:32:40,520
numbers, some corner cases, as
we'll come to describe them.

1856
01:32:40,520 --> 01:32:42,500
>> But for now, this is a
pretty simple program.

1857
01:32:42,500 --> 01:32:45,160
And I'm pretty sure, logically,
that it falls into three cases.

1858
01:32:45,160 --> 01:32:49,360
And, indeed, even though we just
focused on the potential downsides

1859
01:32:49,360 --> 01:32:53,480
of imprecision and overflow, in
reality where many of CS50's problems,

1860
01:32:53,480 --> 01:32:56,000
we are not going to worry
about, all the time,

1861
01:32:56,000 --> 01:32:59,050
those issues of overflow and
imprecision, because, in fact, in C,

1862
01:32:59,050 --> 01:33:01,889
it's actually not all that
easy to avoid those things.

1863
01:33:01,889 --> 01:33:04,180
If you want to count up
bigger, and bigger, and bigger,

1864
01:33:04,180 --> 01:33:07,510
it turns out there are techniques you
can use, often involving things called

1865
01:33:07,510 --> 01:33:11,240
libraries, collections of code, that
other people wrote that you can use,

1866
01:33:11,240 --> 01:33:13,910
and other languages like
Java and others, actually

1867
01:33:13,910 --> 01:33:15,800
make it a lot easier
to count even higher.

1868
01:33:15,800 --> 01:33:19,810
So it really is some of these dangers
a function of the language you use.

1869
01:33:19,810 --> 01:33:22,710
And in the coming weeks, we'll
see how dangerous C really

1870
01:33:22,710 --> 01:33:24,950
can be if you don't use it properly.

1871
01:33:24,950 --> 01:33:27,610
But from there, and with
Python, and JavaScript, will

1872
01:33:27,610 --> 01:33:32,620
we layer on some additional protections,
and run fewer of those risks.

1873
01:33:32,620 --> 01:33:35,820
>> So let's make a little more
interesting logic in our program.

1874
01:33:35,820 --> 01:33:39,110
So let me go ahead and create
a program called Logical

1875
01:33:39,110 --> 01:33:43,804
just so I can play with some
actual logic, logical.c.

1876
01:33:43,804 --> 01:33:46,870
I'll just copy and paste some
code from earlier so I get back

1877
01:33:46,870 --> 01:33:49,950
to this nice starting point.

1878
01:33:49,950 --> 01:33:53,980
>> Let me this time do char C. I'm
going to give it a name of C

1879
01:33:53,980 --> 01:33:58,510
just because it's conventional,
get a character from the user.

1880
01:33:58,510 --> 01:34:00,730
And let's pretend like
I'm implementing part

1881
01:34:00,730 --> 01:34:04,130
of that Rm program, the remove
program before that prompted the user

1882
01:34:04,130 --> 01:34:05,400
to remove a file.

1883
01:34:05,400 --> 01:34:06,750
How could we do this?

1884
01:34:06,750 --> 01:34:11,090
>> I want to say, if C equals
equals, quote unquote,

1885
01:34:11,090 --> 01:34:16,304
y, then I'm going to assume
that the user has chosen yes.

1886
01:34:16,304 --> 01:34:17,470
I'm just going to print yes.

1887
01:34:17,470 --> 01:34:19,440
If it were actually writing
the removal program,

1888
01:34:19,440 --> 01:34:21,420
we could remove the file
with more lines of code.

1889
01:34:21,420 --> 01:34:22,461
But we'll keep it simple.

1890
01:34:22,461 --> 01:34:25,950

1891
01:34:25,950 --> 01:34:31,250
>> Else if c equals equals n--
and now here, I'm going to say,

1892
01:34:31,250 --> 01:34:32,980
the user must have meant no.

1893
01:34:32,980 --> 01:34:34,360
And then else, you know what?

1894
01:34:34,360 --> 01:34:36,200
I don't know what else
the user is going to type.

1895
01:34:36,200 --> 01:34:38,533
So I'm just going to say that
that is an error, whatever

1896
01:34:38,533 --> 01:34:40,070
he or she actually typed.

1897
01:34:40,070 --> 01:34:41,180
>> So what's going on here?

1898
01:34:41,180 --> 01:34:44,530
There is a fundamental difference
versus what I've done in the past.

1899
01:34:44,530 --> 01:34:49,300
Double quotes, double quotes, double
quotes, and, yet, single quotes,

1900
01:34:49,300 --> 01:34:50,170
single quotes.

1901
01:34:50,170 --> 01:34:52,860
It turns out in C, that when
you want to write a string,

1902
01:34:52,860 --> 01:34:56,680
you do use double quotes, just as we've
been using all this time with printf.

1903
01:34:56,680 --> 01:35:02,030
>> But if you want to deal with just a
single character, a so-called char,

1904
01:35:02,030 --> 01:35:03,780
then you actually use single quotes.

1905
01:35:03,780 --> 01:35:05,450
Those of you who've programmed
before, you might not have

1906
01:35:05,450 --> 01:35:07,850
had to worry about this
distinction in certain languages.

1907
01:35:07,850 --> 01:35:09,450
In C, it does matter.

1908
01:35:09,450 --> 01:35:12,560
And so when I get a char and I want
to compare that char using equals

1909
01:35:12,560 --> 01:35:18,350
equals to some letter like y or n, I do,
indeed, need to have the single quotes.

1910
01:35:18,350 --> 01:35:19,770
>> Now, let's go ahead and do this.

1911
01:35:19,770 --> 01:35:26,180
Let's go ahead and do make
logical dot slash logical.

1912
01:35:26,180 --> 01:35:27,305
And now I'm being prompted.

1913
01:35:27,305 --> 01:35:30,638
So, presumably, a better user experience
would actually tell me what to do here.

1914
01:35:30,638 --> 01:35:33,030
But I'm going to just blindly
say y for yes, OK, nice.

1915
01:35:33,030 --> 01:35:35,780
>> Let's run it again, n for no, nice.

1916
01:35:35,780 --> 01:35:39,610
Suppose like certain people I know,
my caps lock key is on all too often.

1917
01:35:39,610 --> 01:35:43,740
So I do capital Y, enter, error.

1918
01:35:43,740 --> 01:35:46,130
OK, it's not exactly what I'm expecting.

1919
01:35:46,130 --> 01:35:48,170
Indeed, the computer
is doing literally what

1920
01:35:48,170 --> 01:35:51,794
I told it to do-- check for
lowercase y and lowercase n.

1921
01:35:51,794 --> 01:35:53,960
This doesn't feel like good
user experience, though.

1922
01:35:53,960 --> 01:35:59,010
Let me ask for and accept
either lower case or upper case.

1923
01:35:59,010 --> 01:36:02,090
So it turns out, you might want
to say something like in Scratch,

1924
01:36:02,090 --> 01:36:08,150
like literally or C equals
equals capital single quoted y.

1925
01:36:08,150 --> 01:36:11,400
Turns out, C does not have
this literal keyword or.

1926
01:36:11,400 --> 01:36:12,880
>> But it does have two vertical bars.

1927
01:36:12,880 --> 01:36:15,463
You have to hold Shift usually,
if you're using a US keyboard,

1928
01:36:15,463 --> 01:36:18,910
and hit the vertical bar
key above your return key.

1929
01:36:18,910 --> 01:36:22,410
But this vertical bar
vertical bar means or.

1930
01:36:22,410 --> 01:36:26,220
>> If, by contrast, we wanted
to say and, like in Scratch,

1931
01:36:26,220 --> 01:36:28,180
we could do ampersand ampersand.

1932
01:36:28,180 --> 01:36:31,330
That makes no logical sense here,
because a human could not possibly

1933
01:36:31,330 --> 01:36:37,110
have typed both y and lowercase y
and capital Y as the same character.

1934
01:36:37,110 --> 01:36:39,470
So or is what we intend here.

1935
01:36:39,470 --> 01:36:46,280
>> So if I do this in both places, or c
equals equals capital N, now rerun,

1936
01:36:46,280 --> 01:36:49,390
make logical, rerun logical.

1937
01:36:49,390 --> 01:36:51,200
Now, I can type y.

1938
01:36:51,200 --> 01:36:53,920
And I can do it again with
capital Y, or capital N.

1939
01:36:53,920 --> 01:36:56,630
And I could add in additional
combinations still.

1940
01:36:56,630 --> 01:36:58,810
>> So this is a logical
program insofar as now

1941
01:36:58,810 --> 01:37:01,940
I'm checking logically for
this value or this value.

1942
01:37:01,940 --> 01:37:06,420
And I don't have to, necessarily,
come up with two more ifs or else ifs.

1943
01:37:06,420 --> 01:37:09,960
I can actually combine some of the
related logic together in this way.

1944
01:37:09,960 --> 01:37:11,950
So this would be better
designed than simply

1945
01:37:11,950 --> 01:37:17,490
saying, if C equals lower case y,
print yes, else if c equals capital Y,

1946
01:37:17,490 --> 01:37:20,074
print yes, else if c equals
lower-- in other words,

1947
01:37:20,074 --> 01:37:21,990
you don't have to have
more and more branches.

1948
01:37:21,990 --> 01:37:28,840
You can combine some of the equivalent
branches logically, as in this way.

1949
01:37:28,840 --> 01:37:34,150
>> So let's take a look at just one
final ingredient, one final construct,

1950
01:37:34,150 --> 01:37:34,847
that C allows.

1951
01:37:34,847 --> 01:37:36,930
And we'll come back in the
future to others still.

1952
01:37:36,930 --> 01:37:41,400
And then we'll conclude by looking
at not the correctness of code--

1953
01:37:41,400 --> 01:37:46,070
getting code to work-- but the design
of code, and plant those seeds early on.

1954
01:37:46,070 --> 01:37:51,337
>> So let me go ahead and
open up a new file here.

1955
01:37:51,337 --> 01:37:51,920
You know what?

1956
01:37:51,920 --> 01:37:54,450
I'm going to re-implement
that same program,

1957
01:37:54,450 --> 01:37:55,940
but using a different construct.

1958
01:37:55,940 --> 01:38:00,110
>> So let me quickly give myself
access to include CS50.h

1959
01:38:00,110 --> 01:38:04,150
for the CS50 library,
standard Io.h for printf.

1960
01:38:04,150 --> 01:38:06,510
Give me my int main void.

1961
01:38:06,510 --> 01:38:09,310
And then over here, let
me go ahead and do this.

1962
01:38:09,310 --> 01:38:12,010
>> Char c gets get char, just like before.

1963
01:38:12,010 --> 01:38:16,770
And I'm going to use a new construct
now-- switch, on what character?

1964
01:38:16,770 --> 01:38:19,820
So switch is kind of like
switching a train tracks.

1965
01:38:19,820 --> 01:38:22,070
Or, really, it is kind of
an if else, if else if,

1966
01:38:22,070 --> 01:38:23,980
but written somewhat differently.

1967
01:38:23,980 --> 01:38:25,490
>> A switch looks like this.

1968
01:38:25,490 --> 01:38:29,060
You have switch, and then what
character or number you want to look at,

1969
01:38:29,060 --> 01:38:32,000
then some curly braces like in
Scratch, just say do this stuff.

1970
01:38:32,000 --> 01:38:33,480
And then you have different cases.

1971
01:38:33,480 --> 01:38:34,830
>> You don't use if and else.

1972
01:38:34,830 --> 01:38:37,050
You literally use the word case.

1973
01:38:37,050 --> 01:38:38,790
And you would say something like this.

1974
01:38:38,790 --> 01:38:43,820
>> So in the case of a lowercase y,
or in the case of a capital Y,

1975
01:38:43,820 --> 01:38:47,350
go ahead and print out yes.

1976
01:38:47,350 --> 01:38:49,020
And then break out of the switch.

1977
01:38:49,020 --> 01:38:49,580
That's it.

1978
01:38:49,580 --> 01:38:50,880
We're done.

1979
01:38:50,880 --> 01:38:57,270
>> Else if, so to speak,
lower case n, or capital N,

1980
01:38:57,270 --> 01:39:02,560
then go ahead and print
out no, and then break.

1981
01:39:02,560 --> 01:39:08,022
Else-- and this kind of is the
default case indeed-- printf error--

1982
01:39:08,022 --> 01:39:10,980
and just for good measure, though
logically this break is not necessary

1983
01:39:10,980 --> 01:39:12,896
because we're at the end
of the switch anyway,

1984
01:39:12,896 --> 01:39:14,520
I'm now breaking out of the switch.

1985
01:39:14,520 --> 01:39:16,280
So this looks a little different.

1986
01:39:16,280 --> 01:39:18,272
>> But, logically, it's
actually equivalent.

1987
01:39:18,272 --> 01:39:19,980
And why would you use
one over the other?

1988
01:39:19,980 --> 01:39:23,220
Sometimes, just personal preference,
sometimes the aesthetics,

1989
01:39:23,220 --> 01:39:25,420
if I glance at this
now, there's something

1990
01:39:25,420 --> 01:39:27,510
to be said for the
readability of this code.

1991
01:39:27,510 --> 01:39:30,690
I mean, never mind the fact that this
code is new to many of us in the room.

1992
01:39:30,690 --> 01:39:33,515
>> But it just kind of is pretty.

1993
01:39:33,515 --> 01:39:37,760
You see lowercase y, capital Y,
lower case n, capital N default,

1994
01:39:37,760 --> 01:39:40,150
it just kind of jumps
out at you in a way

1995
01:39:40,150 --> 01:39:42,200
that, arguably, maybe
the previous example

1996
01:39:42,200 --> 01:39:45,780
with the ifs, and the vertical bars,
and the else ifs, might not have.

1997
01:39:45,780 --> 01:39:51,600
So this is really a matter of personal
choice, really, or readability,

1998
01:39:51,600 --> 01:39:52,360
of the code.

1999
01:39:52,360 --> 01:39:58,230
>> But in terms of functionality, let me
go ahead and make a switch, dot slash

2000
01:39:58,230 --> 01:40:05,830
switch, and now type in lowercase y,
capital Y, lowercase n, capital N,

2001
01:40:05,830 --> 01:40:09,250
David, retry because that's
not a single character.

2002
01:40:09,250 --> 01:40:12,050
Let's do x, error, as expected.

2003
01:40:12,050 --> 01:40:15,640
And, logically-- and this is something
I would encourage in general-- even

2004
01:40:15,640 --> 01:40:17,790
though we're only scratching the
surface of some of these features.

2005
01:40:17,790 --> 01:40:20,560
>> And it might not be obvious when you
yourself sit down at the keyboard,

2006
01:40:20,560 --> 01:40:21,370
how does this work?

2007
01:40:21,370 --> 01:40:22,240
What would this do?

2008
01:40:22,240 --> 01:40:25,630
The beautiful thing about having
a laptop, or desktop, or access

2009
01:40:25,630 --> 01:40:29,290
to a computer with a compiler,
and with a code editor like this,

2010
01:40:29,290 --> 01:40:32,990
is you can almost always answer these
questions for yourself just by trying.

2011
01:40:32,990 --> 01:40:36,570
>> For instance, if the rhetorical
question at hand were,

2012
01:40:36,570 --> 01:40:39,540
what happens if you forget
your break statements?

2013
01:40:39,540 --> 01:40:41,400
Which is actually a
very common thing to do,

2014
01:40:41,400 --> 01:40:43,540
because it doesn't look
like you really need them.

2015
01:40:43,540 --> 01:40:46,790
They don't really complete your
thought like a parenthesis or a curly

2016
01:40:46,790 --> 01:40:47,714
brace does.

2017
01:40:47,714 --> 01:40:49,630
Let's go ahead and
recompile the code and see.

2018
01:40:49,630 --> 01:40:53,690
So make switch, dot slash switch.

2019
01:40:53,690 --> 01:40:56,435
Let's type in lower case
y, the top case, Enter.

2020
01:40:56,435 --> 01:40:59,390

2021
01:40:59,390 --> 01:41:00,700
So I typed y.

2022
01:41:00,700 --> 01:41:04,420
>> The program said yes, no, error,
as though it was changing its mind.

2023
01:41:04,420 --> 01:41:09,280
But it kind of was, because what happens
with a switch is the first case that

2024
01:41:09,280 --> 01:41:13,899
match essentially means, hey computer,
execute all of the code beneath it.

2025
01:41:13,899 --> 01:41:16,690
And if you don't say break, or
don't say break, or don't say break,

2026
01:41:16,690 --> 01:41:19,540
the computer is going to blow
through all of those lines

2027
01:41:19,540 --> 01:41:22,779
and execute all of them until
it gets to that curly brace.

2028
01:41:22,779 --> 01:41:24,320
So the brakes are, indeed, necessary.

2029
01:41:24,320 --> 01:41:27,120
But a takeaway here is, when
in doubt, try something.

2030
01:41:27,120 --> 01:41:29,510
Maybe save your code first,
or save it in an extra file

2031
01:41:29,510 --> 01:41:32,930
if you're really worried about
messing up and having to recover

2032
01:41:32,930 --> 01:41:34,430
the work that you know is working.

2033
01:41:34,430 --> 01:41:35,410
>> But try things.

2034
01:41:35,410 --> 01:41:38,074
And don't be as afraid, perhaps,
of what the computer might do,

2035
01:41:38,074 --> 01:41:39,490
or that you might break something.

2036
01:41:39,490 --> 01:41:42,790
You can always revert back
to some earlier version.

2037
01:41:42,790 --> 01:41:45,640
>> So let's end by looking
at the design of code.

2038
01:41:45,640 --> 01:41:49,020
We have this ability now to write
conditions, and write loops,

2039
01:41:49,020 --> 01:41:50,850
and variables, and call functions.

2040
01:41:50,850 --> 01:41:54,590
So, frankly, we're kind of back at
where we were a week ago with Scratch,

2041
01:41:54,590 --> 01:42:00,120
albeit with a less compelling textual
environment than Scratch allows.

2042
01:42:00,120 --> 01:42:03,990
>> But notice how quickly we've acquired
that vocabulary, even if it's

2043
01:42:03,990 --> 01:42:07,570
going to take a little while to sink in,
so that we can now use this vocabulary

2044
01:42:07,570 --> 01:42:10,320
to write more interesting programs.

2045
01:42:10,320 --> 01:42:12,940
And let's take a baby step
toward that, as follows.

2046
01:42:12,940 --> 01:42:14,890
Let me go ahead and
create a new file here.

2047
01:42:14,890 --> 01:42:17,750
>> I'm going to call this
prototype.c, and introduce

2048
01:42:17,750 --> 01:42:20,954
for the first time, the ability
to make your own functions.

2049
01:42:20,954 --> 01:42:22,870
Some of you might have
done this with Scratch,

2050
01:42:22,870 --> 01:42:25,430
whereby you can create your
own custom blocks in Scratch,

2051
01:42:25,430 --> 01:42:27,892
and then drag them into place
wherever you'd like in C.

2052
01:42:27,892 --> 01:42:30,100
And in most programming
languages, you can do exactly

2053
01:42:30,100 --> 01:42:33,580
that-- make your own functions,
if they don't already exist.

2054
01:42:33,580 --> 01:42:38,660
>> So, for instance, let me go ahead
and include CS50.h, and include

2055
01:42:38,660 --> 01:42:43,110
standard IO.h, int main void.

2056
01:42:43,110 --> 01:42:46,020
And now we have a
placeholder ready to go.

2057
01:42:46,020 --> 01:42:48,550
I keep printing things
like people's names today.

2058
01:42:48,550 --> 01:42:51,910
And that feels like--
wouldn't be nice if there

2059
01:42:51,910 --> 01:42:53,936
were a function called print name?

2060
01:42:53,936 --> 01:42:55,060
I don't have to use printf.

2061
01:42:55,060 --> 01:42:56,976
I don't have to remember
all the format codes.

2062
01:42:56,976 --> 01:43:00,050
Why don't I, or why
didn't someone before me,

2063
01:43:00,050 --> 01:43:02,980
create a function called print
name, that given some name,

2064
01:43:02,980 --> 01:43:03,980
simply prints it out?

2065
01:43:03,980 --> 01:43:08,700
>> In other words, if I say, hey,
computer, give me a string

2066
01:43:08,700 --> 01:43:11,870
by asking the user for such,
via CS50's get string function.

2067
01:43:11,870 --> 01:43:15,090
Hey, computer, put that string in
the variable in the left hand side,

2068
01:43:15,090 --> 01:43:16,150
and call it s.

2069
01:43:16,150 --> 01:43:22,150
And then, hey computer, go ahead
and print that person's name, done.

2070
01:43:22,150 --> 01:43:26,240
>> Now, it would be nice, because
this program, aptly named,

2071
01:43:26,240 --> 01:43:29,170
tells me what it's supposed to do
by way of those function's names.

2072
01:43:29,170 --> 01:43:32,930
Let me go and make prototype, Enter.

2073
01:43:32,930 --> 01:43:34,930
And, unfortunately,
this isn't going to fly.

2074
01:43:34,930 --> 01:43:39,430
>> Prototype.c, line 7, character
5, error, implicit declaration

2075
01:43:39,430 --> 01:43:42,960
of function print name
is invalid in C99, C99

2076
01:43:42,960 --> 01:43:45,130
meaning a version of C
that came out in 1999.

2077
01:43:45,130 --> 01:43:45,730
That's all.

2078
01:43:45,730 --> 01:43:48,780
>> So I don't know what
all of this means yet.

2079
01:43:48,780 --> 01:43:50,810
But I do recognize error in red.

2080
01:43:50,810 --> 01:43:51,770
That's pretty obvious.

2081
01:43:51,770 --> 01:43:53,769
>> And it seems that with
the green character here,

2082
01:43:53,769 --> 01:43:57,520
the issue is with print name, open
paren s, close paren, semi-colon.

2083
01:43:57,520 --> 01:44:01,800
But implicit declaration of
function we did see briefly earlier.

2084
01:44:01,800 --> 01:44:04,880
This means, simply, that Clang
does not know what I mean.

2085
01:44:04,880 --> 01:44:09,000
>> I've used a vocabulary word that it's
never seen or been taught before.

2086
01:44:09,000 --> 01:44:11,950
And so I need to teach it
what this function means.

2087
01:44:11,950 --> 01:44:13,590
So I'm going to go ahead and do that.

2088
01:44:13,590 --> 01:44:17,970
>> I'm going to go ahead and implement
my own function called Print Name.

2089
01:44:17,970 --> 01:44:24,720
And I'm going to say, as follows, that
it does this, printf, hello, percent

2090
01:44:24,720 --> 01:44:27,760
s, backslash n, name, semi-colon.

2091
01:44:27,760 --> 01:44:29,250
So what did I just do?

2092
01:44:29,250 --> 01:44:31,325
>> So it turns out, to
implement your own function,

2093
01:44:31,325 --> 01:44:33,845
we kind of borrow some of
the same structure as main

2094
01:44:33,845 --> 01:44:35,720
that we've just been
taken for granted, and I

2095
01:44:35,720 --> 01:44:37,730
know just copying and
pasting pretty much what

2096
01:44:37,730 --> 01:44:39,170
I've been writing in the past.

2097
01:44:39,170 --> 01:44:40,570
But notice the pattern here.

2098
01:44:40,570 --> 01:44:43,750
Int, Main, Void, we'll tease apart
before long what that actually means.

2099
01:44:43,750 --> 01:44:46,160
>> But for today, just
notice the parallelism.

2100
01:44:46,160 --> 01:44:48,210
Void, print name,
string name, so there's

2101
01:44:48,210 --> 01:44:50,310
a purple keyword, which
we're going to start

2102
01:44:50,310 --> 01:44:54,067
calling a return type, the name of
the function, and then the input.

2103
01:44:54,067 --> 01:44:56,400
So, actually, we can distill
this kind of like last week

2104
01:44:56,400 --> 01:44:59,030
as, this is the name or the
algorithm of the code we're

2105
01:44:59,030 --> 01:45:00,761
going to write-- the
algorithm underlying

2106
01:45:00,761 --> 01:45:02,010
the code we're going to write.

2107
01:45:02,010 --> 01:45:03,180
>> This is its input.

2108
01:45:03,180 --> 01:45:04,670
This is its output.

2109
01:45:04,670 --> 01:45:08,730
This function, print name, is
designed to take a string called name,

2110
01:45:08,730 --> 01:45:11,350
or whatever, as input, and then void.

2111
01:45:11,350 --> 01:45:13,904
It doesn't return anything,
like get string or get int does.

2112
01:45:13,904 --> 01:45:15,570
So it's going to hand me something back.

2113
01:45:15,570 --> 01:45:17,960
It's just going to have a
side effect, so to speak,

2114
01:45:17,960 --> 01:45:19,570
of printing a person's name.

2115
01:45:19,570 --> 01:45:22,260
So notice, line 7, I
can call print name.

2116
01:45:22,260 --> 01:45:25,920
Line 10, I can define
or implement print name.

2117
01:45:25,920 --> 01:45:28,450
But, unfortunately, that's not enough.

2118
01:45:28,450 --> 01:45:31,230
>> Let me go ahead and
recompile this after saving.

2119
01:45:31,230 --> 01:45:33,910
Whoa, now, I've made it
worse, it would seem.

2120
01:45:33,910 --> 01:45:37,027
So implicit declaration of
function print name is invalid.

2121
01:45:37,027 --> 01:45:38,360
And, again, there's more errors.

2122
01:45:38,360 --> 01:45:41,430
But as I cautioned earlier, even
if you get overwhelmed with,

2123
01:45:41,430 --> 01:45:44,850
or a little sad to see so many
errors, focus only on the first

2124
01:45:44,850 --> 01:45:47,500
initially, because it might just
have had a cascading effect.

2125
01:45:47,500 --> 01:45:51,970
So C, or Clang more specifically,
still does not recognize print name.

2126
01:45:51,970 --> 01:45:54,580
>> And that's because Clang,
by design, is kind of dumb.

2127
01:45:54,580 --> 01:45:56,280
It only does what you tell it to do.

2128
01:45:56,280 --> 01:46:00,950
And it only does so in the order
in which you tell it to do.

2129
01:46:00,950 --> 01:46:05,270
>> So I have defined main on line four,
like we've been doing pretty often.

2130
01:46:05,270 --> 01:46:07,980
I've defined print name on line 10.

2131
01:46:07,980 --> 01:46:11,793
But I'm trying to use
print name on line seven.

2132
01:46:11,793 --> 01:46:13,670
>> It's too soon, doesn't exist yet.

2133
01:46:13,670 --> 01:46:19,150
So I could be clever, and be like,
OK, so let's just play along,

2134
01:46:19,150 --> 01:46:23,680
and move print name up
here, and re-compile.

2135
01:46:23,680 --> 01:46:24,550
Oh my God.

2136
01:46:24,550 --> 01:46:25,260
It worked.

2137
01:46:25,260 --> 01:46:26,670
It was as simple as that.

2138
01:46:26,670 --> 01:46:28,120
>> But the logic is exactly that.

2139
01:46:28,120 --> 01:46:30,870
You have to teach Clang what it
is by defining the function first.

2140
01:46:30,870 --> 01:46:31,920
Then you can use it.

2141
01:46:31,920 --> 01:46:33,940
But, frankly, this feels
like a slippery slope.

2142
01:46:33,940 --> 01:46:35,773
>> So every time I run
into a problem, I'm just

2143
01:46:35,773 --> 01:46:39,450
going to highlight and copy the code
I wrote, cut it and paste it up here.

2144
01:46:39,450 --> 01:46:41,370
And, surely, we could
contrive some scenarios

2145
01:46:41,370 --> 01:46:43,286
where one function might
need to call another.

2146
01:46:43,286 --> 01:46:46,030
And you just can't put every
function above every other.

2147
01:46:46,030 --> 01:46:47,930
>> So it turns out there's
a better solution.

2148
01:46:47,930 --> 01:46:50,100
We can leave this be.

2149
01:46:50,100 --> 01:46:53,677
And, frankly, it's generally nice,
and convenient, and good design

2150
01:46:53,677 --> 01:46:56,760
to put main first, because, again,
main just like when green flag clicked,

2151
01:46:56,760 --> 01:46:59,027
that is the function that
gets executed by default.

2152
01:46:59,027 --> 01:47:01,110
So you might as well put
it at the top of the file

2153
01:47:01,110 --> 01:47:03,560
so that when you or any
other human looks at the file

2154
01:47:03,560 --> 01:47:06,360
you know what's going on
just by reading main first.

2155
01:47:06,360 --> 01:47:15,360
So it turns out, we can tell Clang
proactively, hey, Clang, on line four,

2156
01:47:15,360 --> 01:47:17,940
I promise to implement
a function called Print

2157
01:47:17,940 --> 01:47:22,600
Name that takes a string called name
as input, and returns nothing, void.

2158
01:47:22,600 --> 01:47:24,770
And I'll get around to
implementing it later.

2159
01:47:24,770 --> 01:47:25,680
>> Here comes Main.

2160
01:47:25,680 --> 01:47:29,130
Main now on line 9 can use
Print Name because Clang

2161
01:47:29,130 --> 01:47:32,600
is trusting that, eventually,
it will encounter the definition

2162
01:47:32,600 --> 01:47:34,880
of the implementation of Print Name.

2163
01:47:34,880 --> 01:47:37,390
So after saving my file, let
me go ahead and make prototype,

2164
01:47:37,390 --> 01:47:38,498
looks good this time.

2165
01:47:38,498 --> 01:47:43,470
Dot slash, prototype, let me
go ahead and type in a name.

2166
01:47:43,470 --> 01:47:48,440
David, hello David, Zamila, hello
Zamila, and, indeed, now it works.

2167
01:47:48,440 --> 01:47:52,200
>> So the ingredient here is that we've
made a custom function, like a custom

2168
01:47:52,200 --> 01:47:54,219
Scratch block we're calling it.

2169
01:47:54,219 --> 01:47:57,010
But unlike Scratch where you can
just create it and start using it,

2170
01:47:57,010 --> 01:47:59,330
now we have to be a
little more pedantic,

2171
01:47:59,330 --> 01:48:03,410
and actually train Clang
to use, or to expect it.

2172
01:48:03,410 --> 01:48:09,140
Now, as an aside, why all this time have
we been just blindly on faith including

2173
01:48:09,140 --> 01:48:12,170
CS50.h, and including standard IO.h?

2174
01:48:12,170 --> 01:48:15,190
>> Well, it turns out,
among a few other things,

2175
01:48:15,190 --> 01:48:18,550
all that's in those dot h
files, which happen to be files.

2176
01:48:18,550 --> 01:48:20,460
They're header files, so to speak.

2177
01:48:20,460 --> 01:48:23,270
They're still written in C. But
they're a different type of file.

2178
01:48:23,270 --> 01:48:28,690
>> For now, you can pretty much assume
that all that is inside of CS50.h

2179
01:48:28,690 --> 01:48:33,360
is some one-liners like this, not
for functions called Print Name,

2180
01:48:33,360 --> 01:48:36,840
but for Get String, Get
Float, and a few others.

2181
01:48:36,840 --> 01:48:41,510
And there are similar prototypes,
one liners, inside of standard IO.h

2182
01:48:41,510 --> 01:48:46,241
for printf, which is now in
my own Print Name function.

2183
01:48:46,241 --> 01:48:49,490
So in other words, this whole time we've
just been blindly copying and pasting

2184
01:48:49,490 --> 01:48:51,780
include this, include
that, what's going on?

2185
01:48:51,780 --> 01:48:55,310
Those are just kind of clues
to Clang as to what functions

2186
01:48:55,310 --> 01:49:00,170
are, indeed, implemented, just
elsewhere in different files

2187
01:49:00,170 --> 01:49:02,440
elsewhere on the system.

2188
01:49:02,440 --> 01:49:05,160
>> So we've implemented print name.

2189
01:49:05,160 --> 01:49:07,910
It does have this side effect of
printing something on the screen.

2190
01:49:07,910 --> 01:49:10,170
But it doesn't actually
hand me something back.

2191
01:49:10,170 --> 01:49:12,200
How do we go about
implementing a program that

2192
01:49:12,200 --> 01:49:14,510
does hand me something back?

2193
01:49:14,510 --> 01:49:15,580
>> Well, let's try this.

2194
01:49:15,580 --> 01:49:21,360
Let me go ahead and implement
a file called return.c

2195
01:49:21,360 --> 01:49:24,530
so we can demonstrate how something
like Get String, or Get Int,

2196
01:49:24,530 --> 01:49:27,340
is actually returning
something back to the user.

2197
01:49:27,340 --> 01:49:29,840
Let's go ahead and define int main void.

2198
01:49:29,840 --> 01:49:33,230
>> And, again, in the future, we'll
explain what that int and that void

2199
01:49:33,230 --> 01:49:34,090
is actually doing.

2200
01:49:34,090 --> 01:49:35,840
But for today, we'll
take it for granted.

2201
01:49:35,840 --> 01:49:39,970
I'm going to go ahead and printf,
for a good user experience, x is.

2202
01:49:39,970 --> 01:49:44,360
And then I'm going to wait for the
user to give me x with get int.

2203
01:49:44,360 --> 01:49:48,459
>> And then I'm going to go ahead
and print out x to the square.

2204
01:49:48,459 --> 01:49:50,500
So when you only have a
keyboard, people commonly

2205
01:49:50,500 --> 01:49:52,600
use the little carrot
symbol on the keyboard

2206
01:49:52,600 --> 01:49:55,330
to represent to the power
of, or the exponent of.

2207
01:49:55,330 --> 01:49:58,960
So x squared is present i.

2208
01:49:58,960 --> 01:50:00,660
>> And now I'm going to do this.

2209
01:50:00,660 --> 01:50:03,940
I could just do-- what's x
squared? x squared is x times x.

2210
01:50:03,940 --> 01:50:06,690
>> And we did this some
time ago already today.

2211
01:50:06,690 --> 01:50:08,730
This doesn't feel like
all that much progress.

2212
01:50:08,730 --> 01:50:09,570
You know what?

2213
01:50:09,570 --> 01:50:13,100
Let's leverage some of that idea
from last time of abstraction.

2214
01:50:13,100 --> 01:50:16,080
>> Wouldn't it be nice if
there's a function called

2215
01:50:16,080 --> 01:50:18,460
square that does exactly that?

2216
01:50:18,460 --> 01:50:20,640
It still, at the end of the
day, does the same math.

2217
01:50:20,640 --> 01:50:22,410
But let's abstract
away the idea of taking

2218
01:50:22,410 --> 01:50:25,280
one number multiplied by
another, and just give it a name,

2219
01:50:25,280 --> 01:50:27,360
like square this value.

2220
01:50:27,360 --> 01:50:29,560
>> And, in other words, in
C, let's create a function

2221
01:50:29,560 --> 01:50:32,660
called square that does exactly that.

2222
01:50:32,660 --> 01:50:34,600
It's going to be called square.

2223
01:50:34,600 --> 01:50:35,790
It's going to take an int.

2224
01:50:35,790 --> 01:50:37,820
And we'll will just
call it n, by default.

2225
01:50:37,820 --> 01:50:39,403
>> But we could call it anything we want.

2226
01:50:39,403 --> 01:50:42,900
And all that it's going to
do, literally, is return

2227
01:50:42,900 --> 01:50:45,810
the result of n times n.

2228
01:50:45,810 --> 01:50:48,980
But because it is
returning something, which

2229
01:50:48,980 --> 01:50:53,690
is the keyword in purple we've
never seen before, I, on line 11,

2230
01:50:53,690 --> 01:50:55,410
can't just say void this time.

2231
01:50:55,410 --> 01:51:01,320
>> Void, in the example we just saw
rather of print name, just means,

2232
01:51:01,320 --> 01:51:02,190
do something.

2233
01:51:02,190 --> 01:51:04,170
But don't hand me something back.

2234
01:51:04,170 --> 01:51:06,790
In this case, I do want
to return n times n,

2235
01:51:06,790 --> 01:51:08,460
or whatever that is, that number.

2236
01:51:08,460 --> 01:51:12,460
>> So I can't say, hey, computer,
I return nothing, void.

2237
01:51:12,460 --> 01:51:16,166
It's going to return, by nature, an int.

2238
01:51:16,166 --> 01:51:17,790
And so that's all that's going on here.

2239
01:51:17,790 --> 01:51:20,070
>> The input to square
is going to be an int.

2240
01:51:20,070 --> 01:51:24,760
And so that we can use it, it has to
have a name, N. It's going to output

2241
01:51:24,760 --> 01:51:26,240
an int that doesn't need a name.

2242
01:51:26,240 --> 01:51:29,590
We can leave it to main, or whoever is
using me to remember this value if we

2243
01:51:29,590 --> 01:51:31,120
want with its own variable.

2244
01:51:31,120 --> 01:51:33,230
>> And, again, the only new
keyword here is Return.

2245
01:51:33,230 --> 01:51:34,480
And I'm just doing some math.

2246
01:51:34,480 --> 01:51:41,825
If I really wanted to be unnecessary,
I could say int product gets n times n.

2247
01:51:41,825 --> 01:51:44,170
>> And then I could say, return product.

2248
01:51:44,170 --> 01:51:47,360
But, again, to my point earlier of
this just not being good design--

2249
01:51:47,360 --> 01:51:50,060
like, why introduce a name,
a symbol, like product,

2250
01:51:50,060 --> 01:51:51,570
just to immediately return it?

2251
01:51:51,570 --> 01:51:53,670
It's a little cleaner,
a little tighter, so

2252
01:51:53,670 --> 01:51:59,380
to speak, just to say return n times
n, get rid of this line altogether.

2253
01:51:59,380 --> 01:52:02,860
>> And it's just less code to read,
less opportunity for mistakes.

2254
01:52:02,860 --> 01:52:05,180
And let's see if this
actually now works.

2255
01:52:05,180 --> 01:52:09,380
Now, I'm going to go
ahead and make return.

2256
01:52:09,380 --> 01:52:11,460
>> Uh-oh, implicit declaration of function.

2257
01:52:11,460 --> 01:52:14,080
I made this mistake before, no big deal.

2258
01:52:14,080 --> 01:52:18,950
Let me just type, or highlight and
copy, the exact same function prototype,

2259
01:52:18,950 --> 01:52:21,342
or signature, of the function up here.

2260
01:52:21,342 --> 01:52:22,800
Or I could move the whole function.

2261
01:52:22,800 --> 01:52:23,841
>> But that's a little lazy.

2262
01:52:23,841 --> 01:52:24,870
So we won't do that.

2263
01:52:24,870 --> 01:52:27,960
Now, let me make return
again, dot slash return.

2264
01:52:27,960 --> 01:52:32,790
>> x is 2. x squared is 4.
x is 3. x squared is 9.

2265
01:52:32,790 --> 01:52:35,300
And the function seems
now to be working.

2266
01:52:35,300 --> 01:52:36,550
So what's the difference here?

2267
01:52:36,550 --> 01:52:42,520
I have a function that's called square,
in this case, which I put in an input.

2268
01:52:42,520 --> 01:52:43,830
And I get back an output.

2269
01:52:43,830 --> 01:52:46,210
And yet, previously, if
I open the other example

2270
01:52:46,210 --> 01:52:51,640
from earlier, which
was called prototype.c,

2271
01:52:51,640 --> 01:52:54,770
I had print name, which
returned void, so to speak,

2272
01:52:54,770 --> 01:52:58,730
Or it returned nothing, and
simply had a side effect.

2273
01:52:58,730 --> 01:53:00,230
>> So what's going on here?

2274
01:53:00,230 --> 01:53:03,520
Well, consider the function
get string for just a moment.

2275
01:53:03,520 --> 01:53:06,570
We've been using the function
get string in the following way.

2276
01:53:06,570 --> 01:53:10,464
>> We've had a function get
string, like include CS50.h,

2277
01:53:10,464 --> 01:53:16,624
include standard IO.h, int, main, void.

2278
01:53:16,624 --> 01:53:18,790
And then every time I've
called get string thus far,

2279
01:53:18,790 --> 01:53:23,260
I've said something like, string s
gets get string, because get string--

2280
01:53:23,260 --> 01:53:27,880
let's call this get.c-- get string
itself returns a string that I can then

2281
01:53:27,880 --> 01:53:32,050
use, and say, hello, comma,
percent s, backslash n, s.

2282
01:53:32,050 --> 01:53:35,660
>> So this is the same example,
really, that we had earlier.

2283
01:53:35,660 --> 01:53:37,920
So get string returns a value.

2284
01:53:37,920 --> 01:53:41,260
But a moment ago, print string
does not return a value.

2285
01:53:41,260 --> 01:53:42,721
It simply has a side effect.

2286
01:53:42,721 --> 01:53:44,220
So this is a fundamental difference.

2287
01:53:44,220 --> 01:53:46,710
We've seen different
types of functions now,

2288
01:53:46,710 --> 01:53:49,490
some of which have returned
values, some of which don't.

2289
01:53:49,490 --> 01:53:51,890
So maybe it's string, or int, or float.

2290
01:53:51,890 --> 01:53:53,480
Or maybe it's just void.

2291
01:53:53,480 --> 01:53:55,710
>> And the difference is
that these functions that

2292
01:53:55,710 --> 01:53:59,940
get data and return a value are actually
bringing something back to the table,

2293
01:53:59,940 --> 01:54:01,110
so to speak.

2294
01:54:01,110 --> 01:54:03,710
So let's go ahead and
look at one final set

2295
01:54:03,710 --> 01:54:09,129
of examples that gives a sense, now, of
how we might, indeed, abstract better,

2296
01:54:09,129 --> 01:54:11,670
and better, and better, or more,
and more, and more, in order

2297
01:54:11,670 --> 01:54:13,810
to write, ultimately, better code.

2298
01:54:13,810 --> 01:54:16,860
Let's go ahead, and in the spirit
of Scratch, do the following.

2299
01:54:16,860 --> 01:54:21,700
>> Let me go ahead and include
CS50.h and standard IO.h.

2300
01:54:21,700 --> 01:54:24,010
Let me go ahead and give
myself an int, main, void.

2301
01:54:24,010 --> 01:54:27,380
And let me go ahead, call this cough.c.

2302
01:54:27,380 --> 01:54:35,510
>> And let me go ahead and just
like Scratch, print out cough/n.

2303
01:54:35,510 --> 01:54:37,170
And I want to do this three times.

2304
01:54:37,170 --> 01:54:39,670
So I'm, of course, just going
to copy and paste three times.

2305
01:54:39,670 --> 01:54:46,440
I'm now going to make
cough dot slash cough.

2306
01:54:46,440 --> 01:54:50,120
Let's give myself a little more room
here, Enter, cough, cough, cough.

2307
01:54:50,120 --> 01:54:53,970
>> There's, obviously, already an
opportunity for improvement.

2308
01:54:53,970 --> 01:54:55,679
I've copied and pasted
a few times today.

2309
01:54:55,679 --> 01:54:58,261
But that was only so I didn't
have to type as many characters.

2310
01:54:58,261 --> 01:55:00,250
I still changed what
those lines of code are.

2311
01:55:00,250 --> 01:55:04,240
>> These three lines are identical,
which feels lazy and indeed is,

2312
01:55:04,240 --> 01:55:07,110
and is probably not the right approach.

2313
01:55:07,110 --> 01:55:11,029
So with what ingredient
could we improve this code?

2314
01:55:11,029 --> 01:55:12,570
We don't have to copy and paste code.

2315
01:55:12,570 --> 01:55:15,070
>> And, indeed, any time you feel
yourself copying and pasting,

2316
01:55:15,070 --> 01:55:17,700
and not even changing code,
odds are there's a better way.

2317
01:55:17,700 --> 01:55:19,470
And, indeed, there is.

2318
01:55:19,470 --> 01:55:22,510
Let me go ahead and do a for loop,
even though the syntax might not

2319
01:55:22,510 --> 01:55:24,570
come naturally yet.

2320
01:55:24,570 --> 01:55:29,494
>> Do this three times, simply
by doing the following--

2321
01:55:29,494 --> 01:55:31,160
and I happen to know this from practice.

2322
01:55:31,160 --> 01:55:32,810
But we have a number of examples now.

2323
01:55:32,810 --> 01:55:34,950
And you'll see online
more references still.

2324
01:55:34,950 --> 01:55:37,790
>> This is the syntax on line 6, that
much like Scratch that repeats

2325
01:55:37,790 --> 01:55:40,090
block, repeat the following three times.

2326
01:55:40,090 --> 01:55:41,340
It's a little magical for now.

2327
01:55:41,340 --> 01:55:43,050
But this will get more,
and more familiar.

2328
01:55:43,050 --> 01:55:45,050
>> And it's going to repeat
line eight three times,

2329
01:55:45,050 --> 01:55:52,390
so that if I re-compile make cough,
dot slash cough, cough, cough, cough.

2330
01:55:52,390 --> 01:55:54,030
It still works the same way.

2331
01:55:54,030 --> 01:55:55,550
So that's all fine and good.

2332
01:55:55,550 --> 01:55:58,200
But that's not very abstracted.

2333
01:55:58,200 --> 01:55:59,371
>> It's perfectly correct.

2334
01:55:59,371 --> 01:56:01,370
But it feels like there
could be an opportunity,

2335
01:56:01,370 --> 01:56:03,750
as in the world of
Scratch, to kind of start

2336
01:56:03,750 --> 01:56:07,530
to add some semantics here so that
I don't just have some for loop,

2337
01:56:07,530 --> 01:56:09,867
and a function that says
cough, or does cough.

2338
01:56:09,867 --> 01:56:10,450
You know what?

2339
01:56:10,450 --> 01:56:12,620
Let me try to be a
little cooler than that,

2340
01:56:12,620 --> 01:56:16,090
and actually write a function that
has some side effects, call it cough.

2341
01:56:16,090 --> 01:56:20,830
>> And it takes no input, and
returns no value as output.

2342
01:56:20,830 --> 01:56:22,680
But you know what it does?

2343
01:56:22,680 --> 01:56:29,370
It does this-- printf,
quote unquote, cough.

2344
01:56:29,370 --> 01:56:32,380
>> And now up here, I'm going
to go ahead and for int,

2345
01:56:32,380 --> 01:56:36,070
i gets zero, i less than 3, i plus plus.

2346
01:56:36,070 --> 01:56:39,770
I'm going to not do printf, which is
arguably a low level implementation

2347
01:56:39,770 --> 01:56:40,270
detail.

2348
01:56:40,270 --> 01:56:41,353
I don't care how to cough.

2349
01:56:41,353 --> 01:56:43,240
I just want to use the cough function.

2350
01:56:43,240 --> 01:56:44,840
And I'm just going to call cough.

2351
01:56:44,840 --> 01:56:46,204
>> Now, notice the dichotomy.

2352
01:56:46,204 --> 01:56:49,370
When you call a function, if you don't
want to give it inputs, totally fine.

2353
01:56:49,370 --> 01:56:51,780
Just do open paren, close
paren, and you're done.

2354
01:56:51,780 --> 01:56:56,271
>> When you define a function, or
declare a function's prototype,

2355
01:56:56,271 --> 01:56:58,770
if you know in advance it's not
going to take any arguments,

2356
01:56:58,770 --> 01:57:01,170
say void in those parentheses there.

2357
01:57:01,170 --> 01:57:05,660
And that makes certain that you
won't accidentally misuse it.

2358
01:57:05,660 --> 01:57:07,020
Let me go ahead and make cough.

2359
01:57:07,020 --> 01:57:08,540
And, of course, I've made a mistake.

2360
01:57:08,540 --> 01:57:10,410
>> Dammit, there's that
implicit declaration.

2361
01:57:10,410 --> 01:57:11,325
But that's fine.

2362
01:57:11,325 --> 01:57:12,590
It's an easy fix.

2363
01:57:12,590 --> 01:57:18,240
I just need the prototype higher up
in my file than I'm actually using it.

2364
01:57:18,240 --> 01:57:20,070
>> So now let me make cough again, nice.

2365
01:57:20,070 --> 01:57:20,790
Now, it works.

2366
01:57:20,790 --> 01:57:22,930
Make cough, cough, cough, cough.

2367
01:57:22,930 --> 01:57:25,930
So you might think that we're really
just over engineering this problem.

2368
01:57:25,930 --> 01:57:26,763
And, indeed, we are.

2369
01:57:26,763 --> 01:57:28,870
This is not a good
candidate of a program

2370
01:57:28,870 --> 01:57:31,930
at the moment for
refactoring, and doing what's

2371
01:57:31,930 --> 01:57:35,645
called hierarchical decomposition,
where you take some code, and then

2372
01:57:35,645 --> 01:57:38,790
you kind of factor things out, so as
to ascribe more semantics to them,

2373
01:57:38,790 --> 01:57:40,930
and reuse it ultimately longer term.

2374
01:57:40,930 --> 01:57:43,490
But it's a building block toward
more sophisticated programs

2375
01:57:43,490 --> 01:57:45,600
that we will start
writing before long that

2376
01:57:45,600 --> 01:57:50,090
allows us to have the vocabulary
with which to write better code.

2377
01:57:50,090 --> 01:57:52,920
And, indeed, let's see if we
can't generalize this further.

2378
01:57:52,920 --> 01:57:57,984
>> It seems a little lame that I, main,
need to worry about this darn for loop,

2379
01:57:57,984 --> 01:57:59,400
and calling cough again and again.

2380
01:57:59,400 --> 01:58:03,050
Why can't I just tell cough,
please cough three times?

2381
01:58:03,050 --> 01:58:08,170
In other words, why can't I just
give input to cough and do this?

2382
01:58:08,170 --> 01:58:11,270
>> Why can't I just say, in
main cough three times.

2383
01:58:11,270 --> 01:58:13,150
And now, this is kind of magical.

2384
01:58:13,150 --> 01:58:14,540
It's very iterative here.

2385
01:58:14,540 --> 01:58:15,940
And it's, indeed, a baby step.

2386
01:58:15,940 --> 01:58:19,250
>> But just the ability to say on
line eight, cough three times,

2387
01:58:19,250 --> 01:58:20,730
it's just so much more readable.

2388
01:58:20,730 --> 01:58:24,210
And, plus, I don't have to know
or care how cough is implemented.

2389
01:58:24,210 --> 01:58:26,460
And, indeed, later in the
term and for final projects,

2390
01:58:26,460 --> 01:58:29,150
if you tackle a project with
a classmate or two classmates,

2391
01:58:29,150 --> 01:58:32,370
you'll realize that you're going to
have to, or want to, divide the work.

2392
01:58:32,370 --> 01:58:34,650
>> And you're going to want to decide
in advance, who's going to do what,

2393
01:58:34,650 --> 01:58:35,483
and in which pieces?

2394
01:58:35,483 --> 01:58:37,520
And wouldn't it be nice
if you, for instance,

2395
01:58:37,520 --> 01:58:40,100
take charge of writing main, done.

2396
01:58:40,100 --> 01:58:43,470
And your roommate, or your
partner more generally,

2397
01:58:43,470 --> 01:58:45,230
takes care of implementing cough.

2398
01:58:45,230 --> 01:58:49,540
>> And this division, these
walls of abstraction,

2399
01:58:49,540 --> 01:58:52,310
or layers of abstraction if
you will, are super powerful,

2400
01:58:52,310 --> 01:58:55,480
because especially for larger,
more complex programs and systems,

2401
01:58:55,480 --> 01:59:00,070
it allows multiple people to build
things together, and ultimately

2402
01:59:00,070 --> 01:59:02,680
stitch their work together in this way.

2403
01:59:02,680 --> 01:59:05,332
But, of course, we
need to now fix cough.

2404
01:59:05,332 --> 01:59:07,290
We need to tell cough
that, hey, you know what?

2405
01:59:07,290 --> 01:59:11,230
You're going to need to take an
input-- so not void, but int and now.

2406
01:59:11,230 --> 01:59:15,170
Let's go ahead and put into
cough the int. i gets zero.

2407
01:59:15,170 --> 01:59:16,890
>> i is less than how many times.

2408
01:59:16,890 --> 01:59:18,550
I said three before.

2409
01:59:18,550 --> 01:59:20,420
But that's not what I want.

2410
01:59:20,420 --> 01:59:25,520
I want cough to be generalized to
support any number of iterations.

2411
01:59:25,520 --> 01:59:28,800
>> So, indeed, it's n that I want,
whatever the user tells me.

2412
01:59:28,800 --> 01:59:31,620
Now, I can go ahead and say print cough.

2413
01:59:31,620 --> 01:59:34,750
And no matter what number
the user passes in,

2414
01:59:34,750 --> 01:59:36,890
I will iterate that many times.

2415
01:59:36,890 --> 01:59:39,160
>> So at the end of the day,
program is identical.

2416
01:59:39,160 --> 01:59:42,820
But notice all of this stuff
could even be in another file.

2417
01:59:42,820 --> 01:59:45,620
Indeed, I don't know at the
moment how printf is implemented.

2418
01:59:45,620 --> 01:59:47,980
>> I don't know at the moment how get
string, or get int, or get float

2419
01:59:47,980 --> 01:59:48,646
are implemented.

2420
01:59:48,646 --> 01:59:50,930
And I don't want to
see them on my screen.

2421
01:59:50,930 --> 01:59:55,320
As it is, I'm starting to focus on
my program, not those functions.

2422
01:59:55,320 --> 01:59:59,070
>> And so, indeed, as soon as you
start factoring code like this out,

2423
01:59:59,070 --> 02:00:01,397
could we even move cough
to a separate file?

2424
02:00:01,397 --> 02:00:02,730
Someone else could implement it.

2425
02:00:02,730 --> 02:00:06,810
And you and your program become the
very beautiful, and very readable,

2426
02:00:06,810 --> 02:00:10,830
arguably, really four
line program right there.

2427
02:00:10,830 --> 02:00:13,510
>> So let's go ahead now
and make one more change.

2428
02:00:13,510 --> 02:00:16,180
Notice that my prototype
has to change up top.

2429
02:00:16,180 --> 02:00:18,390
So let me fix that so
I don't get yelled at.

2430
02:00:18,390 --> 02:00:22,580
>> Make cough, let me run cough once
more, still doing the same thing.

2431
02:00:22,580 --> 02:00:26,010
But now, notice we have an
ingredient for one final version.

2432
02:00:26,010 --> 02:00:26,940
You know what?

2433
02:00:26,940 --> 02:00:29,040
I don't want to just cough, necessarily.

2434
02:00:29,040 --> 02:00:30,802
I want to have something more general.

2435
02:00:30,802 --> 02:00:31,510
So you know what?

2436
02:00:31,510 --> 02:00:32,450
I want to do this.

2437
02:00:32,450 --> 02:00:37,140
I want to have, much like Scratch
does, a say block, but not just

2438
02:00:37,140 --> 02:00:38,680
say something some number of times.

2439
02:00:38,680 --> 02:00:41,510
I want it to say a very specific string.

2440
02:00:41,510 --> 02:00:43,850
And, therefore, I don't
want it to just say cough.

2441
02:00:43,850 --> 02:00:47,660
I want it to say whatever
string is passed in.

2442
02:00:47,660 --> 02:00:49,960
>> So notice, I've generalized
this so that now

2443
02:00:49,960 --> 02:00:53,110
say feels like a good name
for this, like Scratch,

2444
02:00:53,110 --> 02:00:55,530
takes two arguments, unlike Scratch.

2445
02:00:55,530 --> 02:00:56,570
One is a string.

2446
02:00:56,570 --> 02:00:57,300
One is an int.

2447
02:00:57,300 --> 02:00:58,130
>> And I could switch them.

2448
02:00:58,130 --> 02:01:00,713
I just kind of like the idea of
say the string first, and then

2449
02:01:00,713 --> 02:01:01,940
how many times later.

2450
02:01:01,940 --> 02:01:03,970
Void means it still
doesn't return anything.

2451
02:01:03,970 --> 02:01:06,428
These are just visual side
effects, like with [? Jordan, ?]

2452
02:01:06,428 --> 02:01:08,240
a verbal side effect of yelling.

2453
02:01:08,240 --> 02:01:12,630
It still does something n times,
0 up to, but not equal to n.

2454
02:01:12,630 --> 02:01:14,540
This means n total times.

2455
02:01:14,540 --> 02:01:16,540
And then just print out
whatever that string is.

2456
02:01:16,540 --> 02:01:19,060
So I've really generalized
this line of code.

2457
02:01:19,060 --> 02:01:22,460
So now, how do I implement
the cough function?

2458
02:01:22,460 --> 02:01:25,520
>> I can do void cough.

2459
02:01:25,520 --> 02:01:28,501
And I can still take in how
many times you want to cough.

2460
02:01:28,501 --> 02:01:29,250
But you know what?

2461
02:01:29,250 --> 02:01:31,240
I can now punt to say.

2462
02:01:31,240 --> 02:01:36,540
>> I can call say with the
word cough, passing in n.

2463
02:01:36,540 --> 02:01:40,410
And if I want to also implement,
just for fun, a sneeze function,

2464
02:01:40,410 --> 02:01:42,290
I can sneeze some number of times.

2465
02:01:42,290 --> 02:01:47,300
And I can keep reusing n, because
notice that m in this context or scope

2466
02:01:47,300 --> 02:01:49,470
only exists within this function.

2467
02:01:49,470 --> 02:01:52,767
>> And n in this context only
exists within this function here.

2468
02:01:52,767 --> 02:01:54,600
So we'll come back to
these issues of scope.

2469
02:01:54,600 --> 02:02:01,160
And here, I'm just going to say,
achoo, and then n times, semi-colon.

2470
02:02:01,160 --> 02:02:04,340
>> And now, I just need to borrow
these function signatures up here.

2471
02:02:04,340 --> 02:02:06,290
So cough is correct.

2472
02:02:06,290 --> 02:02:10,090
Void sneeze is correct now.

2473
02:02:10,090 --> 02:02:12,390
>> And I still just need say.

2474
02:02:12,390 --> 02:02:18,990
So I'm going to say, say
string s, int n, semi-colon.

2475
02:02:18,990 --> 02:02:22,010
So I've over-engineered the
heck out of this program.

2476
02:02:22,010 --> 02:02:23,760
>> And this doesn't
necessarily mean this is

2477
02:02:23,760 --> 02:02:26,343
what you should do when writing
even the simplest of programs.

2478
02:02:26,343 --> 02:02:29,280
Take something that's obviously
really simple, really short,

2479
02:02:29,280 --> 02:02:31,800
and re-implement it
using way too much code.

2480
02:02:31,800 --> 02:02:34,560
But you'll actually see, and in
time look back on these examples,

2481
02:02:34,560 --> 02:02:38,610
and realize, oh, those are the steps
we took to actually generalize,

2482
02:02:38,610 --> 02:02:40,797
to factor something out,
until at the end of the day

2483
02:02:40,797 --> 02:02:42,380
my code is actually pretty reasonable.

2484
02:02:42,380 --> 02:02:45,960
Because if I want to cough three
times then sneeze three times,

2485
02:02:45,960 --> 02:02:50,420
I'm simply going to rerun this,
program make cough, and run cough.

2486
02:02:50,420 --> 02:02:53,620
And I have three coughs
and three sneezes.

2487
02:02:53,620 --> 02:02:55,990
>> And so this is a basic
paradigm, if you will,

2488
02:02:55,990 --> 02:03:00,110
for how we might go about
actually implementing a program.

2489
02:03:00,110 --> 02:03:03,220
But let's just see now what it is
we've been doing all of this time,

2490
02:03:03,220 --> 02:03:06,940
and what some of the final pieces
are behind this simple command.

2491
02:03:06,940 --> 02:03:09,620
At the end of the day, we've
been using Clang as our compiler.

2492
02:03:09,620 --> 02:03:11,494
We've been writing source
code, converting it

2493
02:03:11,494 --> 02:03:12,820
via Clang into machine code.

2494
02:03:12,820 --> 02:03:15,540
>> And we've been using Make just
to facilitate our keystrokes so

2495
02:03:15,540 --> 02:03:20,740
that we don't have to remember
those incantations of Clang itself.

2496
02:03:20,740 --> 02:03:22,640
But what is Make actually doing?

2497
02:03:22,640 --> 02:03:24,750
And, in turn, what is
Clang actually doing?

2498
02:03:24,750 --> 02:03:28,790
>> It turns out, though we have simplified
today's discussion by saying,

2499
02:03:28,790 --> 02:03:33,090
you take source code, pass it as
input to a compiler, which gives you

2500
02:03:33,090 --> 02:03:35,750
output of machine
code, turns out there's

2501
02:03:35,750 --> 02:03:37,420
a few different steps inside there.

2502
02:03:37,420 --> 02:03:41,940
And compiling happens to be the umbrella
term for a whole bunch of steps.

2503
02:03:41,940 --> 02:03:43,970
But let's just tease
this out really quickly.

2504
02:03:43,970 --> 02:03:48,070
>> It turns out that we've been doing
more things every time I run a program,

2505
02:03:48,070 --> 02:03:50,990
or every time I compile a program today.

2506
02:03:50,990 --> 02:03:55,020
So preprocessing refers to
this-- anything in a C program,

2507
02:03:55,020 --> 02:03:58,720
as we'll see again and again,
that starts with this hash symbol,

2508
02:03:58,720 --> 02:04:03,320
or the hashtag symbol here, means
it's a preprocessor directive.

2509
02:04:03,320 --> 02:04:07,330
That means, in this case, hey
computer, do something with this file

2510
02:04:07,330 --> 02:04:09,430
before you actually compile my own code.

2511
02:04:09,430 --> 02:04:15,220
>> In this case, hash include is,
essentially, C's way of saying,

2512
02:04:15,220 --> 02:04:19,325
hey computer, go get the contents
of CS50.h and paste them here.

2513
02:04:19,325 --> 02:04:22,170
Hey computer, go get the
contents of standard IO.h,

2514
02:04:22,170 --> 02:04:24,690
wherever that is on the
hard drive, paste it here.

2515
02:04:24,690 --> 02:04:27,390
So those things happen
first during preprocessing.

2516
02:04:27,390 --> 02:04:28,880
>> And Clang does all of this for us.

2517
02:04:28,880 --> 02:04:30,510
And it does it so darn
fast, you don't even

2518
02:04:30,510 --> 02:04:32,000
see four distinct things happening.

2519
02:04:32,000 --> 02:04:34,100
But that's the first such step.

2520
02:04:34,100 --> 02:04:35,560
>> What actually happens next?

2521
02:04:35,560 --> 02:04:38,320
Well, the next official
step is compiling.

2522
02:04:38,320 --> 02:04:40,385
And it turns out that
compiling a program

2523
02:04:40,385 --> 02:04:44,060
technically means going from
source code, the stuff we've

2524
02:04:44,060 --> 02:04:47,890
been writing today, to something
called assembly code, something

2525
02:04:47,890 --> 02:04:49,260
that looks a little different.

2526
02:04:49,260 --> 02:04:51,050
>> And, in fact, we can see this real fast.

2527
02:04:51,050 --> 02:04:53,890
Let me actually go into my IDE.

2528
02:04:53,890 --> 02:04:58,050
Let me go ahead and open hello.c, which
is the very first program with which we

2529
02:04:58,050 --> 02:04:59,120
began today.

2530
02:04:59,120 --> 02:05:04,130
And let me go ahead and run Clang a
little differently, Clang-s, hello.c,

2531
02:05:04,130 --> 02:05:07,720
which is actually going to
give me another file hello.s.

2532
02:05:07,720 --> 02:05:10,330
>> And we will probably never
again see this kind of code.

2533
02:05:10,330 --> 02:05:13,030
If you take a lower level
systems class like CS61,

2534
02:05:13,030 --> 02:05:14,920
you will see a lot more
of this kind of code.

2535
02:05:14,920 --> 02:05:17,020
But this is assembly language.

2536
02:05:17,020 --> 02:05:22,050
This is X86 assembly language
that the CPU that is underlying

2537
02:05:22,050 --> 02:05:24,460
CS50 IDE actually understands.

2538
02:05:24,460 --> 02:05:27,060
>> And cryptic as it does
look, it is something

2539
02:05:27,060 --> 02:05:29,180
the computer understands pretty well.

2540
02:05:29,180 --> 02:05:30,790
Sub q, this is a subtract.

2541
02:05:30,790 --> 02:05:31,660
There's movements.

2542
02:05:31,660 --> 02:05:35,730
>> There's calling of functions here,
x oring, a movement, an add, a pop,

2543
02:05:35,730 --> 02:05:36,430
a return.

2544
02:05:36,430 --> 02:05:38,850
So there's some very
low level instructions

2545
02:05:38,850 --> 02:05:41,280
that CPUs understand that
I alluded to earlier.

2546
02:05:41,280 --> 02:05:43,100
That is what Intel Inside.

2547
02:05:43,100 --> 02:05:45,030
>> There are patterns of
zeros and ones that

2548
02:05:45,030 --> 02:05:51,800
map to these arcanely worded, but
somewhat well-named, instructions,

2549
02:05:51,800 --> 02:05:52,780
so to speak.

2550
02:05:52,780 --> 02:05:54,780
That is what happens when
you compile your code.

2551
02:05:54,780 --> 02:05:58,560
You get assembly
language out of it, which

2552
02:05:58,560 --> 02:06:04,680
means the third step is to assemble
that assembly code into, ultimately,

2553
02:06:04,680 --> 02:06:09,080
machine code-- zeros and ones, not the
text that we just saw a moment ago.

2554
02:06:09,080 --> 02:06:13,370
>> So pre-processing does that find
and replace, and a few other things.

2555
02:06:13,370 --> 02:06:16,430
Compiling takes your source
code from C, source code

2556
02:06:16,430 --> 02:06:18,980
that we wrote, to assembly
code that we just glanced at.

2557
02:06:18,980 --> 02:06:22,170
Assembling takes that assembly
code to zeroes and ones

2558
02:06:22,170 --> 02:06:24,680
that the CPU really will
understand at the end of the day.

2559
02:06:24,680 --> 02:06:27,630
And linking is the last step
that happens for us-- again,

2560
02:06:27,630 --> 02:06:29,830
so fast we don't even
notice-- that says,

2561
02:06:29,830 --> 02:06:32,460
hey computer, take all of
the zeros and ones that

2562
02:06:32,460 --> 02:06:36,750
resulted from compiling David's code,
and his main function in this case.

2563
02:06:36,750 --> 02:06:39,160
>> And hey computer, go get
all of the zeros and ones

2564
02:06:39,160 --> 02:06:42,180
that the CS50 staff wrote
inside the CS50 library.

2565
02:06:42,180 --> 02:06:43,440
Mix those in with David's.

2566
02:06:43,440 --> 02:06:46,648
And hey computer, go get all the zeros
and ones that someone else wrote years

2567
02:06:46,648 --> 02:06:47,470
ago for printf.

2568
02:06:47,470 --> 02:06:49,880
And add those into the
whole thing, so that we've

2569
02:06:49,880 --> 02:06:52,870
got my zeros and ones, the
CS50 staff's zeros and ones,

2570
02:06:52,870 --> 02:06:55,370
the printf zeros and ones,
and anything else we're using.

2571
02:06:55,370 --> 02:07:00,410
>> They all get combined together into one
program called, in this case, hello.

2572
02:07:00,410 --> 02:07:03,141
So henceforth, we will just
use the word compiling.

2573
02:07:03,141 --> 02:07:06,390
And we will take for granted that when
we say, compile your program, it means,

2574
02:07:06,390 --> 02:07:08,849
hey do the pre-processing,
assembling, and linking.

2575
02:07:08,849 --> 02:07:11,890
But there's actually some juicy stuff
going on there underneath the hood.

2576
02:07:11,890 --> 02:07:13,723
And especially if you
get curious some time,

2577
02:07:13,723 --> 02:07:15,900
you can start poking
around at this lower level.

2578
02:07:15,900 --> 02:07:19,660
But for now, realize that
among the takeaways for today

2579
02:07:19,660 --> 02:07:23,420
are quite simply the
beginning of a process,

2580
02:07:23,420 --> 02:07:26,700
of getting comfortable with
something like hello world.

2581
02:07:26,700 --> 02:07:29,575
Indeed, most of what we did today
certainly won't sink in super fast.

2582
02:07:29,575 --> 02:07:31,491
And it will take some
time, and some practice.

2583
02:07:31,491 --> 02:07:33,864
And odds are, you will sort
of want to hit your keyboard

2584
02:07:33,864 --> 02:07:34,780
or yell at the screen.

2585
02:07:34,780 --> 02:07:35,880
And all of that's OK.

2586
02:07:35,880 --> 02:07:38,320
Though, perhaps try not to
do it in the library so much.

2587
02:07:38,320 --> 02:07:40,820
>> And ultimately, you'll
be able though, to start

2588
02:07:40,820 --> 02:07:44,580
seeing patterns, both in good code
that you've written and in mistakes

2589
02:07:44,580 --> 02:07:45,370
that you've made.

2590
02:07:45,370 --> 02:07:48,965
And much like the process of
becoming a TF or a CA is like,

2591
02:07:48,965 --> 02:07:51,590
you'll start to get better and
better at seeing those patterns,

2592
02:07:51,590 --> 02:07:53,774
and just solving your
own problems ultimately.

2593
02:07:53,774 --> 02:07:56,940
In the meantime, there will be plenty
of us to lend you support, and get you

2594
02:07:56,940 --> 02:07:57,481
through this.

2595
02:07:57,481 --> 02:07:59,450
And in the write-ups
for all of the problems

2596
02:07:59,450 --> 02:08:01,366
will you be guided through
all of the commands

2597
02:08:01,366 --> 02:08:05,330
that I certainly know from
a lot of practice by now,

2598
02:08:05,330 --> 02:08:07,380
but might have flown
over one's head for now.

2599
02:08:07,380 --> 02:08:08,580
And that's totally fine.

2600
02:08:08,580 --> 02:08:11,230
>> But, ultimately, you're going
to start to see patterns emerge.

2601
02:08:11,230 --> 02:08:14,260
And once you get past all of the
stupid details, like parentheses,

2602
02:08:14,260 --> 02:08:16,710
and curly braces, and semi-colons,
and the stuff, frankly,

2603
02:08:16,710 --> 02:08:19,360
that is not at all
intellectually interesting.

2604
02:08:19,360 --> 02:08:22,690
And it is not the objective of
taking any introductory class.

2605
02:08:22,690 --> 02:08:24,410
It's the ideas that are going to matter.

2606
02:08:24,410 --> 02:08:26,659
>> It's the loops, and the
conditions, and the functions,

2607
02:08:26,659 --> 02:08:30,552
and more powerfully the abstraction,
and the factoring of code,

2608
02:08:30,552 --> 02:08:33,510
and the good design, and the good
style, and ultimately the correctness

2609
02:08:33,510 --> 02:08:37,330
of your code, that's ultimately
going to matter the most.

2610
02:08:37,330 --> 02:08:40,925
So next week, we will take these
ideas that we first saw in Scratch

2611
02:08:40,925 --> 02:08:42,800
and have now translated
to C. And we'll start

2612
02:08:42,800 --> 02:08:45,740
to introduce the first of the
course's real world domains.

2613
02:08:45,740 --> 02:08:50,140
>> We'll focus on the world of security,
and more specifically cryptography,

2614
02:08:50,140 --> 02:08:51,980
the art of scrambling information.

2615
02:08:51,980 --> 02:08:54,000
And among the first
problems you yourself

2616
02:08:54,000 --> 02:08:56,840
will get to write beyond
playing with some of the syntax

2617
02:08:56,840 --> 02:08:59,880
and solving some logical
problems, ultimately before long,

2618
02:08:59,880 --> 02:09:03,960
is to actually scramble, or encrypt,
and ultimately decrypt information.

2619
02:09:03,960 --> 02:09:06,470
And everything we've done
today, will fairly low

2620
02:09:06,470 --> 02:09:09,190
level, is just going to allow
us to take one, and one,

2621
02:09:09,190 --> 02:09:13,550
and one more step above toward
writing the most interesting code yet.

2622
02:09:13,550 --> 02:09:15,050
>> So more on that next week.

2623
02:09:15,050 --> 02:09:17,834

2624
02:09:17,834 --> 02:09:18,762
>> [VIDEO PLAYBACK]

2625
02:09:18,762 --> 02:09:19,690

2626
02:09:19,690 --> 02:09:22,006
>> -What can you tell me about
the last time you saw him?

2627
02:09:22,006 --> 02:09:26,041

2628
02:09:26,041 --> 02:09:27,040
-What can I say, really?

2629
02:09:27,040 --> 02:09:30,500

2630
02:09:30,500 --> 02:09:35,340
I mean, it was like any other
pre-production rehearsal,

2631
02:09:35,340 --> 02:09:40,510
except there was something he said
at the very end that stuck with me.

2632
02:09:40,510 --> 02:09:44,810

2633
02:09:44,810 --> 02:09:46,640
>> -This was CS50.

2634
02:09:46,640 --> 02:09:49,440

2635
02:09:49,440 --> 02:09:52,190
>> -That's a cut everyone,
great job on rehearsal.

2636
02:09:52,190 --> 02:09:53,070
>> -That's lunch?

2637
02:09:53,070 --> 02:09:54,986
>> -Yeah, you and I can
grab a sandwich in a bit.

2638
02:09:54,986 --> 02:09:58,380
Let me just debrief with
David really quickly.

2639
02:09:58,380 --> 02:09:59,160
David?

2640
02:09:59,160 --> 02:10:01,260
David?

2641
02:10:01,260 --> 02:10:03,110
>> [END PLAYBACK]

