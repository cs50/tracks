1
00:00:00,000 --> 00:00:15,059
>> [MUSIC PLAYING]

2
00:00:15,059 --> 00:00:19,170
>> This is CS50-- Harvard
University's introduction

3
00:00:19,170 --> 00:00:22,070
to the intellectual
enterprises of computer science

4
00:00:22,070 --> 00:00:23,800
and the art of programming.

5
00:00:23,800 --> 00:00:27,020
And my name is David Malan, and
I was just thinking this morning,

6
00:00:27,020 --> 00:00:33,120
it's been amazingly 20 years today
since I last sat where you guys do now.

7
00:00:33,120 --> 00:00:33,840
>> It was 1996.

8
00:00:33,840 --> 00:00:37,550
I was a sophomore, and I was taking
CS50 for the very first time.

9
00:00:37,550 --> 00:00:40,890
And I hadn't even gotten up the nerve
to take it myself freshman year,

10
00:00:40,890 --> 00:00:42,500
partly because of the time.

11
00:00:42,500 --> 00:00:44,782
Computer science to me
was kind of like, meh.

12
00:00:44,782 --> 00:00:46,990
I was a bit of a geek growing
up, but I didn't really

13
00:00:46,990 --> 00:00:49,180
have any intellectual
interest in what appeared

14
00:00:49,180 --> 00:00:51,920
to just be a whole bunch of
people programming all the time.

15
00:00:51,920 --> 00:00:53,904
>> And I was scared to be honest.

16
00:00:53,904 --> 00:00:56,820
The course and computer science more
generally had and to some extent,

17
00:00:56,820 --> 00:01:01,230
still has this reputation of a field to
beware, if only because so many of us

18
00:01:01,230 --> 00:01:04,410
are unfamiliar with it and unsure of it.

19
00:01:04,410 --> 00:01:08,480
And it really wasn't until I shopped
this class that sophomore fall--

20
00:01:08,480 --> 00:01:10,880
and even then, I only enrolled
because the professor--

21
00:01:10,880 --> 00:01:13,950
one of my first mentors, Brian
Kernighan now at Princeton--

22
00:01:13,950 --> 00:01:15,700
allowed me to take the class pass fail.

23
00:01:15,700 --> 00:01:18,020
And indeed, that's why
today we allow and encourage

24
00:01:18,020 --> 00:01:20,030
students to take this class sat/unsat.

25
00:01:20,030 --> 00:01:22,040
>> And only then, by the
end of the semester

26
00:01:22,040 --> 00:01:24,870
did I realize like, wow, this
wasn't such an unfamiliar field.

27
00:01:24,870 --> 00:01:26,850
Indeed, this was a
very empowering field,

28
00:01:26,850 --> 00:01:28,970
and more excitingly,
especially later on,

29
00:01:28,970 --> 00:01:32,809
as I took courses in
Dramatic Arts 101 and Latin A

30
00:01:32,809 --> 00:01:34,600
and then eventually
grad school archeology,

31
00:01:34,600 --> 00:01:37,860
did I really start to see the
intersections of this field, computer

32
00:01:37,860 --> 00:01:41,979
science, with the humanities,
natural sciences, the arts, medicine,

33
00:01:41,979 --> 00:01:42,520
and the like.

34
00:01:42,520 --> 00:01:44,420
And so that's what's just so
neat about computer science

35
00:01:44,420 --> 00:01:46,930
ultimately, as we hope you'll
see-- is its applicability

36
00:01:46,930 --> 00:01:50,280
to these other fields, and how you can
take some of today's and the semester's

37
00:01:50,280 --> 00:01:53,070
ideas and practical skills
back to your own domain,

38
00:01:53,070 --> 00:01:58,200
and actually explore this intersection
of the liberal arts and the sciences.

39
00:01:58,200 --> 00:02:02,690
>> So 73% of you, if last
year is any indication,

40
00:02:02,690 --> 00:02:04,390
have never taken a CS course before.

41
00:02:04,390 --> 00:02:06,389
So if, like me, you are
feeling a little bit

42
00:02:06,389 --> 00:02:09,190
scared, or frankly you're not
really sure why you're even here.

43
00:02:09,190 --> 00:02:11,510
Perhaps you just followed some
friends over to Sanders right now.

44
00:02:11,510 --> 00:02:12,490
That's totally fine.

45
00:02:12,490 --> 00:02:15,059
The goal here is to hook
you and to reassure you

46
00:02:15,059 --> 00:02:17,100
that if you do look to
the left and to the right,

47
00:02:17,100 --> 00:02:21,480
you're going to see classmates with
as little or as much experience

48
00:02:21,480 --> 00:02:22,890
that you yourself might have.

49
00:02:22,890 --> 00:02:25,280
And indeed, we'll share
some statistics later today

50
00:02:25,280 --> 00:02:28,120
as to what the demographics of
the class typically look like.

51
00:02:28,120 --> 00:02:31,440
>> And as added reassurance-- and this we
do mean since I took over the course

52
00:02:31,440 --> 00:02:33,252
some years ago-- in
the course's syllabus

53
00:02:33,252 --> 00:02:35,460
is this-- that what ultimately
matters in this course

54
00:02:35,460 --> 00:02:38,040
is not so much where you end
up relative to your classmates,

55
00:02:38,040 --> 00:02:43,110
but where you in week 11, the end of the
semester, end up relative to yourself

56
00:02:43,110 --> 00:02:46,280
in week 0, which is
where we are here today.

57
00:02:46,280 --> 00:02:48,704
And this is what I realized
all those years ago.

58
00:02:48,704 --> 00:02:50,620
And I know a lot of
classes say this, but it's

59
00:02:50,620 --> 00:02:52,450
especially true in computer science.

60
00:02:52,450 --> 00:02:55,320
At the end of the day, this field
is unfamiliar as it was to me

61
00:02:55,320 --> 00:02:58,590
and might be to you, is really
just about problem solving.

62
00:02:58,590 --> 00:03:01,324
And as such, it does have this
applicability to get other fields.

63
00:03:01,324 --> 00:03:03,490
And in fact, if we tried
to distill what this means,

64
00:03:03,490 --> 00:03:06,897
this is problem solving
in its essence, I daresay.

65
00:03:06,897 --> 00:03:09,480
There's input-- so whatever it
is that you're trying to solve.

66
00:03:09,480 --> 00:03:12,264
There's output, which is hopefully
the solution to that problem.

67
00:03:12,264 --> 00:03:14,180
And then, as we would
say in computer science,

68
00:03:14,180 --> 00:03:17,310
there's this black box in the
middle that you don't necessarily

69
00:03:17,310 --> 00:03:19,450
have to care about how it works.

70
00:03:19,450 --> 00:03:22,230
You yourself eventually might
implement what's inside that box.

71
00:03:22,230 --> 00:03:25,194
But for today's purposes and more
generally in life, all you care about

72
00:03:25,194 --> 00:03:26,610
is that these problems get solved.

73
00:03:26,610 --> 00:03:29,340
>> And what this course is
ultimately about is exploring

74
00:03:29,340 --> 00:03:31,700
the intersection of
these inputs and outputs,

75
00:03:31,700 --> 00:03:34,410
and these so-called
algorithms, as we'll soon see,

76
00:03:34,410 --> 00:03:37,450
that implement what is
underneath there, the hood.

77
00:03:37,450 --> 00:03:40,487
But these inputs and these outputs--
what does that actually mean?

78
00:03:40,487 --> 00:03:43,570
Well, at the end of the day, we need
some way of representing information.

79
00:03:43,570 --> 00:03:46,660
This is especially true in a computer,
which as fancy and complex as it

80
00:03:46,660 --> 00:03:48,160
might seem, is a pretty dumb device.

81
00:03:48,160 --> 00:03:52,240
It takes electricity-- whether from
a cable or a battery as input--

82
00:03:52,240 --> 00:03:55,820
and then it produces some
preprogramed responses on the screen.

83
00:03:55,820 --> 00:03:57,970
>> But how do we get from
start to finish there?

84
00:03:57,970 --> 00:03:59,470
Well, what's a problem to be solved?

85
00:03:59,470 --> 00:04:01,050
Well, maybe we might, at
the start of any semester,

86
00:04:01,050 --> 00:04:02,841
try to take attendance
in a room like this.

87
00:04:02,841 --> 00:04:04,750
So I might do like one, two, three.

88
00:04:04,750 --> 00:04:07,060
Or maybe, if I did it
to sort of keep track

89
00:04:07,060 --> 00:04:10,560
of myself-- to keep track of things--
I could quickly run out of fingers.

90
00:04:10,560 --> 00:04:14,650
So I might just make hash marks-- one
person, two, three, four, five, six,

91
00:04:14,650 --> 00:04:15,431
seven, eight.

92
00:04:15,431 --> 00:04:17,930
And all of us have probably
done this, whether on your hands

93
00:04:17,930 --> 00:04:19,680
or on a piece of paper.

94
00:04:19,680 --> 00:04:22,140
And this is actually just
something called unary notation--

95
00:04:22,140 --> 00:04:26,130
where if you only have one letter
in your alphabet, one or hash

96
00:04:26,130 --> 00:04:29,440
mark in this case, for every
input you want to count,

97
00:04:29,440 --> 00:04:32,330
you need to put down one of these
letters-- one of these marks.

98
00:04:32,330 --> 00:04:32,510
>> All right.

99
00:04:32,510 --> 00:04:34,790
That's all fine and good and
not all that complicated.

100
00:04:34,790 --> 00:04:37,800
But computers aren't all
that much more complicated.

101
00:04:37,800 --> 00:04:40,770
Indeed, most of you probably
know even if you've not really

102
00:04:40,770 --> 00:04:44,080
considered what this means, that
computers only understand zeros

103
00:04:44,080 --> 00:04:45,870
and ones-- the so-called binary system.

104
00:04:45,870 --> 00:04:49,390
We humans, by contrast, are so
much more sophisticated insofar

105
00:04:49,390 --> 00:04:51,770
as we understand zeros through nines.

106
00:04:51,770 --> 00:04:55,740
>> But even if binary is, at first
glance, not all that familiar,

107
00:04:55,740 --> 00:05:00,330
it turns out it's just like the systems
and the ideas that we already know.

108
00:05:00,330 --> 00:05:02,420
So for instance, consider this.

109
00:05:02,420 --> 00:05:03,896
This is just a sequence of symbols.

110
00:05:03,896 --> 00:05:05,770
And all of you, when
glancing at it, probably

111
00:05:05,770 --> 00:05:09,380
think 123-- nothing
really interesting there.

112
00:05:09,380 --> 00:05:11,940
But why is it this number, 123?

113
00:05:11,940 --> 00:05:14,440
These are just glyphs on
the screen-- just patterns

114
00:05:14,440 --> 00:05:16,387
that someone might have drawn or typed.

115
00:05:16,387 --> 00:05:18,970
But if you're like me, you
probably remember from grade school

116
00:05:18,970 --> 00:05:21,610
that there are sort of
columns or places here.

117
00:05:21,610 --> 00:05:25,340
There's the one's place and the
ten's place and the hundred's place.

118
00:05:25,340 --> 00:05:29,820
And the reason that this is 123 and
not just a pattern of three symbols

119
00:05:29,820 --> 00:05:33,090
is because, of course, if we
have a one in the hundreds place,

120
00:05:33,090 --> 00:05:36,610
you do the math of 100 times one,
and then two in the ten's place.

121
00:05:36,610 --> 00:05:41,390
So that's 10 times 2, and then three in
the one's place and that's 1 times 3.

122
00:05:41,390 --> 00:05:45,670
And when you add all of those up, of
course, you get 100 plus 20 plus 3.

123
00:05:45,670 --> 00:05:48,220
>> So we started with just a pattern
of symbols-- an alphabet--

124
00:05:48,220 --> 00:05:51,670
but then we mapped meaning onto
it by way of these columns.

125
00:05:51,670 --> 00:05:54,450
Well, it turns out that
computers are really not

126
00:05:54,450 --> 00:05:56,300
all that different from you and me.

127
00:05:56,300 --> 00:06:01,840
But instead of using powers of 10,
so to speak-- 1, 10, 100, 1,000,

128
00:06:01,840 --> 00:06:04,330
10,000 place and so
forth-- they actually

129
00:06:04,330 --> 00:06:08,930
just use powers of 2--
so one, 2, 4, and then

130
00:06:08,930 --> 00:06:12,810
if we put more digits, 8, 16,
32, 64, 128, and so forth.

131
00:06:12,810 --> 00:06:16,050
And so this is how a computer
would represent the number 0,

132
00:06:16,050 --> 00:06:17,300
just like we humans.

133
00:06:17,300 --> 00:06:21,660
>> 0, 0, 0-- and you can probably guess
what pattern of zeros and ones,

134
00:06:21,660 --> 00:06:24,610
if a computer can only
speak 0 or 1-- what

135
00:06:24,610 --> 00:06:29,110
pattern is going to represent
the number we humans know as 1?

136
00:06:29,110 --> 00:06:30,590
Yeah-- 0, 0, 1.

137
00:06:30,590 --> 00:06:31,090
All right.

138
00:06:31,090 --> 00:06:35,900
So 0, 0, 1 is how we represent
1, so you might be inclined then

139
00:06:35,900 --> 00:06:39,510
to represent the number 2, if you have
the four's place and the two's place

140
00:06:39,510 --> 00:06:48,290
as the one place, you might say, well,
if we had a 1 in the one's place,

141
00:06:48,290 --> 00:06:50,430
and now we want to
count up to 2, you might

142
00:06:50,430 --> 00:06:53,310
do this and leave this to be a zero.

143
00:06:53,310 --> 00:06:56,397
But of course this is not how
the decimal system works either.

144
00:06:56,397 --> 00:06:58,230
If you put a digit in
both of those columns,

145
00:06:58,230 --> 00:06:59,563
you've got to do the arithmetic.

146
00:06:59,563 --> 00:07:01,930
So what number did I
accidentally just represent?

147
00:07:01,930 --> 00:07:06,710
>> So it's 3, because 2 times 1 plus 1
times 1, of course, gives us three.

148
00:07:06,710 --> 00:07:08,340
So this would be two.

149
00:07:08,340 --> 00:07:12,730
The bit sort of flips, so to speak, as 0
becomes a one, much like a 9 roles over

150
00:07:12,730 --> 00:07:14,840
and becomes a 0 when you carry the 1.

151
00:07:14,840 --> 00:07:16,510
This then would be three of course.

152
00:07:16,510 --> 00:07:20,170
Four-- another interesting thing
happens, where the ones roll over

153
00:07:20,170 --> 00:07:21,750
and you carry the 1, so to speak.

154
00:07:21,750 --> 00:07:23,320
So this, of course, is 4.

155
00:07:23,320 --> 00:07:25,160
>> But if you fast forward now,
what's the biggest number going

156
00:07:25,160 --> 00:07:26,660
to be that a computer can represent?

157
00:07:26,660 --> 00:07:30,420

158
00:07:30,420 --> 00:07:32,380
So it's just seven in this case, right?

159
00:07:32,380 --> 00:07:35,570
Because you have a one in the four,
a one in the two, a one in the one.

160
00:07:35,570 --> 00:07:36,900
So that's 4 plus 2 plus 1.

161
00:07:36,900 --> 00:07:37,972
So that gives you seven.

162
00:07:37,972 --> 00:07:39,680
And indeed, it would
seem at first glance

163
00:07:39,680 --> 00:07:43,750
that computers can count
no higher than this.

164
00:07:43,750 --> 00:07:45,210
>> But this of course is not true.

165
00:07:45,210 --> 00:07:48,243
What do we humans do when we want
to count higher than like 999?

166
00:07:48,243 --> 00:07:51,000

167
00:07:51,000 --> 00:07:53,900
Just carry the one and just
add a fourth digit to the left.

168
00:07:53,900 --> 00:07:55,070
And so indeed we could.

169
00:07:55,070 --> 00:07:57,900
We could have an eight's
place and a 16th's place,

170
00:07:57,900 --> 00:08:02,000
and a 32's place, 64, 128-- and you
can just keep going on up to infinity.

171
00:08:02,000 --> 00:08:04,640
So these zeros and ones--
the so-called binary system--

172
00:08:04,640 --> 00:08:10,290
are what a computer scientist would
generally call a bit, or binary digit.

173
00:08:10,290 --> 00:08:13,590
>> But now, how do we get from the
concept or the graphics of these things

174
00:08:13,590 --> 00:08:14,620
to an actual computer?

175
00:08:14,620 --> 00:08:17,170
We seem to be skipping a step here.

176
00:08:17,170 --> 00:08:20,210
Well, the only input at the end
of the day, to my laptop here

177
00:08:20,210 --> 00:08:22,060
is this flow of electricity.

178
00:08:22,060 --> 00:08:24,560
Even if it's been a long
time since you thought about

179
00:08:24,560 --> 00:08:26,580
or never thought about
how electricity works,

180
00:08:26,580 --> 00:08:30,909
there's electrons flowing in or
out, and that's my kind of input.

181
00:08:30,909 --> 00:08:34,659
>> So if that's all that we're
getting as input here,

182
00:08:34,659 --> 00:08:36,830
what can we do with that information?

183
00:08:36,830 --> 00:08:40,040
Well, we might think of a zero as
just an absence of electricity.

184
00:08:40,040 --> 00:08:42,540
Nothing is flowinw, nothing is
moving, nothing is happening.

185
00:08:42,540 --> 00:08:44,690
That's just the default state-- zero.

186
00:08:44,690 --> 00:08:48,200
But if there is electricity flowing, why
don't we just arbitrarily, but globally

187
00:08:48,200 --> 00:08:50,250
consistently, call that a one.

188
00:08:50,250 --> 00:08:54,760
>> So simply by having no power,
we have a zero, yes power,

189
00:08:54,760 --> 00:08:57,520
we have a one-- no power, yes power.

190
00:08:57,520 --> 00:09:01,520
And in that way, using something
more physical or electronic

191
00:09:01,520 --> 00:09:05,340
we start to implement this notion of
something either being one or a zero.

192
00:09:05,340 --> 00:09:07,230
Indeed, we could just do it over here.

193
00:09:07,230 --> 00:09:10,590
So here, I have not three but
eight light bulbs, each of which

194
00:09:10,590 --> 00:09:11,810
has its own switch.

195
00:09:11,810 --> 00:09:15,760
>> And so if I wanted to represent
the number seven here,

196
00:09:15,760 --> 00:09:18,510
I might turn on these three light bulbs.

