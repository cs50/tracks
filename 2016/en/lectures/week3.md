```
1
00:00:00,000 --> 00:00:00,499
[SILENCE]

2
00:00:00,499 --> 00:00:04,203
[MUSIC PLAYING]

3
00:00:04,203 --> 00:00:15,844
[SILENCE]

4
00:00:15,844 --> 00:00:16,800
SPEAKER 1: All right.

5
00:00:16,800 --> 00:00:18,600
So this is CS50.

6
00:00:18,600 --> 00:00:20,410
And this is the start of week 3.

7
00:00:20,410 --> 00:00:23,640
And you'll recall that last time,
we introduced a number of new ideas

8
00:00:23,640 --> 00:00:27,120
that we'll now start taking for granted
as being already under our belt.

9
00:00:27,120 --> 00:00:30,590
In particular, we looked last
time at debugging more generally.

10
00:00:30,590 --> 00:00:33,700
And recall that debugging is the
process of removing bugs from your code,

11
00:00:33,700 --> 00:00:35,390
removing mistakes from your code.

12
00:00:35,390 --> 00:00:38,730
And we proposed these
three CS50-specific tools.

13
00:00:38,730 --> 00:00:41,319
In particular, help50, which
is a command line tool.

14
00:00:41,319 --> 00:00:43,110
Something that you can
run at your keyboard

15
00:00:43,110 --> 00:00:45,330
and actually run it
before your own command.

16
00:00:45,330 --> 00:00:47,080
So that if you don't
understand some error

17
00:00:47,080 --> 00:00:49,913
message from a program you're
compiling or a command you're running,

18
00:00:49,913 --> 00:00:53,210
you can actually see some
helpful output from CS50 staff.

19
00:00:53,210 --> 00:00:57,570
eprintf, which, by contrast, is
something you can put into your code,

20
00:00:57,570 --> 00:00:59,800
like printf, and print
a message to yourself.

21
00:00:59,800 --> 00:01:02,558
And nicely enough, it's going to
actually include the line number

22
00:01:02,558 --> 00:01:04,099
and the file name from which it came.

23
00:01:04,099 --> 00:01:06,270
So you can identify where
some output is coming.

24
00:01:06,270 --> 00:01:10,020
And then lastly, debug 50 which is the
most sophisticated of these programs.

25
00:01:10,020 --> 00:01:12,720
And debug 50 when you run
it at the command line,

26
00:01:12,720 --> 00:01:15,137
followed by the name of your
program in the usual way,

27
00:01:15,137 --> 00:01:17,470
it's actually going to open
up what's called a debugger.

28
00:01:17,470 --> 00:01:20,987
A graphical user interface
that CS50 staff put together

29
00:01:20,987 --> 00:01:23,070
that will actually let you
step through your code,

30
00:01:23,070 --> 00:01:26,590
see variables, and generally
understand it better.

31
00:01:26,590 --> 00:01:29,500
So we also looked at this
in the context of Ovaltine

32
00:01:29,500 --> 00:01:30,890
in particular, and Little Ralphy.

33
00:01:30,890 --> 00:01:35,170
And we looked at cryptography,
the art of concealing information.

34
00:01:35,170 --> 00:01:37,480
And indeed, among the
challenges in CS50,

35
00:01:37,480 --> 00:01:39,560
ultimately if you choose
to accept them, are

36
00:01:39,560 --> 00:01:42,440
things like implementing
Caesar cipher and Vigenere

37
00:01:42,440 --> 00:01:44,480
cipher, cracking passwords.

38
00:01:44,480 --> 00:01:48,580
So indeed, those problems lie ahead
and draw inspiration from this domain.

39
00:01:48,580 --> 00:01:51,890
And then, we focused more
technically on what a string is.

40
00:01:51,890 --> 00:01:55,470
So Zamyla, a name we keep taking for
granted, that a computer can express.

41
00:01:55,470 --> 00:02:00,630
Z-A-M-Y-L-A, as a string
or a phrase in a program.

42
00:02:00,630 --> 00:02:03,460
But it turns out that
underneath the hood,

43
00:02:03,460 --> 00:02:05,460
strings are a little more mundane.

44
00:02:05,460 --> 00:02:08,280
They really are just
this grid of information.

45
00:02:08,280 --> 00:02:10,814
And we might draw Zamyla's
characters boxed in like this.

46
00:02:10,814 --> 00:02:13,230
But if you think of what's
inside of your computer itself,

47
00:02:13,230 --> 00:02:15,470
you have a whole bunch
of memory, or RAM.

48
00:02:15,470 --> 00:02:19,420
And inside of that RAM,
you have Z-A-M-Y-L-A,

49
00:02:19,420 --> 00:02:20,990
but then this special character.

50
00:02:20,990 --> 00:02:23,960
What is this /0 used for.

51
00:02:23,960 --> 00:02:29,060
Why is there this seemingly strange
character at the end of Zamyla's name?

52
00:02:29,060 --> 00:02:30,160
Anyone?

53
00:02:30,160 --> 00:02:31,104
Yeah.

54
00:02:31,104 --> 00:02:32,020
AUDIENCE: [INAUDIBLE].

55
00:02:32,020 --> 00:02:33,770
SPEAKER 1: Yeah, to denote
the end of the string.

56
00:02:33,770 --> 00:02:36,394
Because after all, if we were to
have someone else's name here,

57
00:02:36,394 --> 00:02:39,240
if the next string I got
is Maria, for instance.

58
00:02:39,240 --> 00:02:44,340
M-A-R-I-A, we need to be able
to know where Zamyla's name ends

59
00:02:44,340 --> 00:02:45,930
and Maria's name starts in memory.

60
00:02:45,930 --> 00:02:49,350
Because at the end of the day,
C, and programming in particular,

61
00:02:49,350 --> 00:02:50,850
isn't really all that sophisticated.

62
00:02:50,850 --> 00:02:53,433
At the end of the day, the only
place you have to store things

63
00:02:53,433 --> 00:02:54,970
is your computer's memory or RAM.

64
00:02:54,970 --> 00:02:59,240
And each of these boxes represents a
byte of memory inside of your computer.

65
00:02:59,240 --> 00:03:02,200
And so if all this is-- so
far as the computer cares--

66
00:03:02,200 --> 00:03:04,640
is a sequence of six
alphabetical letters,

67
00:03:04,640 --> 00:03:09,100
the computer needs to be told
or given a hint as with this /0,

68
00:03:09,100 --> 00:03:13,320
which just represents 8 zero bits, as to
where Zamyla's name ends and something

69
00:03:13,320 --> 00:03:14,960
else begins.

70
00:03:14,960 --> 00:03:17,560
And we use this as an opportunity
to introduce ultimately

71
00:03:17,560 --> 00:03:18,780
command line arguments.

72
00:03:18,780 --> 00:03:21,030
So in particular, we've been
writing programs thus far

73
00:03:21,030 --> 00:03:22,150
with just int main void.

74
00:03:22,150 --> 00:03:27,360
And void, we realized, signifies that
a program takes no command line inputs.

75
00:03:27,360 --> 00:03:31,100
It can still call functions, like get
string and get int and get [? flow. ?]

76
00:03:31,100 --> 00:03:34,670
But when you run the program, you can't
put any additional words at the prompt

77
00:03:34,670 --> 00:03:38,310
after it if you've declared
main as taking void as input.

78
00:03:38,310 --> 00:03:39,650
Nothing as input.

79
00:03:39,650 --> 00:03:42,660
But we introduced instead
this, int main int arg

80
00:03:42,660 --> 00:03:45,660
c string arg v open bracket
close bracket, which

81
00:03:45,660 --> 00:03:49,954
means main can alternatively take two
inputs from the so-called command line

82
00:03:49,954 --> 00:03:50,620
when you run it.

83
00:03:50,620 --> 00:03:55,530
It can take arg c and arg
v. And what was arg c?

84
00:03:55,530 --> 00:03:58,390
What was arg c?

85
00:03:58,390 --> 00:03:59,960
Arg c.

86
00:03:59,960 --> 00:04:00,960
Yeah, argument.

87
00:04:00,960 --> 00:04:01,900
Yeah.

88
00:04:01,900 --> 00:04:02,840
AUDIENCE: [INAUDIBLE].

89
00:04:02,840 --> 00:04:05,090
SPEAKER 1: Yeah, the number
of command line arguments.

90
00:04:05,090 --> 00:04:06,640
Arg c for argument count.

91
00:04:06,640 --> 00:04:08,830
So how many words did
you type at the prompt?

92
00:04:08,830 --> 00:04:11,520
And arg v means argument
vector, which is

93
00:04:11,520 --> 00:04:17,100
another way of saying it's an
array, a contiguous block of memory

94
00:04:17,100 --> 00:04:19,420
inside of which are all
of the words themselves

95
00:04:19,420 --> 00:04:21,220
that you might have typed at the prompt.

96
00:04:21,220 --> 00:04:23,100
So this time, we're
going to build on that.

97
00:04:23,100 --> 00:04:26,200
We're going to focus
today mostly on ideas.

98
00:04:26,200 --> 00:04:27,280
Mostly on algorithms.

99
00:04:27,280 --> 00:04:30,140
Mostly on problem-solving and less
on the lower-level implementation

100
00:04:30,140 --> 00:04:30,990
details of code.

101
00:04:30,990 --> 00:04:32,800
Though, we'll look at
a couple of examples.

102
00:04:32,800 --> 00:04:35,440
So this more generally is
what's called an array.

103
00:04:35,440 --> 00:04:38,870
If you think of your computer's
memory as just a block of memory,

104
00:04:38,870 --> 00:04:40,040
block of bytes.

105
00:04:40,040 --> 00:04:42,020
And maybe it's byte 0, then byte 1.

106
00:04:42,020 --> 00:04:44,660
Then, byte 2, just because you
can number them, certainly.

107
00:04:44,660 --> 00:04:50,290
If you think of them that way, this
is kind of an arbitrary generic data

108
00:04:50,290 --> 00:04:51,530
structure, if you will.

109
00:04:51,530 --> 00:04:54,460
A generic way of just storing
things underneath the hood.

110
00:04:54,460 --> 00:04:55,880
Now, what do I mean by that?

111
00:04:55,880 --> 00:04:57,390
And why is this useful?

112
00:04:57,390 --> 00:05:00,310
Well, consider something like this.

113
00:05:00,310 --> 00:05:03,870
Consider having 8 doors,
behind which are some numbers.

114
00:05:03,870 --> 00:05:05,940
And the goal at hand
is to solve a problem.

115
00:05:05,940 --> 00:05:08,240
Find a number behind these doors.

116
00:05:08,240 --> 00:05:11,000
Now, unfortunately, you
don't know in advance

117
00:05:11,000 --> 00:05:13,900
what numbers are behind those
doors and where they are.

118
00:05:13,900 --> 00:05:15,640
Indeed, that's why the doors are closed.

119
00:05:15,640 --> 00:05:20,030
But you know that, say, the number
50 is somewhere behind those doors.

120
00:05:20,030 --> 00:05:22,460
So what do we do to actually find this?

121
00:05:22,460 --> 00:05:23,870
Well, let's go ahead and do this.

122
00:05:23,870 --> 00:05:29,352
Let me go ahead and summon up
a brave volunteer if you would.

123
00:05:29,352 --> 00:05:31,060
There's a CS50 stress
ball in it for you.

124
00:05:31,060 --> 00:05:32,320
OK, come on up.

125
00:05:32,320 --> 00:05:35,090
You want to come up on up over here?

126
00:05:35,090 --> 00:05:39,190
So we have not 8, but
rather 7 doors here.

127
00:05:39,190 --> 00:05:40,750
Even easier.

128
00:05:40,750 --> 00:05:41,501
So 7/8 the size.

129
00:05:41,501 --> 00:05:42,375
And what's your name?

130
00:05:42,375 --> 00:05:43,280
AUDIENCE: Derek [INAUDIBLE].

131
00:05:43,280 --> 00:05:43,730
SPEAKER 1: Derek?

132
00:05:43,730 --> 00:05:44,340
OK.

133
00:05:44,340 --> 00:05:46,380
David, come on up.

134
00:05:46,380 --> 00:05:47,270
Nice to meet you.

135
00:05:47,270 --> 00:05:48,090
All right.

136
00:05:48,090 --> 00:05:49,640
So here we have 7 doors.

137
00:05:49,640 --> 00:05:54,710
And the goal at hand for you is
to simply find the number 50.

138
00:05:54,710 --> 00:05:55,540
How do we find it?

139
00:05:55,540 --> 00:05:57,255
What are you going to do?

140
00:05:57,255 --> 00:05:59,580
AUDIENCE: [INAUDIBLE].

141
00:05:59,580 --> 00:06:02,315
SPEAKER 1: It's behind one
of these doors, I think.

142
00:06:02,315 --> 00:06:04,255
AUDIENCE: All right.

143
00:06:04,255 --> 00:06:05,550
I'll just try a door?

144
00:06:05,550 --> 00:06:07,280
SPEAKER 1: Try a door.

145
00:06:07,280 --> 00:06:07,980
Not the door.

146
00:06:07,980 --> 00:06:09,250
So 16 turns up.

147
00:06:09,250 --> 00:06:10,440
OK.

148
00:06:10,440 --> 00:06:13,840
Stress ball gets one step away.

149
00:06:13,840 --> 00:06:15,110
Try another.

150
00:06:15,110 --> 00:06:16,630
42.

151
00:06:16,630 --> 00:06:21,830
Answer to life, the universe, and
everything, but not this question.

152
00:06:21,830 --> 00:06:22,480
50.

153
00:06:22,480 --> 00:06:23,810
OK, very well done.

154
00:06:23,810 --> 00:06:26,410
So a round of applause if
we could for Derek here.

155
00:06:26,410 --> 00:06:27,710
Very nicely done.

156
00:06:27,710 --> 00:06:28,210
OK.

157
00:06:28,210 --> 00:06:29,460
And let's pause for just a moment.

158
00:06:29,460 --> 00:06:30,418
What was the algorithm?

159
00:06:30,418 --> 00:06:33,520
What was the set of instructions
that you used to find the number 50?

160
00:06:33,520 --> 00:06:39,090
AUDIENCE: Just try and see if I
could find any sort of arrangement.

161
00:06:39,090 --> 00:06:40,877
But otherwise, try random doors.

162
00:06:40,877 --> 00:06:41,460
SPEAKER 1: OK.

163
00:06:41,460 --> 00:06:42,430
So try random doors.

164
00:06:42,430 --> 00:06:45,105
And indeed, given no
additional information from me,

165
00:06:45,105 --> 00:06:46,230
that's the best you can do.

166
00:06:46,230 --> 00:06:47,360
Just try random doors.

167
00:06:47,360 --> 00:06:50,410
Or, if it's a little easier, just
go left to right or right to left.

168
00:06:50,410 --> 00:06:53,160
But random is perfectly equivalent
to all of those algorithms

169
00:06:53,160 --> 00:06:56,320
because you don't know
anything necessarily a priori.

170
00:06:56,320 --> 00:07:00,950
So how about for two stress balls?

171
00:07:00,950 --> 00:07:03,652
Find the number 50 this time,
but the additional ingredient

172
00:07:03,652 --> 00:07:05,360
is that we have taken
the time in advance

173
00:07:05,360 --> 00:07:07,400
to sort the numbers behind these doors.

174
00:07:07,400 --> 00:07:09,241
Does that change your
thinking in any way?

175
00:07:09,241 --> 00:07:11,032
AUDIENCE: Well, I don't
know whether you're

176
00:07:11,032 --> 00:07:12,720
sorting increasing left or right.

177
00:07:12,720 --> 00:07:13,040
SPEAKER 1: Good.

178
00:07:13,040 --> 00:07:13,790
So good challenge.

179
00:07:13,790 --> 00:07:17,040
He doesn't know if we've sorted
from left to right or right to left.

180
00:07:17,040 --> 00:07:17,630
Left to right.

181
00:07:17,630 --> 00:07:20,255
So generally, a computer scientist
when he or she says "sorted"

182
00:07:20,255 --> 00:07:21,270
would say left to right.

183
00:07:21,270 --> 00:07:22,650
But reasonable question.

184
00:07:22,650 --> 00:07:23,850
AUDIENCE: Left to right
increasing or decreasing?

185
00:07:23,850 --> 00:07:25,349
SPEAKER 1: Left to right increasing.

186
00:07:25,349 --> 00:07:25,930
Yes.

187
00:07:25,930 --> 00:07:28,410
It would be left to right in any way.

188
00:07:28,410 --> 00:07:29,270
16.

189
00:07:29,270 --> 00:07:29,770
Not 50.

190
00:07:29,770 --> 00:07:30,936
So what are you going to do?

191
00:07:30,936 --> 00:07:32,153
AUDIENCE: Well, let's see.

192
00:07:32,153 --> 00:07:34,510
I know these have to be
less, so I can remove them.

193
00:07:34,510 --> 00:07:35,176
SPEAKER 1: Good.

194
00:07:35,176 --> 00:07:37,460
AUDIENCE: [INAUDIBLE].

195
00:07:37,460 --> 00:07:39,890
SPEAKER 1: 42 is still not 50.

196
00:07:39,890 --> 00:07:40,710
And to the right.

197
00:07:40,710 --> 00:07:42,610
Very well done for Derek.

198
00:07:42,610 --> 00:07:43,720
OK, come on.

199
00:07:43,720 --> 00:07:44,295
OK.

200
00:07:44,295 --> 00:07:45,670
They're less impressed that time.

201
00:07:45,670 --> 00:07:50,430
So what did you do, though, that second
time that was actually more effective?

202
00:07:50,430 --> 00:07:53,709
I mean, frankly, at first glance it
looks like this approach was just as

203
00:07:53,709 --> 00:07:55,500
fast or just as slow
as your first approach

204
00:07:55,500 --> 00:07:57,166
because it still took you through steps.

205
00:07:57,166 --> 00:08:00,080
AUDIENCE: So what I did was since
you told me that it was sorted left

206
00:08:00,080 --> 00:08:03,500
to right increasing, I decided to
look at the middle number first

207
00:08:03,500 --> 00:08:05,975
and see whether it was
greater than or less than--

208
00:08:05,975 --> 00:08:06,600
SPEAKER 1: Good

209
00:08:06,600 --> 00:08:08,400
AUDIENCE: --the target number.

210
00:08:08,400 --> 00:08:09,100
SPEAKER 1: Good.

211
00:08:09,100 --> 00:08:11,980
AUDIENCE: And since it was less than,
I knew that all of these three values--

212
00:08:11,980 --> 00:08:12,854
SPEAKER 1: Wonderful.

213
00:08:12,854 --> 00:08:14,629
And indeed, are smaller by design.

214
00:08:14,629 --> 00:08:17,420
And so you can throw half of that
problem away, much like in week 0

215
00:08:17,420 --> 00:08:18,920
when we tore the phone book in half.

216
00:08:18,920 --> 00:08:21,640
You can throw half of that
phone book away as well.

217
00:08:21,640 --> 00:08:23,890
So thank you very much for
finding us the number 50.

218
00:08:23,890 --> 00:08:26,800
So this is something that we
did see, indeed, in week 0.

219
00:08:26,800 --> 00:08:29,320
And it's what we would
generally call binary search.

220
00:08:29,320 --> 00:08:32,520
Or more generally, just a
divide and conquer algorithm.

221
00:08:32,520 --> 00:08:34,809
But today, what we
start to do is to assess

222
00:08:34,809 --> 00:08:37,100
just how much better this actually is.

223
00:08:37,100 --> 00:08:40,950
And how we can go about finding
things more programmatically.

224
00:08:40,950 --> 00:08:45,400
So what Derek could have tried
is what someone would generally

225
00:08:45,400 --> 00:08:47,050
call linear search.

226
00:08:47,050 --> 00:08:49,120
And as the name suggests,
linear, meaning line,

227
00:08:49,120 --> 00:08:51,540
you can just kind of solve a
problem from left to right.

228
00:08:51,540 --> 00:08:54,120
And indeed, while Derek
did take a random approach,

229
00:08:54,120 --> 00:08:55,990
it would have been
functionally equivalent

230
00:08:55,990 --> 00:09:00,520
for him simply to go left to right or
right to left and find the number 50.

231
00:09:00,520 --> 00:09:01,467
It's indeed there.

232
00:09:01,467 --> 00:09:03,300
So let's introduce some
pseudocode for this.

233
00:09:03,300 --> 00:09:06,590
And there is no one right
way to implement pseudocode.

234
00:09:06,590 --> 00:09:08,940
Here is one of the most
succinct ways I could come up

235
00:09:08,940 --> 00:09:11,273
with for expressing this kind
of left to right approach.

236
00:09:11,273 --> 00:09:12,780
Or equivalently, right to left.

237
00:09:12,780 --> 00:09:18,190
For each element in the array, if
element you're looking for return true.

238
00:09:18,190 --> 00:09:20,800
And so this is a very common
paradigm in programming.

239
00:09:20,800 --> 00:09:23,467
Just say something generally,
like for each element in an array.

240
00:09:23,467 --> 00:09:26,175
And the implication is that you
would generally go left to right,

241
00:09:26,175 --> 00:09:27,850
but it's equivalent to go right to left.

242
00:09:27,850 --> 00:09:31,860
And if we indeed see at
some location in that array

243
00:09:31,860 --> 00:09:36,130
that array of boxes, the element we're
looking for, we can just return true.

244
00:09:36,130 --> 00:09:38,900
And yet, here I have return false.

245
00:09:38,900 --> 00:09:41,820
But the indentation, so to
speak, is very different.

246
00:09:41,820 --> 00:09:45,160
Why have I aligned return
false with the for loop

247
00:09:45,160 --> 00:09:49,040
here all the way on the left as opposed
to it being aligned in the middle

248
00:09:49,040 --> 00:09:52,770
or one line deeper?

249
00:09:52,770 --> 00:09:53,555
Yeah.

250
00:09:53,555 --> 00:09:54,471
AUDIENCE: [INAUDIBLE].

251
00:09:54,471 --> 00:09:57,314


252
00:09:57,314 --> 00:09:57,980
SPEAKER 1: Yeah.

253
00:09:57,980 --> 00:09:59,940
In order to denote that all
of the indented elements

254
00:09:59,940 --> 00:10:00,940
are within the for loop.

255
00:10:00,940 --> 00:10:03,587
So it doesn't strictly
matter how much you indent.

256
00:10:03,587 --> 00:10:05,420
And indeed, in some
languages, C among them,

257
00:10:05,420 --> 00:10:07,900
it doesn't matter that
you indent at all.

258
00:10:07,900 --> 00:10:10,740
But for the sake of good
style and readability,

259
00:10:10,740 --> 00:10:12,840
we've indented this
to convey to the human

260
00:10:12,840 --> 00:10:17,110
especially that this "if" is only
applicable when you're inside

261
00:10:17,110 --> 00:10:17,800
of the for loop.

262
00:10:17,800 --> 00:10:21,070
This return is only applicable when
you're inside of this "if" condition.

263
00:10:21,070 --> 00:10:24,170
And this return false
really only happens

264
00:10:24,170 --> 00:10:29,120
as the very last step in this program if
nothing else actually returns a value.

265
00:10:29,120 --> 00:10:33,300
So only if return true
happens does this program say,

266
00:10:33,300 --> 00:10:35,500
yes, I found the element
you're looking for.

267
00:10:35,500 --> 00:10:38,310
And you can think of this, therefore,
as the sort of default case.

268
00:10:38,310 --> 00:10:43,480
Now, just to toss it out
there, why would this be wrong?

269
00:10:43,480 --> 00:10:48,220
Let me go ahead and
temporarily change this program

270
00:10:48,220 --> 00:10:51,090
to be a more familiar if/else block.

271
00:10:51,090 --> 00:10:55,020
So why is this seemingly logically fine?

272
00:10:55,020 --> 00:10:58,250
It's a valid puzzle piece
if you will, a la scratch.

273
00:10:58,250 --> 00:10:59,775
But this program is now incorrect.

274
00:10:59,775 --> 00:11:01,960
Why?

275
00:11:01,960 --> 00:11:02,722
Yeah.

276
00:11:02,722 --> 00:11:03,638
AUDIENCE: [INAUDIBLE].

277
00:11:03,638 --> 00:11:09,004


278
00:11:09,004 --> 00:11:10,920
SPEAKER 1: Once you hit
it, it's automatically

279
00:11:10,920 --> 00:11:12,120
going to come out of the for loop when?

280
00:11:12,120 --> 00:11:12,619
Exactly.

281
00:11:12,619 --> 00:11:14,732
When will this come out of the for loop?

282
00:11:14,732 --> 00:11:16,674
AUDIENCE: [INAUDIBLE].

283
00:11:16,674 --> 00:11:17,340
SPEAKER 1: Good.

284
00:11:17,340 --> 00:11:20,430
So it's going to return false
if the first element isn't

285
00:11:20,430 --> 00:11:21,430
what you're looking for.

286
00:11:21,430 --> 00:11:23,369
In so far as for each
element in an array

287
00:11:23,369 --> 00:11:25,910
kind of implies that you should
be looking from left to right

288
00:11:25,910 --> 00:11:27,930
or right to left, the
first question you're

289
00:11:27,930 --> 00:11:30,030
asking yourself when looking
in that first element

290
00:11:30,030 --> 00:11:32,280
is, is this the element
you're looking for?

291
00:11:32,280 --> 00:11:32,947
If it is, great.

292
00:11:32,947 --> 00:11:34,113
You're going to return true.

293
00:11:34,113 --> 00:11:35,330
And your answer is correct.

294
00:11:35,330 --> 00:11:37,130
But if it's not the
element you're looking

295
00:11:37,130 --> 00:11:41,320
for, you're executing else return false
immediately saying no, the element

296
00:11:41,320 --> 00:11:42,990
I'm looking for is not here.

297
00:11:42,990 --> 00:11:46,070
But when really the only question
you've asked is, is the element

298
00:11:46,070 --> 00:11:48,810
I'm looking for the
very first in the array?

299
00:11:48,810 --> 00:11:51,060
And so, indeed, this would
just be logically incorrect

300
00:11:51,060 --> 00:11:53,310
because you might as well
not look at any of the array

301
00:11:53,310 --> 00:11:56,190
if you're only looking at
that very first element.

302
00:11:56,190 --> 00:11:57,480
So not what we intended.

303
00:11:57,480 --> 00:12:00,700
So indeed, that original
pseudocode is just fine.

304
00:12:00,700 --> 00:12:03,730
So alternatively, there's something
called binary search, which

305
00:12:03,730 --> 00:12:07,460
Derek actually used intuitively
for his second approach,

306
00:12:07,460 --> 00:12:11,700
where he was told in advance that the
array is sorted numerically from left

307
00:12:11,700 --> 00:12:12,200
to right.

308
00:12:12,200 --> 00:12:14,616
This gives him more information,
much like I had in week 0

309
00:12:14,616 --> 00:12:17,750
when I searched a phone book
that I knew was alphabetical.

310
00:12:17,750 --> 00:12:20,290
And you can write this algorithm
in any number of ways, too.

311
00:12:20,290 --> 00:12:24,237
I kind of borrowed the spirit of
our Mike Smith algorithm from week 0

312
00:12:24,237 --> 00:12:25,070
and I proposed this.

313
00:12:25,070 --> 00:12:26,940
Look at the middle of the array.

314
00:12:26,940 --> 00:12:29,030
If element you're
looking for return true.

315
00:12:29,030 --> 00:12:31,710
We just get lucky if it's smack
dab in the middle of the array.

316
00:12:31,710 --> 00:12:35,700
Else if the element is to
the left, because the element

317
00:12:35,700 --> 00:12:40,390
you're seeing in the middle is too big,
then search the left half of the array.

318
00:12:40,390 --> 00:12:43,690
Else if the element is to the
right, as it was in Derek's case,

319
00:12:43,690 --> 00:12:47,850
search the right half of the
array, else return false.

320
00:12:47,850 --> 00:12:50,120
But there is no go-to instruction here.

321
00:12:50,120 --> 00:12:51,326
And there's no line numbers.

322
00:12:51,326 --> 00:12:53,450
Recall from week 0 when we
searched for Mike Smith,

323
00:12:53,450 --> 00:12:55,380
I deliberately numbered
all of the lines.

324
00:12:55,380 --> 00:12:59,460
And then I said, go back to
step 2 or 3 I think it was.

325
00:12:59,460 --> 00:13:01,590
Here, I seem to be cutting a corner.

326
00:13:01,590 --> 00:13:03,696
I'm just kind of waving
my hand and saying,

327
00:13:03,696 --> 00:13:05,070
search the left half of the list.

328
00:13:05,070 --> 00:13:07,070
Or, search the right half of the list.

329
00:13:07,070 --> 00:13:10,730
But what algorithm should we
use in either of these cases?

330
00:13:10,730 --> 00:13:13,620


331
00:13:13,620 --> 00:13:15,650
How do you search the
left half of a list?

332
00:13:15,650 --> 00:13:17,505
How do you search the
right half of a list?

333
00:13:17,505 --> 00:13:21,130


334
00:13:21,130 --> 00:13:22,850
How do I do this?

335
00:13:22,850 --> 00:13:25,340
Well, where do I have an
algorithm for searching?

336
00:13:25,340 --> 00:13:26,810
Well, we saw one a moment ago.

337
00:13:26,810 --> 00:13:29,710
I've already got in my toolkit,
so to speak, linear search.

338
00:13:29,710 --> 00:13:31,020
So I could certainly use that.

339
00:13:31,020 --> 00:13:34,170
But sort of cyclically,
or sort of confusingly,

340
00:13:34,170 --> 00:13:37,260
I also have this other seemingly
fancier, faster algorithm

341
00:13:37,260 --> 00:13:38,460
called binary search.

342
00:13:38,460 --> 00:13:42,920
And yet, I'm in the middle of defining
binary search with my pseudocode.

343
00:13:42,920 --> 00:13:46,154
And yet, here I am sort of trying
to define myself with myself.

344
00:13:46,154 --> 00:13:47,820
You can't get away with this in English.

345
00:13:47,820 --> 00:13:49,560
If you're asked to
define an English word

346
00:13:49,560 --> 00:13:52,520
and you use the word in the definition,
usually a teacher or someone

347
00:13:52,520 --> 00:13:54,870
in a conversation will sort of
verbally slap you on the wrist

348
00:13:54,870 --> 00:13:56,620
because you're not
answering the question.

349
00:13:56,620 --> 00:14:00,230
And yet somehow in programming,
you can get away with this.

350
00:14:00,230 --> 00:14:05,850
Somehow, you can get away with defining
a problem with a solution like this,

351
00:14:05,850 --> 00:14:08,800
and then using that same
solution inside of your solution

352
00:14:08,800 --> 00:14:11,460
because something is changing.

353
00:14:11,460 --> 00:14:14,000
This line here, search the
left half of the array,

354
00:14:14,000 --> 00:14:16,400
and this line here, search
right half of the array,

355
00:14:16,400 --> 00:14:20,640
is not equivalent to asking
the same question again.

356
00:14:20,640 --> 00:14:22,290
Is this element in the array?

357
00:14:22,290 --> 00:14:26,670
What changes when I either search
the left half or the right half that

358
00:14:26,670 --> 00:14:28,930
makes this acceptable?

359
00:14:28,930 --> 00:14:30,357
AUDIENCE: [INAUDIBLE].

360
00:14:30,357 --> 00:14:31,315
SPEAKER 1: What's that?

361
00:14:31,315 --> 00:14:33,790
AUDIENCE: [INAUDIBLE].

362
00:14:33,790 --> 00:14:34,720
SPEAKER 1: Yes.

363
00:14:34,720 --> 00:14:35,900
That's the key ingredient.

364
00:14:35,900 --> 00:14:39,700
In so far as search left half
and search right half imply

365
00:14:39,700 --> 00:14:43,470
search in the same way, but
search a smaller problem,

366
00:14:43,470 --> 00:14:45,290
this problem will eventually stop.

367
00:14:45,290 --> 00:14:47,873
You're not going to get stuck
in an infinite loop so to speak.

368
00:14:47,873 --> 00:14:50,340
Because eventually-- you
can't half something forever.

369
00:14:50,340 --> 00:14:52,510
You're eventually going to end
up with one or zero elements.

370
00:14:52,510 --> 00:14:54,343
At which point, the
answer's going to be no.

371
00:14:54,343 --> 00:14:57,000
Return false, it's not here
per the else condition.

372
00:14:57,000 --> 00:15:01,780
But these sort of reflexive
calls or inductive,

373
00:15:01,780 --> 00:15:05,260
or more properly here, recursive
calls-- the new buzzword

374
00:15:05,260 --> 00:15:10,660
for today-- means for a function, or in
this case pseudocode, to call itself.

375
00:15:10,660 --> 00:15:13,110
To use its own definition
again and again

376
00:15:13,110 --> 00:15:16,640
and again, which is bad instinctively,
unless you keep doing it

377
00:15:16,640 --> 00:15:18,940
on smaller and smaller problems.

378
00:15:18,940 --> 00:15:21,250
And so this is a general
principle, actually,

379
00:15:21,250 --> 00:15:24,660
that we're going to be able to leverage
ultimately, not only for searching but

380
00:15:24,660 --> 00:15:28,150
also, as we shall see, for sorting.

381
00:15:28,150 --> 00:15:30,630
So let's go ahead and
let me share actually

382
00:15:30,630 --> 00:15:32,110
how this example went last year.

383
00:15:32,110 --> 00:15:34,630
We're fortunate to capture
sort of memories on film.

384
00:15:34,630 --> 00:15:36,615
And I thought it would
be fun to share this,

385
00:15:36,615 --> 00:15:39,140
when one of your predecessors
in the class came up,

386
00:15:39,140 --> 00:15:42,060
was asked the exact same
question, find us the number 50.

387
00:15:42,060 --> 00:15:44,670
But it didn't quite go
as well as we hoped.

388
00:15:44,670 --> 00:15:46,604
Let's take a look at 2014.

389
00:15:46,604 --> 00:15:47,270
[AUDIO PLAYBACK]

390
00:15:47,270 --> 00:15:50,920
-All I want you to do now is
to find for me and for us,

391
00:15:50,920 --> 00:15:56,855
really, the number 50
one step at a time.

392
00:15:56,855 --> 00:15:58,010
-Number 50?

393
00:15:58,010 --> 00:15:58,750
-The number 50.

394
00:15:58,750 --> 00:16:00,916
And you can reveal what's
behind each of these doors

395
00:16:00,916 --> 00:16:04,100
simply by touching it with a finger.

396
00:16:04,100 --> 00:16:06,440
Damn it.

397
00:16:06,440 --> 00:16:08,591
[APPLAUSE]

398
00:16:08,591 --> 00:16:09,247
[END PLAYBACK]

399
00:16:09,247 --> 00:16:09,830
SPEAKER 1: OK.

400
00:16:09,830 --> 00:16:12,038
So that didn't really
demonstrate anything that year.

401
00:16:12,038 --> 00:16:16,240
So we tried again, this time saying, all
right, this time the array is sorted.

402
00:16:16,240 --> 00:16:19,480
What are you going to do this time if
you want to find the same number 50,

403
00:16:19,480 --> 00:16:21,240
but the array is now sorted?

404
00:16:21,240 --> 00:16:22,703
I thought I'd share this.

405
00:16:22,703 --> 00:16:23,590
[AUDIO PLAYBACK]

406
00:16:23,590 --> 00:16:27,900
-The goal now is to also find us the
number 50, but do it algorithmically.

407
00:16:27,900 --> 00:16:30,450
And tell us how you're going about it.

408
00:16:30,450 --> 00:16:32,620
And if you find it, you keep the movie.

409
00:16:32,620 --> 00:16:34,544
If you don't find it, you give it back.

410
00:16:34,544 --> 00:16:36,372
-Man. [INAUDIBLE].

411
00:16:36,372 --> 00:16:37,290
OK.

412
00:16:37,290 --> 00:16:42,520
So I'm going to check the ends
first to determine if there's-- oh.

413
00:16:42,520 --> 00:16:45,262
[APPLAUSE]

414
00:16:45,262 --> 00:16:45,761


415
00:16:45,761 --> 00:16:46,690
[END PLAYBACK]

416
00:16:46,690 --> 00:16:48,070
SPEAKER 1: OK, now I feel a
little bad because clearly we

417
00:16:48,070 --> 00:16:50,710
used to give away movies and
now we give away stress balls.

418
00:16:50,710 --> 00:16:53,830
But no one really has DVD players
anymore, so it's OK probably.

419
00:16:53,830 --> 00:16:57,150
And then, let me share one other
clip back from our SD days.

420
00:16:57,150 --> 00:17:00,990
Many years ago when Shawn, who
has since graduated, came up.

421
00:17:00,990 --> 00:17:02,190
Was asked the same question.

422
00:17:02,190 --> 00:17:04,804
So Derek, you are in this
wonderful history of students

423
00:17:04,804 --> 00:17:06,220
who have tried this demonstration.

424
00:17:06,220 --> 00:17:08,710
This was, as you can, see before
we had touchscreen technology.

425
00:17:08,710 --> 00:17:10,501
So we had sheets of
paper up on the screen.

426
00:17:10,501 --> 00:17:11,890
But the idea was the same.

427
00:17:11,890 --> 00:17:15,130
And Shawn is perhaps one of
our favorite memories in so far

428
00:17:15,130 --> 00:17:18,144
as he, too, was asked to solve
the same problem in his way.

429
00:17:18,144 --> 00:17:18,810
[AUDIO PLAYBACK]

430
00:17:18,810 --> 00:17:22,140
-OK, so your task here,
Shawn, is the following.

431
00:17:22,140 --> 00:17:26,339
I have hidden behind
these doors the number 7.

432
00:17:26,339 --> 00:17:30,560
But tucked away in some of these doors
as well are other non-negative numbers.

433
00:17:30,560 --> 00:17:33,010
And your goal is to think
of this top row of numbers

434
00:17:33,010 --> 00:17:35,880
as just an array, or just a
sequence of pieces of paper

435
00:17:35,880 --> 00:17:37,020
with numbers behind them.

436
00:17:37,020 --> 00:17:41,110
And your goal is only using the top
array here, find me the number 7.

437
00:17:41,110 --> 00:17:44,540
And we are then going to critique
how you go about doing it.

438
00:17:44,540 --> 00:17:46,211
Find us the number 7, please.

439
00:17:46,211 --> 00:17:55,975


440
00:17:55,975 --> 00:17:56,475
No.

441
00:17:56,475 --> 00:18:00,040


442
00:18:00,040 --> 00:18:04,083
5, 19, 13.

443
00:18:04,083 --> 00:18:10,240


444
00:18:10,240 --> 00:18:11,345
It's not a trick question.

445
00:18:11,345 --> 00:18:14,775


446
00:18:14,775 --> 00:18:15,275
1.

447
00:18:15,275 --> 00:18:20,168


448
00:18:20,168 --> 00:18:23,334
At this point, your score is not very
good, so you might as well keep going.

449
00:18:23,334 --> 00:18:26,170


450
00:18:26,170 --> 00:18:26,670
3.

451
00:18:26,670 --> 00:18:31,840


452
00:18:31,840 --> 00:18:32,530
Go on.

453
00:18:32,530 --> 00:18:33,207
-[INAUDIBLE].

454
00:18:33,207 --> 00:18:35,957
-Frankly, I can't help but wonder
what you're even thinking about.

455
00:18:35,957 --> 00:18:38,700


456
00:18:38,700 --> 00:18:39,550
Only the top row.

457
00:18:39,550 --> 00:18:40,500
So you got 3 left.

458
00:18:40,500 --> 00:18:42,975
So find me 7.

459
00:18:42,975 --> 00:18:43,516
-[INAUDIBLE].

460
00:18:43,516 --> 00:19:00,330


461
00:19:00,330 --> 00:19:02,379
-17.

462
00:19:02,379 --> 00:19:02,920
-[INAUDIBLE].

463
00:19:02,920 --> 00:19:10,711


464
00:19:10,711 --> 00:19:11,210
-7.

465
00:19:11,210 --> 00:19:12,905
[END PLAYBACK]

466
00:19:12,905 --> 00:19:13,780
SPEAKER 1: All right.

467
00:19:13,780 --> 00:19:16,430
So we don't ask people
to search for 7 anymore.

468
00:19:16,430 --> 00:19:19,170
But this invites the
question, how are we

469
00:19:19,170 --> 00:19:21,290
allowed to have that assumption, right?

470
00:19:21,290 --> 00:19:24,640
I've been assuming in week 0 that
the phone book was alphabetized.

471
00:19:24,640 --> 00:19:28,010
And therefore, I can find Mike Smith
really fast in logarithmic time.

472
00:19:28,010 --> 00:19:30,130
And we were just assuming
a moment ago that we

473
00:19:30,130 --> 00:19:33,750
could find the number 50 super-fast
because of divide and conquer.

474
00:19:33,750 --> 00:19:36,460
Again, but only if
that array were sorted.

475
00:19:36,460 --> 00:19:38,680
Indeed, Derek technically
just got lucky in so far

476
00:19:38,680 --> 00:19:41,692
as he found 50 the
first time in 3 steps.

477
00:19:41,692 --> 00:19:44,400
But it could have been as many as
7 steps because it was, indeed,

478
00:19:44,400 --> 00:19:45,360
a random algorithm.

479
00:19:45,360 --> 00:19:47,360
Or even if he had used linear search.

480
00:19:47,360 --> 00:19:50,700
So suppose we want to
actually sort something.

481
00:19:50,700 --> 00:19:52,970
So these are still used
on campus sometimes.

482
00:19:52,970 --> 00:19:55,082
So these are blue books for exam period.

483
00:19:55,082 --> 00:19:58,040
And suppose that we're at the end of
a semester and a bunch of students

484
00:19:58,040 --> 00:19:59,748
have written their
names on these things.

485
00:19:59,748 --> 00:20:01,950
And so A's and B's and C's and D's.

486
00:20:01,950 --> 00:20:04,590
And suppose that they're handed
in at somewhat random times.

487
00:20:04,590 --> 00:20:07,020
There's always that kid who hands
in his or her exam at an hour

488
00:20:07,020 --> 00:20:08,590
into the 3-hour exam,
and then most of them

489
00:20:08,590 --> 00:20:10,430
come in around like 2 hours 45 minutes.

490
00:20:10,430 --> 00:20:14,470
And so therefore, they're all
in this pretty random arbitrary

491
00:20:14,470 --> 00:20:15,777
order like this.

492
00:20:15,777 --> 00:20:18,860
Actually, if I just them down like
that, they're not really random at all.

493
00:20:18,860 --> 00:20:20,900
And so they're just
in some random order.

494
00:20:20,900 --> 00:20:23,710
And the goal at hand, ultimately,
is for the head TF, for instance,

495
00:20:23,710 --> 00:20:26,429
or the professor to actually
sort all of these blue books

496
00:20:26,429 --> 00:20:29,470
and come up with an alphabetical order
so you can make sure that everyone

497
00:20:29,470 --> 00:20:31,530
has actually submitted on time.

498
00:20:31,530 --> 00:20:33,070
So how do we do this?

499
00:20:33,070 --> 00:20:35,910
What is the algorithm
with which to do this?

500
00:20:35,910 --> 00:20:38,080
Because indeed, if he
or she, the professor,

501
00:20:38,080 --> 00:20:42,230
later wants to find a certain
name of the alphabet, like Smith,

502
00:20:42,230 --> 00:20:46,260
it'd be nice if they don't have to sift
through all 26, or all 100, or all 500

503
00:20:46,260 --> 00:20:46,760
blue books.

504
00:20:46,760 --> 00:20:48,470
They can just jump
roughly to the middle,

505
00:20:48,470 --> 00:20:50,880
and then divide and conquer
and find Smith there after.

506
00:20:50,880 --> 00:20:54,340
Can we get one volunteer to
come up and propose how to sort?

507
00:20:54,340 --> 00:20:55,310
You want come on up?

508
00:20:55,310 --> 00:20:55,950
Come on up.

509
00:20:55,950 --> 00:20:56,380
What's your name?

510
00:20:56,380 --> 00:20:57,180
AUDIENCE: Allison.

511
00:20:57,180 --> 00:20:58,260
SPEAKER 1: Allison.

512
00:20:58,260 --> 00:21:00,410
All right, come on up.

513
00:21:00,410 --> 00:21:02,160
So if you've ever
sorted something before,

514
00:21:02,160 --> 00:21:04,101
now's your chance to
show that off, Allison.

515
00:21:04,101 --> 00:21:04,600
All right.

516
00:21:04,600 --> 00:21:06,260
So here are a whole bunch of blue books.

517
00:21:06,260 --> 00:21:08,400
And I've just arbitrarily written
not names, but first letters

518
00:21:08,400 --> 00:21:09,399
of the alphabet on them.

519
00:21:09,399 --> 00:21:10,780
So go ahead and sort them.

520
00:21:10,780 --> 00:21:13,195
AUDIENCE: So I start with a letter.

521
00:21:13,195 --> 00:21:15,697
And if this is before
that, I just put it on top.

522
00:21:15,697 --> 00:21:16,280
SPEAKER 1: OK.

523
00:21:16,280 --> 00:21:17,894
So that's X and L. Gotcha.

524
00:21:17,894 --> 00:21:18,722
AUDIENCE: And because Z is after that--

525
00:21:18,722 --> 00:21:19,550
SPEAKER 1: There's Z.

526
00:21:19,550 --> 00:21:20,674
AUDIENCE: --I put it below.

527
00:21:20,674 --> 00:21:21,855
And D is here.

528
00:21:21,855 --> 00:21:22,439
SPEAKER 1: OK.

529
00:21:22,439 --> 00:21:25,646
So you seem to be taking them one at a
time and just dealing with the problem

530
00:21:25,646 --> 00:21:26,235
then and now?

531
00:21:26,235 --> 00:21:26,600
AUDIENCE: Yes.

532
00:21:26,600 --> 00:21:27,183
SPEAKER 1: OK.

533
00:21:27,183 --> 00:21:28,750
So that's J. What happens next?

534
00:21:28,750 --> 00:21:32,700


535
00:21:32,700 --> 00:21:34,377
AUDIENCE: [INAUDIBLE].

536
00:21:34,377 --> 00:21:34,960
SPEAKER 1: OK.

537
00:21:34,960 --> 00:21:38,730
That's K. K, L, good.

538
00:21:38,730 --> 00:21:39,640
B, that's easy.

539
00:21:39,640 --> 00:21:40,190
On top.

540
00:21:40,190 --> 00:21:41,210
A, even easier.

541
00:21:41,210 --> 00:21:42,246
On top.

542
00:21:42,246 --> 00:21:43,560
AUDIENCE: Am I going to
finish this entire thing?

543
00:21:43,560 --> 00:21:44,300
SPEAKER 1: Yes.

544
00:21:44,300 --> 00:21:46,798
We need 13 more, give or take.

545
00:21:46,798 --> 00:21:47,750
M and--

546
00:21:47,750 --> 00:21:48,250
AUDIENCE: N.

547
00:21:48,250 --> 00:21:51,760
SPEAKER 1: N, O. I didn't
do a very good job there.

548
00:21:51,760 --> 00:21:54,730
U, V. OK, definitely not good.

549
00:21:54,730 --> 00:21:55,790
Y. That's good.

550
00:21:55,790 --> 00:21:56,800
It goes toward the end.

551
00:21:56,800 --> 00:21:59,570
R, a little harder.

552
00:21:59,570 --> 00:22:01,490
But this is actually a
good situation for us

553
00:22:01,490 --> 00:22:03,698
to be in because-- you keep
going, I'll keep talking.

554
00:22:03,698 --> 00:22:06,380
So even as Allison is
sorting this, she's

555
00:22:06,380 --> 00:22:08,630
dealing with each of these
blue books one at a time.

556
00:22:08,630 --> 00:22:10,770
But notice what's happening
to her right hand.

557
00:22:10,770 --> 00:22:14,540
There literally is more and more work,
it seems, happening in her right hand

558
00:22:14,540 --> 00:22:18,120
because as she encounters R or now W,
not only does she need more thought,

559
00:22:18,120 --> 00:22:20,530
she also needs to do more
flipping to actually find

560
00:22:20,530 --> 00:22:23,510
the right spot for W. This is H.
She's doing the same thing again.

561
00:22:23,510 --> 00:22:26,810
So it feels like the algorithm
has started to slow down.

562
00:22:26,810 --> 00:22:29,420
At first, it was pretty easy
to just make a short list.

563
00:22:29,420 --> 00:22:31,430
But now that the list
is getting longer, it

564
00:22:31,430 --> 00:22:35,340
feels like she's fixing a lot of
work, or finding a location is

565
00:22:35,340 --> 00:22:37,830
getting harder and harder.

566
00:22:37,830 --> 00:22:39,660
Or at least taking longer and longer.

567
00:22:39,660 --> 00:22:42,170
Maybe the alphabet itself is
not that much more difficult.

568
00:22:42,170 --> 00:22:45,180
Now, we have I. I can
only stall so much longer.

569
00:22:45,180 --> 00:22:45,680
G.

570
00:22:45,680 --> 00:22:45,970
AUDIENCE: Sorry.

571
00:22:45,970 --> 00:22:47,095
SPEAKER 1: No, that's fine.

572
00:22:47,095 --> 00:22:47,600
E, good.

573
00:22:47,600 --> 00:22:48,100
OK.

574
00:22:48,100 --> 00:22:51,380
So it's getting a little easier
because we're at the beginning.

575
00:22:51,380 --> 00:22:52,150
Sorted.

576
00:22:52,150 --> 00:22:53,540
So what were you thinking?

577
00:22:53,540 --> 00:22:54,795
What was that algorithm?

578
00:22:54,795 --> 00:22:57,170
AUDIENCE: It was just take a
letter, take another letter,

579
00:22:57,170 --> 00:23:00,464
and then test to see if the
letter is before or after.

580
00:23:00,464 --> 00:23:01,297
SPEAKER 1: OK, good.

581
00:23:01,297 --> 00:23:03,400
AUDIENCE: And then put it in the
correct place on either side.

582
00:23:03,400 --> 00:23:03,830
SPEAKER 1: Perfect.

583
00:23:03,830 --> 00:23:05,650
So a perfect way of
thinking about this as well.

584
00:23:05,650 --> 00:23:06,595
So thank you so much.

585
00:23:06,595 --> 00:23:07,000
AUDIENCE: Thank you.

586
00:23:07,000 --> 00:23:08,166
SPEAKER 1: Very nicely done.

587
00:23:08,166 --> 00:23:10,310
And suppose the problem's
a little harder.

588
00:23:10,310 --> 00:23:12,520
I'll do this one myself here.

589
00:23:12,520 --> 00:23:14,740
But suppose we have some playing cards.

590
00:23:14,740 --> 00:23:18,160
And these are the type that
probably everyone here can see.

591
00:23:18,160 --> 00:23:22,250
So here is a standard
deck of cards, including

592
00:23:22,250 --> 00:23:23,886
the jokers, which we won't need.

593
00:23:23,886 --> 00:23:25,760
How do you go about
sorting things like this?

594
00:23:25,760 --> 00:23:30,640
I don't know if-- actually,
I didn't think in advance.

595
00:23:30,640 --> 00:23:32,520
I should have shuffled these.

596
00:23:32,520 --> 00:23:34,870
So if you want to shuffle these cards.

597
00:23:34,870 --> 00:23:36,980
This is not going to end well.

598
00:23:36,980 --> 00:23:37,710
OK.

599
00:23:37,710 --> 00:23:41,160
So suppose we have all of these
cards nicely shuffled here.

600
00:23:41,160 --> 00:23:44,375
And I have before me a big
problem, a big pile of cards.

601
00:23:44,375 --> 00:23:47,000
And the goal, for whatever reason,
you wanted to start the game

602
00:23:47,000 --> 00:23:49,100
or you like to be orderly,
is to sort the cards.

603
00:23:49,100 --> 00:23:53,181
What's your algorithm going
to be for sorting these cards?

604
00:23:53,181 --> 00:23:53,930
What might you do?

605
00:23:53,930 --> 00:23:57,560


606
00:23:57,560 --> 00:23:58,262
Yeah.

607
00:23:58,262 --> 00:23:59,178
AUDIENCE: [INAUDIBLE].

608
00:23:59,178 --> 00:24:01,651


609
00:24:01,651 --> 00:24:03,650
SPEAKER 1: Do them in
piles based on the number.

610
00:24:03,650 --> 00:24:05,160
OK, so here's the number 2.

611
00:24:05,160 --> 00:24:07,180
So you want to make a
pile for all the 2's?

612
00:24:07,180 --> 00:24:08,370
OK, so we can do that.

613
00:24:08,370 --> 00:24:09,837
So here's a pile for all the 4's.

614
00:24:09,837 --> 00:24:11,420
And let me make myself some more room.

615
00:24:11,420 --> 00:24:12,620
So we can put 2's here.

616
00:24:12,620 --> 00:24:13,390
4's here.

617
00:24:13,390 --> 00:24:13,974
Here's a 3.

618
00:24:13,974 --> 00:24:16,140
So I'm going to put this
in between the 2 and the 4.

619
00:24:16,140 --> 00:24:17,100
Here's a 5.

620
00:24:17,100 --> 00:24:18,530
I'm going to put that over here.

621
00:24:18,530 --> 00:24:20,050
And if I jump around, here's a Jack.

622
00:24:20,050 --> 00:24:22,140
So this is going to go way over there.

623
00:24:22,140 --> 00:24:23,140
7, 8.

624
00:24:23,140 --> 00:24:24,730
6 can go over here.

625
00:24:24,730 --> 00:24:27,560
Here's another 4, so I can put it here.

626
00:24:27,560 --> 00:24:30,030
And I can bucketize all of the cards.

627
00:24:30,030 --> 00:24:34,140
So this is good intuition because it
makes a pretty big problem, 52 cards,

628
00:24:34,140 --> 00:24:35,289
a little more tenable.

629
00:24:35,289 --> 00:24:37,830
You can just now flip through
all of the cards one at a time,

630
00:24:37,830 --> 00:24:39,360
or whatever you encounter first.

631
00:24:39,360 --> 00:24:41,370
And just drop it in the correct bucket.

632
00:24:41,370 --> 00:24:43,661
But that's, of course, not
going to get you to the end.

633
00:24:43,661 --> 00:24:45,530
Let's assume we fast
forward to the ending.

634
00:24:45,530 --> 00:24:50,170
And now I have these 13 piles
from Ace all the way up to King.

635
00:24:50,170 --> 00:24:50,920
What do I then do?

636
00:24:50,920 --> 00:24:53,160
What's step 2?

637
00:24:53,160 --> 00:24:54,140
AUDIENCE: Stack them.

638
00:24:54,140 --> 00:24:55,170
SPEAKER 1: So I want to stack them.

639
00:24:55,170 --> 00:24:57,337
So I can take all the 2's,
all the 3's, all the 4's.

640
00:24:57,337 --> 00:24:59,295
And I didn't specify
earlier, one of the things

641
00:24:59,295 --> 00:25:02,410
that complicates this problem with
cards is that you have different suits.

642
00:25:02,410 --> 00:25:04,160
And so if you really
want to be nit-picky,

643
00:25:04,160 --> 00:25:06,076
maybe you want to keep
all the suits the same,

644
00:25:06,076 --> 00:25:09,190
which is like a nested
sorting problem of some sort.

645
00:25:09,190 --> 00:25:12,760
But this general idea of bucketizing
in this way is good intuition,

646
00:25:12,760 --> 00:25:14,675
but it clearly takes some time.

647
00:25:14,675 --> 00:25:17,300
I mean, enough time that I'm not
going to sort of drag this out

648
00:25:17,300 --> 00:25:19,180
by sorting all of those cards myself.

649
00:25:19,180 --> 00:25:20,990
And therein lies the point, though.

650
00:25:20,990 --> 00:25:23,940
Even though in week 0 with Mike
Smith, we had that sorted phone book.

651
00:25:23,940 --> 00:25:26,880
And even though a moment ago,
Derek, albeit with a few numbers,

652
00:25:26,880 --> 00:25:30,520
had them already presorted,
sorting takes time.

653
00:25:30,520 --> 00:25:33,940
And even when we were just sorting
the blue books alphabetically,

654
00:25:33,940 --> 00:25:37,680
even though it felt pretty fast, pretty
obvious, it starts to drag eventually.

655
00:25:37,680 --> 00:25:39,600
And god forbid there
were more than 26 books.

656
00:25:39,600 --> 00:25:44,920
Maybe there were 260 books, or
2,600 books, or 2 million books.

657
00:25:44,920 --> 00:25:46,110
Or web pages.

658
00:25:46,110 --> 00:25:47,740
Or database records.

659
00:25:47,740 --> 00:25:51,414
Any number of problems in this
world now require sorting sometimes.

660
00:25:51,414 --> 00:25:53,830
Whether it's on Google, or
Facebook, or your own computer.

661
00:25:53,830 --> 00:25:57,190
It feels like we need a good algorithm
for actually doing that sorting.

662
00:25:57,190 --> 00:26:00,240
So how can we go about doing that,
not just with blue books, not

663
00:26:00,240 --> 00:26:02,540
just with cards, but more generally?

664
00:26:02,540 --> 00:26:06,320
Well, let's try to frame the
problem first with a simpler world.

665
00:26:06,320 --> 00:26:10,240
In fact, we can generalize
blue books and playing cards

666
00:26:10,240 --> 00:26:11,300
as really just numbers.

667
00:26:11,300 --> 00:26:15,850
Or some piece of data that there is
a defined order or sequence to them.

668
00:26:15,850 --> 00:26:17,630
And suppose I have these numbers here.

669
00:26:17,630 --> 00:26:21,099
How do I actually go about
sorting this many numbers?

670
00:26:21,099 --> 00:26:23,140
Well, for this-- and this
will be our last chance

671
00:26:23,140 --> 00:26:24,760
for audience participation here.

672
00:26:24,760 --> 00:26:27,890
I need eight brave volunteers
to actually come on up.

673
00:26:27,890 --> 00:26:28,753
All right, so 1, 2.

674
00:26:28,753 --> 00:26:30,461
This is what everyone's
been waiting for.

675
00:26:30,461 --> 00:26:37,180
1, 2, 3, 4, 5, 6, 7, and 8.

676
00:26:37,180 --> 00:26:37,680
Thank you.

677
00:26:37,680 --> 00:26:39,200
Come on up.

678
00:26:39,200 --> 00:26:40,780
And I will meet you over here.

679
00:26:40,780 --> 00:26:47,460


680
00:26:47,460 --> 00:26:48,190
All right.

681
00:26:48,190 --> 00:26:48,940
Come on over here.

682
00:26:48,940 --> 00:26:50,481
If you want to grab two music stands.

683
00:26:50,481 --> 00:26:53,400


684
00:26:53,400 --> 00:26:53,900
OK.

685
00:26:53,900 --> 00:26:56,090
So let's go ahead and turn these
around like this if you could,

686
00:26:56,090 --> 00:26:58,131
as though the music's
going to face the audience.

687
00:26:58,131 --> 00:27:01,940


688
00:27:01,940 --> 00:27:04,710
OK.

689
00:27:04,710 --> 00:27:05,210
All right.

690
00:27:05,210 --> 00:27:09,220
And let me go ahead and give you sheets
of paper, and then we'll resume here.

691
00:27:09,220 --> 00:27:09,720
All right.

692
00:27:09,720 --> 00:27:11,770
So here is our eighth music stand.

693
00:27:11,770 --> 00:27:14,197
And what we have here
is 8 pieces of paper.

694
00:27:14,197 --> 00:27:17,530
And each of you guys is going to take on
the role of a certain number right now.

695
00:27:17,530 --> 00:27:22,700
So I'm going to go ahead and give
each of you a number in sorted order

696
00:27:22,700 --> 00:27:25,290
initially, but that would be too easy.

697
00:27:25,290 --> 00:27:30,734
So if you don't mind, let's go ahead and
arrange yourselves behind these music

698
00:27:30,734 --> 00:27:32,900
stands in the same order
that you see on the screen.

699
00:27:32,900 --> 00:27:35,920
So on the left end here near
me should be the number 4.

700
00:27:35,920 --> 00:27:37,680
Then, 2.

701
00:27:37,680 --> 00:27:39,380
Then, 6.

702
00:27:39,380 --> 00:27:39,890
Then, 8.

703
00:27:39,890 --> 00:27:40,730
Good job.

704
00:27:40,730 --> 00:27:41,580
Then, 1.

705
00:27:41,580 --> 00:27:42,610
Then, 3.

706
00:27:42,610 --> 00:27:43,530
Then, 7.

707
00:27:43,530 --> 00:27:44,100
Then, 5.

708
00:27:44,100 --> 00:27:44,600
All right.

709
00:27:44,600 --> 00:27:46,360
And you can put the
numbers on the music stand

710
00:27:46,360 --> 00:27:48,235
there, but just move
them with you as you go.

711
00:27:48,235 --> 00:27:51,670
So now the question is, here
is a seemingly random list

712
00:27:51,670 --> 00:27:53,970
in just some order I came up
with somewhat arbitrarily.

713
00:27:53,970 --> 00:27:57,170
And I want now to sort my list.

714
00:27:57,170 --> 00:27:58,470
How do I go about doing it?

715
00:27:58,470 --> 00:28:00,240
What would you propose?

716
00:28:00,240 --> 00:28:03,190
The goal is to get from 1 to 8.

717
00:28:03,190 --> 00:28:07,930
What are our possible approaches here?

718
00:28:07,930 --> 00:28:09,210
Oh, you want-- sure, OK.

719
00:28:09,210 --> 00:28:10,334
We'll just do it over here.

720
00:28:10,334 --> 00:28:12,190
AUDIENCE: Take out the smallest number.

721
00:28:12,190 --> 00:28:12,773
SPEAKER 1: OK.

722
00:28:12,773 --> 00:28:14,631
AUDIENCE: Take it, shift
everyone else down.

723
00:28:14,631 --> 00:28:16,150
Have the smallest number
in the first place.

724
00:28:16,150 --> 00:28:16,836
SPEAKER 1: OK, good.

725
00:28:16,836 --> 00:28:17,752
AUDIENCE: [INAUDIBLE].

726
00:28:17,752 --> 00:28:19,714
SPEAKER 1: So let's
go ahead and do that.

727
00:28:19,714 --> 00:28:21,880
For those tuning in at home,
what's your name again?

728
00:28:21,880 --> 00:28:22,490
AUDIENCE: Allison.

729
00:28:22,490 --> 00:28:22,950
SPEAKER 1: Allison.

730
00:28:22,950 --> 00:28:23,490
And?

731
00:28:23,490 --> 00:28:23,860
AUDIENCE: Alex.

732
00:28:23,860 --> 00:28:24,272
SPEAKER 1: Alex.

733
00:28:24,272 --> 00:28:24,897
AUDIENCE: Adam.

734
00:28:24,897 --> 00:28:25,570
SPEAKER 1: Adam.

735
00:28:25,570 --> 00:28:26,320
AUDIENCE: Brandon.

736
00:28:26,320 --> 00:28:26,685
SPEAKER 1: Brandon.

737
00:28:26,685 --> 00:28:27,050
AUDIENCE: Joseph.

738
00:28:27,050 --> 00:28:27,450
SPEAKER 1: Joseph.

739
00:28:27,450 --> 00:28:27,755
AUDIENCE: Vicky.

740
00:28:27,755 --> 00:28:28,520
SPEAKER 1: Vicky.

741
00:28:28,520 --> 00:28:28,790
AUDIENCE: [? Arpin. ?]

742
00:28:28,790 --> 00:28:29,060
SPEAKER 1: [? Arpin. ?]

743
00:28:29,060 --> 00:28:29,726
AUDIENCE: Derek.

744
00:28:29,726 --> 00:28:30,510
SPEAKER 1: Derek.

745
00:28:30,510 --> 00:28:31,170
OK.

746
00:28:31,170 --> 00:28:34,300
So now, because that all
just was too much to absorb.

747
00:28:34,300 --> 00:28:38,450
Number 1 is now the
first smallest element

748
00:28:38,450 --> 00:28:39,950
according to the proposed algorithm.

749
00:28:39,950 --> 00:28:42,170
So what are we going to
do exactly with number 1?

750
00:28:42,170 --> 00:28:43,669
AUDIENCE: He's going to [INAUDIBLE].

751
00:28:43,669 --> 00:28:44,887
We're [INAUDIBLE].

752
00:28:44,887 --> 00:28:45,720
SPEAKER 1: OK, good.

753
00:28:45,720 --> 00:28:47,110
So pop back if you would.

754
00:28:47,110 --> 00:28:49,214
You guys are going to shift
three places this way.

755
00:28:49,214 --> 00:28:51,880
And we're going to insert number
1 at the beginning of the list.

756
00:28:51,880 --> 00:28:53,380
All right, so what's the
next step just to be clear?

757
00:28:53,380 --> 00:28:55,410
AUDIENCE: Number 2 is going to pop up.

758
00:28:55,410 --> 00:28:56,076
SPEAKER 1: Good.

759
00:28:56,076 --> 00:28:56,988
AUDIENCE: I'm going to shift down.

760
00:28:56,988 --> 00:28:57,444
Number 1 is going to stay in place.

761
00:28:57,444 --> 00:28:57,900
SPEAKER 1: Good.

762
00:28:57,900 --> 00:29:00,270
So we find the next smallest
element, which happens to be 2.

763
00:29:00,270 --> 00:29:02,340
We insert him at the
beginning of the list here.

764
00:29:02,340 --> 00:29:04,810
And now, we move on to the
number 3 problem Excellent.

765
00:29:04,810 --> 00:29:06,370
So pop back.

766
00:29:06,370 --> 00:29:07,760
Shift.

767
00:29:07,760 --> 00:29:08,310
And insert.

768
00:29:08,310 --> 00:29:08,810
Good.

769
00:29:08,810 --> 00:29:09,619
4, we got lucky.

770
00:29:09,619 --> 00:29:11,410
So we don't have to do
any extra work here.

771
00:29:11,410 --> 00:29:12,243
So that's a freebie.

772
00:29:12,243 --> 00:29:13,080
Now we look for 5.

773
00:29:13,080 --> 00:29:16,420
Oh, there's 5 at the end.

774
00:29:16,420 --> 00:29:17,560
Good.

775
00:29:17,560 --> 00:29:18,550
And now 6.

776
00:29:18,550 --> 00:29:19,320
We got lucky.

777
00:29:19,320 --> 00:29:21,330
7 and 8, we need to fix that.

778
00:29:21,330 --> 00:29:22,160
OK, good.

779
00:29:22,160 --> 00:29:23,050
So I like this.

780
00:29:23,050 --> 00:29:24,070
It felt pretty fast.

781
00:29:24,070 --> 00:29:26,170
Though, to be fair, the
list is pretty short.

782
00:29:26,170 --> 00:29:28,337
But we were doing kind of a lot of work.

783
00:29:28,337 --> 00:29:31,420
In fact, that was perfect the fact
that number 1 was all the way over here

784
00:29:31,420 --> 00:29:33,182
because we shifted 3 humans.

785
00:29:33,182 --> 00:29:34,890
And can you guys reset
for just a moment?

786
00:29:34,890 --> 00:29:36,780
Let me propose an alternative approach.

787
00:29:36,780 --> 00:29:40,930
So if number 1 is in the middle here
and really belongs all the way there

788
00:29:40,930 --> 00:29:43,730
on the left, we went
to great lengths, it

789
00:29:43,730 --> 00:29:47,022
seems, to shift all of these volunteers
to the left, which is a lot of steps.

790
00:29:47,022 --> 00:29:49,730
Because at the end of the day,
let's assume for today's purposes,

791
00:29:49,730 --> 00:29:51,791
that a computer can only
do one thing at once.

792
00:29:51,791 --> 00:29:54,040
So even though all of you
humans moved pretty quickly,

793
00:29:54,040 --> 00:29:55,920
that was really like one of you moved.

794
00:29:55,920 --> 00:29:57,120
Then, the next of you moved.

795
00:29:57,120 --> 00:29:58,190
Then, the next of you moved.

796
00:29:58,190 --> 00:29:58,820
Then, the next.

797
00:29:58,820 --> 00:30:02,877
So that was like 4 total steps just
to put number 1 on the end there.

798
00:30:02,877 --> 00:30:03,710
Let me propose this.

799
00:30:03,710 --> 00:30:05,360
1, can you pop out again?

800
00:30:05,360 --> 00:30:08,260
Now, this list, so far as I'm
concerned as the computer,

801
00:30:08,260 --> 00:30:10,520
is perfectly random from the get-go.

802
00:30:10,520 --> 00:30:13,480
So why do I even care
that you guys move?

803
00:30:13,480 --> 00:30:16,349
I haven't even looked at
the rest of these elements

804
00:30:16,349 --> 00:30:17,640
yet or done anything with them.

805
00:30:17,640 --> 00:30:20,324
Why don't I just evict number
4 where number 1 belongs?

806
00:30:20,324 --> 00:30:21,490
If you want to go over here.

807
00:30:21,490 --> 00:30:23,989
And if the list is already
randomly sorted in the beginning,

808
00:30:23,989 --> 00:30:24,750
well, then fine.

809
00:30:24,750 --> 00:30:26,083
4, you're going to go over here.

810
00:30:26,083 --> 00:30:29,110
So I've made the problem no worse,
but I have made it slightly better

811
00:30:29,110 --> 00:30:30,495
by putting 1 on the end.

812
00:30:30,495 --> 00:30:33,370
Now I'm going to go ahead and select
the next smallest element again.

813
00:30:33,370 --> 00:30:34,710
2, I got lucky.

814
00:30:34,710 --> 00:30:37,290
Now, I'm going to look for
the next smallest element.

815
00:30:37,290 --> 00:30:38,814
3 indeed is the smallest.

816
00:30:38,814 --> 00:30:39,980
So let me do the same thing.

817
00:30:39,980 --> 00:30:41,280
3, if you could pop back.

818
00:30:41,280 --> 00:30:43,390
6, you're out of there.

819
00:30:43,390 --> 00:30:45,080
And notice that we're doing less work.

820
00:30:45,080 --> 00:30:48,080
Now, the humans are moving a little
farther physically, but that's fine.

821
00:30:48,080 --> 00:30:51,590
The computer can just move values
around in memory pretty fast.

822
00:30:51,590 --> 00:30:53,220
But I've moved fewer of you.

823
00:30:53,220 --> 00:30:54,770
So this is a slight optimization.

824
00:30:54,770 --> 00:30:57,520
It turns out this isn't
fundamentally better as we'll see.

825
00:30:57,520 --> 00:30:59,680
But it's this instinct
that you should appreciate

826
00:30:59,680 --> 00:31:01,763
of trying to do the least
amount of work possible.

827
00:31:01,763 --> 00:31:04,270
Because otherwise, it's going to add up.

828
00:31:04,270 --> 00:31:06,290
Let's try another one.

829
00:31:06,290 --> 00:31:07,950
Well, let me clarify one thing then.

830
00:31:07,950 --> 00:31:11,050
So what am I doing on each
iteration of this algorithm?

831
00:31:11,050 --> 00:31:14,260
As you suggested, I'm
selecting the smallest element.

832
00:31:14,260 --> 00:31:17,270
But the only catch is, if I'm
now looking for the next smallest

833
00:31:17,270 --> 00:31:18,970
element, that's going to be 4.

834
00:31:18,970 --> 00:31:21,390
But I'm only sure that it's
4 once I get to the end

835
00:31:21,390 --> 00:31:24,390
and realize, yep, that was the
smallest element and then I act.

836
00:31:24,390 --> 00:31:27,500
So once we fix that problem--
if you guys want to switch--

837
00:31:27,500 --> 00:31:28,985
I start again over here.

838
00:31:28,985 --> 00:31:30,860
And I have to find the
next smallest element.

839
00:31:30,860 --> 00:31:32,680
And let's see, 8 is pretty big.

840
00:31:32,680 --> 00:31:33,370
6 is smaller.

841
00:31:33,370 --> 00:31:33,870
Good.

842
00:31:33,870 --> 00:31:35,820
7, not smaller.

843
00:31:35,820 --> 00:31:38,890
But only once I get to the end do I
realize, oh, here is the smallest.

844
00:31:38,890 --> 00:31:41,450
So in short, to find
the smallest element

845
00:31:41,450 --> 00:31:45,799
as you proposed again and again, I have
to keep going through the whole list

846
00:31:45,799 --> 00:31:47,590
because it might be
all the way at the end.

847
00:31:47,590 --> 00:31:49,080
We, humans, have the
advantage of just kind

848
00:31:49,080 --> 00:31:51,270
of looking, sort of taking
a step back and saying,

849
00:31:51,270 --> 00:31:52,710
OK, this is obviously unsorted.

850
00:31:52,710 --> 00:31:53,880
I know where everything is.

851
00:31:53,880 --> 00:31:56,930
A computer can only look
at one number at a time,

852
00:31:56,930 --> 00:31:58,920
one element of an array at a time.

853
00:31:58,920 --> 00:32:00,920
So let's try a fundamentally
different approach.

854
00:32:00,920 --> 00:32:03,450
If you guys could reset to
your original 8 locations.

855
00:32:03,450 --> 00:32:07,720
Let me propose that we
just looked at an algorithm

856
00:32:07,720 --> 00:32:09,260
that we'll call selection sort.

857
00:32:09,260 --> 00:32:13,500
Selection sort in so far as you
iteratively again and again select

858
00:32:13,500 --> 00:32:15,130
the next smallest element.

859
00:32:15,130 --> 00:32:19,590
Let's now do an approach that
we'll call bubble sort, which

860
00:32:19,590 --> 00:32:23,867
has sort of the visual effect of numbers
bubbling up over time as follows.

861
00:32:23,867 --> 00:32:24,450
You know what?

862
00:32:24,450 --> 00:32:26,210
I'm just going to look,
not at the whole list

863
00:32:26,210 --> 00:32:28,720
because it felt like that was
creating a lot of work for me.

864
00:32:28,720 --> 00:32:31,260
I'm going to look at 2
numbers at a time, 4 and 2.

865
00:32:31,260 --> 00:32:32,890
Are these in order or out of order?

866
00:32:32,890 --> 00:32:34,330
Obviously.

867
00:32:34,330 --> 00:32:35,330
So they're out of order.

868
00:32:35,330 --> 00:32:35,810
So you know what?

869
00:32:35,810 --> 00:32:37,601
I don't care about the
rest of the problem.

870
00:32:37,601 --> 00:32:39,220
Let me just swap you two.

871
00:32:39,220 --> 00:32:39,720
All right.

872
00:32:39,720 --> 00:32:41,230
Now, let me take one step.

873
00:32:41,230 --> 00:32:42,170
Look at 4 and 6.

874
00:32:42,170 --> 00:32:43,490
In order or out of order?

875
00:32:43,490 --> 00:32:44,020
In order.

876
00:32:44,020 --> 00:32:45,260
So I'm going to leave it be.

877
00:32:45,260 --> 00:32:46,120
6 and 8?

878
00:32:46,120 --> 00:32:46,930
In order.

879
00:32:46,930 --> 00:32:47,480
8 and 1?

880
00:32:47,480 --> 00:32:48,240
Not in order.

881
00:32:48,240 --> 00:32:49,795
So let me swap that again.

882
00:32:49,795 --> 00:32:50,800
8 and 3?

883
00:32:50,800 --> 00:32:51,370
Out of order.

884
00:32:51,370 --> 00:32:52,890
Let me swap that again.

885
00:32:52,890 --> 00:32:54,109
8 and 7?

886
00:32:54,109 --> 00:32:54,650
Out of order.

887
00:32:54,650 --> 00:32:56,430
Let me swap that again.

888
00:32:56,430 --> 00:32:57,399
8 and 5?

889
00:32:57,399 --> 00:32:57,940
Out of order.

890
00:32:57,940 --> 00:32:59,630
Let me swap that again.

891
00:32:59,630 --> 00:33:00,790
And now, what has happened?

892
00:33:00,790 --> 00:33:06,300
Is the list sorted because I
fixed all the pairwise mistakes?

893
00:33:06,300 --> 00:33:07,310
So obviously not.

894
00:33:07,310 --> 00:33:08,722
But is it better, the list?

895
00:33:08,722 --> 00:33:09,430
Why is it better?

896
00:33:09,430 --> 00:33:10,090
Derek.

897
00:33:10,090 --> 00:33:12,110
AUDIENCE: Because now you have
one less element to worry about.

898
00:33:12,110 --> 00:33:13,151
SPEAKER 1: Yeah, exactly.

899
00:33:13,151 --> 00:33:16,030
8 bubbled all the way up
to the top, if you will.

900
00:33:16,030 --> 00:33:17,860
So now he is effectively done.

901
00:33:17,860 --> 00:33:19,840
And frankly, every other
number that's smaller

902
00:33:19,840 --> 00:33:22,739
bubbled one step closer to its position.

903
00:33:22,739 --> 00:33:26,030
So we've taken one big pass through this
to solve at least one of the problems.

904
00:33:26,030 --> 00:33:28,610
And now maximally, 7 problems remain.

905
00:33:28,610 --> 00:33:30,470
So let me go back to the end here.

906
00:33:30,470 --> 00:33:31,780
And let me look at pairwise.

907
00:33:31,780 --> 00:33:32,330
2 and 4?

908
00:33:32,330 --> 00:33:32,880
You're good.

909
00:33:32,880 --> 00:33:33,430
4 and 6?

910
00:33:33,430 --> 00:33:33,930
You're good.

911
00:33:33,930 --> 00:33:34,830
6 and 1?

912
00:33:34,830 --> 00:33:36,300
Let's fix that.

913
00:33:36,300 --> 00:33:37,120
6 and 3?

914
00:33:37,120 --> 00:33:38,710
Let's fix that.

915
00:33:38,710 --> 00:33:39,290
6 and 7?

916
00:33:39,290 --> 00:33:39,790
We're good.

917
00:33:39,790 --> 00:33:40,520
7 and 5?

918
00:33:40,520 --> 00:33:41,870
Let's fix that.

919
00:33:41,870 --> 00:33:45,520
And now I can ignore number 8 because
I know the end of my list is sorted.

920
00:33:45,520 --> 00:33:47,320
So now, I've improved it slightly.

921
00:33:47,320 --> 00:33:49,380
7 has bubbled up to
where he needs to be.

922
00:33:49,380 --> 00:33:51,600
I just have 6 problems
left to solve at most.

923
00:33:51,600 --> 00:33:52,480
So now I look again.

924
00:33:52,480 --> 00:33:53,010
2 and 4?

925
00:33:53,010 --> 00:33:53,780
You're good.

926
00:33:53,780 --> 00:33:54,560
1 and 4?

927
00:33:54,560 --> 00:33:55,570
Let's swap that.

928
00:33:55,570 --> 00:33:58,500
And notice, 1 is moving closer
to the left of the list.

929
00:33:58,500 --> 00:33:59,010
4 and 3?

930
00:33:59,010 --> 00:34:00,310
Let's swap.

931
00:34:00,310 --> 00:34:00,910
4 and 6?

932
00:34:00,910 --> 00:34:01,410
You're good.

933
00:34:01,410 --> 00:34:02,020
6 and 5?

934
00:34:02,020 --> 00:34:03,030
You're not.

935
00:34:03,030 --> 00:34:04,380
But now I fixed 6.

936
00:34:04,380 --> 00:34:07,422
And I can stop here, leaving me
with just five potential problems.

937
00:34:07,422 --> 00:34:09,130
And then you can see
where this is going.

938
00:34:09,130 --> 00:34:09,630
2 and 1?

939
00:34:09,630 --> 00:34:10,600
Let's swap.

940
00:34:10,600 --> 00:34:11,100
2 and 3?

941
00:34:11,100 --> 00:34:11,530
You're good.

942
00:34:11,530 --> 00:34:12,080
3 and 4?

943
00:34:12,080 --> 00:34:12,750
You're good.

944
00:34:12,750 --> 00:34:14,170
We already solved these problems.

945
00:34:14,170 --> 00:34:15,780
So let me go back.

946
00:34:15,780 --> 00:34:17,000
And now, 1 and 2?

947
00:34:17,000 --> 00:34:17,840
You're good.

948
00:34:17,840 --> 00:34:18,380
2 and 3?

949
00:34:18,380 --> 00:34:18,940
You're good.

950
00:34:18,940 --> 00:34:22,080
3 and 4, 4 and 5, 5 and
6, 6 and 7, 7 and 8.

951
00:34:22,080 --> 00:34:25,690
What do I know now as the computer?

952
00:34:25,690 --> 00:34:26,250
What's that?

953
00:34:26,250 --> 00:34:26,560
AUDIENCE: It's sorted.

954
00:34:26,560 --> 00:34:27,518
SPEAKER 1: It's sorted.

955
00:34:27,518 --> 00:34:28,429
Why?

956
00:34:28,429 --> 00:34:30,330
AUDIENCE: Because everything's in order

957
00:34:30,330 --> 00:34:31,219
SPEAKER 1: Everything is in order.

958
00:34:31,219 --> 00:34:32,219
But what does that mean?

959
00:34:32,219 --> 00:34:35,390
We humans can see that, but the computer
can only look at individual values

960
00:34:35,390 --> 00:34:35,889
at a time.

961
00:34:35,889 --> 00:34:38,855
It can't take a step back
and say, yep, sorted.

962
00:34:38,855 --> 00:34:41,084
AUDIENCE: [INAUDIBLE].

963
00:34:41,084 --> 00:34:41,750
SPEAKER 1: Good.

964
00:34:41,750 --> 00:34:45,210
At a lower level implementation
detail, I did no swaps.

965
00:34:45,210 --> 00:34:47,290
There were no two numbers
that were out of order.

966
00:34:47,290 --> 00:34:50,600
So it would just be
foolish of me and wasteful

967
00:34:50,600 --> 00:34:52,380
for me to bother doing another pass.

968
00:34:52,380 --> 00:34:55,050
Because assuming the numbers
are not changing on their own,

969
00:34:55,050 --> 00:34:57,633
I'm just going to do the same
thing again and again otherwise.

970
00:34:57,633 --> 00:34:58,860
So I can just stop.

971
00:34:58,860 --> 00:35:01,390
And indeed, the bubble sort
allows us to stop like this.

972
00:35:01,390 --> 00:35:02,680
Let's do one last approach.

973
00:35:02,680 --> 00:35:06,720
If you could, let me toss the
starting points on the board again.

974
00:35:06,720 --> 00:35:10,309
Let's reset one last time to this.

975
00:35:10,309 --> 00:35:12,600
And let me propose-- let me
draw inspiration, actually,

976
00:35:12,600 --> 00:35:14,974
from the approach you took
with the blue books, which was

977
00:35:14,974 --> 00:35:16,680
a little different from how we began.

978
00:35:16,680 --> 00:35:20,252
Which was recall that you took
the problem on your left hand

979
00:35:20,252 --> 00:35:21,960
and you just dealt
with it one at a time.

980
00:35:21,960 --> 00:35:23,790
You didn't go sifting
through looking for A.

981
00:35:23,790 --> 00:35:25,490
You didn't go sifting
through looking for B.

982
00:35:25,490 --> 00:35:27,600
You didn't go sifting through
looking for C, which would really

983
00:35:27,600 --> 00:35:29,720
be the analog of what you
proposed a moment ago.

984
00:35:29,720 --> 00:35:31,950
Instead, you just dealt with
each problem as it came.

985
00:35:31,950 --> 00:35:33,890
And this is our third
and final algorithm

986
00:35:33,890 --> 00:35:36,420
for sorting called insertion sort.

987
00:35:36,420 --> 00:35:40,270
Take each problem one at a time and
just deal with it then and there.

988
00:35:40,270 --> 00:35:41,370
Don't postpone.

989
00:35:41,370 --> 00:35:42,293
So here's 4.

990
00:35:42,293 --> 00:35:43,460
You know what?

991
00:35:43,460 --> 00:35:44,040
Done.

992
00:35:44,040 --> 00:35:47,740
I now claim that this list, which
we'll visually make a little separate,

993
00:35:47,740 --> 00:35:48,590
is sorted.

994
00:35:48,590 --> 00:35:51,730
So I'm going to mentally divide my
list into a left half and a right half.

995
00:35:51,730 --> 00:35:56,040
And now I just claim trivially-- I
mean, almost silly-- this is sorted.

996
00:35:56,040 --> 00:35:56,870
Because it is.

997
00:35:56,870 --> 00:35:58,750
But now the right half
of my list remains.

998
00:35:58,750 --> 00:35:59,999
So let's go ahead and do this.

999
00:35:59,999 --> 00:36:00,930
So number 2.

1000
00:36:00,930 --> 00:36:02,100
OK, where does this belong?

1001
00:36:02,100 --> 00:36:04,183
So if you want to go ahead
and pick up the number.

1002
00:36:04,183 --> 00:36:05,480
The stand can stay.

1003
00:36:05,480 --> 00:36:07,270
Number 2 goes where?

1004
00:36:07,270 --> 00:36:08,315
Here's my left list.

1005
00:36:08,315 --> 00:36:10,690
And we'll make a little more
space here just to be clear.

1006
00:36:10,690 --> 00:36:12,290
It goes over to this side.

1007
00:36:12,290 --> 00:36:15,030
So what has to happen?

1008
00:36:15,030 --> 00:36:17,870
So this time, we do
need to shift you over.

1009
00:36:17,870 --> 00:36:19,240
So let's take 2 out.

1010
00:36:19,240 --> 00:36:21,257
Let's shift 4 over.

1011
00:36:21,257 --> 00:36:22,590
And now we won't move the stand.

1012
00:36:22,590 --> 00:36:25,840
We'll just assume now that
my left half is of size 2

1013
00:36:25,840 --> 00:36:27,285
and the right half is of size 6.

1014
00:36:27,285 --> 00:36:29,410
But now, the left half of
the list is still sorted,

1015
00:36:29,410 --> 00:36:30,951
but it costs me a little bit of work.

1016
00:36:30,951 --> 00:36:32,271
I had to move 4 over.

1017
00:36:32,271 --> 00:36:33,520
All right, let me deal with 6.

1018
00:36:33,520 --> 00:36:35,204
Where does 6 go?

1019
00:36:35,204 --> 00:36:36,120
It's already in order.

1020
00:36:36,120 --> 00:36:37,328
I don't need to shift anyone.

1021
00:36:37,328 --> 00:36:38,120
Where does 8 go?

1022
00:36:38,120 --> 00:36:39,661
Phew, it doesn't need to go anywhere.

1023
00:36:39,661 --> 00:36:40,596
It's already in order.

1024
00:36:40,596 --> 00:36:41,370
Uh-oh, 1.

1025
00:36:41,370 --> 00:36:42,310
Where does it go?

1026
00:36:42,310 --> 00:36:44,362
Now we incur a good amount of cost.

1027
00:36:44,362 --> 00:36:45,070
So let's do this.

1028
00:36:45,070 --> 00:36:46,260
Where do you go?

1029
00:36:46,260 --> 00:36:50,060
One shift, two shift,
three shifts, four shifts.

1030
00:36:50,060 --> 00:36:53,550
Feels-- yep-- as bad as
our original approach.

1031
00:36:53,550 --> 00:36:55,529
But notice I only have
4 more problems left.

1032
00:36:55,529 --> 00:36:57,570
I don't have to keep going
back through the list.

1033
00:36:57,570 --> 00:36:58,320
So where does 3 go?

1034
00:36:58,320 --> 00:36:59,528
All right, let's pop you out.

1035
00:36:59,528 --> 00:37:01,390
Shift you in there.

1036
00:37:01,390 --> 00:37:01,890
7.

1037
00:37:01,890 --> 00:37:02,806
We got a little lucky.

1038
00:37:02,806 --> 00:37:05,530
Let's pop you out and insert
you right where you belong.

1039
00:37:05,530 --> 00:37:08,330
And then 5, you belong
a few shifts over.

1040
00:37:08,330 --> 00:37:10,730
So let's shift three of you.

1041
00:37:10,730 --> 00:37:12,330
And then, done.

1042
00:37:12,330 --> 00:37:12,830
All right.

1043
00:37:12,830 --> 00:37:14,550
So let's give all of you a stress ball.

1044
00:37:14,550 --> 00:37:15,799
And maybe a round of applause.

1045
00:37:15,799 --> 00:37:19,060
And let's see if we can't tease
apart what just happened here.

1046
00:37:19,060 --> 00:37:20,650
All right.

1047
00:37:20,650 --> 00:37:23,905
And then you can exit stage
left-- right if you'd like.

1048
00:37:23,905 --> 00:37:24,780
All right, thank you.

1049
00:37:24,780 --> 00:37:26,215
Derek, you're really
racking them up here.

1050
00:37:26,215 --> 00:37:26,490
All right.

1051
00:37:26,490 --> 00:37:27,450
AUDIENCE: I'll [INAUDIBLE].

1052
00:37:27,450 --> 00:37:28,325
SPEAKER 1: All right.

1053
00:37:28,325 --> 00:37:29,070
Thank you.

1054
00:37:29,070 --> 00:37:29,841
All right.

1055
00:37:29,841 --> 00:37:30,340
Sure.

1056
00:37:30,340 --> 00:37:31,964
So what was the point of this exercise?

1057
00:37:31,964 --> 00:37:35,770
And how do we actually now get to
a decision point where one of these

1058
00:37:35,770 --> 00:37:37,660
is the way to go?

1059
00:37:37,660 --> 00:37:40,250
So in bubble sort, recall that
the key was to do something

1060
00:37:40,250 --> 00:37:42,744
again and again until we did no swaps.

1061
00:37:42,744 --> 00:37:45,160
At which point we could conclude
that the list was sorted.

1062
00:37:45,160 --> 00:37:47,852
So let's do exactly that,
repeat until no swaps.

1063
00:37:47,852 --> 00:37:49,560
And then, let's give
ourselves a counter,

1064
00:37:49,560 --> 00:37:51,434
just to make things a
little more methodical,

1065
00:37:51,434 --> 00:37:56,380
and say for i from 0 to n
minus 1-- rather n minus 2.

1066
00:37:56,380 --> 00:37:57,060
Why?

1067
00:37:57,060 --> 00:38:00,170
Well, the end of the list
recall is it n minus 1.

1068
00:38:00,170 --> 00:38:03,290
Because if you have a list of
size n, the beginning is at 0.

1069
00:38:03,290 --> 00:38:05,240
The end is at n minus 1.

1070
00:38:05,240 --> 00:38:08,490
And so one shy of the end
is going to be n minus 2.

1071
00:38:08,490 --> 00:38:11,910
So we want to do this up through
the second to last element.

1072
00:38:11,910 --> 00:38:16,780
If the i-th and the i-th plus
1 elements are out of order.

1073
00:38:16,780 --> 00:38:20,400
So if left hand and right hand
are out of order, swap them.

1074
00:38:20,400 --> 00:38:22,200
And repeat this again
and again and again.

1075
00:38:22,200 --> 00:38:23,950
And thanks to that
outer loop, we're going

1076
00:38:23,950 --> 00:38:27,990
to do it again and again and
again until we have no such swaps.

1077
00:38:27,990 --> 00:38:30,300
And now to be clear, why this n minus 2?

1078
00:38:30,300 --> 00:38:33,510
We want to make sure as we're sort
of walking down our row of volunteers

1079
00:38:33,510 --> 00:38:37,610
that my left hand does not actually
point at the last human on stage

1080
00:38:37,610 --> 00:38:39,650
because then, where would
my right hand point?

1081
00:38:39,650 --> 00:38:42,914
There's no person to beyond that point.

1082
00:38:42,914 --> 00:38:44,080
So this then is bubble sort.

1083
00:38:44,080 --> 00:38:48,310
Now, let's propose pseudocode for
our other algorithm, selection sort,

1084
00:38:48,310 --> 00:38:50,750
wherein we walked through
the list iteratively

1085
00:38:50,750 --> 00:38:54,030
trying to select on each
pass the smallest element

1086
00:38:54,030 --> 00:38:55,540
and putting it into its place.

1087
00:38:55,540 --> 00:38:58,310
So for i from 0 to n
minus 1, we're going

1088
00:38:58,310 --> 00:39:00,440
to do this from beginning
through the end,

1089
00:39:00,440 --> 00:39:05,130
find the smallest element between
i-th and n-th minus 1 element.

1090
00:39:05,130 --> 00:39:08,810
Swap the smallest with
that i-th element.

1091
00:39:08,810 --> 00:39:10,590
In other words, walk through the list.

1092
00:39:10,590 --> 00:39:12,210
Find the smallest, put it on the end.

1093
00:39:12,210 --> 00:39:15,790
Walk through the list, swap
it with the second to the end.

1094
00:39:15,790 --> 00:39:18,530
Walk through the list, do the
same, do the same, do the same,

1095
00:39:18,530 --> 00:39:21,400
each time grabbing the
then smallest element.

1096
00:39:21,400 --> 00:39:26,400
And then lastly, we had insertion sort,
whereby we iterated through the list,

1097
00:39:26,400 --> 00:39:29,457
but we pretty much dealt with
every element as we encountered it.

1098
00:39:29,457 --> 00:39:31,290
So let me propose this
pseudocode code here.

1099
00:39:31,290 --> 00:39:34,377
For i from 1 to n minus 1.

1100
00:39:34,377 --> 00:39:36,710
So let's just assume that the
very beginning of the list

1101
00:39:36,710 --> 00:39:40,060
is sort of trivially sorted, no
matter what number he or she is.

1102
00:39:40,060 --> 00:39:44,150
Because if that left side of the list
is of size 1, it is, indeed, sorted.

1103
00:39:44,150 --> 00:39:48,720
And indeed, let's call the 0-th element
through the i minus [? 1-th ?] element,

1104
00:39:48,720 --> 00:39:50,980
wherever we are, the sorted side.

1105
00:39:50,980 --> 00:39:52,910
So essentially, call the
left the sorted side.

1106
00:39:52,910 --> 00:39:55,660
And you can think of the right-hand
side as the unsorted side.

1107
00:39:55,660 --> 00:39:59,190
Remove the i-th element, whatever
element you're dealing with,

1108
00:39:59,190 --> 00:40:02,750
and insert it into the
sorted side in order.

1109
00:40:02,750 --> 00:40:05,540
In other words, just walk
through the list, one at a time,

1110
00:40:05,540 --> 00:40:08,320
plucking out elements, and
then forcibly insert them

1111
00:40:08,320 --> 00:40:10,970
into the sorted side of
the list, making room,

1112
00:40:10,970 --> 00:40:15,180
as our humans did, for that
list by shuffling everyone over.

1113
00:40:15,180 --> 00:40:20,300
This then was bubble sort,
selection sort, and insertion sort.

1114
00:40:20,300 --> 00:40:22,160
But which to choose?

1115
00:40:22,160 --> 00:40:25,089
So let's introduce now an answer to why.

1116
00:40:25,089 --> 00:40:28,130
Not just what these things are, but
why you might use one over the other.

1117
00:40:28,130 --> 00:40:30,350
So the running time
of an algorithm might

1118
00:40:30,350 --> 00:40:32,610
be the number of seconds
an algorithm takes to run,

1119
00:40:32,610 --> 00:40:35,670
or the number of minutes, or the number
of steps, or the number of comparisons.

1120
00:40:35,670 --> 00:40:37,450
It doesn't really matter
what your unit of measure

1121
00:40:37,450 --> 00:40:39,824
is, so long as you're consistent,
whatever feels the most

1122
00:40:39,824 --> 00:40:42,170
expensive or useful to express.

1123
00:40:42,170 --> 00:40:44,790
So let's consider an
example, like bubble sort.

1124
00:40:44,790 --> 00:40:48,222
If we want to consider the
efficiency of bubble sort

1125
00:40:48,222 --> 00:40:50,430
and make a claim as to
whether we should or shouldn't

1126
00:40:50,430 --> 00:40:53,990
use it because it's good or bad, let's
consider it a little formulaically.

1127
00:40:53,990 --> 00:40:56,360
So a little mathy, but
pretty generically.

1128
00:40:56,360 --> 00:41:00,080
So if there are n elements to
store, and a computer scientist,

1129
00:41:00,080 --> 00:41:03,860
recall from week 0, will generally just
call n the size of his or her problem.

1130
00:41:03,860 --> 00:41:07,380
n is the number of numbers
to sort, or humans to sort.

1131
00:41:07,380 --> 00:41:12,190
How many steps is it going to
take to sort that many people?

1132
00:41:12,190 --> 00:41:15,820
Well, when I had 8 music stands
and 8 people here before,

1133
00:41:15,820 --> 00:41:20,557
I considered a pair, a pair,
a pair, a pair, a pair.

1134
00:41:20,557 --> 00:41:22,140
And so if there were n humans up here.

1135
00:41:22,140 --> 00:41:24,670
Or let's speak concretely,
8 people initially.

1136
00:41:24,670 --> 00:41:28,991
How many pairs of people did
I consider in my first pass?

1137
00:41:28,991 --> 00:41:29,490
Say again.

1138
00:41:29,490 --> 00:41:29,989
AUDIENCE: 7.

1139
00:41:29,989 --> 00:41:30,910
SPEAKER 1: 7.

1140
00:41:30,910 --> 00:41:32,929
Because if you pair the
first and the second,

1141
00:41:32,929 --> 00:41:35,470
then the second and the third,
then the third and the fourth,

1142
00:41:35,470 --> 00:41:37,600
that gives you n minus
1 generally speaking.

1143
00:41:37,600 --> 00:41:39,250
You can't make 8 pairs out of 8 people.

1144
00:41:39,250 --> 00:41:41,792
You can make 7 pairs if you
keep walking through the list.

1145
00:41:41,792 --> 00:41:43,000
We're not doing permutations.

1146
00:41:43,000 --> 00:41:45,250
We're just doing adjacent neighbors.

1147
00:41:45,250 --> 00:41:45,750
OK.

1148
00:41:45,750 --> 00:41:49,050
So that might generically
be n minus 1 total steps

1149
00:41:49,050 --> 00:41:50,770
for the first pass of my algorithm.

1150
00:41:50,770 --> 00:41:54,160
But the upside of that was that
our eighth volunteer, number 8,

1151
00:41:54,160 --> 00:41:57,110
bubbled his way all
the way up to the end.

1152
00:41:57,110 --> 00:42:00,120
And so with bubble sort, I didn't
need to consider him again.

1153
00:42:00,120 --> 00:42:02,420
The biggest number
bubbled all the way up.

1154
00:42:02,420 --> 00:42:03,560
And so that was done.

1155
00:42:03,560 --> 00:42:09,590
So how many pairs did I need to consider
the second time through bubble sort?

1156
00:42:09,590 --> 00:42:10,090
6.

1157
00:42:10,090 --> 00:42:13,770
Or more generically, n minus 2.

1158
00:42:13,770 --> 00:42:18,180
And then dot, dot, dot, until there
was just one pair of two people left.

1159
00:42:18,180 --> 00:42:20,907
So I'll just do plus
dot, dot, dot plus 1.

1160
00:42:20,907 --> 00:42:22,990
Now, you might recall from
high school especially,

1161
00:42:22,990 --> 00:42:24,823
at least my math or
physics textbooks always

1162
00:42:24,823 --> 00:42:28,100
had a little cheat sheet for like what
these kinds of recurrences or formulas

1163
00:42:28,100 --> 00:42:28,600
add up to.

1164
00:42:28,600 --> 00:42:32,560
Does anyone recall what this
one adds up to in a math book?

1165
00:42:32,560 --> 00:42:35,830
Or just mathematically?

1166
00:42:35,830 --> 00:42:39,400
So if we actually do this out,
it's the same thing, beautifully,

1167
00:42:39,400 --> 00:42:42,650
as n times n minus 1 over 2.

1168
00:42:42,650 --> 00:42:46,280
And that, of course if
you multiply things out,

1169
00:42:46,280 --> 00:42:49,540
is just the same thing as
n squared minus n over 2.

1170
00:42:49,540 --> 00:42:55,890
And that, of course, feels like it
would just multiply out to this.

1171
00:42:55,890 --> 00:42:58,860
So in other words, if asked, what
is the efficiency of bubble sort,

1172
00:42:58,860 --> 00:43:02,330
or what is the running time of
bubble sort to soar n elements,

1173
00:43:02,330 --> 00:43:04,270
you might sort of
impressively say, well, it's

1174
00:43:04,270 --> 00:43:06,640
n squared divided by 2 minus n over 2.

1175
00:43:06,640 --> 00:43:08,150
But what does that actually mean?

1176
00:43:08,150 --> 00:43:11,570
Well, it turns out that when talking
about the efficiency of algorithms,

1177
00:43:11,570 --> 00:43:14,970
you should really generally
care about the component that

1178
00:43:14,970 --> 00:43:17,040
has the biggest order of magnitude.

1179
00:43:17,040 --> 00:43:19,980
The number that contributes
the most to the total cost.

1180
00:43:19,980 --> 00:43:24,020
And by that I mean this, which is
obviously bigger, n squared or n?

1181
00:43:24,020 --> 00:43:25,700
Assuming positive values of n.

1182
00:43:25,700 --> 00:43:26,830
So n squared, right?

1183
00:43:26,830 --> 00:43:30,522
Especially as n gets bigger, n squared
is going to get even bigger than n.

1184
00:43:30,522 --> 00:43:31,230
So you know what?

1185
00:43:31,230 --> 00:43:35,000
I'm just going to kind of propose,
let's just ignore the n minus 2

1186
00:43:35,000 --> 00:43:37,690
because as n gets really big,
the dominating factor really

1187
00:43:37,690 --> 00:43:38,930
is going to be n square.

1188
00:43:38,930 --> 00:43:41,750
And for that matter, the n over 2,
like who cares about the over 2?

1189
00:43:41,750 --> 00:43:45,422
n squared is kind of the essence
of this formula right now.

1190
00:43:45,422 --> 00:43:46,380
So what does that mean?

1191
00:43:46,380 --> 00:43:49,129
Well, let's just do a concrete
example to convince you of the fact

1192
00:43:49,129 --> 00:43:52,040
that we can cut a little bit
of mathematical corner here

1193
00:43:52,040 --> 00:43:54,832
and only care about the big
number for the following example.

1194
00:43:54,832 --> 00:43:57,290
This is proof by example, which
is not a proof of anything.

1195
00:43:57,290 --> 00:44:01,320
It's just really to paint a picture
of why we do this intuitively.

1196
00:44:01,320 --> 00:44:04,212
So suppose that there are a million
volunteers on stage or a million

1197
00:44:04,212 --> 00:44:05,420
numbers that we want to sort.

1198
00:44:05,420 --> 00:44:06,970
Much bigger than 8.

1199
00:44:06,970 --> 00:44:08,120
Let's plug this in.

1200
00:44:08,120 --> 00:44:11,950
So if the total cost of bubble sort
is n squared over 2 minus n over 2,

1201
00:44:11,950 --> 00:44:12,800
let's plug that in.

1202
00:44:12,800 --> 00:44:17,550
So that's a million squared divided
by 2 minus a million divided by 2.

1203
00:44:17,550 --> 00:44:22,940
So if we multiply that out, that
is 500 billion minus 500,000.

1204
00:44:22,940 --> 00:44:23,800
Big numbers.

1205
00:44:23,800 --> 00:44:29,050
But when you multiply that out,
I mean-- my god, 499,999,500,000.

1206
00:44:29,050 --> 00:44:34,290
I mean, to my own eyes, that's
pretty darn close to 500 billion

1207
00:44:34,290 --> 00:44:35,087
in the first place.

1208
00:44:35,087 --> 00:44:36,670
Why don't we just call it 500 billion?

1209
00:44:36,670 --> 00:44:38,159
So n squared, in other words.

1210
00:44:38,159 --> 00:44:40,200
So again, this is not a
formal proof of anything.

1211
00:44:40,200 --> 00:44:42,450
But this is why, especially
as n gets bigger,

1212
00:44:42,450 --> 00:44:44,980
that lower-ordered term,
the minus n over 2,

1213
00:44:44,980 --> 00:44:48,350
just matters less and less
and less in absolute form.

1214
00:44:48,350 --> 00:44:51,330
And so we'll generally say that
something like bubble sort,

1215
00:44:51,330 --> 00:44:54,930
its running time is on
the order of n squared.

1216
00:44:54,930 --> 00:44:59,027
Big O is actually formal computer
science notation for on the order of.

1217
00:44:59,027 --> 00:45:00,860
And it has a formal
mathematical definition.

1218
00:45:00,860 --> 00:45:06,430
But for us, we'll consider it really
to be an upper bound on the running

1219
00:45:06,430 --> 00:45:07,810
time of this algorithm.

1220
00:45:07,810 --> 00:45:12,100
So an upper bound on how long this
algorithm might take given n steps.

1221
00:45:12,100 --> 00:45:14,240
So big O itself is a formal notation.

1222
00:45:14,240 --> 00:45:16,280
We'll see it in a number
of different contexts.

1223
00:45:16,280 --> 00:45:18,590
Depending on the algorithms
we talk about in class,

1224
00:45:18,590 --> 00:45:20,673
we might say that the
running time of an algorithm

1225
00:45:20,673 --> 00:45:23,360
is on the order of n
squared, which is pretty bad.

1226
00:45:23,360 --> 00:45:25,570
Pretty slow. $500 billion
sounds like a lot.

1227
00:45:25,570 --> 00:45:28,195
Well, maybe it's a little better
on the order of n times log n.

1228
00:45:28,195 --> 00:45:31,150
And more on that some
other time-- later.

1229
00:45:31,150 --> 00:45:33,650
But on the order of
n, it was pretty good.

1230
00:45:33,650 --> 00:45:36,190
If there's n elements, it only
takes you roughly n steps.

1231
00:45:36,190 --> 00:45:39,070
Maybe it's even better big O of log n.

1232
00:45:39,070 --> 00:45:41,635
Or really best would be big O of 1.

1233
00:45:41,635 --> 00:45:44,230
It just takes 1 step, or
10 steps, or 100 steps,

1234
00:45:44,230 --> 00:45:48,280
but a constant number of steps
is what big O of 1 represents.

1235
00:45:48,280 --> 00:45:50,480
And there's any number
of other formulas we

1236
00:45:50,480 --> 00:45:54,370
could use or equations to express
the running time of algorithms.

1237
00:45:54,370 --> 00:45:56,840
But many of the algorithms
we'll look at in CS50 certainly

1238
00:45:56,840 --> 00:45:58,510
fall into these categories.

1239
00:45:58,510 --> 00:46:01,400
So let's take an example.

1240
00:46:01,400 --> 00:46:04,130
What algorithm has the running
time of big O of n squared?

1241
00:46:04,130 --> 00:46:07,150
Well, bubble sort for one thing.

1242
00:46:07,150 --> 00:46:09,270
And it turns out selection sort.

1243
00:46:09,270 --> 00:46:12,110
And it turns out insertion sort.

1244
00:46:12,110 --> 00:46:15,920
All three of those algorithms
actually have the same running time,

1245
00:46:15,920 --> 00:46:19,360
even though they're fundamentally
different in execution.

1246
00:46:19,360 --> 00:46:21,370
But they do share a commonality.

1247
00:46:21,370 --> 00:46:24,090
All of them are comparison-based.

1248
00:46:24,090 --> 00:46:26,400
In each case did we
actually compare values,

1249
00:46:26,400 --> 00:46:29,730
either adjacent or we would look at a
number there, compare it to a number

1250
00:46:29,730 --> 00:46:31,964
here, and then decide whether
or not to do a switch.

1251
00:46:31,964 --> 00:46:33,380
So they were all comparison-based.

1252
00:46:33,380 --> 00:46:36,620
And all of them, frankly, involved
quite a bit of movement or walking,

1253
00:46:36,620 --> 00:46:39,100
either on my part or the
humans-- volunteers part.

1254
00:46:39,100 --> 00:46:41,740
For instance, in bubble
sort's case, I had

1255
00:46:41,740 --> 00:46:45,165
to walk through the whole list,
sorting elements pairwise like this.

1256
00:46:45,165 --> 00:46:46,740
But that wasn't enough.

1257
00:46:46,740 --> 00:46:50,880
I then had to do it again
and walk across the stage.

1258
00:46:50,880 --> 00:46:53,660
And then I had to do it again
and walk across the stage.

1259
00:46:53,660 --> 00:46:55,287
And this is what n squared feels like.

1260
00:46:55,287 --> 00:46:57,620
And even though the problem
was getting a little smaller

1261
00:46:57,620 --> 00:47:01,940
as the big elements bubbled up,
mathematically, even that algorithm,

1262
00:47:01,940 --> 00:47:05,700
it's kind of essentially like doing
n things, looking at n people,

1263
00:47:05,700 --> 00:47:10,217
n times, iterating n total times, which
is roughly n times n, or n squared.

1264
00:47:10,217 --> 00:47:11,550
It's just going to add up a lot.

1265
00:47:11,550 --> 00:47:13,160
So what about selection sort?

1266
00:47:13,160 --> 00:47:14,810
What did I do in selection sort's case?

1267
00:47:14,810 --> 00:47:16,610
Here, it's even more obvious, perhaps.

1268
00:47:16,610 --> 00:47:18,810
To find the smallest
element in a list, I

1269
00:47:18,810 --> 00:47:23,915
have to look logically at every element
before I can confidently conclude,

1270
00:47:23,915 --> 00:47:25,540
yes, I have found the smallest element.

1271
00:47:25,540 --> 00:47:27,665
Once you find it, you can
plop it at the beginning.

1272
00:47:27,665 --> 00:47:28,450
And that's easy.

1273
00:47:28,450 --> 00:47:30,400
But then you have to find
the second smallest element.

1274
00:47:30,400 --> 00:47:33,191
And even though we humans could
kind of eyeball things and realize,

1275
00:47:33,191 --> 00:47:34,440
oh, 2 is the next smallest.

1276
00:47:34,440 --> 00:47:37,350
You don't know that as the computer
unless you look at every element.

1277
00:47:37,350 --> 00:47:38,840
Ah, I found 2.

1278
00:47:38,840 --> 00:47:40,590
And then you could put
2 where it belongs.

1279
00:47:40,590 --> 00:47:42,770
So again, there's this
walking back and forth.

1280
00:47:42,770 --> 00:47:46,670
And if you're going to walk as many as
n steps and have to do this n times--

1281
00:47:46,670 --> 00:47:48,800
one for every element--
that, too, is n times n.

1282
00:47:48,800 --> 00:47:51,700
And insertion sort, same damn
problem, even though it's

1283
00:47:51,700 --> 00:47:53,610
sort of logically
different, the algorithm.

1284
00:47:53,610 --> 00:47:58,120
Insertion sort, beautifully I
only move one step at a time

1285
00:47:58,120 --> 00:47:59,260
and I never turn back.

1286
00:47:59,260 --> 00:48:04,500
Because I just deal with, as you did
for the blue books, each problem one

1287
00:48:04,500 --> 00:48:06,860
at a time, never again backtracking.

1288
00:48:06,860 --> 00:48:10,200
But where was all the work happening?

1289
00:48:10,200 --> 00:48:11,640
In the shifting of humans.

1290
00:48:11,640 --> 00:48:14,560
Now, technically you guys helped out
by doing the shifting yourselves.

1291
00:48:14,560 --> 00:48:16,309
But if I'm the computer,
it actually would

1292
00:48:16,309 --> 00:48:19,700
have been like me tiptoeing back,
shifting, shifting, shifting,

1293
00:48:19,700 --> 00:48:21,880
inserting, shifting, shifting, shifting.

1294
00:48:21,880 --> 00:48:23,590
So again, in the worst
case, I might have

1295
00:48:23,590 --> 00:48:27,530
had to shift everyone all the way
over to make room for someone.

1296
00:48:27,530 --> 00:48:30,080
Because in the worst case,
what's the worst possible input

1297
00:48:30,080 --> 00:48:33,480
you might get to a sorting algorithm?

1298
00:48:33,480 --> 00:48:37,285
What input would create
the most work for you?

1299
00:48:37,285 --> 00:48:38,145
AUDIENCE: Backwards.

1300
00:48:38,145 --> 00:48:39,020
SPEAKER 1: Backwards.

1301
00:48:39,020 --> 00:48:41,710
If the list is perfectly
backwards, every darn element

1302
00:48:41,710 --> 00:48:44,850
is out of place, which means you
have to traipse back and forth

1303
00:48:44,850 --> 00:48:50,700
and back and forth to insert or to
select or to swap all of those elements

1304
00:48:50,700 --> 00:48:51,800
that many times.

1305
00:48:51,800 --> 00:48:55,330
So in all of these cases, they
are not numerically identical.

1306
00:48:55,330 --> 00:48:59,300
Some of those algorithms might take
fewer steps than others in totality,

1307
00:48:59,300 --> 00:49:02,160
but they're all on the order
of n squared for the reason

1308
00:49:02,160 --> 00:49:06,950
that they're all involving comparisons
as many as n times n times.

1309
00:49:06,950 --> 00:49:07,630
All right.

1310
00:49:07,630 --> 00:49:10,830
What about an algorithm
that's big O of n?

1311
00:49:10,830 --> 00:49:14,480
An algorithm that only takes n steps?

1312
00:49:14,480 --> 00:49:15,358
We've seen one.

1313
00:49:15,358 --> 00:49:18,050


1314
00:49:18,050 --> 00:49:19,310
Derek showed us one.

1315
00:49:19,310 --> 00:49:22,450


1316
00:49:22,450 --> 00:49:24,130
What's an algorithm that takes n steps?

1317
00:49:24,130 --> 00:49:25,224
Derek, hopefully.

1318
00:49:25,224 --> 00:49:26,140
AUDIENCE: [INAUDIBLE].

1319
00:49:26,140 --> 00:49:27,630
SPEAKER 1: A random search?

1320
00:49:27,630 --> 00:49:28,700
Kind of, sort of.

1321
00:49:28,700 --> 00:49:31,944
It's a little harder to
put a number to because it

1322
00:49:31,944 --> 00:49:33,360
depends what you mean by "random."

1323
00:49:33,360 --> 00:49:35,470
Because if you have random
with repetition such

1324
00:49:35,470 --> 00:49:38,347
that you're checking foolishly
the same elements again and again,

1325
00:49:38,347 --> 00:49:40,180
it can actually add up
to more than n steps.

1326
00:49:40,180 --> 00:49:42,985
So not random, but-- yeah.

1327
00:49:42,985 --> 00:49:43,785
AUDIENCE: Binary.

1328
00:49:43,785 --> 00:49:45,160
SPEAKER 1: Binary is even better.

1329
00:49:45,160 --> 00:49:45,868
Hold that answer.

1330
00:49:45,868 --> 00:49:47,880
You're about to be correct.

1331
00:49:47,880 --> 00:49:48,880
Linear search, right?

1332
00:49:48,880 --> 00:49:50,760
If you just blindly
go from left to right

1333
00:49:50,760 --> 00:49:52,570
or right to left looking
for some element,

1334
00:49:52,570 --> 00:49:54,060
that is on the order of n steps.

1335
00:49:54,060 --> 00:49:56,670
Because you are just doing
foolishly unnecessary

1336
00:49:56,670 --> 00:49:58,870
work if you go beyond
the end of the list

1337
00:49:58,870 --> 00:50:00,370
or beyond the beginning of the list.

1338
00:50:00,370 --> 00:50:02,440
You only need n steps for linear search.

1339
00:50:02,440 --> 00:50:07,160
But what if you want to instead find
an algorithm that's logarithmic?

1340
00:50:07,160 --> 00:50:12,190
What algorithm that we used
might be logarithmic in nature?

1341
00:50:12,190 --> 00:50:12,810
Binary.

1342
00:50:12,810 --> 00:50:17,350
So binary search, as Derek proposed,
once we knew the list was sorted

1343
00:50:17,350 --> 00:50:19,670
was an alternative to that.

1344
00:50:19,670 --> 00:50:20,610
And constant time.

1345
00:50:20,610 --> 00:50:23,070
What about this?

1346
00:50:23,070 --> 00:50:25,070
What's an algorithm, maybe
independent of today,

1347
00:50:25,070 --> 00:50:27,700
that allows you constant
time, running time?

1348
00:50:27,700 --> 00:50:34,986


1349
00:50:34,986 --> 00:50:35,860
It could be anything.

1350
00:50:35,860 --> 00:50:38,650
How about hello world?

1351
00:50:38,650 --> 00:50:40,600
The [? say ?] block,
or printf like that.

1352
00:50:40,600 --> 00:50:42,750
If you can just say a
whole phrase at once.

1353
00:50:42,750 --> 00:50:46,320
Or maybe just adding two numbers
together is like one step.

1354
00:50:46,320 --> 00:50:48,994
No matter how big the numbers
are, it still just takes one step

1355
00:50:48,994 --> 00:50:50,035
to add them all together.

1356
00:50:50,035 --> 00:50:52,400
It depends on some of the
lower-level implementation details.

1357
00:50:52,400 --> 00:50:54,960
And even printf or the [? say ?]
block has multiple characters.

1358
00:50:54,960 --> 00:50:57,001
So we'll actually come
back to this in the future

1359
00:50:57,001 --> 00:50:58,820
as to what it really means to be a step.

1360
00:50:58,820 --> 00:51:01,770
But anything that takes a
constant number of steps.

1361
00:51:01,770 --> 00:51:04,170
Checking an "if" condition,
returning a value.

1362
00:51:04,170 --> 00:51:07,410
Statements, generally, might be
broadly speaking just constant time,

1363
00:51:07,410 --> 00:51:10,230
but we'll see contradictions
to that before long.

1364
00:51:10,230 --> 00:51:12,250
So let's take a look
at two other symbols.

1365
00:51:12,250 --> 00:51:14,810
This one being a capital omega symbol.

1366
00:51:14,810 --> 00:51:18,450
And this omega symbol is the
opposite, really, of big O. Big O

1367
00:51:18,450 --> 00:51:20,060
is an upper bound on the running time.

1368
00:51:20,060 --> 00:51:21,810
In the worst case, how
many steps might it

1369
00:51:21,810 --> 00:51:24,780
take to find an element
in a list of n elements?

1370
00:51:24,780 --> 00:51:25,830
n steps.

1371
00:51:25,830 --> 00:51:26,967
So big O of n.

1372
00:51:26,967 --> 00:51:28,800
Bubble sort, selection
sort, insertion sort?

1373
00:51:28,800 --> 00:51:30,490
They're on the order of n squared.

1374
00:51:30,490 --> 00:51:32,270
But what about the lower bound?

1375
00:51:32,270 --> 00:51:35,170
Especially when you get lucky
in the best case so to speak,

1376
00:51:35,170 --> 00:51:37,750
how few steps might you
solve problems with?

1377
00:51:37,750 --> 00:51:40,530
So for instance, if we
consider the same formulas,

1378
00:51:40,530 --> 00:51:43,750
but this time with capital
omega, what's an algorithm

1379
00:51:43,750 --> 00:51:47,330
that no matter what
takes n squared steps,

1380
00:51:47,330 --> 00:51:51,210
even if, for instance,
the list is sorted?

1381
00:51:51,210 --> 00:51:55,790
So suppose our 8 volunteers here
were already 1, 2, 3, 4, 5, 6, 7, 8.

1382
00:51:55,790 --> 00:51:59,580
Which of those algorithms would
still have required n squared steps?

1383
00:51:59,580 --> 00:52:05,520


1384
00:52:05,520 --> 00:52:08,770
So not linear search or binary
search because those are much lower.

1385
00:52:08,770 --> 00:52:13,320
But insertion, bubble
sort, selection sort.

1386
00:52:13,320 --> 00:52:14,980
Well, what about selection sort?

1387
00:52:14,980 --> 00:52:18,690
Even if the list is already sorted,
how do I find the smallest element?

1388
00:52:18,690 --> 00:52:22,310
I'm lucky and it's right here,
but I don't know that yet, right?

1389
00:52:22,310 --> 00:52:25,519
To know that, I have to confidently
walk the whole list and realize,

1390
00:52:25,519 --> 00:52:26,810
well, that was a waste of time.

1391
00:52:26,810 --> 00:52:28,350
1 is indeed the smallest element.

1392
00:52:28,350 --> 00:52:29,280
It's sorted.

1393
00:52:29,280 --> 00:52:32,370
How do I find the next smallest element?

1394
00:52:32,370 --> 00:52:33,214
Start at the left.

1395
00:52:33,214 --> 00:52:34,380
But you can ignore number 1.

1396
00:52:34,380 --> 00:52:35,770
So it's a minor savings.

1397
00:52:35,770 --> 00:52:36,540
OK, 2.

1398
00:52:36,540 --> 00:52:39,700
Feel's pretty small, but got to check.

1399
00:52:39,700 --> 00:52:41,350
Dammit, that was the smallest.

1400
00:52:41,350 --> 00:52:47,070
And so selection sort, even in the best
case when the list is already sorted,

1401
00:52:47,070 --> 00:52:51,160
is going to take at least
on the order of n squared

1402
00:52:51,160 --> 00:52:53,250
steps because of that naivete of it.

1403
00:52:53,250 --> 00:52:55,480
Because of that underlying
design of just looking

1404
00:52:55,480 --> 00:52:58,250
for the smallest element
with no optimizations means

1405
00:52:58,250 --> 00:53:00,590
the algorithm's always going
to take us that many steps.

1406
00:53:00,590 --> 00:53:02,048
But it doesn't have to be that way.

1407
00:53:02,048 --> 00:53:03,100
What about bubble sort?

1408
00:53:03,100 --> 00:53:06,620
Suppose that all 8 humans are
sorted, 1 all the way through 8.

1409
00:53:06,620 --> 00:53:08,390
And here I am comparing the first two.

1410
00:53:08,390 --> 00:53:09,150
1 and 2?

1411
00:53:09,150 --> 00:53:10,280
Not out of order.

1412
00:53:10,280 --> 00:53:15,320
2 and 3, 3 and 4, 4 and 5,
5 and 6, 6 and 7, 7 and 8.

1413
00:53:15,320 --> 00:53:16,750
OK, everything looks good.

1414
00:53:16,750 --> 00:53:22,464
And in particular, what did I not
do while walking from left to right?

1415
00:53:22,464 --> 00:53:23,380
I didn't do any swaps.

1416
00:53:23,380 --> 00:53:26,410
So it would be foolish of me
algorithmically to do any of that

1417
00:53:26,410 --> 00:53:28,680
again because the answer
is not going to change.

1418
00:53:28,680 --> 00:53:29,310
And so done.

1419
00:53:29,310 --> 00:53:33,000
It took me n steps to sort
n elements with bubble sort

1420
00:53:33,000 --> 00:53:35,080
if the list is already sorted.

1421
00:53:35,080 --> 00:53:39,410
So it would be omega of n because in
the best case, it takes you n steps.

1422
00:53:39,410 --> 00:53:42,990
Could a sorting algorithm
be constant time

1423
00:53:42,990 --> 00:53:46,730
or logarithmic, log n or order of 1?

1424
00:53:46,730 --> 00:53:50,050
Or omega of 1 rather?

1425
00:53:50,050 --> 00:53:55,544
Can you sort n elements in
logarithmic time or constant time?

1426
00:53:55,544 --> 00:53:59,260


1427
00:53:59,260 --> 00:54:00,620
What's the intuition there?

1428
00:54:00,620 --> 00:54:03,980
These are kind of like now the
fundamental meaning of computing

1429
00:54:03,980 --> 00:54:05,610
and what you can actually do.

1430
00:54:05,610 --> 00:54:08,690
What does it mean for me to
ask, can you sort n elements

1431
00:54:08,690 --> 00:54:11,060
in log n time or constant time?

1432
00:54:11,060 --> 00:54:13,820
Well, that effectively
is like saying, can you

1433
00:54:13,820 --> 00:54:18,630
sort n elements without even
looking at some of those elements?

1434
00:54:18,630 --> 00:54:21,770
Because both log n and
1-- or mathematically,

1435
00:54:21,770 --> 00:54:25,960
and if you don't recall, take it on
faith today-- less than omega of n

1436
00:54:25,960 --> 00:54:27,230
in general.

1437
00:54:27,230 --> 00:54:30,520
So can you possibly,
intuitively, in the real world,

1438
00:54:30,520 --> 00:54:36,690
sort n elements in some random
order in fewer than n steps?

1439
00:54:36,690 --> 00:54:37,788
Yeah.

1440
00:54:37,788 --> 00:54:38,704
AUDIENCE: [INAUDIBLE].

1441
00:54:38,704 --> 00:54:43,779


1442
00:54:43,779 --> 00:54:44,820
SPEAKER 1: Good question.

1443
00:54:44,820 --> 00:54:46,680
Could you make the whole
list a big integer?

1444
00:54:46,680 --> 00:54:48,410
You could, that and other tricks.

1445
00:54:48,410 --> 00:54:52,690
But to do that, you're going to
need to touch or somehow manipulate

1446
00:54:52,690 --> 00:54:56,520
all of those values at least once
to kind of do that, I would think.

1447
00:54:56,520 --> 00:54:59,344
And so you've already spent n steps.

1448
00:54:59,344 --> 00:55:00,260
AUDIENCE: [INAUDIBLE].

1449
00:55:00,260 --> 00:55:03,197


1450
00:55:03,197 --> 00:55:03,780
SPEAKER 1: OK.

1451
00:55:03,780 --> 00:55:08,180
So if you have a like guessing
algorithm-- yes, this is sorted.

1452
00:55:08,180 --> 00:55:09,189
That's constant time.

1453
00:55:09,189 --> 00:55:10,480
You're just not always correct.

1454
00:55:10,480 --> 00:55:14,340
So I should clarify, can you
sort correctly n elements

1455
00:55:14,340 --> 00:55:17,580
without necessarily looking at
all n-- the short answer is no.

1456
00:55:17,580 --> 00:55:19,880
There is like a fundamental
limit of computation.

1457
00:55:19,880 --> 00:55:21,770
And also, just human intuition here.

1458
00:55:21,770 --> 00:55:26,300
You can't possibly claim to me and
convince me, in a court of law even,

1459
00:55:26,300 --> 00:55:28,780
that these n elements are
sorted if you can't even

1460
00:55:28,780 --> 00:55:31,660
testify to having looked
at all n of those elements.

1461
00:55:31,660 --> 00:55:34,130
It's just not possible given
the computational model

1462
00:55:34,130 --> 00:55:38,020
we've been discussing where a computer
can only look at one element at a time.

1463
00:55:38,020 --> 00:55:39,870
So sorting is out of the question.

1464
00:55:39,870 --> 00:55:44,720
But an algorithm that
takes omega of one step?

1465
00:55:44,720 --> 00:55:50,360
For instance in the best case, when
might an algorithm need only one step?

1466
00:55:50,360 --> 00:55:54,290
How about something like linear
search or even binary search?

1467
00:55:54,290 --> 00:55:59,270
The running time of those algorithms
was big O of n and big O of log n

1468
00:55:59,270 --> 00:56:00,220
respectively.

1469
00:56:00,220 --> 00:56:03,020
Linear search, binary search.

1470
00:56:03,020 --> 00:56:05,930
What's the lower bound on those
two algorithms' running times?

1471
00:56:05,930 --> 00:56:10,407


1472
00:56:10,407 --> 00:56:11,340
AUDIENCE: [INAUDIBLE].

1473
00:56:11,340 --> 00:56:12,940
SPEAKER 1: Yeah, it's omega of 1.

1474
00:56:12,940 --> 00:56:14,930
But why?

1475
00:56:14,930 --> 00:56:16,010
Derek wasn't so lucky.

1476
00:56:16,010 --> 00:56:19,880
But AJ, last year, touched
the number 50-- voila, 1 step.

1477
00:56:19,880 --> 00:56:23,300
And that was actually, while
sort of bad pedagogy for us,

1478
00:56:23,300 --> 00:56:26,080
was a perfect manifestation
of yes, in the best

1479
00:56:26,080 --> 00:56:29,510
case the lower bound on your running
time might indeed just be one step.

1480
00:56:29,510 --> 00:56:32,050
Or two steps, but some
constant number of steps.

1481
00:56:32,050 --> 00:56:34,100
So we have a range of these options.

1482
00:56:34,100 --> 00:56:36,830
Now, sometimes these ranges coincide.

1483
00:56:36,830 --> 00:56:40,990
If your big O notation, so to speak,
and your omega notation, so to speak,

1484
00:56:40,990 --> 00:56:43,940
are one in the same values, you
can claim that the algorithm

1485
00:56:43,940 --> 00:56:46,710
has a running time in capital Theta.

1486
00:56:46,710 --> 00:56:50,060
So theta just means when big
O and omega are the same,

1487
00:56:50,060 --> 00:56:53,750
you can instead use this formula and
sort of convey two thoughts at once.

1488
00:56:53,750 --> 00:56:56,230
But for now, the takeaway
is that as best we've

1489
00:56:56,230 --> 00:57:00,870
seen for something like sorting,
the best we've done so far, at least

1490
00:57:00,870 --> 00:57:02,892
in the worst case, is
big O of n squared.

1491
00:57:02,892 --> 00:57:05,850
And this doesn't feel very good,
especially since sorting and searching

1492
00:57:05,850 --> 00:57:06,690
is all around us.

1493
00:57:06,690 --> 00:57:08,404
Anyone with an iPhone or an Android.

1494
00:57:08,404 --> 00:57:11,320
I mean, there's so much data that
we're carrying around in our pockets

1495
00:57:11,320 --> 00:57:14,400
these days, let alone in the cloud
and on our laptops and desktops,

1496
00:57:14,400 --> 00:57:17,050
that it's just generally
good practice to keep sorted.

1497
00:57:17,050 --> 00:57:19,130
In your phone book, it
would be pretty tedious

1498
00:57:19,130 --> 00:57:22,900
if all of your friends and family were
in random order in the contacts list.

1499
00:57:22,900 --> 00:57:26,210
And you had to like scroll through
the whole darn list, big O of n,

1500
00:57:26,210 --> 00:57:27,640
to find someone.

1501
00:57:27,640 --> 00:57:29,592
No, instead we have a
search box, of course.

1502
00:57:29,592 --> 00:57:32,550
And most of us probably wouldn't
blindly scroll through the whole list.

1503
00:57:32,550 --> 00:57:36,910
But even that search box, if you start
typing in D-E-R to look up Derek,

1504
00:57:36,910 --> 00:57:39,490
or S-M-I-T-H to find Smith.

1505
00:57:39,490 --> 00:57:40,840
Well, how is iOS?

1506
00:57:40,840 --> 00:57:44,380
How is Android finding Mike
Smith or finding Derek?

1507
00:57:44,380 --> 00:57:50,300
Those pieces of software themselves
have algorithms that underneath the hood

1508
00:57:50,300 --> 00:57:54,577
are hopefully leveraging smarter
algorithms than we've even seen here.

1509
00:57:54,577 --> 00:57:57,660
Because especially as you have more
and more friends, more and more family

1510
00:57:57,660 --> 00:58:01,580
members, even big O of n squared
starts to feel kind of slow

1511
00:58:01,580 --> 00:58:02,950
as we can see here.

1512
00:58:02,950 --> 00:58:07,334
Let me go ahead and open up an example.

1513
00:58:07,334 --> 00:58:09,000
So let's take a look at a demonstration.

1514
00:58:09,000 --> 00:58:12,310
Here is a visualization that someone
on the internet kindly put together.

1515
00:58:12,310 --> 00:58:14,270
And it focuses on sorting numbers.

1516
00:58:14,270 --> 00:58:17,830
But rather than just show the numbers
textually as 1, 2, 3, 4, 5, 6, 7, 8,

1517
00:58:17,830 --> 00:58:19,190
it instead shows them as bar.

1518
00:58:19,190 --> 00:58:21,240
So the shorter the bar,
the smaller the number.

1519
00:58:21,240 --> 00:58:23,196
The taller the bar,
the taller the number.

1520
00:58:23,196 --> 00:58:25,320
And let me go ahead and
increase the speed of this,

1521
00:58:25,320 --> 00:58:26,930
just so it doesn't get too tedious.

1522
00:58:26,930 --> 00:58:30,320
And let's take a quick
look at bubble sort.

1523
00:58:30,320 --> 00:58:32,010
Now, notice what's happening.

1524
00:58:32,010 --> 00:58:35,220
The two red bars adjacently
are the ones that are

1525
00:58:35,220 --> 00:58:37,120
being compared and potentially swapped.

1526
00:58:37,120 --> 00:58:40,250
And you'll notice that just like in
our human demo, what is happening over

1527
00:58:40,250 --> 00:58:43,775
there on the right-hand side?

1528
00:58:43,775 --> 00:58:44,834
AUDIENCE: [INAUDIBLE].

1529
00:58:44,834 --> 00:58:45,500
SPEAKER 1: Yeah.

1530
00:58:45,500 --> 00:58:50,210
So the biggest elements seem to be
bubbling up, if you will, to the top.

1531
00:58:50,210 --> 00:58:53,850
Even though there's still a lot of
work to be done to the left of those,

1532
00:58:53,850 --> 00:59:01,244
we indeed have the ability here to see
the list getting sorted progressively.

1533
00:59:01,244 --> 00:59:02,910
But you know, I'm already getting bored.

1534
00:59:02,910 --> 00:59:04,493
This algorithm doesn't feel very fast.

1535
00:59:04,493 --> 00:59:05,400
It's very pretty.

1536
00:59:05,400 --> 00:59:08,490
It's very correct, it would
seem, but it's a little slow.

1537
00:59:08,490 --> 00:59:12,160
Let's try another one to see
if it's any better than that.

1538
00:59:12,160 --> 00:59:13,000
That's the spoiler.

1539
00:59:13,000 --> 00:59:14,333
That's what it should look like.

1540
00:59:14,333 --> 00:59:17,810
Let's try our friend selection
sort, which is already sorted.

1541
00:59:17,810 --> 00:59:20,520
Let me stop this.

1542
00:59:20,520 --> 00:59:24,380
Let me click on Randomize Array.

1543
00:59:24,380 --> 00:59:26,080
And now click Selection Sort.

1544
00:59:26,080 --> 00:59:27,370
And what's happening here?

1545
00:59:27,370 --> 00:59:31,370
This is like me walking across
the audience again and again

1546
00:59:31,370 --> 00:59:32,640
and again and again.

1547
00:59:32,640 --> 00:59:34,660
You don't see any of
this bubbling effect,

1548
00:59:34,660 --> 00:59:38,690
but you do see the smallest
element being selected again

1549
00:59:38,690 --> 00:59:40,280
and again and again.

1550
00:59:40,280 --> 00:59:43,930
So we're kind of cleaning up
that mess one step at a time.

1551
00:59:43,930 --> 00:59:46,280
It's still going to take some
steps, but you can perhaps

1552
00:59:46,280 --> 00:59:48,700
see it a little better
and a little faster here.

1553
00:59:48,700 --> 00:59:52,650
And spoiler alert, when we skip forward
to the end, that's what it looks like.

1554
00:59:52,650 --> 00:59:57,000
If we now randomize it one last
time and do insertion sort,

1555
00:59:57,000 --> 01:00:00,970
this one kind of feels
and looks different.

1556
01:00:00,970 --> 01:00:03,457
It's kind of mostly
fixing things, but then it

1557
01:00:03,457 --> 01:00:05,040
kind of goes in and fills in the gaps.

1558
01:00:05,040 --> 01:00:08,390
Because indeed, it's moving forward
one at a time, grabbing the element,

1559
01:00:08,390 --> 01:00:11,610
and then shifting the element as
needed to make room for whatever number

1560
01:00:11,610 --> 01:00:12,830
it's encountered.

1561
01:00:12,830 --> 01:00:14,884
So that's why sometimes
it only takes a few steps

1562
01:00:14,884 --> 01:00:16,300
because you find where it belongs.

1563
01:00:16,300 --> 01:00:20,600
That time it took a while to
find the space that it belongs.

1564
01:00:20,600 --> 01:00:23,310
But generally, the list is
getting more and more sorted.

1565
01:00:23,310 --> 01:00:26,120
And once we do get to
the very end, this one

1566
01:00:26,120 --> 01:00:28,100
we can actually feel
being a little faster.

1567
01:00:28,100 --> 01:00:30,974
Which isn't necessarily a testament
to it being fundamentally better.

1568
01:00:30,974 --> 01:00:34,270
All of these remain on the
order of n squared steps.

1569
01:00:34,270 --> 01:00:37,100
And now indeed, it's starting to
drag, kind of like our blue books.

1570
01:00:37,100 --> 01:00:38,900
And now we're actually complete.

1571
01:00:38,900 --> 01:00:42,090
But what if we were to
compare these things?

1572
01:00:42,090 --> 01:00:44,720
Bubble sort on the left,
selection sort in the middle,

1573
01:00:44,720 --> 01:00:48,780
and then a third algorithm that we've
not seen this time called merge sort.

1574
01:00:48,780 --> 01:00:51,170
So insertion sort is roughly
the same as all of these.

1575
01:00:51,170 --> 01:00:53,465
So this visualization lets us try three.

1576
01:00:53,465 --> 01:00:55,090
To start this, I have to click on them.

1577
01:00:55,090 --> 01:00:56,798
So there's a little
bit of a fudge factor

1578
01:00:56,798 --> 01:00:59,770
here where I have to click on all
three programs quickly in succession

1579
01:00:59,770 --> 01:01:00,490
to see them.

1580
01:01:00,490 --> 01:01:04,120
But let's see if we can't
do fundamentally better.

1581
01:01:04,120 --> 01:01:08,900
Merge sort is our new
friend on the right.

1582
01:01:08,900 --> 01:01:09,550
Oh my god.

1583
01:01:09,550 --> 01:01:12,970


1584
01:01:12,970 --> 01:01:16,870
And these are different visualizations,
but they're the same algorithms.

1585
01:01:16,870 --> 01:01:19,010
And it's not that they're
just poorly implemented.

1586
01:01:19,010 --> 01:01:21,500
It's arguably that
they're poorly designed.

1587
01:01:21,500 --> 01:01:25,310
They are all correct,
but merge sort clearly

1588
01:01:25,310 --> 01:01:27,617
seems to have some upsides
over selection sort.

1589
01:01:27,617 --> 01:01:30,700
And if you'll take it on faith for
now, just because we can only fit three

1590
01:01:30,700 --> 01:01:33,090
on the screen, insertion sort, too.

1591
01:01:33,090 --> 01:01:35,300
You see the bigger elements
bubbling up to the top.

1592
01:01:35,300 --> 01:01:37,080
You see us selecting.

1593
01:01:37,080 --> 01:01:40,365
Again, it turns out this person
implemented selection sort

1594
01:01:40,365 --> 01:01:41,740
by selecting the biggest element.

1595
01:01:41,740 --> 01:01:44,656
But that's fundamentally equivalent
to selecting the smallest element.

1596
01:01:44,656 --> 01:01:48,250
And that's because you can see
them all stacking here in this way.

1597
01:01:48,250 --> 01:01:52,510
But my god, I wonder,
can me start this again?

1598
01:01:52,510 --> 01:01:53,010
Let's try.

1599
01:01:53,010 --> 01:01:54,120
Let's see if we can lap it.

1600
01:01:54,120 --> 01:01:54,410
Come on.

1601
01:01:54,410 --> 01:01:54,910
Come on.

1602
01:01:54,910 --> 01:01:55,840
Come on.

1603
01:01:55,840 --> 01:01:58,110
Come on.

1604
01:01:58,110 --> 01:01:59,070
Oh, so close.

1605
01:01:59,070 --> 01:01:59,570
All right.

1606
01:01:59,570 --> 01:02:00,611
Had I not talked as much.

1607
01:02:00,611 --> 01:02:01,370
So merge sort.

1608
01:02:01,370 --> 01:02:03,450
Where is this magical algorithm?

1609
01:02:03,450 --> 01:02:07,410
What are we actually doing wasting
time on these other things?

1610
01:02:07,410 --> 01:02:11,270
Well, let's consider exactly that, but
we need sort of a secret ingredient.

1611
01:02:11,270 --> 01:02:13,562
And let me revisit Mike
Smith for just a moment.

1612
01:02:13,562 --> 01:02:15,270
So you'll recall, this
was the pseudocode

1613
01:02:15,270 --> 01:02:17,440
that we had from Mike Smith in week 0.

1614
01:02:17,440 --> 01:02:21,420
And we decided when Mike
is earlier in the book

1615
01:02:21,420 --> 01:02:25,290
or when Mike is later in the book,
to just go to an earlier step.

1616
01:02:25,290 --> 01:02:27,560
Thereby, inducing some kind of loop.

1617
01:02:27,560 --> 01:02:30,740
But suppose we changed that
language to be this instead.

1618
01:02:30,740 --> 01:02:32,590
Don't go to a specific line number.

1619
01:02:32,590 --> 01:02:34,800
Don't go to some earlier step.

1620
01:02:34,800 --> 01:02:37,260
But just more generally,
say, search for Mike

1621
01:02:37,260 --> 01:02:40,510
in the left half of the book or search
for Mike in the right half of the book.

1622
01:02:40,510 --> 01:02:43,960
This is borrowing an idea that
I proposed a moment ago when

1623
01:02:43,960 --> 01:02:46,240
we were searching for something else.

1624
01:02:46,240 --> 01:02:48,380
And what word did we
ascribe to this kind

1625
01:02:48,380 --> 01:02:53,880
of approach of this cyclical
use of your own definition?

1626
01:02:53,880 --> 01:02:54,570
Yeah.

1627
01:02:54,570 --> 01:02:54,950
AUDIENCE: [INAUDIBLE].

1628
01:02:54,950 --> 01:02:55,940
SPEAKER 1: Recursion.

1629
01:02:55,940 --> 01:02:58,800
So recursion is actually
this secret ingredient

1630
01:02:58,800 --> 01:03:01,550
that we can leverage, both
intuitively and in code,

1631
01:03:01,550 --> 01:03:05,820
to implement this new and improved
fourth algorithm, merge sort.

1632
01:03:05,820 --> 01:03:08,937
And indeed, this we'll use
demonstrative of a class of algorithms

1633
01:03:08,937 --> 01:03:11,770
that doesn't behave in quite the
same way fundamentally as selection

1634
01:03:11,770 --> 01:03:13,353
sort, insertion sort, and bubble sort.

1635
01:03:13,353 --> 01:03:15,830
Indeed, you can do better
than big O of n squared.

1636
01:03:15,830 --> 01:03:19,590
You can do much better, as you felt
a moment ago with visualization.

1637
01:03:19,590 --> 01:03:22,840
And merge sort is one such
algorithm with which we can do that.

1638
01:03:22,840 --> 01:03:26,000
And amazingly, the pseudocode
code is this simple.

1639
01:03:26,000 --> 01:03:30,170
When you're given n elements, if
n is less than 2, just return.

1640
01:03:30,170 --> 01:03:33,610
If you have fewer than 2 elements, the
list is of size 1, which is sorted,

1641
01:03:33,610 --> 01:03:36,260
or size 0, which is also
meaninglessly sorted.

1642
01:03:36,260 --> 01:03:37,459
So you're done.

1643
01:03:37,459 --> 01:03:39,750
So that's kind of a base
case, like a default scenario.

1644
01:03:39,750 --> 01:03:42,041
Let's just make sure that no
matter what, we eventually

1645
01:03:42,041 --> 01:03:44,440
quit, even if the list is super-small.

1646
01:03:44,440 --> 01:03:47,280
But then, the magic is hidden
in those last three lines.

1647
01:03:47,280 --> 01:03:50,210
Else, sort the left
half of the elements,

1648
01:03:50,210 --> 01:03:51,970
then sort the right
half of the elements,

1649
01:03:51,970 --> 01:03:54,100
which is completely punting so to speak.

1650
01:03:54,100 --> 01:03:56,140
Just kind of recursively
calling yourself.

1651
01:03:56,140 --> 01:04:00,860
But the key detail here is that then
you have to merge the sorted halves.

1652
01:04:00,860 --> 01:04:04,172
You're not just looking for Mike to the
left and looking for Mike to the right.

1653
01:04:04,172 --> 01:04:06,630
You're doing something on the
left, something on the right,

1654
01:04:06,630 --> 01:04:10,060
sorting each half, but then you have
to kind of weave things together.

1655
01:04:10,060 --> 01:04:12,910
And we'll see how
expensive that actually is.

1656
01:04:12,910 --> 01:04:14,210
So let's take an example.

1657
01:04:14,210 --> 01:04:18,030
And I mocked this up with some
very simple animation so we

1658
01:04:18,030 --> 01:04:19,615
could walk through it step-by-step.

1659
01:04:19,615 --> 01:04:20,740
But consider the following.

1660
01:04:20,740 --> 01:04:22,531
So here is that same
list from before where

1661
01:04:22,531 --> 01:04:24,230
we had a whole bunch of volunteers.

1662
01:04:24,230 --> 01:04:26,810
But rather than call up humans,
we'll just do this visually.

1663
01:04:26,810 --> 01:04:30,055
Let me consider the fact that
this is really just an array.

1664
01:04:30,055 --> 01:04:32,070
So I'm just going to box
everything like this.

1665
01:04:32,070 --> 01:04:35,350
And this is actually key that we
have random access to these elements.

1666
01:04:35,350 --> 01:04:37,170
We can jump right to
the elements we want

1667
01:04:37,170 --> 01:04:39,330
and code ultimately, too, if we cared.

1668
01:04:39,330 --> 01:04:41,680
And now, let's focus
on the left-hand side.

1669
01:04:41,680 --> 01:04:46,362
So I've wrapped 4, 8,
6, 2 in a solid line

1670
01:04:46,362 --> 01:04:48,570
and left everything else
dash because I want to focus

1671
01:04:48,570 --> 01:04:50,800
our attention on sorting the left half.

1672
01:04:50,800 --> 01:04:53,310
So again, to rewind
this is the algorithm.

1673
01:04:53,310 --> 01:04:55,310
And the goal at hand is
to walk through visually

1674
01:04:55,310 --> 01:04:57,994
an example whereby we sort 8 elements.

1675
01:04:57,994 --> 01:05:00,660
And we do that by sorting the
left half, sorting the right half,

1676
01:05:00,660 --> 01:05:03,820
and then somehow merging
these things together.

1677
01:05:03,820 --> 01:05:04,960
So how do we do this?

1678
01:05:04,960 --> 01:05:07,190
Well, let's consider the left half.

1679
01:05:07,190 --> 01:05:08,140
All right.

1680
01:05:08,140 --> 01:05:10,210
How do I sort a list of 4 elements?

1681
01:05:10,210 --> 01:05:11,990
What does it mean to sort the left half?

1682
01:05:11,990 --> 01:05:14,890
Well, what algorithms do I have in
my toolkit for sorting elements?

1683
01:05:14,890 --> 01:05:17,640


1684
01:05:17,640 --> 01:05:22,320
Yeah, selection sort, insertion
sort, bubble sort, but-- merge sort.

1685
01:05:22,320 --> 01:05:24,610
And that's where this
gets weird quickly.

1686
01:05:24,610 --> 01:05:28,934
You want to use your same algorithm to
sort the left-hand side of this list.

1687
01:05:28,934 --> 01:05:31,350
And yet, we haven't even
finished defining this algorithm,

1688
01:05:31,350 --> 01:05:33,480
but that's going to be OK we'll see.

1689
01:05:33,480 --> 01:05:34,670
So let's sort the left half.

1690
01:05:34,670 --> 01:05:36,336
How do you sort the left half of a list?

1691
01:05:36,336 --> 01:05:37,830
Well, you sort a list of size 4.

1692
01:05:37,830 --> 01:05:38,680
What does that mean?

1693
01:05:38,680 --> 01:05:41,340
How do you sort a list of size 4?

1694
01:05:41,340 --> 01:05:43,530
Sort the left half of that.

1695
01:05:43,530 --> 01:05:45,720
So let's focus on 4 and 8.

1696
01:05:45,720 --> 01:05:47,680
How do you sort a list of size 2?

1697
01:05:47,680 --> 01:05:48,930
Merge sort it.

1698
01:05:48,930 --> 01:05:50,910
So how do you sort a list of size 2?

1699
01:05:50,910 --> 01:05:52,770
Sort the left half.

1700
01:05:52,770 --> 01:05:53,930
OK, beautifully.

1701
01:05:53,930 --> 01:05:55,650
Done.

1702
01:05:55,650 --> 01:05:56,940
Done.

1703
01:05:56,940 --> 01:05:58,450
Sort the right half.

1704
01:05:58,450 --> 01:06:00,010
Nice, done.

1705
01:06:00,010 --> 01:06:02,580
I mean, I'm doing real
work, or claiming to.

1706
01:06:02,580 --> 01:06:04,270
But now I have to do something more.

1707
01:06:04,270 --> 01:06:05,730
Now I have to merge the two halves.

1708
01:06:05,730 --> 01:06:07,060
So I'm taking a step back.

1709
01:06:07,060 --> 01:06:10,639
I have two lists now, one
of size 1, one of size 1.

1710
01:06:10,639 --> 01:06:12,430
I have to merge these
things, two together.

1711
01:06:12,430 --> 01:06:15,120
Which comes first, 4 or 8?

1712
01:06:15,120 --> 01:06:15,790
4.

1713
01:06:15,790 --> 01:06:17,820
So let's create some extra space for it.

1714
01:06:17,820 --> 01:06:21,350
Let's put 4 here and let's put 8 here.

1715
01:06:21,350 --> 01:06:23,744
So here's a key detail
with merge sort, kind

1716
01:06:23,744 --> 01:06:26,410
of cheating, at least at the
moment, I'm using some extra space.

1717
01:06:26,410 --> 01:06:27,640
So I hope you won't mind.

1718
01:06:27,640 --> 01:06:30,400
To achieve this, I'm using
more memory, more RAM,

1719
01:06:30,400 --> 01:06:32,930
that I wasn't allowing myself
for selection sort, bubble

1720
01:06:32,930 --> 01:06:33,941
sort, or insertion sort.

1721
01:06:33,941 --> 01:06:34,440
OK.

1722
01:06:34,440 --> 01:06:36,481
So now it's going to be
easy to get lost quickly.

1723
01:06:36,481 --> 01:06:37,720
So what have I just done?

1724
01:06:37,720 --> 01:06:41,780
I have sorted a list of size 2
by sorting the left half, done.

1725
01:06:41,780 --> 01:06:43,050
Right half, done.

1726
01:06:43,050 --> 01:06:44,450
Merging it together.

1727
01:06:44,450 --> 01:06:48,140
So now I have a sorted list of size 2.

1728
01:06:48,140 --> 01:06:49,010
Rewind the story.

1729
01:06:49,010 --> 01:06:51,770
What step comes next?

1730
01:06:51,770 --> 01:06:53,830
Sort the right half.

1731
01:06:53,830 --> 01:06:55,030
That was of size 2.

1732
01:06:55,030 --> 01:06:58,530
So if you kind of mentally buffer
all of the to-dos that we're doing,

1733
01:06:58,530 --> 01:07:02,210
and then pluck them off as we go,
you'll see where the story goes.

1734
01:07:02,210 --> 01:07:04,520
Now I want to sort the right
half of the original list.

1735
01:07:04,520 --> 01:07:08,840
Sorry, the right half of the
left half of the original list.

1736
01:07:08,840 --> 01:07:09,780
How do I do that?

1737
01:07:09,780 --> 01:07:11,480
Sort of left half, done.

1738
01:07:11,480 --> 01:07:13,250
Sort the right half, done.

1739
01:07:13,250 --> 01:07:14,460
Merge them together.

1740
01:07:14,460 --> 01:07:16,320
What comes first, 6 or 2?

1741
01:07:16,320 --> 01:07:16,820
OK.

1742
01:07:16,820 --> 01:07:18,580
So let's give ourselves a
little more memory for that

1743
01:07:18,580 --> 01:07:19,910
so we have a place to put it.

1744
01:07:19,910 --> 01:07:20,880
2.

1745
01:07:20,880 --> 01:07:22,151
And then 6.

1746
01:07:22,151 --> 01:07:22,650
All right.

1747
01:07:22,650 --> 01:07:25,580
So it doesn't look like all
that much progress, frankly.

1748
01:07:25,580 --> 01:07:29,320
My left half of the list is now 4,
8, 2, 6, which is not really sorted.

1749
01:07:29,320 --> 01:07:30,530
But we'll get there.

1750
01:07:30,530 --> 01:07:32,080
What step comes next?

1751
01:07:32,080 --> 01:07:36,781
I've just sorted the right half of
the left half of my original list.

1752
01:07:36,781 --> 01:07:39,190
AUDIENCE: [INAUDIBLE].

1753
01:07:39,190 --> 01:07:40,660
SPEAKER 1: You're missing a step.

1754
01:07:40,660 --> 01:07:41,630
AUDIENCE: [INAUDIBLE].

1755
01:07:41,630 --> 01:07:43,610
SPEAKER 1: Merge, that third step.

1756
01:07:43,610 --> 01:07:45,610
Once you've sorted the
left half of something,

1757
01:07:45,610 --> 01:07:47,568
then you've sorted the
right half of something.

1758
01:07:47,568 --> 01:07:50,510
Now you have to merge them or
weave them together somehow.

1759
01:07:50,510 --> 01:07:53,760
So the left half of the list in
the story at the moment is 4 and 8.

1760
01:07:53,760 --> 01:07:55,510
The right half is 2 and 6.

1761
01:07:55,510 --> 01:07:57,819
So here's where mentally
you can kind of bring out

1762
01:07:57,819 --> 01:08:01,110
your fingers to think through this sort
of conceptually, or in pseudocode code.

1763
01:08:01,110 --> 01:08:02,800
Here's the left list.

1764
01:08:02,800 --> 01:08:04,930
Here's the right list,
or the right half.

1765
01:08:04,930 --> 01:08:06,507
So how do I merge these two together?

1766
01:08:06,507 --> 01:08:08,340
Well, it turns out--
and you can see it now.

1767
01:08:08,340 --> 01:08:11,190
Before it was idiotic that we
just were merging lists of size 1.

1768
01:08:11,190 --> 01:08:12,080
It's pretty easy.

1769
01:08:12,080 --> 01:08:14,590
Here now, we have something
substantive to talk about.

1770
01:08:14,590 --> 01:08:16,920
So I have one list here, one list here.

1771
01:08:16,920 --> 01:08:21,590
Which element from these two
lists obviously comes first?

1772
01:08:21,590 --> 01:08:22,700
So 2.

1773
01:08:22,700 --> 01:08:26,069
And so what I'm going to do is then
2 is going to have to come down here.

1774
01:08:26,069 --> 01:08:28,560
And then I can advance my
right hand so to speak.

1775
01:08:28,560 --> 01:08:29,939
And now, compare 4 and 6.

1776
01:08:29,939 --> 01:08:31,580
What's going to come next?

1777
01:08:31,580 --> 01:08:32,300
4.

1778
01:08:32,300 --> 01:08:33,689
Now I can advance my left hand.

1779
01:08:33,689 --> 01:08:35,000
I compare 8 and 6.

1780
01:08:35,000 --> 01:08:36,290
Which comes next?

1781
01:08:36,290 --> 01:08:36,920
6.

1782
01:08:36,920 --> 01:08:38,850
Now, my right hand, its job is done.

1783
01:08:38,850 --> 01:08:41,160
I have only one more to do.

1784
01:08:41,160 --> 01:08:41,700
And this.

1785
01:08:41,700 --> 01:08:44,300
So what's key in the merging
is that you essentially

1786
01:08:44,300 --> 01:08:46,790
have this left hand and
this right hand concept.

1787
01:08:46,790 --> 01:08:50,560
Each of them kind of steps forward
over time, but you never go back.

1788
01:08:50,560 --> 01:08:51,850
You never double back.

1789
01:08:51,850 --> 01:08:54,818
So it's this sort of linear relationship
with your left and right hand

1790
01:08:54,818 --> 01:08:56,359
as you're merging the lists together.

1791
01:08:56,359 --> 01:08:57,859
So pictorially, let's see that.

1792
01:08:57,859 --> 01:08:59,950
We compare 4 and 2.

1793
01:08:59,950 --> 01:09:01,040
2 goes first.

1794
01:09:01,040 --> 01:09:02,080
Then, 4.

1795
01:09:02,080 --> 01:09:03,000
Then, 6.

1796
01:09:03,000 --> 01:09:03,649
Then, 8.

1797
01:09:03,649 --> 01:09:04,979
Where am I in the story?

1798
01:09:04,979 --> 01:09:08,069
I mean, we've been droning
on for some time now.

1799
01:09:08,069 --> 01:09:11,580
I have just successfully sorted what?

1800
01:09:11,580 --> 01:09:15,148
The left half of the original
list, which means the next step is?

1801
01:09:15,148 --> 01:09:16,189
AUDIENCE: Sort the right.

1802
01:09:16,189 --> 01:09:18,479
SPEAKER 1: Sort the right
half of the original list.

1803
01:09:18,479 --> 01:09:20,660
So I can box that in to
draw attention to it.

1804
01:09:20,660 --> 01:09:22,180
How do I sort a list of size 4?

1805
01:09:22,180 --> 01:09:24,310
Well, that's really
just 2 lists of size 2.

1806
01:09:24,310 --> 01:09:25,520
Let's sort the left half.

1807
01:09:25,520 --> 01:09:27,020
How do I sort a list of size 2?

1808
01:09:27,020 --> 01:09:31,300
Well, that's really just a
list of-- 2 lists of size 1.

1809
01:09:31,300 --> 01:09:31,800
Done.

1810
01:09:31,800 --> 01:09:32,729
1 is sorted.

1811
01:09:32,729 --> 01:09:33,229
Done.

1812
01:09:33,229 --> 01:09:34,080
7 is sorted.

1813
01:09:34,080 --> 01:09:35,560
Now I have to merge them together.

1814
01:09:35,560 --> 01:09:38,569
1 comes first, then 7.

1815
01:09:38,569 --> 01:09:42,640
OK, now sort the right half of the
right half of the original list.

1816
01:09:42,640 --> 01:09:43,490
OK.

1817
01:09:43,490 --> 01:09:44,490
Sort the left half.

1818
01:09:44,490 --> 01:09:45,040
Done.

1819
01:09:45,040 --> 01:09:45,640
Right half.

1820
01:09:45,640 --> 01:09:46,310
Done.

1821
01:09:46,310 --> 01:09:48,939
Merge them together
into some extra space.

1822
01:09:48,939 --> 01:09:51,210
3, and then 5.

1823
01:09:51,210 --> 01:09:53,149
Now where am I in the story?

1824
01:09:53,149 --> 01:09:57,234
Now I have sorted the left
half of the original right half

1825
01:09:57,234 --> 01:09:59,150
and the right half of
the original right half,

1826
01:09:59,150 --> 01:10:01,960
so now I have to merge them together.

1827
01:10:01,960 --> 01:10:07,200
So 1, 3, 5, 7.

1828
01:10:07,200 --> 01:10:08,140
Almost there.

1829
01:10:08,140 --> 01:10:10,080
Now we're sort of rewinding in time.

1830
01:10:10,080 --> 01:10:12,570
Now we're at the very first
chapter in the story--

1831
01:10:12,570 --> 01:10:14,940
sort left half, sort right half, merge.

1832
01:10:14,940 --> 01:10:16,580
I have that one final merge step.

1833
01:10:16,580 --> 01:10:20,540
So what comes first from the
left half and the right half?

1834
01:10:20,540 --> 01:10:23,970
1, 2-- even if you've
lost track of the story,

1835
01:10:23,970 --> 01:10:25,970
the answer's going to be
1, 2, 3, 4, 5, 6, 7, 8.

1836
01:10:25,970 --> 01:10:28,210
But 1, 2, 3.

1837
01:10:28,210 --> 01:10:30,180
But notice what's
happening here in effect.

1838
01:10:30,180 --> 01:10:33,850
Whatever code is implementing this,
it's as though my right and left

1839
01:10:33,850 --> 01:10:38,570
fingers are just moving from left to
right, plucking off the element that

1840
01:10:38,570 --> 01:10:42,180
is indeed then the smallest.

1841
01:10:42,180 --> 01:10:43,600
That was a heck of a lot of work.

1842
01:10:43,600 --> 01:10:49,240
And frankly, that story seemed to take
longer to tell than any of the others.

1843
01:10:49,240 --> 01:10:50,396
But what happened?

1844
01:10:50,396 --> 01:10:53,020
And in fact, I've left deliberately,
with this little animation

1845
01:10:53,020 --> 01:10:55,720
of sorts, on the screen the
remnants of where we came.

1846
01:10:55,720 --> 01:10:57,600
And it looks like I
really cheated, though.

1847
01:10:57,600 --> 01:11:00,280
I seemed to first say,
hey, I need some extra RAM.

1848
01:11:00,280 --> 01:11:01,220
And I took it.

1849
01:11:01,220 --> 01:11:03,050
And then I didn't
mention I need more RAM.

1850
01:11:03,050 --> 01:11:04,716
I didn't mention I needed even more RAM.

1851
01:11:04,716 --> 01:11:08,579
So this seems to have taken like four
times as much total memory than any

1852
01:11:08,579 --> 01:11:11,120
of our previous algorithms, but
that's not actually the case.

1853
01:11:11,120 --> 01:11:13,830
I left this here pictorially
so we could see the history.

1854
01:11:13,830 --> 01:11:17,571
Technically, you do need more RAM to
implement this algorithm, merge sort.

1855
01:11:17,571 --> 01:11:18,820
But we could have cut corners.

1856
01:11:18,820 --> 01:11:21,060
Instead of merging down
here, we could have just

1857
01:11:21,060 --> 01:11:22,740
merged back into our original chunk.

1858
01:11:22,740 --> 01:11:25,510
And so we could have just bounced
between two separate arrays,

1859
01:11:25,510 --> 01:11:29,020
but this is just a little more
clear in terms of remnants.

1860
01:11:29,020 --> 01:11:31,060
So how many steps did this take?

1861
01:11:31,060 --> 01:11:35,450
Well, how many times did I
divide my original list in half,

1862
01:11:35,450 --> 01:11:36,775
in half, in half effectively?

1863
01:11:36,775 --> 01:11:39,450


1864
01:11:39,450 --> 01:11:41,030
I had 8 elements here.

1865
01:11:41,030 --> 01:11:43,770
And that was really like, if
you divide it up differently,

1866
01:11:43,770 --> 01:11:45,550
two bigger halves and two bigger halves.

1867
01:11:45,550 --> 01:11:48,720
But if you divide it again,
that's like two really big halves,

1868
01:11:48,720 --> 01:11:50,750
and then you get one big list.

1869
01:11:50,750 --> 01:11:55,440
So it would seem that starting
here, I divided it 1, 2, 3 times.

1870
01:11:55,440 --> 01:11:56,356
I did some splitting.

1871
01:11:56,356 --> 01:11:58,230
Left half, right half,
left half, right half.

1872
01:11:58,230 --> 01:12:00,490
And any time you split something
in half, in half, in half,

1873
01:12:00,490 --> 01:12:03,650
in half, what's the running time of
anything involving like halving again

1874
01:12:03,650 --> 01:12:04,483
and again and again?

1875
01:12:04,483 --> 01:12:07,687


1876
01:12:07,687 --> 01:12:10,430
It's like binary search.

1877
01:12:10,430 --> 01:12:11,090
Log n.

1878
01:12:11,090 --> 01:12:11,870
Log n.

1879
01:12:11,870 --> 01:12:14,630
So any time you see in
computer science more

1880
01:12:14,630 --> 01:12:17,524
generally, certainly CS50 in
upcoming weeks, this division

1881
01:12:17,524 --> 01:12:19,440
and conquering again and
again and again where

1882
01:12:19,440 --> 01:12:22,840
you're dividing something in half,
odds are logarithmic running time

1883
01:12:22,840 --> 01:12:24,180
is somehow at play.

1884
01:12:24,180 --> 01:12:30,110
But this algorithm, merge sort, surely
cannot run in big O of log n time.

1885
01:12:30,110 --> 01:12:35,250
Because again, you can't sort n
elements in less than linear time

1886
01:12:35,250 --> 01:12:38,330
because you'd be guessing
that everything is sorted.

1887
01:12:38,330 --> 01:12:40,870
So log n is not the final
answer here, but there

1888
01:12:40,870 --> 01:12:43,060
is something logarithmic happening.

1889
01:12:43,060 --> 01:12:47,230
However, even though we did
a left half/right half thing,

1890
01:12:47,230 --> 01:12:49,790
a left half/right half thing,
a left half/right hand,

1891
01:12:49,790 --> 01:12:52,770
thing sort of a total of three
times, from here to here to here

1892
01:12:52,770 --> 01:12:55,240
to here, at which point we were done.

1893
01:12:55,240 --> 01:12:59,160
On every row that's on
the screen if you will,

1894
01:12:59,160 --> 01:13:01,820
what did I do with my
left and right hand?

1895
01:13:01,820 --> 01:13:06,830
I sort of always did n steps.

1896
01:13:06,830 --> 01:13:08,220
You can really see it up here.

1897
01:13:08,220 --> 01:13:09,814
How did I merge this last thing?

1898
01:13:09,814 --> 01:13:12,230
I had to touch all 8 elements
by walking through the list.

1899
01:13:12,230 --> 01:13:14,440
How did I merge these two left halves?

1900
01:13:14,440 --> 01:13:15,740
Well, I had to do this.

1901
01:13:15,740 --> 01:13:17,500
And then I had to do this.

1902
01:13:17,500 --> 01:13:21,740
So if you kind of consider the remnants
of my finger touching the screen,

1903
01:13:21,740 --> 01:13:25,340
every time I did a divide and conquer,
I had to touch every element in order

1904
01:13:25,340 --> 01:13:26,820
to merge them together.

1905
01:13:26,820 --> 01:13:29,180
So I did log n things.

1906
01:13:29,180 --> 01:13:34,310
And every time I did that, I
incurred n steps of merging.

1907
01:13:34,310 --> 01:13:42,360
So log n things times n is going
to give me big O of n log n.

1908
01:13:42,360 --> 01:13:45,850
So this was among the options on our
sort of menu of possible running times,

1909
01:13:45,850 --> 01:13:47,750
at least that we'll focus on right now.

1910
01:13:47,750 --> 01:13:49,595
This is bigger than log n, of course.

1911
01:13:49,595 --> 01:13:51,220
Because you're multiplying it by n but.

1912
01:13:51,220 --> 01:13:52,540
It's smaller than n squared.

1913
01:13:52,540 --> 01:13:56,440
Because if log n is less than n, then
surely n times log n is less than n.

1914
01:13:56,440 --> 01:13:58,560
And so the running
time here of merge sort

1915
01:13:58,560 --> 01:14:03,630
is indeed going to be big O of log n.

1916
01:14:03,630 --> 01:14:06,940
Any questions on this here?

1917
01:14:06,940 --> 01:14:09,490
If I may, let me point
out one other approach

1918
01:14:09,490 --> 01:14:11,770
for seeing this same thing as follows.

1919
01:14:11,770 --> 01:14:14,270
You can actually glean
this kind of detail

1920
01:14:14,270 --> 01:14:17,910
more formally, especially if you're the
mathy type, from the pseudocode itself.

1921
01:14:17,910 --> 01:14:21,200
We didn't have to walk through this
whole verbal exercise or visualization

1922
01:14:21,200 --> 01:14:21,700
thereof.

1923
01:14:21,700 --> 01:14:25,140
What if we just go back to basics and
just analyze our own pseudocode code,

1924
01:14:25,140 --> 01:14:28,110
or our own C code
eventually, line by line?

1925
01:14:28,110 --> 01:14:29,770
So here's the original algorithm.

1926
01:14:29,770 --> 01:14:33,350
How many steps does this take to
just check if n is less than 2?

1927
01:14:33,350 --> 01:14:33,910
Return.

1928
01:14:33,910 --> 01:14:35,510
We're done.

1929
01:14:35,510 --> 01:14:37,186
Big O of what?

1930
01:14:37,186 --> 01:14:38,124
There's just one step.

1931
01:14:38,124 --> 01:14:40,290
Or maybe, it's two, like
the if and then the return.

1932
01:14:40,290 --> 01:14:41,060
But it's constant.

1933
01:14:41,060 --> 01:14:41,850
It's one or two.

1934
01:14:41,850 --> 01:14:43,460
We can debate that, but it's constant.

1935
01:14:43,460 --> 01:14:45,440
It has nothing to do with the size of n.

1936
01:14:45,440 --> 01:14:48,770
You're just making a finite
number of decisions there, 1.

1937
01:14:48,770 --> 01:14:50,380
So you know what?

1938
01:14:50,380 --> 01:14:53,990
The running time, which I'm going
to formulaically say is t of n.

1939
01:14:53,990 --> 01:14:56,850
So the running time when
your input is of size n,

1940
01:14:56,850 --> 01:14:59,800
is just going to be like on the
order of constant time, big O of 1,

1941
01:14:59,800 --> 01:15:01,920
whenever n is less than 2.

1942
01:15:01,920 --> 01:15:03,210
This is not a very bold claim.

1943
01:15:03,210 --> 01:15:05,690
It's sort of like I'm plucking off
the easiest part of the question,

1944
01:15:05,690 --> 01:15:06,910
but it's at least correct.

1945
01:15:06,910 --> 01:15:09,020
If you have a small
list, it's constant time.

1946
01:15:09,020 --> 01:15:12,500
The harder question is when we
analyze the rest of the algorithm.

1947
01:15:12,500 --> 01:15:16,090
How many steps does it take to
sort the left half of elements?

1948
01:15:16,090 --> 01:15:19,040
How many steps does it take to
sort the right half of elements?

1949
01:15:19,040 --> 01:15:24,160
And how many steps does
it take to sort-- rather,

1950
01:15:24,160 --> 01:15:25,720
to merge the sorted halves?

1951
01:15:25,720 --> 01:15:28,680
So we have three questions to answer.

1952
01:15:28,680 --> 01:15:30,065
And let me propose this.

1953
01:15:30,065 --> 01:15:30,940
You can kind of punt.

1954
01:15:30,940 --> 01:15:32,120
And this is the beauty of recursion.

1955
01:15:32,120 --> 01:15:34,369
You can sort of answer the
question with the question.

1956
01:15:34,369 --> 01:15:37,900
The running time to sort n
elements is really the running time

1957
01:15:37,900 --> 01:15:42,270
to sort n over 2 elements, the left
half, plus the running time to sort n

1958
01:15:42,270 --> 01:15:45,390
over 2 elements, the right
half, plus the merging step,

1959
01:15:45,390 --> 01:15:50,090
which I claimed per my sort
of left/right finger intuition

1960
01:15:50,090 --> 01:15:52,170
is big O of n steps linear.

1961
01:15:52,170 --> 01:15:55,850
And now this holds if n is
greater than or equal to 2.

1962
01:15:55,850 --> 01:15:59,810
Now, unfortunately, this is like a
recurrence if you will, mathematically.

1963
01:15:59,810 --> 01:16:01,810
This really is a cyclical definition.

1964
01:16:01,810 --> 01:16:05,340
We really need to be able to
generalize this and explain

1965
01:16:05,340 --> 01:16:07,740
it a little more formulaically.

1966
01:16:07,740 --> 01:16:09,190
But indeed, take a guess.

1967
01:16:09,190 --> 01:16:11,920
If you have your old physics
textbook or your math textbook,

1968
01:16:11,920 --> 01:16:15,010
what does this recurrence actually
equal if you multiply it all out

1969
01:16:15,010 --> 01:16:16,340
and prove it mathematically?

1970
01:16:16,340 --> 01:16:18,740


1971
01:16:18,740 --> 01:16:20,490
What's the running
time total of something

1972
01:16:20,490 --> 01:16:24,690
where you do some function of n over
2 plus some function of n over 2

1973
01:16:24,690 --> 01:16:29,690
plus some number of linear steps where
each of those inner running times

1974
01:16:29,690 --> 01:16:31,720
is recursively defined?

1975
01:16:31,720 --> 01:16:35,330
And just to be clear, the
reason this is like non-obvious

1976
01:16:35,330 --> 01:16:38,080
and should be kind of over
most heads, at least if you're

1977
01:16:38,080 --> 01:16:42,230
less familiar with this world, is that
I'm saying that the running time, t, is

1978
01:16:42,230 --> 01:16:43,730
a function of the running time, t.

1979
01:16:43,730 --> 01:16:48,360
Like again, that's defining
a word with the word itself.

1980
01:16:48,360 --> 01:16:51,600
But it turns out there are ways to
prove this inductively, mathematically.

1981
01:16:51,600 --> 01:16:54,391
And indeed, if you actually multiply
this all out in your textbook,

1982
01:16:54,391 --> 01:16:58,840
you will get something on
the order of n times log n.

1983
01:16:58,840 --> 01:17:00,044
So where has that left us?

1984
01:17:00,044 --> 01:17:02,960
We've introduced a whole number of
algorithms here, the last of which,

1985
01:17:02,960 --> 01:17:06,620
merge sort, gives us this ability
to actually solve problems

1986
01:17:06,620 --> 01:17:08,630
much faster than any of the others.

1987
01:17:08,630 --> 01:17:12,970
But in each case, are we able to
apply some general formulaic analysis,

1988
01:17:12,970 --> 01:17:18,320
asymptotic notation so to speak--
big O, big Omega, and big Theta, that

1989
01:17:18,320 --> 01:17:23,520
describes in general terms how much
time these kinds of things take.

1990
01:17:23,520 --> 01:17:27,880
So let's now translate one of today's
key ingredients to actual C code

1991
01:17:27,880 --> 01:17:30,850
so that we can see how we can
leverage this programmatically.

1992
01:17:30,850 --> 01:17:35,850
So here in CS50 IDE, I've got
an example, sigma 0 and sigma 1.

1993
01:17:35,850 --> 01:17:38,450
Both of which at the end of
the day do the same thing,

1994
01:17:38,450 --> 01:17:39,670
but they do it differently.

1995
01:17:39,670 --> 01:17:41,930
And in sigma 0 here, we
have the following code.

1996
01:17:41,930 --> 01:17:46,890
A sigma function that takes as input
an integer m as its sole argument

1997
01:17:46,890 --> 01:17:48,480
and it has a return value of type int.

1998
01:17:48,480 --> 01:17:49,855
So it's going to return a number.

1999
01:17:49,855 --> 01:17:51,400
Main takes no command line arguments.

2000
01:17:51,400 --> 01:17:53,240
So no arg v, no arg c this time.

2001
01:17:53,240 --> 01:17:56,960
But inside of main is code that's going
to pester the user again and again

2002
01:17:56,960 --> 01:18:01,390
until he or she gives us a positive
integer as per this condition

2003
01:18:01,390 --> 01:18:02,330
down here.

2004
01:18:02,330 --> 01:18:05,840
And then, notice down here I'm
going to call a function sigma,

2005
01:18:05,840 --> 01:18:07,690
passing in whatever
the user's input was.

2006
01:18:07,690 --> 01:18:08,770
10, for instance.

2007
01:18:08,770 --> 01:18:09,530
Or 11.

2008
01:18:09,530 --> 01:18:10,680
Or some other value.

2009
01:18:10,680 --> 01:18:14,350
Storing the answer in answer,
and then just printing it out.

2010
01:18:14,350 --> 01:18:16,470
And what's nice about
the fact that frankly you

2011
01:18:16,470 --> 01:18:19,680
can't see anything else on the screen
is that for all intents and purposes,

2012
01:18:19,680 --> 01:18:22,400
sigma, the function at the
moment, is a black box.

2013
01:18:22,400 --> 01:18:25,630
It is a function whose purpose in life
is to add all of the numbers from 1 up

2014
01:18:25,630 --> 01:18:27,590
until the user's input and return it.

2015
01:18:27,590 --> 01:18:31,580
And we don't know yet or need to
care how it's actually implemented.

2016
01:18:31,580 --> 01:18:36,340
If we do take a look inside that
black box down lower in the file,

2017
01:18:36,340 --> 01:18:37,960
you'll see this code here.

2018
01:18:37,960 --> 01:18:41,040
Sigma takes an input, m, as an int.

2019
01:18:41,040 --> 01:18:41,880
Returns an int.

2020
01:18:41,880 --> 01:18:43,100
And what does it do inside?

2021
01:18:43,100 --> 01:18:45,610
Well, I've got what I'll
call a counter-variable.

2022
01:18:45,610 --> 01:18:46,510
Called it sum.

2023
01:18:46,510 --> 01:18:47,890
Initialized it to 0.

2024
01:18:47,890 --> 01:18:51,900
And then using a for loop,
iterating from 1 up to m,

2025
01:18:51,900 --> 01:18:55,530
because I want to sum all the
numbers from 1 up through the value

2026
01:18:55,530 --> 01:18:57,010
the human has typed in.

2027
01:18:57,010 --> 01:18:59,740
I just want to keep adding
to the sum that value.

2028
01:18:59,740 --> 01:19:01,330
So it's not just sum plus plus.

2029
01:19:01,330 --> 01:19:05,014
If I did sum plus plus as we keep
seeing syntactically in examples,

2030
01:19:05,014 --> 01:19:05,930
that would just add 1.

2031
01:19:05,930 --> 01:19:08,260
I want to add in whatever i is.

2032
01:19:08,260 --> 01:19:12,420
Whether it's 1, or 2, or 3,
as I'm counting all the way

2033
01:19:12,420 --> 01:19:13,940
up through the user's input.

2034
01:19:13,940 --> 01:19:15,890
And then I return sum.

2035
01:19:15,890 --> 01:19:18,650
But the neat thing
about sigma is that it

2036
01:19:18,650 --> 01:19:20,780
affords an opportunity for recursion.

2037
01:19:20,780 --> 01:19:24,440
This isn't necessarily a better
opportunity or more correct,

2038
01:19:24,440 --> 01:19:26,790
but we could view the
world a little differently.

2039
01:19:26,790 --> 01:19:33,080
Sigma1.c is identical code in main,
but the implementation of sigma

2040
01:19:33,080 --> 01:19:34,660
is fundamentally different.

2041
01:19:34,660 --> 01:19:37,870
And here's where it's kind of
mind-blowing, at least at first glance.

2042
01:19:37,870 --> 01:19:40,770
You can implement a
function, like sigma,

2043
01:19:40,770 --> 01:19:44,300
in such a way that the
function calls itself.

2044
01:19:44,300 --> 01:19:48,060
Much like the running time for merge
sort is defined in terms of itself.

2045
01:19:48,060 --> 01:19:50,816
Much like searching
or sorting a list, it

2046
01:19:50,816 --> 01:19:55,480
can be recursively defined as
searching or sorting a smaller list,

2047
01:19:55,480 --> 01:19:56,910
but with the same steps.

2048
01:19:56,910 --> 01:19:58,880
We implement this code in C as follows.

2049
01:19:58,880 --> 01:20:02,940
On this line here, if m is
less than or equal to 0,

2050
01:20:02,940 --> 01:20:04,490
it's really just a sanity check.

2051
01:20:04,490 --> 01:20:07,640
If the human was messing
with me and somehow

2052
01:20:07,640 --> 01:20:12,249
was able to inject a negative value
or a 0 value into this function,

2053
01:20:12,249 --> 01:20:14,790
I don't want to get stuck in
some random, like infinite loop.

2054
01:20:14,790 --> 01:20:15,810
I want to catch that.

2055
01:20:15,810 --> 01:20:18,934
So I'm just going to say less than or
equal to 0 just to be super-defensive

2056
01:20:18,934 --> 01:20:20,860
when programming return 0.

2057
01:20:20,860 --> 01:20:23,170
It's not correct to say
that, but I just want--

2058
01:20:23,170 --> 01:20:25,820
and I'll document this in
my comments, for instance.

2059
01:20:25,820 --> 01:20:27,780
Return 0 if the user does not cooperate.

2060
01:20:27,780 --> 01:20:31,720
I need that base case so
that stuff stops eventually.

2061
01:20:31,720 --> 01:20:33,840
And then, here's kind
of the amazing thing.

2062
01:20:33,840 --> 01:20:36,680
In my "else" condition,
is one line of code

2063
01:20:36,680 --> 01:20:40,380
that implements the
entirety of this function.

2064
01:20:40,380 --> 01:20:43,770
The result of asking me the
question, what is sigma of m,

2065
01:20:43,770 --> 01:20:51,840
is really the same thing as
saying m plus sigma of m minus 1.

2066
01:20:51,840 --> 01:20:56,120
In other words, if the goal is to count
up all of the numbers between 1 and m,

2067
01:20:56,120 --> 01:21:00,240
logically that's the same as counting
up all the numbers from m to 1.

2068
01:21:00,240 --> 01:21:04,720
And so if I view it that
way, if you give me m,

2069
01:21:04,720 --> 01:21:08,070
I am going to sort of on my cheat
sheet write down the number m,

2070
01:21:08,070 --> 01:21:12,120
and then say plus whatever the
summation is from m minus 1

2071
01:21:12,120 --> 01:21:13,230
all the way down to 1.

2072
01:21:13,230 --> 01:21:13,980
And you know what?

2073
01:21:13,980 --> 01:21:17,860
I have a function, a piece of code, that
gives me exactly that answer if I just

2074
01:21:17,860 --> 01:21:20,560
pass-in that slightly smaller value.

2075
01:21:20,560 --> 01:21:24,370
So on first glance, it might
look like sigma calls sigma.

2076
01:21:24,370 --> 01:21:26,560
That can't possibly be a good thing.

2077
01:21:26,560 --> 01:21:28,040
But it doesn't do it forever.

2078
01:21:28,040 --> 01:21:30,580
Sigma might call sigma might
call sigma might call sigma.

2079
01:21:30,580 --> 01:21:35,250
But at what point in the story
does sigma stop calling sigma?

2080
01:21:35,250 --> 01:21:36,750
AUDIENCE: [INAUDIBLE].

2081
01:21:36,750 --> 01:21:38,070
SPEAKER 1: When it's counted.

2082
01:21:38,070 --> 01:21:41,080
When m, the input, is what?

2083
01:21:41,080 --> 01:21:41,610
Negative.

2084
01:21:41,610 --> 01:21:43,070
Or we shouldn't hit negative ever.

2085
01:21:43,070 --> 01:21:44,301
We should first hit?

2086
01:21:44,301 --> 01:21:44,800
AUDIENCE: 0.

2087
01:21:44,800 --> 01:21:45,810
SPEAKER 1: 0.

2088
01:21:45,810 --> 01:21:52,317
So once m minus 1 gets so small, 1 minus
1, that it equals 0, this line of code

2089
01:21:52,317 --> 01:21:53,150
is going to kick in.

2090
01:21:53,150 --> 01:21:55,070
And it's going to say return 0.

2091
01:21:55,070 --> 01:21:58,890
Thereby, short circuiting
this seemingly infinite loop,

2092
01:21:58,890 --> 01:22:02,630
which does, in fact, terminate
eventually once the input

2093
01:22:02,630 --> 01:22:04,040
gets small enough.

2094
01:22:04,040 --> 01:22:07,235
Now, probably you shouldn't bother
implementing code like this.

2095
01:22:07,235 --> 01:22:09,360
If anything, we'll talk
about this in future weeks.

2096
01:22:09,360 --> 01:22:13,020
Calling function after function after
function after function after actually

2097
01:22:13,020 --> 01:22:14,372
can take up a lot of memory.

2098
01:22:14,372 --> 01:22:16,830
It can actually cause your
computer to crash in some cases.

2099
01:22:16,830 --> 01:22:18,650
And we'll talk about when and why.

2100
01:22:18,650 --> 01:22:21,600
So this isn't necessarily
the best technical decision,

2101
01:22:21,600 --> 01:22:26,080
but it's illustrative of the capability
we have in programming to map intuition

2102
01:22:26,080 --> 01:22:31,381
from our binary search or our
merge sort into actual code.

2103
01:22:31,381 --> 01:22:33,880
And indeed, there's going to
be data structures that we soon

2104
01:22:33,880 --> 01:22:35,990
see far fancier than arrays.

2105
01:22:35,990 --> 01:22:38,380
We're going to see things
like link lists, and trees,

2106
01:22:38,380 --> 01:22:39,840
and tries, and hash tables.

2107
01:22:39,840 --> 01:22:42,550
And other data structures
still that are going

2108
01:22:42,550 --> 01:22:47,770
to allow us opportunities to implement
algorithms on top of those data

2109
01:22:47,770 --> 01:22:50,220
structures so to speak,
to answer questions

2110
01:22:50,220 --> 01:22:53,180
using an ingredient like this one here.

2111
01:22:53,180 --> 01:22:56,690
But of course, we're left then
fortunately with a better algorithm

2112
01:22:56,690 --> 01:22:58,190
than something like bubble sort.

2113
01:22:58,190 --> 01:23:00,940
And indeed, this is fairly
well-known now it would seem.

2114
01:23:00,940 --> 01:23:04,070
And I thought we'd conclude with
a look at this interview that

2115
01:23:04,070 --> 01:23:07,780
was conducted with a certain senator
some years ago who was running

2116
01:23:07,780 --> 01:23:11,810
for the presidency and was asked
by Google's own Eric Schmidt,

2117
01:23:11,810 --> 01:23:14,870
the CEO at the time, a set
of interview questions.

2118
01:23:14,870 --> 01:23:19,320
One of which we thought was
appropriate note to end on here.

2119
01:23:19,320 --> 01:23:22,986
[AUDIO PLAYBACK]

2120
01:23:22,986 --> 01:23:25,320
[APPLAUSE]

2121
01:23:25,320 --> 01:23:27,180
-Now, Senator.

2122
01:23:27,180 --> 01:23:28,190
You're here at Google.

2123
01:23:28,190 --> 01:23:33,900
And I like to think of the
presidency as a job interview.

2124
01:23:33,900 --> 01:23:37,042
Now, it's hard to get
a job as president.

2125
01:23:37,042 --> 01:23:38,250
You're going [INAUDIBLE] now.

2126
01:23:38,250 --> 01:23:40,420
It's also hard to get a job at Google.

2127
01:23:40,420 --> 01:23:43,090
We have questions.

2128
01:23:43,090 --> 01:23:45,670
And we ask our candidates questions.

2129
01:23:45,670 --> 01:23:49,346
And this one is from Larry Schwimmer.

2130
01:23:49,346 --> 01:23:51,315
[LAUGHTER]

2131
01:23:51,315 --> 01:23:52,440
You guys think I'm kidding?

2132
01:23:52,440 --> 01:23:54,900
It's right here.

2133
01:23:54,900 --> 01:23:59,048
What is the most efficient way to
sort a million 32-bit integers?

2134
01:23:59,048 --> 01:24:01,970
[LAUGHTER]

2135
01:24:01,970 --> 01:24:04,370
-Well--

2136
01:24:04,370 --> 01:24:04,961
-I'm sorry.

2137
01:24:04,961 --> 01:24:05,460
Maybe--

2138
01:24:05,460 --> 01:24:06,210
-No, no, no, no.

2139
01:24:06,210 --> 01:24:11,190
I think the bubble sort
would be the wrong way to go.

2140
01:24:11,190 --> 01:24:14,190


2141
01:24:14,190 --> 01:24:14,935
-Come on.

2142
01:24:14,935 --> 01:24:16,500
Who told him this?

2143
01:24:16,500 --> 01:24:18,340
OK.

2144
01:24:18,340 --> 01:24:20,692
I didn't see computer
science in your background.

2145
01:24:20,692 --> 01:24:23,570
-We've got our spies in there.

2146
01:24:23,570 --> 01:24:24,890
[END PLAYBACK]

2147
01:24:24,890 --> 01:24:27,120
SPEAKER 1: All right,
so that's it for week 3.

2148
01:24:27,120 --> 01:24:28,720
We will see you next time.

2149
01:24:28,720 --> 01:24:36,940


2150
01:24:36,940 --> 01:24:39,292
SPEAKER 2: So you want
to know the full story?

2151
01:24:39,292 --> 01:24:42,305
SPEAKER 3: As far back
as you can remember.

2152
01:24:42,305 --> 01:24:43,180
SPEAKER 2: All right.

2153
01:24:43,180 --> 01:24:45,820
Well, let me tell you.

2154
01:24:45,820 --> 01:24:49,880
The first time I met David Malan,
I knew he was nothing but trouble.

2155
01:24:49,880 --> 01:24:57,779


2156
01:24:57,779 --> 01:24:59,820
SPEAKER 4: There's a David
J. Malan here for you.

2157
01:24:59,820 --> 01:25:01,354
SPEAKER 5: Who?

2158
01:25:01,354 --> 01:25:03,770
SPEAKER 4: He says he's in
your Computer Science 50 class.

2159
01:25:03,770 --> 01:25:05,810
Wants to talk about his grade.

2160
01:25:05,810 --> 01:25:07,250
SPEAKER 5: Are you kidding me?

2161
01:25:07,250 --> 01:25:10,920
I mean, who does he
think he is, Bill Gates?

2162
01:25:10,920 --> 01:25:11,740
All right.

2163
01:25:11,740 --> 01:25:13,760
send him in.

2164
01:25:13,760 --> 01:25:17,110
```