197
00:09:18,510 --> 00:09:21,470
And indeed, inside of
my computer is millions,

198
00:09:21,470 --> 00:09:25,650
billions of things that are just
smaller than that, called transistors,

199
00:09:25,650 --> 00:09:27,330
switches, that you just turn on and off.

200
00:09:27,330 --> 00:09:30,420
So these are big-- relatively
big-- switches inside my laptop--

201
00:09:30,420 --> 00:09:32,150
are many, many, many,
many more switches.

202
00:09:32,150 --> 00:09:35,160
But all they do is exactly that--
turn something on, turn something off.

203
00:09:35,160 --> 00:09:38,076
And as such, a computer can represent,
with those millions or billions

204
00:09:38,076 --> 00:09:40,480
of transistors, lots and
lots of zeros and ones.

205
00:09:40,480 --> 00:09:43,160
And there's other hardware still that
lets you store information long-term,

206
00:09:43,160 --> 00:09:45,243
so that when you pull the
plug, you don't lose it.

207
00:09:45,243 --> 00:09:46,900
But that's a story for another day.

208
00:09:46,900 --> 00:09:51,170
>> So what can we do with these bits?

209
00:09:51,170 --> 00:09:54,309
Might we just to take
the pressure off of me--

210
00:09:54,309 --> 00:09:56,600
might someone want to come
up here and offer up a demo?

211
00:09:56,600 --> 00:09:57,516
I saw this hand first.

212
00:09:57,516 --> 00:09:58,709
What's your name?

213
00:09:58,709 --> 00:09:59,250
MADAY: Maday.

214
00:09:59,250 --> 00:10:00,542
DAVID MALAN: Maday, come on up.

215
00:10:00,542 --> 00:10:01,250
Nice to meet you.

216
00:10:01,250 --> 00:10:02,390
MADAY: Nice to meet you.

217
00:10:02,390 --> 00:10:02,930
>> DAVID MALAN: Come this way.

218
00:10:02,930 --> 00:10:04,182
I won't have to lip you up.

219
00:10:04,182 --> 00:10:04,682
All right.

220
00:10:04,682 --> 00:10:11,090
So here, we have, notice-- one, two--
we'll edit that out-- one, two, four,

221
00:10:11,090 --> 00:10:13,350
eight, 16, 32, 64, 128.

222
00:10:13,350 --> 00:10:14,220
This is deliberate.

223
00:10:14,220 --> 00:10:17,370
There's eight bits here--
binary digits-- zeros and ones.

224
00:10:17,370 --> 00:10:21,460
And a bit is a useful unit of measure--
not as useful a unit of measure

225
00:10:21,460 --> 00:10:21,999
onto itself.

226
00:10:21,999 --> 00:10:24,290
Usually you want at least
eight of these things, a.k.a.

227
00:10:24,290 --> 00:10:24,790
a byte.

228
00:10:24,790 --> 00:10:26,230
So we have a byte of bits here.

229
00:10:26,230 --> 00:10:31,130
>> So if we wanted to challenge you with,
for instance, spelling out, in binary,

230
00:10:31,130 --> 00:10:33,230
this value here-- 42.

231
00:10:33,230 --> 00:10:35,140
Want to take a stab at that?

232
00:10:35,140 --> 00:10:36,034
>> MADAY: [INAUDIBLE].

233
00:10:36,034 --> 00:10:38,700
DAVID MALAN: Yeah, just push the
little white switches in front.

234
00:10:38,700 --> 00:10:41,290
And you want to spell
out 42, and up for grabs

235
00:10:41,290 --> 00:10:44,061
is this CS50 stress
ball if you get this.

236
00:10:44,061 --> 00:10:44,560
All right.

237
00:10:44,560 --> 00:10:46,420
So you have 32.

238
00:10:46,420 --> 00:10:48,430
We're going to need 42.

239
00:10:48,430 --> 00:10:51,410
So that's an eight, so that's 40.

240
00:10:51,410 --> 00:10:54,160
And excellent-- very nicely done.

241
00:10:54,160 --> 00:10:55,186
Thank you.

242
00:10:55,186 --> 00:10:58,790
>> [APPLAUSE]

243
00:10:58,790 --> 00:10:59,290
All right.

244
00:10:59,290 --> 00:11:00,623
So we have one more stress ball.

245
00:11:00,623 --> 00:11:03,595
Let's do this once more if we may.

246
00:11:03,595 --> 00:11:05,368
One other volunteer?

247
00:11:05,368 --> 00:11:07,970
Free stress ball, free stress ball.

248
00:11:07,970 --> 00:11:08,470
OK.

249
00:11:08,470 --> 00:11:11,640
Over here in the middle,
do you want to come down?

250
00:11:11,640 --> 00:11:14,100
All right.

251
00:11:14,100 --> 00:11:15,552
I know.

252
00:11:15,552 --> 00:11:16,360
There we go.

253
00:11:16,360 --> 00:11:20,818
>> So the numbers here-- come on down.

254
00:11:20,818 --> 00:11:21,567
What is your name?

255
00:11:21,567 --> 00:11:21,984
>> DAVEY: Davey.

256
00:11:21,984 --> 00:11:22,820
>> DAVID MALAN: Davey.

257
00:11:22,820 --> 00:11:23,320
OK.

258
00:11:23,320 --> 00:11:24,810
Come on up, Davey.

259
00:11:24,810 --> 00:11:25,890
Nice to meet you.

260
00:11:25,890 --> 00:11:28,639
And what we're going to have you
spell-- if you could linger there

261
00:11:28,639 --> 00:11:32,810
for just one moment-- is the number 50.

262
00:11:32,810 --> 00:11:36,293
But, but, but but, but, these are
grade school magnets for a reason.

263
00:11:36,293 --> 00:11:39,370

264
00:11:39,370 --> 00:11:43,327
Just got a little harder, all right?

265
00:11:43,327 --> 00:11:44,160
There's still eight.

266
00:11:44,160 --> 00:11:46,820

267
00:11:46,820 --> 00:11:47,320
All right.

268
00:11:47,320 --> 00:11:48,486
So what do we have on there?

269
00:11:48,486 --> 00:11:51,356
We have 32.

270
00:11:51,356 --> 00:11:54,344
Nice.

271
00:11:54,344 --> 00:11:58,610
32 plus 16 gives us 48-- so close.

272
00:11:58,610 --> 00:12:00,390
And wonderful.

273
00:12:00,390 --> 00:12:02,831
Congratulations to Davey as well.

274
00:12:02,831 --> 00:12:05,720
>> [APPLAUSE]

275
00:12:05,720 --> 00:12:06,516
>> All right.

276
00:12:06,516 --> 00:12:09,390
So we can do this all day long, and
it doesn't get all that much more

277
00:12:09,390 --> 00:12:10,800
interesting and more challenging.

278
00:12:10,800 --> 00:12:13,250
But that's really the point--
is how relatively simple

279
00:12:13,250 --> 00:12:16,930
it is, at the end of the day, what a
computer does to store information,

280
00:12:16,930 --> 00:12:21,740
to store inputs and ultimately
store or represent those outputs.

281
00:12:21,740 --> 00:12:23,750
But numbers alone aren't
all that interesting.

282
00:12:23,750 --> 00:12:26,069
>> So humans, some years ago,
decided, you know what?

283
00:12:26,069 --> 00:12:27,860
It would be nice if
computers were not just

284
00:12:27,860 --> 00:12:31,030
calculators for arithmetic
operations, but actually could

285
00:12:31,030 --> 00:12:35,209
do things like word processing, or
email, or more modern incarnations

286
00:12:35,209 --> 00:12:36,500
of these kinds of technologies.

287
00:12:36,500 --> 00:12:40,680
And so the world decided
arbitrarily, but universally,

288
00:12:40,680 --> 00:12:44,380
that if you want to store the capital
letter A in a computer, you know what?

289
00:12:44,380 --> 00:12:47,730
Let's just all agree to store
some pattern of zeros and ones--

290
00:12:47,730 --> 00:12:52,422
bits-- that ultimately
represents the decimal number 65.

291
00:12:52,422 --> 00:12:53,630
We'll just all agree on that.

292
00:12:53,630 --> 00:12:56,620
>> 66 would represent B,
67 would represent C,

293
00:12:56,620 --> 00:13:00,210
and there's bunches of other patterns of
zeros and ones, or underlying numbers,

294
00:13:00,210 --> 00:13:02,224
that would represent
other letters still.

295
00:13:02,224 --> 00:13:04,390
So if you kind of mentally
absorb this for a moment,

296
00:13:04,390 --> 00:13:10,900
I deliberately put up A through
I, where H a 72 and I is 73.

297
00:13:10,900 --> 00:13:15,830
If a computer then, in the context of
a word processing program or an e-mail,

298
00:13:15,830 --> 00:13:19,620
revealed underneath the hood to have
these patterns of bits-- pattern

299
00:13:19,620 --> 00:13:22,500
of bits representing
72, then 73, then 33--

300
00:13:22,500 --> 00:13:26,640
what might this spell in that program?

301
00:13:26,640 --> 00:13:28,150
>> So hi, and then something.

302
00:13:28,150 --> 00:13:31,460
We don't necessarily know, but indeed
33-- not on the chart earlier--

303
00:13:31,460 --> 00:13:33,170
was simply an exclamation point.

304
00:13:33,170 --> 00:13:38,870
So 72 was H, 73 is I, 33 happens
to be an exclamation point still.

305
00:13:38,870 --> 00:13:41,719
But that's all fine and good,
and in fact nowadays, rather than

306
00:13:41,719 --> 00:13:43,760
just use seven or eight
bits, thanks to something

307
00:13:43,760 --> 00:13:46,530
called Unicode as opposed
to Ascii back in the day,

308
00:13:46,530 --> 00:13:50,010
we actually can represent even more
interesting characters than just

309
00:13:50,010 --> 00:13:52,980
these original English biased letters.

310
00:13:52,980 --> 00:13:56,030
But we can also represent even
neater things like colors.

311
00:13:56,030 --> 00:13:59,750
>> If you've ever heard the acronym
RGB, red, green, blue, that

312
00:13:59,750 --> 00:14:03,510
just means that a computer
typically uses three sets of bits--

313
00:14:03,510 --> 00:14:06,760
some number of bits that represent
a number for how much red you want,

314
00:14:06,760 --> 00:14:08,940
another set of bits for
how much green you want,

315
00:14:08,940 --> 00:14:11,430
and another set number for
how much blue you want.

316
00:14:11,430 --> 00:14:14,457
So a big number means lots of
red, small number means no red.

317
00:14:14,457 --> 00:14:16,290
And so these are kind
of middle values here.

318
00:14:16,290 --> 00:14:20,180
>> So give me some red, give me some
green, and give me a little bit of blue.

319
00:14:20,180 --> 00:14:24,260
And if you mix those three shades
of color together, in this case,

320
00:14:24,260 --> 00:14:26,850
you get this murky shade
of yellow or brown.

321
00:14:26,850 --> 00:14:32,330
But that pattern of eight plus
eight plus eight-- so 24 bits--

322
00:14:32,330 --> 00:14:36,550
left to right, is how a computer
would represent that particular color.

323
00:14:36,550 --> 00:14:38,090
Now this is just a dot on a screen.

324
00:14:38,090 --> 00:14:42,230
If you look really close at your TV your
computer, you'll see dots or pixels.

325
00:14:42,230 --> 00:14:45,420
And if you have a whole grid of
pixels, horizontally and vertically,

326
00:14:45,420 --> 00:14:46,630
you have images.

327
00:14:46,630 --> 00:14:49,029
And then if you take
an image and then wash

328
00:14:49,029 --> 00:14:52,070
show yourself another image, another
image, another image, another image,

329
00:14:52,070 --> 00:14:54,760
really fast, you of course have movies.

330
00:14:54,760 --> 00:14:56,109
>> And so notice where we started.

331
00:14:56,109 --> 00:14:57,650
We started with these zeros and ones.

332
00:14:57,650 --> 00:15:00,570
We worked from there to decimal
numbers, how we represent them.

333
00:15:00,570 --> 00:15:02,070
Now we have letters of the alphabet.

334
00:15:02,070 --> 00:15:05,664
But in other contexts wait, we can use
a few more bits and represent colors.

335
00:15:05,664 --> 00:15:07,830
As soon as you have the
ability to represent colors,

336
00:15:07,830 --> 00:15:11,200
you have the ability to represent
photographs and animated gifs

337
00:15:11,200 --> 00:15:13,780
and other such characters on the screen.

338
00:15:13,780 --> 00:15:17,160
And when you have a whole bunch of
images flying by the human at once,

339
00:15:17,160 --> 00:15:21,480
it looks like motion pictures,
and so you get videos as well.

340
00:15:21,480 --> 00:15:23,460
>> So using these very
simple primitives do we

341
00:15:23,460 --> 00:15:28,070
have the way of representing
ultimately all of these forms of media.

342
00:15:28,070 --> 00:15:30,450
And we've abstracted again
and again and again, until we

343
00:15:30,450 --> 00:15:33,467
get from the lowest level
to this highest level.

344
00:15:33,467 --> 00:15:35,550
So that gives us this
general idea of abstraction.

345
00:15:35,550 --> 00:15:36,990
But we started here.

346
00:15:36,990 --> 00:15:38,790
>> Here now, we might
represent in a computer

347
00:15:38,790 --> 00:15:41,920
our inputs with zeros and ones,
our outputs in zeros and ones,

348
00:15:41,920 --> 00:15:43,640
but what goes inside the box?

349
00:15:43,640 --> 00:15:46,080
That's where computer
science gets interesting.

350
00:15:46,080 --> 00:15:49,770
That's where you actually bring your
own minds to bear to solve problems.

351
00:15:49,770 --> 00:15:52,590
We can now stipulate, for the
rest of the semester, yes.

352
00:15:52,590 --> 00:15:53,870
I know how binary works.

353
00:15:53,870 --> 00:15:57,942
I remember how Ascii or Unicode--
the mapping to letters-- works.

354
00:15:57,942 --> 00:15:59,650
And it certainly stands
to reason that we

355
00:15:59,650 --> 00:16:03,470
could represent red and green and
blue, and represent multimedia as well.

356
00:16:03,470 --> 00:16:05,390
But this is the interesting stuff.

357
00:16:05,390 --> 00:16:09,790
This is what makes someone
capable of solving problems.

358
00:16:09,790 --> 00:16:11,980
>> And one such problem
we like to do, indeed,

359
00:16:11,980 --> 00:16:15,345
is taking attendance, or
doing this algorithmically.

360
00:16:15,345 --> 00:16:16,470
And again, I might do this.

361
00:16:16,470 --> 00:16:19,580
I might do one, two, three, four
five, six, seven, eight nine.

362
00:16:19,580 --> 00:16:21,520
And I could write it
down to keep track of it.

363
00:16:21,520 --> 00:16:23,769
But that's just how I would
represent the information.

364
00:16:23,769 --> 00:16:27,550
Or I could do this faster-- two, four,
six, eight, ten, 12, 14, 16, 18, 20,

365
00:16:27,550 --> 00:16:30,380
22-- it feels like twice
as fast but it's still

366
00:16:30,380 --> 00:16:32,050
going to take a whole lot of time.

367
00:16:32,050 --> 00:16:35,990
>> But it turns out, if we leverage yet
another resource-- and indeed computers

368
00:16:35,990 --> 00:16:38,940
these days have multiple CPUs or brains.

369
00:16:38,940 --> 00:16:41,970
It turns out computers can
do lots of things at once,

370
00:16:41,970 --> 00:16:44,460
and indeed we, in this room,
might represent exactly this.

371
00:16:44,460 --> 00:16:47,130
>> So it's a little socially
awkward, but if you would humor me

372
00:16:47,130 --> 00:16:51,550
for just a three-step process, let
me ask everyone in place there just

373
00:16:51,550 --> 00:16:54,640
to stand up for a moment.

374
00:16:54,640 --> 00:16:57,380
Stand up.

375
00:16:57,380 --> 00:17:01,580
So think to yourself, number
one-- so everyone in this room,

376
00:17:01,580 --> 00:17:05,010
except the people who didn't
oblige, are thinking number one.

377
00:17:05,010 --> 00:17:06,510
So that is your number right now.

378
00:17:06,510 --> 00:17:09,399
That is the first step, or as a
computer scientist or a programmer

379
00:17:09,399 --> 00:17:11,827
would typically do, we're going
to start counting at zero.

380
00:17:11,827 --> 00:17:14,410
If the smallest number we can
represent with those light bulbs

381
00:17:14,410 --> 00:17:17,410
is zero, by just leaving them
all off, I might as well just

382
00:17:17,410 --> 00:17:19,271
start counting from
zero is instead of one.

383
00:17:19,271 --> 00:17:21,020
And so that's what
computer scientists do.

384
00:17:21,020 --> 00:17:23,750
So step zero, stand up and
think of the number one.

385
00:17:23,750 --> 00:17:26,339
The next step is this-- pair
off with someone standing

386
00:17:26,339 --> 00:17:27,660
and add your numbers together.

387
00:17:27,660 --> 00:17:30,660

388
00:17:30,660 --> 00:17:32,850
Wonderful.

389
00:17:32,850 --> 00:17:37,640
>> So at this moment in time,
literally everyone participating

390
00:17:37,640 --> 00:17:41,930
is thinking of the number 2, except
for one odd person if we have

391
00:17:41,930 --> 00:17:43,450
an odd number of people in the room.

392
00:17:43,450 --> 00:17:50,640
And now the third step here is going to
be this-- one of you should sit down.

393
00:17:50,640 --> 00:17:54,490
One of you should sit down,
and if you're still standing,

394
00:17:54,490 --> 00:17:56,590
go back to step one.

395
00:17:56,590 --> 00:18:44,799

396
00:18:44,799 --> 00:18:45,790
All right.

397
00:18:45,790 --> 00:19:00,760

398
00:19:00,760 --> 00:19:01,650
All right.

399
00:19:01,650 --> 00:19:03,880
So more and more people
should be sitting down.

400
00:19:03,880 --> 00:19:08,280
Notice that this has induced
a loop-- some kind of cycle.

401
00:19:08,280 --> 00:19:11,983
Some of you should be awkwardly stuck,
going back and forth between step one

402
00:19:11,983 --> 00:19:14,180
and two, one and two, one and two.

403
00:19:14,180 --> 00:19:21,190

404
00:19:21,190 --> 00:19:21,810
That's OK.

405
00:19:21,810 --> 00:19:22,630
Our first bug.

406
00:19:22,630 --> 00:19:24,740
We'll deal with that.

407
00:19:24,740 --> 00:19:25,320
All right.

408
00:19:25,320 --> 00:19:27,370
Let me try to spur things along.

409
00:19:27,370 --> 00:19:31,454
>> In theory, only one person is standing
as everyone continues to pair off.

410
00:19:31,454 --> 00:19:33,870
But let me speed things up
with the people still standing.

411
00:19:33,870 --> 00:19:35,480
What number are you thinking of?

412
00:19:35,480 --> 00:19:36,070
46.

413
00:19:36,070 --> 00:19:36,570
OK.

414
00:19:36,570 --> 00:19:37,820
Go ahead and sit down.

415
00:19:37,820 --> 00:19:39,190
You guys are still standing.

416
00:19:39,190 --> 00:19:42,130
Who's still standing?

417
00:19:42,130 --> 00:19:45,240
What number are you thinking of?

418
00:19:45,240 --> 00:19:46,160
OK.

419
00:19:46,160 --> 00:19:47,900
>> So we'll come back to you.

420
00:19:47,900 --> 00:19:49,630
In the back?

421
00:19:49,630 --> 00:19:50,790
What is that?

422
00:19:50,790 --> 00:19:53,100
22.

423
00:19:53,100 --> 00:19:56,540
OK someone else up top-- yeah?

424
00:19:56,540 --> 00:19:57,720
34.

425
00:19:57,720 --> 00:19:58,300
OK.

426
00:19:58,300 --> 00:20:02,780
Over here on my right-- up here?

427
00:20:02,780 --> 00:20:06,820
132, very nice.

428
00:20:06,820 --> 00:20:08,380
22?

429
00:20:08,380 --> 00:20:08,990
>> OK.

430
00:20:08,990 --> 00:20:10,031
And who's still standing?

431
00:20:10,031 --> 00:20:11,000
Over here?

432
00:20:11,000 --> 00:20:14,520
46, very nice.

433
00:20:14,520 --> 00:20:16,890
72.

434
00:20:16,890 --> 00:20:18,220
I can't stall much longer.

435
00:20:18,220 --> 00:20:20,520
Yeah?

436
00:20:20,520 --> 00:20:22,490
30, nice.

437
00:20:22,490 --> 00:20:24,120
Over here?

438
00:20:24,120 --> 00:20:26,200
23?

439
00:20:26,200 --> 00:20:27,270
23.

440
00:20:27,270 --> 00:20:30,920
>> And I think that's everyone
except you guys, no pressure.

441
00:20:30,920 --> 00:20:32,860
Oh, wait.

442
00:20:32,860 --> 00:20:33,360
28?

443
00:20:33,360 --> 00:20:37,500

444
00:20:37,500 --> 00:20:38,281
Just eight.

445
00:20:38,281 --> 00:20:38,780
OK.

446
00:20:38,780 --> 00:20:41,030
Just eight.

447
00:20:41,030 --> 00:20:42,580
Down here?

448
00:20:42,580 --> 00:20:44,570
30.

449
00:20:44,570 --> 00:20:47,344
23.

450
00:20:47,344 --> 00:20:47,843
24.

451
00:20:47,843 --> 00:20:50,810

452
00:20:50,810 --> 00:20:52,310
18.

453
00:20:52,310 --> 00:20:54,690
This is the worst implementation
of this algorithm ever.

454
00:20:54,690 --> 00:20:55,190
OK.

455
00:20:55,190 --> 00:20:59,760
So anyone else?

456
00:20:59,760 --> 00:21:00,421
Anyone else?

457
00:21:00,421 --> 00:21:00,920
OK.

458
00:21:00,920 --> 00:21:03,300
One more.

459
00:21:03,300 --> 00:21:04,400
16?

460
00:21:04,400 --> 00:21:04,900
OK.

461
00:21:04,900 --> 00:21:05,510
16.

462
00:21:05,510 --> 00:21:06,010
All right.

463
00:21:06,010 --> 00:21:09,070
So if I haven't missed anyone in
the glare here, when I hit Enter,

464
00:21:09,070 --> 00:21:13,091
we will see, algorithmically, the
total number of people in Sanders.

465
00:21:13,091 --> 00:21:16,340
Because again, it's as though everyone
as you sat down, passed your number off

466
00:21:16,340 --> 00:21:19,215
to someone else, to someone else,
to someone else, so that in theory,

467
00:21:19,215 --> 00:21:22,304
in the end, only one awkward
person should be left standing.

468
00:21:22,304 --> 00:21:22,970
But that's fine.

469
00:21:22,970 --> 00:21:24,290
We sped things up manually.

470
00:21:24,290 --> 00:21:27,590
It's especially hard to see
in this particular space.

471
00:21:27,590 --> 00:21:34,200
>> And the total number of people
we think there are here is 546.

472
00:21:34,200 --> 00:21:37,330
The total number I was handed
by the teaching fellows,

473
00:21:37,330 --> 00:21:40,660
who did it the old
school slow way, was 820.

474
00:21:40,660 --> 00:21:43,660
>> [LAUGHING]

475
00:21:43,660 --> 00:21:47,170
>> [APPLAUSE]

476
00:21:47,170 --> 00:21:48,670
>> That's OK.

477
00:21:48,670 --> 00:21:50,740
So surely then, there are these bugs.

478
00:21:50,740 --> 00:21:51,460
And that's fine.

479
00:21:51,460 --> 00:21:53,810
And so think back on this
the first time something

480
00:21:53,810 --> 00:21:55,420
you write doesn't necessarily work.

481
00:21:55,420 --> 00:21:57,620
This has happened to me here as well.

482
00:21:57,620 --> 00:22:00,844
But let's now consider how we might
apply this same idea to something

483
00:22:00,844 --> 00:22:03,760
you might have seen before, which
is this old school technology here--

484
00:22:03,760 --> 00:22:05,130
a really big phone book.

485
00:22:05,130 --> 00:22:09,380
And suppose that this phone book
has 1,000 pages and 1,000 names

486
00:22:09,380 --> 00:22:11,360
and numbers alphabetically inside of it.

487
00:22:11,360 --> 00:22:14,860
>> Well, we could kind of apply a similar
idea to this very physical problem,

488
00:22:14,860 --> 00:22:16,270
just using me.

489
00:22:16,270 --> 00:22:18,810
I just kind of cheated
by leveraging all of you

490
00:22:18,810 --> 00:22:23,240
with lots and lots of different CPUs
or brains executing some algorithm.

491
00:22:23,240 --> 00:22:25,440
But if it's just little
old me, I can still

492
00:22:25,440 --> 00:22:29,630
leverage that same essence of an idea
of dividing and conquering that problem

493
00:22:29,630 --> 00:22:32,970
again and again, whereby half of you,
half of you, half of you, half of you,

494
00:22:32,970 --> 00:22:35,830
theoretically kept sitting down,
until we were left, theoretically,

495
00:22:35,830 --> 00:22:36,990
with just one person.

496
00:22:36,990 --> 00:22:39,810
>> So in this old school
technology-- we don't

497
00:22:39,810 --> 00:22:43,030
need this map-- this
old school technology,

498
00:22:43,030 --> 00:22:47,300
we might start looking for someone
like Mike Smith, one page at a time.

499
00:22:47,300 --> 00:22:49,410
And I see that no, Mike is not here.

500
00:22:49,410 --> 00:22:51,110
I'm still in the A section.

501
00:22:51,110 --> 00:22:53,900
Eventually, I find
myself in the B section.

502
00:22:53,900 --> 00:22:56,910
And this is an algorithm--
step-by-step instruction.

503
00:22:56,910 --> 00:22:59,890
Start at the beginning and one page
at a time, look for Mike Smith.

504
00:22:59,890 --> 00:23:03,410
Is this correct-- this
algorithm or approach?

505
00:23:03,410 --> 00:23:04,550
>> Yeah, it's correct.

506
00:23:04,550 --> 00:23:06,840
If Mike's here, eventually
I'll get to him.

507
00:23:06,840 --> 00:23:08,139
But it's not efficient.

508
00:23:08,139 --> 00:23:09,180
It's obviously very slow.

509
00:23:09,180 --> 00:23:11,340
So I can leverage the
same twosies approach.

510
00:23:11,340 --> 00:23:15,350
I can do sort of two,
four, six, eight, 10, 12.

511
00:23:15,350 --> 00:23:16,330
It's twice as fast.

512
00:23:16,330 --> 00:23:18,290
I'm going to get to Mike
faster if he's there.

513
00:23:18,290 --> 00:23:20,770
Is it correct?

514
00:23:20,770 --> 00:23:22,320
Yes, but I heard a little-- no.

515
00:23:22,320 --> 00:23:24,200
Now I heard a no.

516
00:23:24,200 --> 00:23:24,700
Yeah.

517
00:23:24,700 --> 00:23:26,190
There's a bug potentially.

518
00:23:26,190 --> 00:23:29,374
Maybe Mike just accidentally gets
sandwiched between two pages,

519
00:23:29,374 --> 00:23:31,290
because I'm flying through
this two at a time.

520
00:23:31,290 --> 00:23:33,580
So at least we need some
kind of conditional fix.

521
00:23:33,580 --> 00:23:35,330
I need to say, hey,
if I hit someone whose

522
00:23:35,330 --> 00:23:39,190
name starts with a T instead of an S,
I better double back at least one page.

523
00:23:39,190 --> 00:23:40,767
So buggy at first, but fixable.

524
00:23:40,767 --> 00:23:43,850
But none of us are going to look for
Mike Smith through a 1,000 page phone

525
00:23:43,850 --> 00:23:45,290
book one page at a time.

526
00:23:45,290 --> 00:23:48,486
What's a normal person going to do?

527
00:23:48,486 --> 00:23:50,860
You're going to go to the S's,
if you knew where the S's.

528
00:23:50,860 --> 00:23:54,230
You might go roughly to the middle
or slightly skewed towards the end.

529
00:23:54,230 --> 00:23:56,850
And I look down here and
I'm in the M section.

530
00:23:56,850 --> 00:23:58,952
But what do you know
about this problem now,

531
00:23:58,952 --> 00:24:02,160
that we didn't necessarily know before
with all of us just counting ourselves

532
00:24:02,160 --> 00:24:03,030
equivalently?

533
00:24:03,030 --> 00:24:06,010
Well, Mike is clearly going
to be in this half of the book

534
00:24:06,010 --> 00:24:07,920
if he's here at all because it's sorted.

535
00:24:07,920 --> 00:24:10,160
>> And so you can very dramatically--

536
00:24:10,160 --> 00:24:11,250
>> [GASPING]

537
00:24:11,250 --> 00:24:12,300
>> I know.

538
00:24:12,300 --> 00:24:16,940
>> [APPLAUSE]

539
00:24:16,940 --> 00:24:19,450
>> It's actually really easy if
you do it down the spine there.

540
00:24:19,450 --> 00:24:22,070
But you can then throw
half of the problem away.

541
00:24:22,070 --> 00:24:25,950
Now, I'm left with the same problem--
find Mike Smith in a phone book--

542
00:24:25,950 --> 00:24:29,610
but now the phone book starts at M
and goes to Z, but it's half as big.

543
00:24:29,610 --> 00:24:30,890
>> But this is what's impressive.

544
00:24:30,890 --> 00:24:34,170
Just like in theory, you guys, when
you all sat down only half at a time,

545
00:24:34,170 --> 00:24:37,150
the problem got half as big,
half as big, again and again.

546
00:24:37,150 --> 00:24:40,260
So has this problem become the
same problem but half as big.

547
00:24:40,260 --> 00:24:42,670
Now it's a 250 page problem.

548
00:24:42,670 --> 00:24:45,340
As soon as I realize, oh, I'm
in the T section accidentally.

549
00:24:45,340 --> 00:24:46,590
I've gone too far.

550
00:24:46,590 --> 00:24:48,500
I can throw that half
of the phone book away.

551
00:24:48,500 --> 00:24:50,410
Now, I'm down to a
quarter of the problem.

552
00:24:50,410 --> 00:24:53,910
>> And you can repeat, repeat,
repeat until, in theory, you're

553
00:24:53,910 --> 00:24:55,460
left with just one page.

554
00:24:55,460 --> 00:24:59,010
And if Mike is on that page,
I can now solve this problem.

555
00:24:59,010 --> 00:25:00,810
But how quickly did I solve it?

556
00:25:00,810 --> 00:25:05,420
In the first case, it took me like
maybe 1,000 steps to find Mike Smith.

557
00:25:05,420 --> 00:25:09,260
It might have taken me--
I picked up the phone book

558
00:25:09,260 --> 00:25:11,440
and I started looking
one page at a time,

559
00:25:11,440 --> 00:25:13,480
and Mike might be 1,000 pages later.

560
00:25:13,480 --> 00:25:16,020
>> Second approach maybe
takes me 500 steps,

561
00:25:16,020 --> 00:25:17,960
because I'm flying
through two at a time.

562
00:25:17,960 --> 00:25:21,082
And the third approach though,
it's especially powerful.

563
00:25:21,082 --> 00:25:23,790
But let's consider what we actually
did with this third approach.

564
00:25:23,790 --> 00:25:27,590
I'll have what I'll call just these
statements here, one at a time.

565
00:25:27,590 --> 00:25:28,560
Pick up a phone book.

566
00:25:28,560 --> 00:25:30,130
Open to the middle of the phone book.

567
00:25:30,130 --> 00:25:31,419
Look at names.

568
00:25:31,419 --> 00:25:33,960
And then things get a little
more intellectually interesting,

569
00:25:33,960 --> 00:25:35,170
if still simple.

570
00:25:35,170 --> 00:25:38,350
If Smith is among the
names on that current page,

571
00:25:38,350 --> 00:25:40,170
then do something conditionally.

572
00:25:40,170 --> 00:25:41,840
It's like a fork in the road.

573
00:25:41,840 --> 00:25:42,660
Call Mike.

574
00:25:42,660 --> 00:25:44,930
If Mike is among the names
on that page, called Mike.

575
00:25:44,930 --> 00:25:49,720
But only do line four if line
tree, if you will, is true.

576
00:25:49,720 --> 00:25:51,590
The answer to that question is yes.

577
00:25:51,590 --> 00:25:55,520
>> Else if Smith is earlier in the book--
in other words, if I'm in the M section

578
00:25:55,520 --> 00:25:58,540
and I'm looking for someone to
the left, then what I should do

579
00:25:58,540 --> 00:26:00,300
is something very similar.

580
00:26:00,300 --> 00:26:03,440
Then I should open to the middle
of the left half of the book.

581
00:26:03,440 --> 00:26:07,930
So go left, and then
go back to step two.

582
00:26:07,930 --> 00:26:09,290
Look at the names there.

583
00:26:09,290 --> 00:26:12,779
>> So in other words, do the same thing,
but on a problem that's been halved.

584
00:26:12,779 --> 00:26:13,570
You know what else?

585
00:26:13,570 --> 00:26:16,470
If Smith is later in the book
based on the page I'm looking at,

586
00:26:16,470 --> 00:26:18,790
open to the middle of the
right half of the book

587
00:26:18,790 --> 00:26:22,050
and then go back again
to step two, else--

588
00:26:22,050 --> 00:26:24,000
there's a fourth possibility here.

589
00:26:24,000 --> 00:26:28,830
Mike's either here or to the left
or to the right or not there.

590
00:26:28,830 --> 00:26:30,570
And here we better consider this.

591
00:26:30,570 --> 00:26:33,360
And in fact, if you've ever had
your computer just crash on you,

592
00:26:33,360 --> 00:26:36,822
that is sometimes, but not always, the
result of just a human programmer not

593
00:26:36,822 --> 00:26:39,280
realizing, oh shoot, there's
actually this fourth scenario.

594
00:26:39,280 --> 00:26:41,650
And if you don't write code
to handle that scenario,

595
00:26:41,650 --> 00:26:43,220
sometimes you don't know
what the computer might do.

596
00:26:43,220 --> 00:26:44,770
And indeed a program might crash.

597
00:26:44,770 --> 00:26:47,550
>> But in this case, I thought
about it, and I said, else quit,

598
00:26:47,550 --> 00:26:49,850
because that's the fourth
logical possible scenario.

599
00:26:49,850 --> 00:26:51,950
Now, let's just add
some vocabulary so we

600
00:26:51,950 --> 00:26:55,320
can start to toss around terms that
are otherwise pretty intuitive.

601
00:26:55,320 --> 00:26:57,870
All of the things I've just
highlighted in yellow here,

602
00:26:57,870 --> 00:27:00,140
I'm just going to the
functions or procedures.

603
00:27:00,140 --> 00:27:01,590
They're just kind of actions.

604
00:27:01,590 --> 00:27:04,900
So pick up, open to, look
at, call, open, open,

605
00:27:04,900 --> 00:27:09,170
quit-- these are just actions, or we'll
call them more formally, functions.

606
00:27:09,170 --> 00:27:11,410
>> Meanwhile, now in yellow,
I've highlighted things

607
00:27:11,410 --> 00:27:14,084
that-- let's just start calling
them conditions or branches.

608
00:27:14,084 --> 00:27:16,750
These are decision points where
you might go this way, this way,

609
00:27:16,750 --> 00:27:18,100
or some other direction still.

610
00:27:18,100 --> 00:27:19,430
So those will be conditions.

611
00:27:19,430 --> 00:27:20,930
And now this one's a little fancier.

612
00:27:20,930 --> 00:27:24,600
Let's call these questions
Boolean expressions,

613
00:27:24,600 --> 00:27:26,530
after someone with a last name Bool.

614
00:27:26,530 --> 00:27:28,340
>> And a Boolean expression
is just something

615
00:27:28,340 --> 00:27:30,290
that's either true or false, yes or no.

616
00:27:30,290 --> 00:27:35,870
So it's the question whose answer you
care about, so as to in a condition

617
00:27:35,870 --> 00:27:39,210
make a decision-- get back an answer,
and then go left or right, or something

618
00:27:39,210 --> 00:27:40,450
else altogether.

619
00:27:40,450 --> 00:27:42,860
>> And then lastly, these
lines here-- go back

620
00:27:42,860 --> 00:27:44,737
to step two, go back
to step two-- we could

621
00:27:44,737 --> 00:27:46,320
implement this idea in different ways.

622
00:27:46,320 --> 00:27:49,028
And then those of you with
programming experience might have done

623
00:27:49,028 --> 00:27:50,670
or can imagine doing this differently.

624
00:27:50,670 --> 00:27:53,170
But for today's purposes, it's
just the idea that matters.

625
00:27:53,170 --> 00:27:55,400
This is inducing what
we'll generally call

626
00:27:55,400 --> 00:28:00,110
a loop-- some kind of cycle, because
it's making me do something again.

627
00:28:00,110 --> 00:28:03,340
>> So now, let's just consider
how good this algorithm is.

628
00:28:03,340 --> 00:28:03,899
It's correct.

629
00:28:03,899 --> 00:28:06,940
If Mike's in the book, it's one of
those four scenarios-- again and again

630
00:28:06,940 --> 00:28:08,023
and again, we'll find him.

631
00:28:08,023 --> 00:28:08,890
But how good is it?

632
00:28:08,890 --> 00:28:10,150
Well, we don't have
to be too formal here.

633
00:28:10,150 --> 00:28:12,066
But let's just plot
something, x and y, to get

634
00:28:12,066 --> 00:28:14,470
a sense of the shape of this problem.

635
00:28:14,470 --> 00:28:17,160
>> On the x-axis here is
the size of my problem.

636
00:28:17,160 --> 00:28:20,256
And they a y-axis here
will be the time to solve.

637
00:28:20,256 --> 00:28:21,630
So maybe this is number of pages.

638
00:28:21,630 --> 00:28:24,400
Maybe this is seconds or
page turns-- whatever.

639
00:28:24,400 --> 00:28:27,290
However you want to count is
what this picture will represent.

640
00:28:27,290 --> 00:28:30,630
And that first algorithm, I'm going
to describe as just a straight line.

641
00:28:30,630 --> 00:28:33,120
If there's n pages in
the phone book, then it

642
00:28:33,120 --> 00:28:36,010
might take me as many
as n steps to find Mike.

643
00:28:36,010 --> 00:28:38,930
If Verizon or the phone company
adds one more page next year,

644
00:28:38,930 --> 00:28:42,170
it might take me one more step--
one more unit of time to find Mike.

645
00:28:42,170 --> 00:28:44,230
So there's just this one to one ratio.

646
00:28:44,230 --> 00:28:45,970
It's a straight line slope.

647
00:28:45,970 --> 00:28:49,110
>> Meanwhile, that second
algorithm-- if I'm

648
00:28:49,110 --> 00:28:51,570
going two at a time-- two,
four, six, eight, or double--

649
00:28:51,570 --> 00:28:54,550
going through the pages twice
at a time, two at a time,

650
00:28:54,550 --> 00:28:55,710
it's still straight line.

651
00:28:55,710 --> 00:28:58,720
There's now a one to two
ratio, but just a little lower.

652
00:28:58,720 --> 00:29:02,240
So if there's this many pages
on the chart here in yellow,

653
00:29:02,240 --> 00:29:04,800
that might take me this
many steps or seconds,

654
00:29:04,800 --> 00:29:07,980
otherwise it's going to take me
twice as many on the red line.

655
00:29:07,980 --> 00:29:10,190
>> But the green line is the real takeaway.

656
00:29:10,190 --> 00:29:12,290
This is what we generally
call a logorithm-- log

657
00:29:12,290 --> 00:29:13,840
of n, where n is the number of pages.

658
00:29:13,840 --> 00:29:16,450
But it's the shape that matters
today, because we don't have

659
00:29:16,450 --> 00:29:17,950
to even think about plotting points.

660
00:29:17,950 --> 00:29:19,830
>> Think about an extreme scenario.

661
00:29:19,830 --> 00:29:23,070
Suppose Verizon tomorrow doubles the
number of pages in that phone book,

662
00:29:23,070 --> 00:29:24,900
from 1,000 to 2,000.

663
00:29:24,900 --> 00:29:28,440
In the first algorithm, I
might waste an extra 1,000

664
00:29:28,440 --> 00:29:32,080
steps looking for Mike, just because
Verizon doubled the size of the book.

665
00:29:32,080 --> 00:29:34,740
The second algorithm-- it might
take me an extra 500 steps.

666
00:29:34,740 --> 00:29:38,370
1,000 more pages, I go two at a
time-- 500 more steps to find Mike.

667
00:29:38,370 --> 00:29:41,020
>> But that third algorithm
is kind of magical.

668
00:29:41,020 --> 00:29:44,270
Verizon doubles the number
of pages from 1,000 to 2,000,

669
00:29:44,270 --> 00:29:47,730
but how many more steps does
it take me to look for Mike?

670
00:29:47,730 --> 00:29:51,220
It's just one, because I can just
tear the phone book one more time

671
00:29:51,220 --> 00:29:55,280
from a 2,000 page problem to a
1,000 page problem, and voila.

672
00:29:55,280 --> 00:29:57,030
I've taken a massive bite out of it.

673
00:29:57,030 --> 00:29:59,405
>> And if you go really extreme,
suppose that the phone book

674
00:29:59,405 --> 00:30:03,600
company had something crazy like
a 4 billion page phone book.

675
00:30:03,600 --> 00:30:07,020
Well how many steps might it take
to find Mike Smith in a 4 billion

676
00:30:07,020 --> 00:30:09,990
page phone book?

677
00:30:09,990 --> 00:30:16,450
It's a big number, but just 4 billion to
2 billion to 1 billion to 500 million,

678
00:30:16,450 --> 00:30:18,720
250 million-- still
sounds like big numbers,

679
00:30:18,720 --> 00:30:20,980
but I'm very quickly
getting to smaller values.

680
00:30:20,980 --> 00:30:24,790
>> And in fact, if I do the math
right, I can only divide 4 billion

681
00:30:24,790 --> 00:30:28,750
by roughly 32 times before
I get down to just one.

682
00:30:28,750 --> 00:30:31,640
So if that phone book were 4
billion pages long, no big deal.

683
00:30:31,640 --> 00:30:35,270
Within a few seconds, maybe 32
seconds, I could divide it in half

684
00:30:35,270 --> 00:30:39,560
and eventually find Mike or
conclude that he's not there.

685
00:30:39,560 --> 00:30:42,219
And that's the essence of an
algorithm-- a good algorithm.

686
00:30:42,219 --> 00:30:44,260
And that's one of the
goals of a class like this,

687
00:30:44,260 --> 00:30:47,350
is trying to figure out how do I
solve the problem not just correctly,

688
00:30:47,350 --> 00:30:52,360
like I always knew how to do it one
page at a time-- but correctly and well.

689
00:30:52,360 --> 00:30:55,034
How do I design good
solutions to problems?

690
00:30:55,034 --> 00:30:57,200
So let's take a moment here
and give you a sense now

691
00:30:57,200 --> 00:31:00,260
of CS50 the course itself-- introduce
a few course's staff members.

692
00:31:00,260 --> 00:31:02,010
Just before 2:00, we'll
take a short break

693
00:31:02,010 --> 00:31:03,520
so that those of you
who are shopping can

694
00:31:03,520 --> 00:31:05,130
duck out and take a
look at some other class

695
00:31:05,130 --> 00:31:06,580
and watch the rest of this online.

696
00:31:06,580 --> 00:31:09,250
But for now, let me introduce
CS50, the class itself,

697
00:31:09,250 --> 00:31:11,330
and particularly what is new.

698
00:31:11,330 --> 00:31:13,960
>> So the past spring, we
spent quite a bit of time--

699
00:31:13,960 --> 00:31:17,911
the course's staff and I-- thinking
about what it is we want CS50 to be,

700
00:31:17,911 --> 00:31:19,910
and going back to first
principles, so to speak,

701
00:31:19,910 --> 00:31:22,760
to consider what it is we want
this course to look like and be

702
00:31:22,760 --> 00:31:23,740
like for its students.

703
00:31:23,740 --> 00:31:26,480
And so you'll see in problem
set zero as well, an invitation

704
00:31:26,480 --> 00:31:28,780
to take a look at that
URL which summarizes

705
00:31:28,780 --> 00:31:33,270
some of the motivations behind the
following characteristics of fall 2016.

706
00:31:33,270 --> 00:31:35,570
>> So as you may have gleaned
from the TL:DR handout,

707
00:31:35,570 --> 00:31:39,060
the syllabus today as well as from
the course catalog, this year in CS50,

708
00:31:39,060 --> 00:31:42,540
you're only expected to attend
today-- so job well done--

709
00:31:42,540 --> 00:31:45,960
and the last lecture on November 21st.

710
00:31:45,960 --> 00:31:49,150
And you're welcome but not expected to
attend those lectures in the middle,

711
00:31:49,150 --> 00:31:51,180
because what we're doing
this year, is shooting

712
00:31:51,180 --> 00:31:52,661
in real-time the course's material.

713
00:31:52,661 --> 00:31:54,660
So everything will stay
current and incorporated

714
00:31:54,660 --> 00:31:57,410
as best we can-- current events
and conversations that folks might

715
00:31:57,410 --> 00:32:00,400
be having in industry in the
world, but making that material

716
00:32:00,400 --> 00:32:03,892
available, as a result, even earlier--
complete with full text transcripts

717
00:32:03,892 --> 00:32:05,850
and searchability and
links to other resources.

718
00:32:05,850 --> 00:32:07,930
>> And indeed, we've been
claiming for some time

719
00:32:07,930 --> 00:32:10,830
and we do now believe this,
that we can create, digitally,

720
00:32:10,830 --> 00:32:15,170
a more immersive, a more compelling
educational experience, as opposed

721
00:32:15,170 --> 00:32:19,110
to gathering here some 23 times
in person, hearing someone like me

722
00:32:19,110 --> 00:32:22,925
simply talk about computer science,
as opposed to engaging more actively.

723
00:32:22,925 --> 00:32:25,800
So you'll see in the course's syllabus
a sketch of the semester here,

724
00:32:25,800 --> 00:32:27,840
along with when lectures will
be filmed, to which you're

725
00:32:27,840 --> 00:32:29,710
welcome but not expected,
and when they will

726
00:32:29,710 --> 00:32:31,640
be released on the course's website.

727
00:32:31,640 --> 00:32:34,300
>> And what we'll do here on
Wednesdays starting next week,

728
00:32:34,300 --> 00:32:37,362
is a lot more intimately, with only
those folks who want to participate,

729
00:32:37,362 --> 00:32:39,820
is a so-called walk through,
where I and the course's heads

730
00:32:39,820 --> 00:32:41,730
will actually make things
a little more intimate

731
00:32:41,730 --> 00:32:44,313
down here in the orchestra
section, still have some technology

732
00:32:44,313 --> 00:32:46,365
and walk through the
current week's problem set,

733
00:32:46,365 --> 00:32:50,020
and offer you particularly-- if among
those less comfortable-- all the more

734
00:32:50,020 --> 00:32:52,790
guidance that you might want or
need for the week's challenge.

735
00:32:52,790 --> 00:32:55,820
And similarly, for those who can't
attend those in person, no big deal.

736
00:32:55,820 --> 00:32:58,486
There will be similarly led by
one of the course's senior staff,

737
00:32:58,486 --> 00:33:02,650
Zamalya, the same opportunity embedded
in the problem sets themselves.

738
00:33:02,650 --> 00:33:04,960
>> Problem sets this year
will be released on Fridays

739
00:33:04,960 --> 00:33:08,080
and no longer do seven days later,
but 10 days later-- deliberately

740
00:33:08,080 --> 00:33:10,910
overlapping with each problem
set, so as to better accommodate,

741
00:33:10,910 --> 00:33:13,050
we hope, ebb and flow
in student schedules,

742
00:33:13,050 --> 00:33:16,550
especially when midterms or athletics
or academics or extracurriculars

743
00:33:16,550 --> 00:33:18,465
tend to come and go
especially mid-semester.

744
00:33:18,465 --> 00:33:21,340
That should give you a little more
discretion as to whether you front

745
00:33:21,340 --> 00:33:25,690
load your week with CS50 or back load
it on the following weekend instead.

746
00:33:25,690 --> 00:33:28,817
So look to the course's syllabus
here for the schedule thereof.

747
00:33:28,817 --> 00:33:30,900
And you'll notice too among
the changes this year,

748
00:33:30,900 --> 00:33:34,082
for those more familiar with
programming in the past,

749
00:33:34,082 --> 00:33:36,290
we'll start the semester as
we will today in Scratch,

750
00:33:36,290 --> 00:33:39,730
focus especially on the language
called C, and then transition not

751
00:33:39,730 --> 00:33:43,430
to PHP, but to a language called
Python towards the end of the semester

752
00:33:43,430 --> 00:33:46,565
in the context of web programming,
along with SQL and JavaScript,

753
00:33:46,565 --> 00:33:48,930
HTML, CSS, and yet more.

754
00:33:48,930 --> 00:33:51,790
>> And in answer to an FAQ,
it's indeed the case

755
00:33:51,790 --> 00:33:55,520
that CS is not as scary as I once
thought it was, but it is as much work

756
00:33:55,520 --> 00:33:57,280
as I had heard it might be.

757
00:33:57,280 --> 00:34:03,210
But this is the say that here are some
statistics from fall 2015 student body,

758
00:34:03,210 --> 00:34:06,460
whereby the horizontal blue lines
represent the average number of hours

759
00:34:06,460 --> 00:34:06,960
reported.

760
00:34:06,960 --> 00:34:10,570
And you'll see an average of
six to 10 to 12-- maybe 16

761
00:34:10,570 --> 00:34:14,580
or so and so forth, but with
high variance to be clear.

762
00:34:14,580 --> 00:34:18,570
And so realize that there is not only
students more comfortable and less

763
00:34:18,570 --> 00:34:22,150
comfortable in the course,
but a corresponding support

764
00:34:22,150 --> 00:34:25,699
structure to get those students
through the semester successfully.

765
00:34:25,699 --> 00:34:29,409
>> Indeed, in answer to an FAQ, should
you take CS50 as a first year?

766
00:34:29,409 --> 00:34:30,139
Absolutely.

767
00:34:30,139 --> 00:34:32,690
And in fact, I do regret
not having found my way

768
00:34:32,690 --> 00:34:35,170
or found a new field
that first year as well.

769
00:34:35,170 --> 00:34:39,149
And should you take CS50 with
other courses, certainly as well--

770
00:34:39,149 --> 00:34:41,940
and the general advice we might
give students, that CS50's probably

771
00:34:41,940 --> 00:34:44,929
not the kind of class or intro class
that you should take with three

772
00:34:44,929 --> 00:34:47,199
other or four other p-set classes.

773
00:34:47,199 --> 00:34:50,583
But if you're taking two other p-set
classes, something else, and CS50,

774
00:34:50,583 --> 00:34:51,499
absolutely manageable.

775
00:34:51,499 --> 00:34:54,900
I've had many students in the
past done so quite successfully.

776
00:34:54,900 --> 00:34:57,490
>> And to get you toward that
finish line successfully,

777
00:34:57,490 --> 00:35:00,260
does the course have sections--
different tracks for students

778
00:35:00,260 --> 00:35:03,100
less comfortable, more comfortable,
and somewhere in between,

779
00:35:03,100 --> 00:35:04,850
whereby in the course's
first problem set,

780
00:35:04,850 --> 00:35:06,360
you'll be asked to describe yourself.

781
00:35:06,360 --> 00:35:09,151
And if you are among those less
comfortable, it's the kind of thing

782
00:35:09,151 --> 00:35:10,420
that you just rather know.

783
00:35:10,420 --> 00:35:13,010
And indeed, that's been the
growing demographic in CS50

784
00:35:13,010 --> 00:35:14,090
for quite a few years.

785
00:35:14,090 --> 00:35:17,680
>> As of last fall for
instance, 58% of the class

786
00:35:17,680 --> 00:35:20,560
described themselves as
among those less comfortable,

787
00:35:20,560 --> 00:35:23,210
with 9% among those more
comfortable, and then

788
00:35:23,210 --> 00:35:25,900
the other students there in
red describing themselves

789
00:35:25,900 --> 00:35:27,890
as somewhere in between.

790
00:35:27,890 --> 00:35:31,980
And you'll see here the topics overall
and schedule of sections, all of which

791
00:35:31,980 --> 00:35:34,820
are offered in person, in
real time, with the course's

792
00:35:34,820 --> 00:35:38,320
amazing staff of teaching fellows
and course assistants, some of whom

793
00:35:38,320 --> 00:35:39,660
you'll meet in just a moment.

794
00:35:39,660 --> 00:35:42,993
>> Sections themselves, as you'll see, will
be Mondays and Tuesdays and Wednesdays,

795
00:35:42,993 --> 00:35:45,910
so as to allow you to dive
in after engaging, if you so

796
00:35:45,910 --> 00:35:48,110
choose, in the course's
lecture earlier that week.

797
00:35:48,110 --> 00:35:51,420
And then office hours, which
certainly, with each passing year,

798
00:35:51,420 --> 00:35:54,110
have been no less of a
challenge for the course.

799
00:35:54,110 --> 00:35:57,040
And this year, we're planning not
only to hold office hours-- one

800
00:35:57,040 --> 00:36:00,300
on one opportunities for help for
students on Wednesdays Thursdays

801
00:36:00,300 --> 00:36:03,790
and Sundays, the last of those
being in the afternoon by design

802
00:36:03,790 --> 00:36:06,910
to reduce some of the stress that
invariably arises with late night

803
00:36:06,910 --> 00:36:10,180
p-settting with a deadline looming--
but office hours will also be offered

804
00:36:10,180 --> 00:36:14,920
on Mondays and Tuesdays and
Wednesdays, and Fridays and Saturdays,

805
00:36:14,920 --> 00:36:17,080
thanks to our friends at HSA.

806
00:36:17,080 --> 00:36:20,330
>> CS50 now has its own space
for students and CS50 staff,

807
00:36:20,330 --> 00:36:23,070
atop 67 Mount Auburn Street,
right there in Harvard Square.

808
00:36:23,070 --> 00:36:26,340
The vision for which is that CS50's
TFs and CAs throughout the week,

809
00:36:26,340 --> 00:36:29,052
pretty much throughout most
days, will be there for support.

810
00:36:29,052 --> 00:36:30,760
So if you've got some
question on a p-set

811
00:36:30,760 --> 00:36:33,093
or you're feeling a little
blocked or a little confused,

812
00:36:33,093 --> 00:36:35,640
and heck, you've got an hour or
half an hour between classes,

813
00:36:35,640 --> 00:36:38,920
especially in the square-- can you
pop in and have that question answered

814
00:36:38,920 --> 00:36:41,720
of have that confusion clarified--
very much in the spirit,

815
00:36:41,720 --> 00:36:45,490
you're familiar, of the math
department's own math questions center,

816
00:36:45,490 --> 00:36:49,300
but pretty much around the clock per
[? Gcal ?] that we will post online.

817
00:36:49,300 --> 00:36:52,400
>> Tutoring is also available for those
students, freely from the course's

818
00:36:52,400 --> 00:36:54,750
own staff if you would like
more intimate one on one,

819
00:36:54,750 --> 00:36:58,940
or two or three classmates only, working
with one of the course's staff members.

820
00:36:58,940 --> 00:37:02,320
And indeed, these here are just
some of the course's staff members,

821
00:37:02,320 --> 00:37:04,120
a few of whom you'll
meet in just a moment.

822
00:37:04,120 --> 00:37:07,440
In fact, CS50's own
head teaching fellow,

823
00:37:07,440 --> 00:37:09,790
and head course
assistant, and preceptor,

824
00:37:09,790 --> 00:37:12,998
could come on up, allow
them to say hello.

825
00:37:12,998 --> 00:37:22,498
>> [APPLAUSE]

826
00:37:22,498 --> 00:37:23,456
SPEAKER 1: [INAUDIBLE].

827
00:37:23,456 --> 00:37:51,842

828
00:37:51,842 --> 00:37:57,856
>> [APPLAUSE]

829
00:37:57,856 --> 00:37:58,814
SPEAKER 2: [INAUDIBLE].

830
00:37:58,814 --> 00:38:17,240

831
00:38:17,240 --> 00:38:27,238
>> [APPLAUSE]

832
00:38:27,238 --> 00:38:28,196
SPEAKER 3: [INAUDIBLE].

833
00:38:28,196 --> 00:38:58,951

834
00:38:58,951 --> 00:39:03,120
>> [APPLAUSE]

835
00:39:03,120 --> 00:39:06,740
>> DAVID MALAN: And allow us to
bring on board two of CS50's most

836
00:39:06,740 --> 00:39:09,730
senior staff, Rob and Zamayla as well.

837
00:39:09,730 --> 00:39:15,120
>> [APPLAUSE]

838
00:39:15,120 --> 00:39:17,226
>> Indeed, both Rob and
Zamayla have been with us

839
00:39:17,226 --> 00:39:19,940
for so long, that I was able
to go into CS50's archives

840
00:39:19,940 --> 00:39:22,470
and find this very SD
footage of them participating

841
00:39:22,470 --> 00:39:25,402
on stage themselves some years ago.

842
00:39:25,402 --> 00:39:26,110
ROB: [INAUDIBLE].

843
00:39:26,110 --> 00:39:53,660

844
00:39:53,660 --> 00:39:59,247
>> [APPLAUSE]

845
00:39:59,247 --> 00:40:00,080
ZAMAYLA: [INAUDIBLE]

846
00:40:00,080 --> 00:40:50,888

847
00:40:50,888 --> 00:40:52,467
>> [APPLAUSE]

848
00:40:52,467 --> 00:40:53,425
DAVID MALAN: Thank you.

849
00:40:53,425 --> 00:40:56,160

850
00:40:56,160 --> 00:40:58,030
So in addition to these
team members here,

851
00:40:58,030 --> 00:41:01,662
CS50 has a team of nearly 100
staff members, all of whom

852
00:41:01,662 --> 00:41:04,370
will be available for sections
and office hours and so much more.

853
00:41:04,370 --> 00:41:06,920
And as Rob says too, this is
the most significant overhaul

854
00:41:06,920 --> 00:41:09,534
of CS50 in the 10 years that
I've been in [INAUDIBLE].

855
00:41:09,534 --> 00:41:12,200
[INAUDIBLE] focused especially
in providing a support structure,

856
00:41:12,200 --> 00:41:14,050
trimming away a lot of
the bulk that's been

857
00:41:14,050 --> 00:41:16,870
accumulated in 10 years
of iterative developments

858
00:41:16,870 --> 00:41:18,120
on the course's problem sets.

859
00:41:18,120 --> 00:41:21,470
>> So this year, not only in class but
also in the form of the course's problem

860
00:41:21,470 --> 00:41:24,800
sets, should you find things to
be more streamlined, trimmer, much

861
00:41:24,800 --> 00:41:26,700
more manageable than
in years past, as we

862
00:41:26,700 --> 00:41:31,330
shed some of the baggage that's
developed by nature of evolving year

863
00:41:31,330 --> 00:41:32,970
after year and iterating.

864
00:41:32,970 --> 00:41:35,110
So the new and improved begins today.

865
00:41:35,110 --> 00:41:37,860
>> You'll meet some more of the
course's staff out in the [INAUDIBLE]

866
00:41:37,860 --> 00:41:40,186
at 2:30, where we serve,
as a tradition, cake.

867
00:41:40,186 --> 00:41:42,060
There's a bit more cake
than that, but you'll

868
00:41:42,060 --> 00:41:44,690
meet Erin and Tobias and others still.

869
00:41:44,690 --> 00:41:46,470
And let me give you
a tour before we hear

870
00:41:46,470 --> 00:41:49,600
from some of the other staff members
in the class, of what awaits as well.

871
00:41:49,600 --> 00:41:52,730
In fact, we always start CS50's
semester this coming Saturday,

872
00:41:52,730 --> 00:41:54,330
with what's called CS50 Puzzle Day.

873
00:41:54,330 --> 00:41:56,710
>> It has nothing to do with
computer science per se,

874
00:41:56,710 --> 00:41:58,669
but with about problem
solving more generally.

875
00:41:58,669 --> 00:42:01,210
And if you so choose to partake,
per some of the invitations,

876
00:42:01,210 --> 00:42:03,460
you might have seen door
dropped or on the stage here,

877
00:42:03,460 --> 00:42:05,830
it's an opportunity in teams
of two or three or four,

878
00:42:05,830 --> 00:42:10,680
to participate for puzzles and pizza
and prizes and more-- this Saturday,

879
00:42:10,680 --> 00:42:12,560
stay tuned for more.

880
00:42:12,560 --> 00:42:15,082
>> You'll find too that every
Friday, at Fire and Ice,

881
00:42:15,082 --> 00:42:16,790
does CS50 bring a
whole bunch of students

882
00:42:16,790 --> 00:42:19,100
to lunch, to make a large
class feel more intimate,

883
00:42:19,100 --> 00:42:21,820
and generally bring together
alumni and friends from industry

884
00:42:21,820 --> 00:42:24,710
to talk about what they've
been up to since graduating.

885
00:42:24,710 --> 00:42:27,820
Similarly, this year, will we
inaugurate the first ever CS50 50

886
00:42:27,820 --> 00:42:31,390
coding contest-- a mid-semester
opportunity to allow everyone

887
00:42:31,390 --> 00:42:35,430
on an opt in basis, to have a
challenge of wits against classmates,

888
00:42:35,430 --> 00:42:39,250
again in teams of two or three or
four, using only that programming

889
00:42:39,250 --> 00:42:41,920
savvy that you then have under
your belt after just six or seven

890
00:42:41,920 --> 00:42:44,710
weeks of the class, and participating
in this kind of competition

891
00:42:44,710 --> 00:42:50,261
online-- if you'd like to hone your own
skills all the more in that challenge.

892
00:42:50,261 --> 00:42:52,760
At the end of the semester is
the so-called CS50 Hackathon--

893
00:42:52,760 --> 00:42:56,970
an opportunity that begins at 7:00
PM ends at 7:00 AM, and along the way

894
00:42:56,970 --> 00:43:01,900
are 12 evening hours in which to dive
into the course's final project--

895
00:43:01,900 --> 00:43:04,820
an opportunity to design and
implement most anything of interest

896
00:43:04,820 --> 00:43:06,980
to you with your teaching
fellow's guidance.

897
00:43:06,980 --> 00:43:09,600
Around 9:00AM do we typically
serve pizza, 1:00 AM,

898
00:43:09,600 --> 00:43:13,210
Philippe's, and the few of us
who are still awake at 5:00 AM,

899
00:43:13,210 --> 00:43:16,310
are shuttle bussed down the
road to IHOP for breakfast.

900
00:43:16,310 --> 00:43:19,340
>> And then a few days later
is the so-called CS50 fare--

901
00:43:19,340 --> 00:43:23,450
an end of semester exhibition in
celebration of just how far so many

902
00:43:23,450 --> 00:43:28,200
of CS50 students have come from
week zero all the way to week ,

903
00:43:28,200 --> 00:43:32,610
and keeping in mind that 73% of those
classmates and yours this year have

904
00:43:32,610 --> 00:43:34,840
never taken a CS class before.

905
00:43:34,840 --> 00:43:39,226
In fact, to reemphasize as much, here
is a few more faces from CS50's staff.

906
00:43:39,226 --> 00:43:40,184
SPEAKER 4: [INAUDIBLE].

907
00:43:40,184 --> 00:43:45,909

908
00:43:45,909 --> 00:43:46,867
SPEAKER 5: [INAUDIBLE].

909
00:43:46,867 --> 00:43:51,332

910
00:43:51,332 --> 00:43:52,290
SPEAKER 6: [INAUDIBLE].

911
00:43:52,290 --> 00:43:55,276

912
00:43:55,276 --> 00:43:56,234
SPEAKER 7: [INAUDIBLE].

913
00:43:56,234 --> 00:44:01,727

914
00:44:01,727 --> 00:44:02,643
SPEAKER 8: [INAUDIBLE]

915
00:44:02,643 --> 00:44:10,066

916
00:44:10,066 --> 00:44:11,024
SPEAKER 9: [INAUDIBLE].

917
00:44:11,024 --> 00:44:14,475

918
00:44:14,475 --> 00:44:15,461
>> SPEAKER 4: [INAUDIBLE].

919
00:44:15,461 --> 00:44:16,461
>> SPEAKER 10: [INAUDIBLE].

920
00:44:16,461 --> 00:44:21,456

921
00:44:21,456 --> 00:44:23,438
SPEAKER 11: [INAUDIBLE].

922
00:44:23,438 --> 00:44:24,438
SPEAKER 12: [INAUDIBLE].

923
00:44:24,438 --> 00:44:30,438

924
00:44:30,438 --> 00:44:31,396
SPEAKER 13: [INAUDIBLE]

925
00:44:31,396 --> 00:44:37,360

926
00:44:37,360 --> 00:44:40,342
>> SPEAKER 14: [INAUDIBLE].

927
00:44:40,342 --> 00:44:42,863
>> SPEAKER 13: [INAUDIBLE].

928
00:44:42,863 --> 00:44:43,821
SPEAKER 15: [INAUDIBLE]

929
00:44:43,821 --> 00:44:48,785

930
00:44:48,785 --> 00:44:49,785
SPEAKER 16: [INAUDIBLE].

931
00:44:49,785 --> 00:44:53,761

932
00:44:53,761 --> 00:44:55,252
>> SPEAKER 11: [INAUDIBLE]

933
00:44:55,252 --> 00:44:57,773

934
00:44:57,773 --> 00:44:58,731
SPEAKER 5: [INAUDIBLE].

935
00:44:58,731 --> 00:45:11,250

936
00:45:11,250 --> 00:45:15,130
DAVID MALAN: Some of the team
are themselves shopping classes.

937
00:45:15,130 --> 00:45:17,760
But if those members
of CS50 staff are here,

938
00:45:17,760 --> 00:45:19,230
could come on up for just a moment.

939
00:45:19,230 --> 00:45:23,450
CS50's TFs and CAs and [? staff ?]
members here-- these are just a few

940
00:45:23,450 --> 00:45:28,880
of the faces-- one of whom you just
saw, and a few other-- and a few others

941
00:45:28,880 --> 00:45:30,020
still.

942
00:45:30,020 --> 00:45:33,242
Why don't we go ahead and allow
you guys a five minute break.

943
00:45:33,242 --> 00:45:35,450
If you need to duck out to
shop classes, that's fine.

944
00:45:35,450 --> 00:45:38,900
And in five minutes, we'll resume,
taking a look at Scratch-- the first

945
00:45:38,900 --> 00:45:42,420
of our programming language, meet
the course's staff here some more,

946
00:45:42,420 --> 00:45:45,020
and focus ultimately
on problem set zero.

947
00:45:45,020 --> 00:45:46,710
So we'll be back in five minutes.

1
00:45:46,864 --> 00:45:47,370
>> All right.

2
00:45:47,370 --> 00:45:48,590
So we are back.

3
00:45:48,590 --> 00:45:51,330
And in our remaining
time today, the goal

4
00:45:51,330 --> 00:45:54,320
is to level the playing field
in terms of some terminology,

5
00:45:54,320 --> 00:45:55,297
in terms of some ideas.

6
00:45:55,297 --> 00:45:57,380
Because indeed, as per
some of the charts earlier,

7
00:45:57,380 --> 00:46:00,130
there is going to be a range of
levels of experience in the class,

8
00:46:00,130 --> 00:46:03,210
some of whose students have
taken some programming before,

9
00:46:03,210 --> 00:46:04,200
some of whom haven't.

10
00:46:04,200 --> 00:46:07,430
And so with this first problem
set and with this first language

11
00:46:07,430 --> 00:46:10,830
do we have an opportunity to start
to take for granted after today

12
00:46:10,830 --> 00:46:12,960
some common vocabulary and idea.

13
00:46:12,960 --> 00:46:15,590
>> And we'll do this by way of
the course's first languages--

14
00:46:15,590 --> 00:46:21,070
in addition to C and Python and
JavaScript and SQL and HTML and CSS,

15
00:46:21,070 --> 00:46:24,450
we'll be focusing initially
and just for problem set zero

16
00:46:24,450 --> 00:46:28,160
on this graphical language, called
Scratch, developed by MIT'S Media Lab

17
00:46:28,160 --> 00:46:30,880
down the road, to help
students and kids especially

18
00:46:30,880 --> 00:46:35,070
express themselves algorithmically--
in a way more consistent with what

19
00:46:35,070 --> 00:46:37,300
we might call computational thinking.

20
00:46:37,300 --> 00:46:40,985
>> And it's a useful language because
very quickly next week in week one,

21
00:46:40,985 --> 00:46:44,360
do we transition to a more
traditional and arcane language called

22
00:46:44,360 --> 00:46:46,370
C, which is purely textual.

23
00:46:46,370 --> 00:46:48,930
You only use your keyboard in
order to write instructions

24
00:46:48,930 --> 00:46:50,230
like these on the screen.

25
00:46:50,230 --> 00:46:52,840
But even if you've never seen
a programming language before,

26
00:46:52,840 --> 00:46:55,170
in just glancing at
this, all be it cryptic,

27
00:46:55,170 --> 00:47:00,010
you can probably guess that
probably prints Hello World.

28
00:47:00,010 --> 00:47:02,050
But there's a lot of
syntactic overhead there.

29
00:47:02,050 --> 00:47:05,770
There is the weird hash
symbol or hash tag up top.

30
00:47:05,770 --> 00:47:08,900
There's the angle brackets, some
parentheses, curly braces, semi-colon--

31
00:47:08,900 --> 00:47:11,880
there's just so much visual
syntax that gets in the way.

32
00:47:11,880 --> 00:47:13,940
We start the course with
Scratch so as to get

33
00:47:13,940 --> 00:47:17,600
past all of those intellectually
uninteresting distractions,

34
00:47:17,600 --> 00:47:20,290
and focus instead on the ideas.

35
00:47:20,290 --> 00:47:22,540
>> In fact, this might be before.

36
00:47:22,540 --> 00:47:24,830
This, for this, week shall be after.

37
00:47:24,830 --> 00:47:26,760
This, in this graphical
language Scratch,

38
00:47:26,760 --> 00:47:29,870
is how you would implement that same
program-- a program that when run,

39
00:47:29,870 --> 00:47:31,340
simply says hello world.

40
00:47:31,340 --> 00:47:34,740
And what's nice about Scratch is
that it's this graphical programming

41
00:47:34,740 --> 00:47:38,780
environment that uses puzzle pieces or
blocks, that only interlock together

42
00:47:38,780 --> 00:47:40,440
if it makes logical sense to do so.

43
00:47:40,440 --> 00:47:43,810
And with Scratch can you develop
animations and interactive games

44
00:47:43,810 --> 00:47:47,270
and art, and any number of things that
you might imagine in your own mind,

45
00:47:47,270 --> 00:47:51,200
and implement them simply by
dragging and dropping puzzle pieces.

46
00:47:51,200 --> 00:47:54,265
>> And indeed, we'll have the ability
to express some of the same ideas

47
00:47:54,265 --> 00:47:56,890
that I just mentioned a moment
ago in the context of Mike Smith

48
00:47:56,890 --> 00:48:00,670
and searching a phone book-- things
like functions, just actions,

49
00:48:00,670 --> 00:48:03,070
things like loops that do
things again and again,

50
00:48:03,070 --> 00:48:05,170
variables, which is
something we'll introduce,

51
00:48:05,170 --> 00:48:08,086
but it's familiar perhaps from
algebra-- just some kind of placeholder

52
00:48:08,086 --> 00:48:10,840
to store some value you might
need later-- Boolean expressions,

53
00:48:10,840 --> 00:48:13,720
where those yes no or true
false questions from before.

54
00:48:13,720 --> 00:48:17,117
Conditions are those forks in the
road-- those branches so to speak.

55
00:48:17,117 --> 00:48:19,700
And then there are some fancier
features we'll see even today,

56
00:48:19,700 --> 00:48:22,850
called arrays and threads and
events, that we'll then revisit over

57
00:48:22,850 --> 00:48:24,460
time in different languages.

58
00:48:24,460 --> 00:48:26,790
But Scratch allows us
to explore all of these.

59
00:48:26,790 --> 00:48:30,779
So here in Scratch, this purple
block is what a function is typically

60
00:48:30,779 --> 00:48:31,570
going to look like.

61
00:48:31,570 --> 00:48:35,620
This purple puzzle piece that has some
word like say, which is the action,

62
00:48:35,620 --> 00:48:38,490
and then it might have an
argument or a parameter-- some way

63
00:48:38,490 --> 00:48:41,140
of kind of customizing
what that block does

64
00:48:41,140 --> 00:48:45,182
so that it's not pre-determined by
MIT what this purple block says.

65
00:48:45,182 --> 00:48:47,390
In fact, you'll see in a
moment that I'm able to type

66
00:48:47,390 --> 00:48:49,931
the words like hello world, or
hello David, or hello Zamayla,

67
00:48:49,931 --> 00:48:53,750
or whatever I want, in the argument
to that puzzle piece-- the white box

68
00:48:53,750 --> 00:48:54,251
there.

69
00:48:54,251 --> 00:48:57,166
Meanwhile, if I want a loop, we'll
see that there's puzzle pieces that

70
00:48:57,166 --> 00:48:58,640
look a little orange like this.

71
00:48:58,640 --> 00:49:01,690
And their shape kind of suggests that
something happens again and again

72
00:49:01,690 --> 00:49:02,680
in a cycle.

73
00:49:02,680 --> 00:49:06,800
>> So if I wrap a say hello world block
with a forever block in Scratch,

74
00:49:06,800 --> 00:49:10,307
it's just going to keep saying hello
world forever, quite literally.

75
00:49:10,307 --> 00:49:12,390
Meanwhile, there's another
type of loop in Scratch

76
00:49:12,390 --> 00:49:14,348
that we'll see-- a repeat
block-- where, if you

77
00:49:14,348 --> 00:49:17,940
know in advance how many times
you want the loop to execute

78
00:49:17,940 --> 00:49:21,850
a finite number of times in fact-- you
can specify that by typing in a number

79
00:49:21,850 --> 00:49:25,380
or even plugging in a variable,
like x or y as we'll see.

80
00:49:25,380 --> 00:49:27,690
>> In fact, variables like
i in this case, which

81
00:49:27,690 --> 00:49:30,109
is a common name for an
integer variable that

82
00:49:30,109 --> 00:49:31,900
just stores a number--
an integer might be,

83
00:49:31,900 --> 00:49:35,470
to use this orange block here to
set a variable like i to zero.

84
00:49:35,470 --> 00:49:38,900
Here's an example in green of a
Boolean expression in Scratch.

85
00:49:38,900 --> 00:49:43,700
Even though this looks like a math
formula, math inequalities like this

86
00:49:43,700 --> 00:49:45,320
really are Boolean expressions.

87
00:49:45,320 --> 00:49:46,570
This is either true or false.

88
00:49:46,570 --> 00:49:48,300
I is less than 50.

89
00:49:48,300 --> 00:49:51,815
It's either a yes or no answer
or true or false answer.

90
00:49:51,815 --> 00:49:53,940
And we'll generally call
those Boolean expressions.

91
00:49:53,940 --> 00:49:55,148
And it doesn't have to be 50.

92
00:49:55,148 --> 00:49:57,970
It can be x less than y,
greater than y, equal to y--

93
00:49:57,970 --> 00:50:00,020
any number of other
questions might be asked.

94
00:50:00,020 --> 00:50:03,250
>> Now, at first glance, this might look
suddenly quite bold here, and it is.

95
00:50:03,250 --> 00:50:06,540
But concept wise, it's
pretty familiar from before.

96
00:50:06,540 --> 00:50:09,370
If x is less than y, than say as much.

97
00:50:09,370 --> 00:50:12,230
Else if x is greater
than y, then say as much.

98
00:50:12,230 --> 00:50:14,260
Else say x is equal to y.

99
00:50:14,260 --> 00:50:17,220
So we have an example
there of a third scenario--

100
00:50:17,220 --> 00:50:20,600
the only third possibility-- x is either
greater than, less than, or equal to.

101
00:50:20,600 --> 00:50:22,420
So we have a three way fork in the road.

102
00:50:22,420 --> 00:50:26,290
>> And notice what's cool here-- Scratch,
it would seem, has just one puzzle

103
00:50:26,290 --> 00:50:28,840
piece, in this case, in if else block.

104
00:50:28,840 --> 00:50:32,090
And yet that would seem to imply you can
only have a two way fork in the road.

105
00:50:32,090 --> 00:50:34,631
You can go left or right, but
what about that third scenario?

106
00:50:34,631 --> 00:50:35,760
What if x equals y?

107
00:50:35,760 --> 00:50:36,500
No big deal.

108
00:50:36,500 --> 00:50:39,640
Take one puzzle piece, put
another one inside of it

109
00:50:39,640 --> 00:50:45,759
to create the semantic equivalent
of if, else if, else-- and now you

110
00:50:45,759 --> 00:50:47,300
have your three way fork in the road.

111
00:50:47,300 --> 00:50:49,091
And as we'll see, the
Scratch puzzle pieces

112
00:50:49,091 --> 00:50:51,820
can be stretched and grow, so
as to cram more stuff in them.

113
00:50:51,820 --> 00:50:54,420
You don't have to fit
everything in its default size.

114
00:50:54,420 --> 00:50:56,690
>> This is something we'll
soon see is called an array.

115
00:50:56,690 --> 00:51:00,880
It's like a list-- some way of
storing multiple pieces of information

116
00:51:00,880 --> 00:51:02,886
in a variable, not just a number.

117
00:51:02,886 --> 00:51:05,760
These we'll see a representative of
something called multi-threading.

118
00:51:05,760 --> 00:51:08,280
In fact, all of your
Macs and PCs these days

119
00:51:08,280 --> 00:51:10,810
support multi-threading,
which means you can literally

120
00:51:10,810 --> 00:51:12,390
do multiple things at a time.

121
00:51:12,390 --> 00:51:15,390
You can have Microsoft Word up in the
foreground, working on some essay.

122
00:51:15,390 --> 00:51:17,160
You might have a browser
in the background opening

123
00:51:17,160 --> 00:51:18,720
G-mail or Facebook or the like.

124
00:51:18,720 --> 00:51:22,730
Your computer can do multiple things
today because it is multi-threaded,

125
00:51:22,730 --> 00:51:26,390
and programs they're in in
particular are also multi-threaded.

126
00:51:26,390 --> 00:51:28,970
>> There's things called events as
well in the world of Scratch,

127
00:51:28,970 --> 00:51:32,640
and then there's a way too, to make
our own custom puzzle pieces if things

128
00:51:32,640 --> 00:51:34,810
don't actually exist in advance.

129
00:51:34,810 --> 00:51:38,260
So let's motivate this as follows.

130
00:51:38,260 --> 00:51:40,580
Some years ago, when I
first discovered Scratch,

131
00:51:40,580 --> 00:51:43,530
when I was actually a
grad student at MIT, we

132
00:51:43,530 --> 00:51:45,640
ourselves were tasked to make homework.

133
00:51:45,640 --> 00:51:47,614
And I implemented--
which, in retrospect,

134
00:51:47,614 --> 00:51:50,780
was a very poor decision because it's
the most infuriating song in the world

135
00:51:50,780 --> 00:51:53,321
to listen to for eight hours
while working on your homework--

136
00:51:53,321 --> 00:51:57,180
but something I had called Oscar Time,
which is perhaps a familiar song.

137
00:51:57,180 --> 00:51:59,820
>> CS50s own Jordan Hayashi, one of
our more senior staff members,

138
00:51:59,820 --> 00:52:03,920
has upgraded it for 2015 and
now 2016, since back in the day,

139
00:52:03,920 --> 00:52:06,610
I had everything just going
into Oscar's trash can.

140
00:52:06,610 --> 00:52:09,320
Now we support recycling and composting.

141
00:52:09,320 --> 00:52:12,050
>> But to paint the picture
of what we can do here

142
00:52:12,050 --> 00:52:14,130
and to motivate some of
the lower level examples,

143
00:52:14,130 --> 00:52:16,400
could we get one other
volunteer to just come on up

144
00:52:16,400 --> 00:52:18,331
and play my first
homework assignment ever?

145
00:52:18,331 --> 00:52:18,830
Come on up.

146
00:52:18,830 --> 00:52:19,250
What's your name?

147
00:52:19,250 --> 00:52:20,030
>> HENRY: Henry.

148
00:52:20,030 --> 00:52:22,660
>> DAVID MALAN: Henry, come on up.

149
00:52:22,660 --> 00:52:24,190
Come on up.

150
00:52:24,190 --> 00:52:27,070
Head either way, and
you'll see in a moment,

151
00:52:27,070 --> 00:52:29,870
I'm going to go ahead and hit the
green flag in the top right hand

152
00:52:29,870 --> 00:52:31,100
corner, which means go.

153
00:52:31,100 --> 00:52:33,320
The little stop sign icon
is going to say stop,

154
00:52:33,320 --> 00:52:35,490
and that's when you start
and stop the program.

155
00:52:35,490 --> 00:52:36,450
Nice to meet you.

156
00:52:36,450 --> 00:52:36,950
All right.

157
00:52:36,950 --> 00:52:39,100
So we're going to see the instructions
on the screen in just a moment.

158
00:52:39,100 --> 00:52:41,450
And just by playing this game
for a few seconds-- trust me,

159
00:52:41,450 --> 00:52:43,670
we're not going to want to play
all the way to the end-- you will

160
00:52:43,670 --> 00:52:45,470
get a sense of what the program does.

161
00:52:45,470 --> 00:52:49,170
And more than just focus on Henry
being good or bad at this game, focus

162
00:52:49,170 --> 00:52:52,600
and how was it implemented by me
originally and then by Jordan.

163
00:52:52,600 --> 00:52:54,640
In other words, where are the variables?

164
00:52:54,640 --> 00:52:55,520
Where are the loops?

165
00:52:55,520 --> 00:52:56,520
Where are the functions?

166
00:52:56,520 --> 00:53:00,700
And we'll see if we don't see
those underneath the hood.

167
00:53:00,700 --> 00:53:03,660
>> Just click and drag trash
to the appropriate bin.

168
00:53:03,660 --> 00:54:02,100
>> [MUSIC PLAYING]

169
00:54:02,100 --> 00:54:02,600
All right.

170
00:54:02,600 --> 00:54:03,160
That's very good.

171
00:54:03,160 --> 00:54:04,286
Why don't we stop it there.

172
00:54:04,286 --> 00:54:04,786
Thank you.

173
00:54:04,786 --> 00:54:05,830
Congratulations to Henry.

174
00:54:05,830 --> 00:54:07,002
Thank you.

175
00:54:07,002 --> 00:54:10,690
>> [APPLAUSE]

176
00:54:10,690 --> 00:54:12,450
>> Just imagine debugging that program.

177
00:54:12,450 --> 00:54:15,880
If there's a problem two
minutes into the song-- but so

178
00:54:15,880 --> 00:54:17,430
what's going on here really?

179
00:54:17,430 --> 00:54:20,900
As complicated as it might
start to seem to get over time,

180
00:54:20,900 --> 00:54:22,910
indeed more and more
stuff started falling,

181
00:54:22,910 --> 00:54:25,370
what's interesting about
this kind of example--

182
00:54:25,370 --> 00:54:27,270
and we'll see a few
others-- is that if you

183
00:54:27,270 --> 00:54:30,416
look past the complexity or
the sophistication of the game,

184
00:54:30,416 --> 00:54:33,040
there's a very simple building
blocks that play-- all of which,

185
00:54:33,040 --> 00:54:35,840
if you distill them to those
building blocks, are very accessible

186
00:54:35,840 --> 00:54:37,401
and implementable unto themselves.

187
00:54:37,401 --> 00:54:39,150
For instance, it's
been some time, but I'm

188
00:54:39,150 --> 00:54:42,900
pretty sure what I initially did when
making this game for the first time

189
00:54:42,900 --> 00:54:44,787
was I completely like procrastinated.

190
00:54:44,787 --> 00:54:47,120
I didn't focus at all on the
logic or the puzzle pieces,

191
00:54:47,120 --> 00:54:50,810
I focused on the graphics and finding
the street post and the trash can

192
00:54:50,810 --> 00:54:51,540
and all of that.

193
00:54:51,540 --> 00:54:53,456
But those were requisite
ingredients at first.

194
00:54:53,456 --> 00:54:57,220
And once I finished procrastinating and
laying out the overarching framework,

195
00:54:57,220 --> 00:55:00,337
I decided, let me just make one
piece of trash fall from the sky.

196
00:55:00,337 --> 00:55:02,170
And we'll see Scratch
supports things called

197
00:55:02,170 --> 00:55:06,386
sprites-- characters that can
have different costumes on so they

198
00:55:06,386 --> 00:55:07,010
look different.

199
00:55:07,010 --> 00:55:09,660
>> And so I put a trash
costume on one such sprite.

200
00:55:09,660 --> 00:55:12,007
And I just needed it
to fall from the sky.

201
00:55:12,007 --> 00:55:14,590
And so it turns out, Scratch,
like most programming languages,

202
00:55:14,590 --> 00:55:18,099
supports random numbers or
technically pseudocode random numbers,

203
00:55:18,099 --> 00:55:20,390
so that by dragging and
dropping certain puzzle pieces,

204
00:55:20,390 --> 00:55:22,890
I was able to have the trash
come from the left at first.

205
00:55:22,890 --> 00:55:25,580
And then the next time it fell, from
the right and then from the middle.

206
00:55:25,580 --> 00:55:28,060
And all the game did was just
have trash falling from the sky.

207
00:55:28,060 --> 00:55:29,770
You couldn't point at it or click on it.

208
00:55:29,770 --> 00:55:31,103
You couldn't open the trash can.

209
00:55:31,103 --> 00:55:32,160
You couldn't do anything.

210
00:55:32,160 --> 00:55:34,450
But it was a baby step
toward my ultimate vision.

211
00:55:34,450 --> 00:55:36,720
>> And after that, I actually
implemented some kind

212
00:55:36,720 --> 00:55:41,230
of sensing so that if you did click
and drag on the piece of trash

213
00:55:41,230 --> 00:55:44,350
over the trash can, Oscar's
lid would open and close.

214
00:55:44,350 --> 00:55:47,650
Nothing would happen to the trash, but
at least the lid would open and close.

215
00:55:47,650 --> 00:55:49,642
So then check, step two of two.

216
00:55:49,642 --> 00:55:52,100
And this is what's going to be
key in both problem set zero

217
00:55:52,100 --> 00:55:55,970
and in programming more generally, is to
take these very deliberate baby steps.

218
00:55:55,970 --> 00:55:59,390
Because not only does it allow you to
feel honestly accomplished much more

219
00:55:59,390 --> 00:56:01,250
quickly-- it's the
worst thing in the world

220
00:56:01,250 --> 00:56:06,149
to try to implement all of Oscar Time,
then hours later hit the green flag,

221
00:56:06,149 --> 00:56:08,440
and nothing works as expected
because where do you even

222
00:56:08,440 --> 00:56:11,150
begin to debug or to
troubleshoot that program?

223
00:56:11,150 --> 00:56:12,470
It's just overwhelming.

224
00:56:12,470 --> 00:56:16,792
>> And so truly embracing this idea
of taking steps-- baby steps again

225
00:56:16,792 --> 00:56:19,000
and again-- building up
something that's, in the end,

226
00:56:19,000 --> 00:56:23,672
really impressive and complex, but
at first, is not nearly as much so.

227
00:56:23,672 --> 00:56:24,630
In fact, let's do this.

228
00:56:24,630 --> 00:56:28,989
Let me go ahead and-- Scratch itself
exists on the web at Scratch.MIT.edu,

229
00:56:28,989 --> 00:56:30,780
and you'll be told as
much again in problem

230
00:56:30,780 --> 00:56:34,200
set zero, the specification for
which is already on CS50's website.

231
00:56:34,200 --> 00:56:35,725
>> But this is what Scratch itself is.

232
00:56:35,725 --> 00:56:38,210
And there's really just
three primary areas.

233
00:56:38,210 --> 00:56:40,980
At the top left there
is the so-called stage.

234
00:56:40,980 --> 00:56:41,810
This is Scratch.

235
00:56:41,810 --> 00:56:43,710
The default costume is a cat.

236
00:56:43,710 --> 00:56:46,950
And this is the rectangular world in
which you can move-- up, down, left,

237
00:56:46,950 --> 00:56:48,130
right and some other stuff.

238
00:56:48,130 --> 00:56:51,839
In the middle here are our categories
or our pallets of puzzle pieces,

239
00:56:51,839 --> 00:56:53,630
and different colors
mean different things.

240
00:56:53,630 --> 00:56:56,520
And if you poke around, you'll see
things like loops and conditions

241
00:56:56,520 --> 00:56:58,160
and variables and other ingredients.

242
00:56:58,160 --> 00:57:00,060
>> And then over here is the scripts area.

243
00:57:00,060 --> 00:57:03,020
This is where I can drag and drop
those puzzle pieces to do things.

244
00:57:03,020 --> 00:57:04,690
So let's do one such thing.

245
00:57:04,690 --> 00:57:06,630
Let me go ahead and--
and I know where it is.

246
00:57:06,630 --> 00:57:10,110
So I'm going to immediately click on
where I know things are ready to be,

247
00:57:10,110 --> 00:57:13,140
but pointing and clicking and
poking around are inevitable.

248
00:57:13,140 --> 00:57:15,320
So when green flag clicked,
what do I want to do?

249
00:57:15,320 --> 00:57:17,100
I'm going to do this.

250
00:57:17,100 --> 00:57:20,699
I'm going to drag this purple puzzle
piece, say hello for two seconds,

251
00:57:20,699 --> 00:57:21,490
and let me zoom in.

252
00:57:21,490 --> 00:57:23,865
>> And I'm going to change this
to be what I want it to be--

253
00:57:23,865 --> 00:57:26,471
hello world for two seconds is fine.

254
00:57:26,471 --> 00:57:28,970
Now, I'm going to click the
green flag, or if I really want,

255
00:57:28,970 --> 00:57:31,820
I can full screen it and then come back.

256
00:57:31,820 --> 00:57:34,060
It will just keep
everything in one window.

257
00:57:34,060 --> 00:57:36,141
Green flag-- hello world.

258
00:57:36,141 --> 00:57:36,640
All right.

259
00:57:36,640 --> 00:57:38,789
Not all that interesting.

260
00:57:38,789 --> 00:57:40,080
So let me go ahead and do this.

261
00:57:40,080 --> 00:57:41,038
Let me try another one.

262
00:57:41,038 --> 00:57:44,740
When green flag clicked-- let's
do something like a sound.

263
00:57:44,740 --> 00:57:46,880
And notice that out of
the box for free you get

264
00:57:46,880 --> 00:57:49,910
a cat sound, as is the default sprite.

265
00:57:49,910 --> 00:57:52,380
So now let me go ahead and
hit the green flag now.

266
00:57:52,380 --> 00:57:53,224
>> [MEOWING]

267
00:57:53,224 --> 00:57:54,490
>> Aw.

268
00:57:54,490 --> 00:57:55,370
That's adorable.

269
00:57:55,370 --> 00:57:57,040
I'm programming.

270
00:57:57,040 --> 00:57:58,550
So what have I done?

271
00:57:58,550 --> 00:58:00,430
This is the equivalent of a program.

272
00:58:00,430 --> 00:58:01,600
It's obviously super simple.

273
00:58:01,600 --> 00:58:05,300
It didn't really take all that much
effort and MIT did most of the work,

274
00:58:05,300 --> 00:58:07,890
but I have called a function.

275
00:58:07,890 --> 00:58:08,940
I have used a function.

276
00:58:08,940 --> 00:58:12,480
I've made some action, using just
that one purple puzzle piece.

277
00:58:12,480 --> 00:58:15,960
>> Well, if I want to do
three meows in a row?

278
00:58:15,960 --> 00:58:18,570
Let me go ahead and do two and three.

279
00:58:18,570 --> 00:58:20,910
And notice that when you
hover nearby a puzzle piece,

280
00:58:20,910 --> 00:58:22,970
a little white line appears
sort of magnetically,

281
00:58:22,970 --> 00:58:25,190
and it will snap
together when you let go.

282
00:58:25,190 --> 00:58:26,600
Let's see what happens here.

283
00:58:26,600 --> 00:58:27,920
>> [MEOWING]

284
00:58:27,920 --> 00:58:32,390

285
00:58:32,390 --> 00:58:34,510
>> There's a bug.

286
00:58:34,510 --> 00:58:35,650
I only hear one meow.

287
00:58:35,650 --> 00:58:37,440
Why might that be?

288
00:58:37,440 --> 00:58:39,001
Yeah?

289
00:58:39,001 --> 00:58:39,500
Yeah.

290
00:58:39,500 --> 00:58:41,650
We don't really hear it,
but that's good intuition.

291
00:58:41,650 --> 00:58:43,400
They're all playing at the same time.

292
00:58:43,400 --> 00:58:44,000
Why?

293
00:58:44,000 --> 00:58:46,587
Well, the computer is just going
to do what you tell it to do.

294
00:58:46,587 --> 00:58:48,670
So if you say, play sound,
play sound, play sound,

295
00:58:48,670 --> 00:58:52,887
but you don't tell it to play until
you're done, play until you're done,

296
00:58:52,887 --> 00:58:54,970
it's going to blow through
the program really fast

297
00:58:54,970 --> 00:58:56,830
and do only what you tell it to do.

298
00:58:56,830 --> 00:58:59,040
>> So I actually need to fix
this in a couple of ways.

299
00:58:59,040 --> 00:59:00,623
I could just do this, get rid of this.

300
00:59:00,623 --> 00:59:04,180
Let me try this other puzzle
piece-- play sound meow until done,

301
00:59:04,180 --> 00:59:07,072
and then drag three of
these and click Play.

302
00:59:07,072 --> 00:59:09,430
>> [MEOWING]

303
00:59:09,430 --> 00:59:13,350
>> It's not really very--
thank you-- very natural.

304
00:59:13,350 --> 00:59:16,590
So why don't I-- let
me go to control here.

305
00:59:16,590 --> 00:59:17,090
Nice.

306
00:59:17,090 --> 00:59:22,230
Wait one second, and now let me go back
to sounds, and play sound until done,

307
00:59:22,230 --> 00:59:24,620
and then let me get wait one second.

308
00:59:24,620 --> 00:59:28,692
And then let me go and get one
more sound, and here we go.

309
00:59:28,692 --> 00:59:31,350
>> [MEOWING]

310
00:59:31,350 --> 00:59:35,930
>> A little more natural, but
this is not very efficient.

311
00:59:35,930 --> 00:59:39,830
Like I was getting bored, all be
it briefly, clicking back and forth

312
00:59:39,830 --> 00:59:42,724
and really duplicating my work--
pretty much copying and pasting.

313
00:59:42,724 --> 00:59:44,640
Indeed, if I Control
clicked or right clicked,

314
00:59:44,640 --> 00:59:46,500
I could have just copied and pasted.

315
00:59:46,500 --> 00:59:49,870
What would be a better construct to use?

316
00:59:49,870 --> 00:59:51,090
What idea from before?

317
00:59:51,090 --> 00:59:51,990
>> Yeah, so a loop.

318
00:59:51,990 --> 00:59:54,580
And in fact, if we poked around,
we might find exactly that.

319
00:59:54,580 --> 00:59:57,730
Let me go to Events or rather Control.

320
00:59:57,730 --> 00:59:59,650
So repeat-- I don't
want it to be 10 times.

321
00:59:59,650 --> 01:00:01,370
That's going to get annoying quickly.

322
01:00:01,370 --> 01:00:03,380
But I will repeat three times.

323
01:00:03,380 --> 01:00:06,355
Let me go back to sound and
play the sound until it's done.

324
01:00:06,355 --> 01:00:08,480
Let me go back to Control
and just wait one second.

325
01:00:08,480 --> 01:00:10,271
And notice, you might
think it doesn't fit,

326
01:00:10,271 --> 01:00:13,520
but again if magnetically you let it
snap in place, it will grow to fill.

327
01:00:13,520 --> 01:00:14,971
What's it play now?

328
01:00:14,971 --> 01:00:18,500
>> [MEOWING]

329
01:00:18,500 --> 01:00:19,000
OK.

330
01:00:19,000 --> 01:00:19,660
Nice.

331
01:00:19,660 --> 01:00:22,540
And this is what would be called
a program that's also correct.

332
01:00:22,540 --> 01:00:27,590
It meowed three times fairly
naturally, but it's better designed.

333
01:00:27,590 --> 01:00:29,580
I'm using less redundancy.

334
01:00:29,580 --> 01:00:30,970
I didn't copy and paste anything.

335
01:00:30,970 --> 01:00:32,470
I just used a better idea.

336
01:00:32,470 --> 01:00:35,340
>> Now, this is still not all that
interesting with Scratch not doing

337
01:00:35,340 --> 01:00:35,930
anything.

338
01:00:35,930 --> 01:00:37,388
So let's do something else instead.

339
01:00:37,388 --> 01:00:38,670
Let's do something forever.

340
01:00:38,670 --> 01:00:39,420
And you know what?

341
01:00:39,420 --> 01:00:40,470
Motion seems interesting.

342
01:00:40,470 --> 01:00:45,760
Let's have him move 10
steps and hit play now.

343
01:00:45,760 --> 01:00:46,570
>> OK.

344
01:00:46,570 --> 01:00:49,300
Well we can kind of drag
him back, and he's still

345
01:00:49,300 --> 01:00:51,250
running because he's doing this forever.

346
01:00:51,250 --> 01:00:53,150
So the loop is doing
what it's saying to do,

347
01:00:53,150 --> 01:00:54,650
but this isn't all that interesting.

348
01:00:54,650 --> 01:00:55,310
Let's do this.

349
01:00:55,310 --> 01:00:59,870
Let me add a control block, and use one
of those conditions for the first time.

350
01:00:59,870 --> 01:01:03,119
>> So it's going to move 10 steps--
10 dots, 10 pixels on the screen--

351
01:01:03,119 --> 01:01:04,660
then it's going to ask this question.

352
01:01:04,660 --> 01:01:09,340
If something is true, then do
something inside this block.

353
01:01:09,340 --> 01:01:13,060
So it turns out sensing has a whole
bunch of Boolean expressions--

354
01:01:13,060 --> 01:01:16,580
questions of the yes no or true
false form-- let me do this.

355
01:01:16,580 --> 01:01:19,260
>> If touching-- and then there's
this little drop down menu.

356
01:01:19,260 --> 01:01:20,410
I can parameterize it.

357
01:01:20,410 --> 01:01:23,010
If touching the edge-- let's
do something like that.

358
01:01:23,010 --> 01:01:27,310
So if touching edge--
let me go back to motion.

359
01:01:27,310 --> 01:01:32,281
And why don't we just
turn around 180 degrees?

360
01:01:32,281 --> 01:01:32,780
All right.

361
01:01:32,780 --> 01:01:35,070
So forever, move 10 steps.

362
01:01:35,070 --> 01:01:37,670
If you're touching the
edge, turn 180 degrees.

363
01:01:37,670 --> 01:01:39,720
And that's not the end of the program
because you're in a forever block,

364
01:01:39,720 --> 01:01:42,053
so it's going to go again and
again and again and again.

365
01:01:42,053 --> 01:01:43,980
So let's see what happens.

366
01:01:43,980 --> 01:01:44,785
OK.

367
01:01:44,785 --> 01:01:48,270
A little buggy, but kind of cool.

368
01:01:48,270 --> 01:01:51,710
>> And we can add to this some silly things
that aren't all that intellectually

369
01:01:51,710 --> 01:01:52,270
interesting.

370
01:01:52,270 --> 01:01:57,210
But if we hit this little
microphone button-- ouch.

371
01:01:57,210 --> 01:01:58,480
Let me clean this up.

372
01:01:58,480 --> 01:02:01,540
Let me enhance this as
they would say on TV.

373
01:02:01,540 --> 01:02:05,400
Clean that up, Save, and
now go up to scripts.

374
01:02:05,400 --> 01:02:07,500
>> And now, let me go to sound.

375
01:02:07,500 --> 01:02:09,002
Let me give it a name.

376
01:02:09,002 --> 01:02:12,440
I'll call this ouch.

377
01:02:12,440 --> 01:02:13,840
And now play sound ouch.

378
01:02:13,840 --> 01:02:16,520
Notice it appears in the
little drop down menu.

379
01:02:16,520 --> 01:02:17,612
Let's see.

380
01:02:17,612 --> 01:02:20,444
>> [OUCH]

381
01:02:20,444 --> 01:02:24,377
>> [LAUGHING]

382
01:02:24,377 --> 01:02:25,835
But we can change t his on the fly.

383
01:02:25,835 --> 01:02:28,106
We can be twice as annoying.

384
01:02:28,106 --> 01:02:31,760
>> [OUCH]

385
01:02:31,760 --> 01:02:35,332
>> Or if we make it like
1,000 steps at a time--

386
01:02:35,332 --> 01:02:39,900

387
01:02:39,900 --> 01:02:40,670
>> OK.

388
01:02:40,670 --> 01:02:42,295
So we're going to leave that one alone.

389
01:02:42,295 --> 01:02:45,290
So again, building blocks-- I
started with something super simple,

390
01:02:45,290 --> 01:02:47,930
and then I added a feature,
added a feature, added a feature.

391
01:02:47,930 --> 01:02:50,721
And I no longer need to worry about
how the first of those features

392
01:02:50,721 --> 01:02:53,690
was implemented as I continue
to layer things on top.

393
01:02:53,690 --> 01:02:55,430
So in fact, let me do one other here.

394
01:02:55,430 --> 01:03:00,580
Let me go ahead and open a file that
I brought in advance, called Sheep.

395
01:03:00,580 --> 01:03:03,970
>> So it has a slightly different
character that looks like this.

396
01:03:03,970 --> 01:03:07,370
And let me see if I can't
do something using a counter

397
01:03:07,370 --> 01:03:09,310
in this case-- a so-called variable.

398
01:03:09,310 --> 01:03:15,540
I'm going to go ahead and under Events--
let me get a green flag clicked.

399
01:03:15,540 --> 01:03:19,030
Then let me go to Data, which I know
from just playing around before,

400
01:03:19,030 --> 01:03:20,214
is where variables are.

401
01:03:20,214 --> 01:03:21,880
And I'm going to go ahead and drag this.

402
01:03:21,880 --> 01:03:25,144
>> So a variable called counter, and
I'm going to initialize it to zero.

403
01:03:25,144 --> 01:03:27,560
I can call it anything-- x or
y or z-- but in programming,

404
01:03:27,560 --> 01:03:30,410
calling something in a semantically
useful way, like counter,

405
01:03:30,410 --> 01:03:34,540
that describes what it is, it's a
lot easier to read your code later.

406
01:03:34,540 --> 01:03:37,460
Let me go ahead and get
a forever block here.

407
01:03:37,460 --> 01:03:41,289
And let me go to the looks
page and do a Say block.

408
01:03:41,289 --> 01:03:44,330
But what's cool about variables is I
don't have to just type in something

409
01:03:44,330 --> 01:03:47,850
like hello world, which we've already
done, I can instead go to Data

410
01:03:47,850 --> 01:03:50,690
and drag my variable, and even
though the shape doesn't quite

411
01:03:50,690 --> 01:03:53,000
look like it should fit,
it will grow to fill.

412
01:03:53,000 --> 01:03:58,396
And I'll just say the counter for one
second-- spoiler-- he's going to count.

413
01:03:58,396 --> 01:04:00,380
We'll say it for one second.

414
01:04:00,380 --> 01:04:02,840
Then I'm going to go and
have him wait for one second,

415
01:04:02,840 --> 01:04:04,650
so it doesn't count up too fast.

416
01:04:04,650 --> 01:04:08,430
And then lastly, change counter
by one-- in other words,

417
01:04:08,430 --> 01:04:13,520
increment the counter by one
additional value and do this forever.

418
01:04:13,520 --> 01:04:16,129
>> So the sheep too, like a
programmer, counts from 0.

419
01:04:16,129 --> 01:04:20,350

420
01:04:20,350 --> 01:04:23,740
And if we wait long enough,
he will do this forever.

421
01:04:23,740 --> 01:04:27,740
But that's not exactly true, because
in fact, as we'll discover in week one,

422
01:04:27,740 --> 01:04:31,871
integers and computers more generally,
technically have only a finite-- well,

423
01:04:31,871 --> 01:04:33,829
rather computers, when
they represent integers,

424
01:04:33,829 --> 01:04:35,670
only have a finite number of bits.

425
01:04:35,670 --> 01:04:37,860
Those light bulbs there
can only count so high

426
01:04:37,860 --> 01:04:39,239
before you're out of light bulbs.

427
01:04:39,239 --> 01:04:41,590
And a computer too,
only has so much memory,

428
01:04:41,590 --> 01:04:44,640
only has so many transistors,
so it can only count so high.

429
01:04:44,640 --> 01:04:47,409
>> So it turns out that the sheep,
I think, can count to 2 billion

430
01:04:47,409 --> 01:04:48,409
or something pretty big.

431
01:04:48,409 --> 01:04:50,325
So we're not going to
wait for this to happen.

432
01:04:50,325 --> 01:04:54,850
But eventually some bug will happen
that can have some very real world

433
01:04:54,850 --> 01:04:55,970
ramifications.

434
01:04:55,970 --> 01:04:58,861
But beyond the sheep, that
just introduces a variable.

435
01:04:58,861 --> 01:05:01,110
Let's go ahead and open up
something I made in advance

436
01:05:01,110 --> 01:05:07,430
here called Pet the Cat--
Pet the Cat over here.

437
01:05:07,430 --> 01:05:10,420
And notice here it's few
blocks, but when green flag

438
01:05:10,420 --> 01:05:12,474
clicked, forever doing the following.

439
01:05:12,474 --> 01:05:15,265
If you're touching the mouse
pointer-- so the cursor on the screen,

440
01:05:15,265 --> 01:05:18,529
the arrow-- play sound meow
and then wait two seconds.

441
01:05:18,529 --> 01:05:19,570
And just do this forever.

442
01:05:19,570 --> 01:05:22,619
Just constantly wait
to see if the pointer--

443
01:05:22,619 --> 01:05:24,710
if the cat is touching the pointer.

444
01:05:24,710 --> 01:05:26,060
>> So I hit play.

445
01:05:26,060 --> 01:05:26,920
Nothing's happening.

446
01:05:26,920 --> 01:05:28,980
But as I move the cursor over the cat,

447
01:05:28,980 --> 01:05:31,960
>> [MEOWING]

448
01:05:31,960 --> 01:05:34,750
>> And if I move it away, not
petting the cat anymore.

449
01:05:34,750 --> 01:05:38,090
So some conditional logic
nested inside of a loop.

450
01:05:38,090 --> 01:05:43,070
How about this example, deliberately
called Don't Pet the Cat?

451
01:05:43,070 --> 01:05:45,253
What's this going to do?

452
01:05:45,253 --> 01:05:47,880
>> [MEOWING]

453
01:05:47,880 --> 01:05:50,215
>> Why should you not pet the cat?

454
01:05:50,215 --> 01:05:59,440
>> [MEOWING]

455
01:05:59,440 --> 01:06:00,699
>> OK.

456
01:06:00,699 --> 01:06:03,880
So this is an example of an if else.

457
01:06:03,880 --> 01:06:06,482
It's a decision point and
because it's sitting in the loop,

458
01:06:06,482 --> 01:06:07,690
they're both getting checked.

459
01:06:07,690 --> 01:06:08,280
Is this true?

460
01:06:08,280 --> 01:06:08,760
Is this true?

461
01:06:08,760 --> 01:06:09,250
Is this true?

462
01:06:09,250 --> 01:06:09,791
Is this true?

463
01:06:09,791 --> 01:06:11,880
And eventually, one of
those is going to apply

464
01:06:11,880 --> 01:06:16,480
and so you hear either the meow or
the roar of the lion in that case.

465
01:06:16,480 --> 01:06:21,400
>> Well, let's do a slightly more fancy one
that I made in advance too-- threads.

466
01:06:21,400 --> 01:06:25,210
So a thread is just one
thing that a computer can do.

467
01:06:25,210 --> 01:06:29,349
So a multi-threaded program is a program
that can do multiple things at once.

468
01:06:29,349 --> 01:06:31,140
And all of these examples
thus far have had

469
01:06:31,140 --> 01:06:35,980
just one script, so to speak--
one program like this up here.

470
01:06:35,980 --> 01:06:38,810
But notice this program has
two sprites, two characters.

471
01:06:38,810 --> 01:06:40,020
One is a bird.

472
01:06:40,020 --> 01:06:40,870
One is a cat.

473
01:06:40,870 --> 01:06:45,080
>> And notice when I click on these down
left, they each have their own scripts

474
01:06:45,080 --> 01:06:47,120
or programs associated with them.

475
01:06:47,120 --> 01:06:49,420
And both of those
programs, notice, start

476
01:06:49,420 --> 01:06:52,600
with when green flag clicked--
let's look at the cat--

477
01:06:52,600 --> 01:06:54,030
when green flag clicked.

478
01:06:54,030 --> 01:06:58,220
And so indeed, when I hit play now,
two things are going to happen at once.

479
01:06:58,220 --> 01:07:01,750
The cat and the bird are both
going to operate simultaneously

480
01:07:01,750 --> 01:07:03,815
to create this effect.

481
01:07:03,815 --> 01:07:05,440
And you might imagine what's happening.

482
01:07:05,440 --> 01:07:08,340
There's a loop and the bird
and the cat are in a loop.

483
01:07:08,340 --> 01:07:11,270
The bird is just bouncing like
I was before when I said ouch.

484
01:07:11,270 --> 01:07:13,040
But the cat clearly has an advantage.

485
01:07:13,040 --> 01:07:16,040
There's another sensing block
that points the cat deliberately

486
01:07:16,040 --> 01:07:19,836
to the bird in this case here.

487
01:07:19,836 --> 01:07:22,960
So we could tease apart, by looking
through those blocks, what's happening.

488
01:07:22,960 --> 01:07:25,460
But the key ingredient here is one.

489
01:07:25,460 --> 01:07:28,520
The bird, so that this game isn't
completely boring-- or this animation--

490
01:07:28,520 --> 01:07:30,060
starts at a random direction.

491
01:07:30,060 --> 01:07:32,890
And the computer is picking
a number between 90 and 180

492
01:07:32,890 --> 01:07:36,110
essentially, so that it's a slightly
different animation each time.

493
01:07:36,110 --> 01:07:39,480
>> And then notice here, if the
cat is touching the bird, then

494
01:07:39,480 --> 01:07:42,030
play the lion four sound-- the roar.

495
01:07:42,030 --> 01:07:46,330
But meanwhile in the bird's
palette, we have this.

496
01:07:46,330 --> 01:07:49,229
Forever, if not touching the cat,
just keep moving three steps.

497
01:07:49,229 --> 01:07:50,770
And then here's another puzzle piece.

498
01:07:50,770 --> 01:07:52,030
If you're on the edge, bounce.

499
01:07:52,030 --> 01:07:54,840
So the bird is just kind of
minding its own business,

500
01:07:54,840 --> 01:07:57,330
just flying around and
bouncing, and it's really

501
01:07:57,330 --> 01:08:01,780
the cat that had the conditional logic
to determine if it had caught the bird.

502
01:08:01,780 --> 01:08:02,280
All right.

503
01:08:02,280 --> 01:08:08,800
So let's do one other here,
this one being called Hi Hi Hi.

504
01:08:08,800 --> 01:08:15,100
And this one here just does
this in a forever loop.

505
01:08:15,100 --> 01:08:18,925
But notice-- how do we stop
this very annoying program?

506
01:08:18,925 --> 01:08:21,600

507
01:08:21,600 --> 01:08:22,640
Hit the space bar.

508
01:08:22,640 --> 01:08:27,990
Because if I do that,
the left hand program--

509
01:08:27,990 --> 01:08:31,550
notice it's constantly listening--
is the key space press.

510
01:08:31,550 --> 01:08:34,090
If the space bar pressed,
and if so, what does it do?

511
01:08:34,090 --> 01:08:35,980
It does a very common technique.

512
01:08:35,980 --> 01:08:38,590
It sets a variable equal to some value.

513
01:08:38,590 --> 01:08:39,741
But it toggles that value.

514
01:08:39,741 --> 01:08:41,490
[? So appearance ?]
based on the shape-- I

515
01:08:41,490 --> 01:08:43,160
have a variable that I
wrote in advance called

516
01:08:43,160 --> 01:08:44,770
Muted, which just says yes or no.

517
01:08:44,770 --> 01:08:45,880
Is the sound muted or not?

518
01:08:45,880 --> 01:08:46,990
True or false?

519
01:08:46,990 --> 01:08:51,580
And notice, I'm saying this-- if
muted is zero, then change to one,

520
01:08:51,580 --> 01:08:53,840
else set mute it to zero.

521
01:08:53,840 --> 01:08:55,540
So just flip the value from zero to one.

522
01:08:55,540 --> 01:08:58,320
I could have done-- change it
from two to three and three to two

523
01:08:58,320 --> 01:09:00,162
or four to five or four to six.

524
01:09:00,162 --> 01:09:01,870
But it doesn't matter
what numbers I use,

525
01:09:01,870 --> 01:09:04,090
so long as I keep
changing it the opposite.

526
01:09:04,090 --> 01:09:07,290
>> And most any programmer would just
choose zero and one-- false and true,

527
01:09:07,290 --> 01:09:09,510
off and on-- to represent this.

528
01:09:09,510 --> 01:09:10,930
And this is still running.

529
01:09:10,930 --> 01:09:12,190
If I hit the space bar again

530
01:09:12,190 --> 01:09:13,590
>> [SEAL SOUNDS]

531
01:09:13,590 --> 01:09:15,440
>> The program is still running.

532
01:09:15,440 --> 01:09:18,400
Because there's this other script
that says, forever do the following.

533
01:09:18,400 --> 01:09:21,390

534
01:09:21,390 --> 01:09:24,770
If the muted variable equals
zero-- so if you're not muted

535
01:09:24,770 --> 01:09:29,609
is the logic-- if it's false
or no, then play the sound,

536
01:09:29,609 --> 01:09:30,650
because you're not muted.

537
01:09:30,650 --> 01:09:33,358
You should play the sound and then
think hi hi hi for two seconds

538
01:09:33,358 --> 01:09:35,790
and then wait, and do it
again and again and again.

539
01:09:35,790 --> 01:09:40,760
>> And so in this way do we have a way for
people to-- for programs to interact.

540
01:09:40,760 --> 01:09:43,120
And they don't have to
be as dated as others.

541
01:09:43,120 --> 01:09:46,280
In fact, poking around--
no pun intended--

542
01:09:46,280 --> 01:09:49,250
someone spent a huge amount of
time on the internet implementing

543
01:09:49,250 --> 01:09:51,580
PokemonGo in Scratch.

544
01:09:51,580 --> 01:09:55,440
It even geolocates you in
Cambridge or Allston here.

545
01:09:55,440 --> 01:10:03,120
So if you want to see too what people
can do is this-- very fancy menu.

546
01:10:03,120 --> 01:10:04,780
Click on here.

547
01:10:04,780 --> 01:10:07,430
>> This is me with my arrow keys now.

548
01:10:07,430 --> 01:10:09,446
I'm going to go after this.

549
01:10:09,446 --> 01:10:09,946
Click.

550
01:10:09,946 --> 01:10:12,949

551
01:10:12,949 --> 01:10:14,240
And now you click the PokeBall.

552
01:10:14,240 --> 01:10:17,130

553
01:10:17,130 --> 01:10:20,260
I mean, I think you're
supposed to click the PokeBall.

554
01:10:20,260 --> 01:10:20,760
All right.

555
01:10:20,760 --> 01:10:22,680
So I did that.

556
01:10:22,680 --> 01:10:23,950
I can go over here.

557
01:10:23,950 --> 01:10:27,790
And this person implemented some more
PokeBalls over here-- three PokeBalls.

558
01:10:27,790 --> 01:10:29,950
>> We'll post a link to this
online so you can play.

559
01:10:29,950 --> 01:10:32,364
But notice there's just
some basic building blocks.

560
01:10:32,364 --> 01:10:33,780
It looks a lot fancier, and it is.

561
01:10:33,780 --> 01:10:35,905
This is impressive and more
than we would typically

562
01:10:35,905 --> 01:10:37,740
expect, certainly for problem set zero.

563
01:10:37,740 --> 01:10:40,809
I have no idea how long
this person spent online.

564
01:10:40,809 --> 01:10:41,850
But it's all just a loop.

565
01:10:41,850 --> 01:10:43,180
There's a sound playing.

566
01:10:43,180 --> 01:10:44,850
There's some kind of loop
listening for whether I'm

567
01:10:44,850 --> 01:10:47,558
hitting the up arrow or the down
arrow or the left and the right,

568
01:10:47,558 --> 01:10:49,834
and then if so, it's moving
it some number of pixels.

569
01:10:49,834 --> 01:10:51,750
And then if I click on
another sprite, there's

570
01:10:51,750 --> 01:10:53,390
some kind of if condition there.

571
01:10:53,390 --> 01:10:54,806
Yeah, this is getting too intense.

572
01:10:54,806 --> 01:10:56,100
We're going to stop.

573
01:10:56,100 --> 01:10:57,750
It's all those basic building blocks.

574
01:10:57,750 --> 01:11:01,530
There are no other ingredients other
than the ones we've looked at already.

575
01:11:01,530 --> 01:11:04,670
>> And yet here, let me do
one final set of examples

576
01:11:04,670 --> 01:11:06,960
that paints a picture too
of what you can do here.

577
01:11:06,960 --> 01:11:10,481
Here's a very simple program that
just does this-- cough, cough, cough.

578
01:11:10,481 --> 01:11:12,480
And based only on what
we've looked at thus far,

579
01:11:12,480 --> 01:11:14,570
where is the obvious
opportunity for improvement.

580
01:11:14,570 --> 01:11:15,570
This program is correct.

581
01:11:15,570 --> 01:11:17,980
It coughs three times,
which is what I intended.

582
01:11:17,980 --> 01:11:19,650
But it's poorly implemented.

583
01:11:19,650 --> 01:11:20,600
It's badly designed.

584
01:11:20,600 --> 01:11:22,000
Why?

585
01:11:22,000 --> 01:11:22,500
Yeah.

586
01:11:22,500 --> 01:11:23,230
It's not a loop.

587
01:11:23,230 --> 01:11:24,610
And it's not so much
that it's not a loop,

588
01:11:24,610 --> 01:11:26,400
it's that there's a lot of redundancy.

589
01:11:26,400 --> 01:11:28,830
There is copied and
pasted code, so to speak.

590
01:11:28,830 --> 01:11:31,830
And the solution probably
is indeed a loop.

591
01:11:31,830 --> 01:11:34,350
So let me go ahead
and improve upon that.

592
01:11:34,350 --> 01:11:36,250
And I'm going to drag these over here.

593
01:11:36,250 --> 01:11:39,986
Let me go ahead and get a repeat
block, change this to three.

594
01:11:39,986 --> 01:11:41,860
I'm going to throw away
some of those blocks.

595
01:11:41,860 --> 01:11:43,150
>> And you'll notice it's pretty intuitive.

596
01:11:43,150 --> 01:11:45,691
You drag and drop and things
appear and disappear eventually.

597
01:11:45,691 --> 01:11:49,170
And I can just drag this in here, and
now I have a cleaner version still.

598
01:11:49,170 --> 01:11:50,730
But you know what?

599
01:11:50,730 --> 01:11:52,940
There's this opportunity
now for abstraction--

600
01:11:52,940 --> 01:11:56,350
to start to define new vocabulary
that MIT didn't anticipate.

601
01:11:56,350 --> 01:11:59,110
There's wait and repeat
and forever and if,

602
01:11:59,110 --> 01:12:02,590
but what if I want to introduce
the word cough as a block?

603
01:12:02,590 --> 01:12:06,230
What if I want a puzzle piece
whose purpose in life is to cough?

604
01:12:06,230 --> 01:12:10,720
>> Well, let's look at this version
here, which I made as follows.

605
01:12:10,720 --> 01:12:13,579
Magically, I have created
this puzzle piece here,

606
01:12:13,579 --> 01:12:14,870
which Scratch allows you to do.

607
01:12:14,870 --> 01:12:16,787
And indeed C and Python
and JavaScript are

608
01:12:16,787 --> 01:12:18,370
going to allow you to do this as well.

609
01:12:18,370 --> 01:12:21,830
You can create your own custom
pieces that you call what you want.

610
01:12:21,830 --> 01:12:24,890
In this case, cough feels
like a reasonable definition.

611
01:12:24,890 --> 01:12:27,880
And then with these pieces down
here can you define what it means.

612
01:12:27,880 --> 01:12:30,290
>> I dragged and dropped from
this palette here-- more

613
01:12:30,290 --> 01:12:33,500
blocks-- this big purple
block, where I typed in cough

614
01:12:33,500 --> 01:12:35,290
as the name of my new puzzle piece.

615
01:12:35,290 --> 01:12:39,920
And then I'm saying any time a user
calls this new cough puzzle piece,

616
01:12:39,920 --> 01:12:41,770
do a say and a wait.

617
01:12:41,770 --> 01:12:46,160
And so up here in my repeat block,
I can just cough three times.

618
01:12:46,160 --> 01:12:49,972
>> And I would argue, especially
if now you hide this detail.

619
01:12:49,972 --> 01:12:51,430
Who cares how cough is implemented?

620
01:12:51,430 --> 01:12:54,390
All I care about as a
programmer that I can cough.

621
01:12:54,390 --> 01:12:56,280
I don't care how say is implemented.

622
01:12:56,280 --> 01:12:58,620
I just care that the
cat can say something.

623
01:12:58,620 --> 01:13:02,720
I can abstract away that detail and
only focus on what's on the screen here.

624
01:13:02,720 --> 01:13:04,400
But I can take this one step further.

625
01:13:04,400 --> 01:13:08,070
>> Notice that here, I have
implemented the loop three times.

626
01:13:08,070 --> 01:13:11,560
But what if instead I grab this version?

627
01:13:11,560 --> 01:13:14,640
And what if instead
in this version here,

628
01:13:14,640 --> 01:13:18,730
I just change my puzzle piece to take
an argument and input unto itself?

629
01:13:18,730 --> 01:13:21,100
And that input can be
a number like three.

630
01:13:21,100 --> 01:13:24,580
So now, if I am writing a program
and I want the cat to cough,

631
01:13:24,580 --> 01:13:28,270
I can actually tell the puzzle
piece how many times to cough,

632
01:13:28,270 --> 01:13:31,990
because at the bottom here, a fancier
version of these custom puzzle pieces

633
01:13:31,990 --> 01:13:34,500
lets me specify that
cough actually takes

634
01:13:34,500 --> 01:13:36,951
an input-- takes an argument like this.

635
01:13:36,951 --> 01:13:37,700
And you know what?

636
01:13:37,700 --> 01:13:38,890
Maybe I realize, wait a minute.

637
01:13:38,890 --> 01:13:40,680
Coughing is the same--
it's fundamentally

638
01:13:40,680 --> 01:13:42,120
the same idea as sneezing.

639
01:13:42,120 --> 01:13:44,040
It's just a different
word on the screen.

640
01:13:44,040 --> 01:13:46,550
I can abstract away
further and implement

641
01:13:46,550 --> 01:13:48,750
this final version of a
cough, which at first glance

642
01:13:48,750 --> 01:13:50,660
is way more complex looking.

643
01:13:50,660 --> 01:13:52,140
But notice what I've done.

644
01:13:52,140 --> 01:13:55,930
I have now generalized-- genericized
really-- this puzzle piece

645
01:13:55,930 --> 01:13:59,900
to be called say word n times.

646
01:13:59,900 --> 01:14:04,410
>> And now I have two new puzzle pieces
down here define cough n times.

647
01:14:04,410 --> 01:14:06,790
And what does the cough function do?

648
01:14:06,790 --> 01:14:08,420
What does my custom puzzle piece do?

649
01:14:08,420 --> 01:14:11,996
It just calls the say block,
passing in the word I want to say,

650
01:14:11,996 --> 01:14:13,870
passing in the number
of times I want to say.

651
01:14:13,870 --> 01:14:18,210
Because now I can implement
sneeze by simply saying achoo,

652
01:14:18,210 --> 01:14:20,320
in this case, some number of times.

653
01:14:20,320 --> 01:14:22,360
>> And so I'm layering and layering.

654
01:14:22,360 --> 01:14:25,690
And again, the key here is not
how I implemented it, but the fact

655
01:14:25,690 --> 01:14:28,070
that if I just literally
move these off the screen,

656
01:14:28,070 --> 01:14:31,280
look how simple if not
pretty my program now looks.

657
01:14:31,280 --> 01:14:33,930
Because it does what it
says, I've abstracted

658
01:14:33,930 --> 01:14:37,640
away what is inside that black box.
it happens to be a purple box here,

659
01:14:37,640 --> 01:14:41,430
but I've obstructed away what's inside
because I don't care how it works.

660
01:14:41,430 --> 01:14:43,650
I just care now that it works.

661
01:14:43,650 --> 01:14:46,375
>> And indeed, in problem
set zero, this is exactly

662
01:14:46,375 --> 01:14:49,250
the kind of layering of ideas you'll
have the opportunity to explore.

663
01:14:49,250 --> 01:14:53,510
It's exactly the opportunity to
apply problem solving techniques,

664
01:14:53,510 --> 01:14:55,550
to what's probably an
unfamiliar environment.

665
01:14:55,550 --> 01:14:57,890
And whether you've not programmed
before or programmed before,

666
01:14:57,890 --> 01:14:59,500
you'll find that there's
a little something

667
01:14:59,500 --> 01:15:00,874
in this environment for everyone.

668
01:15:00,874 --> 01:15:02,770
And with problem set
one in a week's time,

669
01:15:02,770 --> 01:15:06,630
we'll be transitioned to focusing
on a higher level language called

670
01:15:06,630 --> 01:15:09,290
C-- or rather a lower
level language called

671
01:15:09,290 --> 01:15:11,347
C-- that's even more
powerful, even though it's

672
01:15:11,347 --> 01:15:12,930
a little more cryptic at first glance.

673
01:15:12,930 --> 01:15:16,740
>> And you'll realize per today's TL:DR,
that this problem set has a shorter

674
01:15:16,740 --> 01:15:19,880
window of time than future ones, simply
because you should find it fairly

675
01:15:19,880 --> 01:15:20,420
accessible.

676
01:15:20,420 --> 01:15:22,211
And not to worry if
you add the class late.

677
01:15:22,211 --> 01:15:23,920
We'll address that before long.

678
01:15:23,920 --> 01:15:28,480
And before we adjourn for cake, let's
finish with just a two-minute look

679
01:15:28,480 --> 01:15:30,500
at what awaits you here in CS50.

680
01:15:30,500 --> 01:15:40,950

681
01:15:40,950 --> 01:17:20,803
[MUSIC PLAYING]

682
01:17:20,803 --> 01:17:21,302
All right.

683
01:17:21,302 --> 01:17:22,690
That's it for CS50.

684
01:17:22,690 --> 01:17:23,650
We will see you soon.

685
01:17:23,650 --> 01:17:25,526
Cake is now served.

686
01:17:25,526 --> 01:17:28,998

687
01:17:28,998 --> 01:18:14,267
[MUSIC PLAYING]

688
01:18:14,267 --> 01:18:16,350
SPEAKER 17: Have you heard
of a sabbatical, Chief?

689
01:18:16,350 --> 01:18:29,490

690
01:18:29,490 --> 01:18:31,920
SPEAKER 18: Perhaps there's
more under the hood.

691
01:18:31,920 --> 01:18:38,279

