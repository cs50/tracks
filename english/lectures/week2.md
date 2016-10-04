1
00:00:00,000 --> 00:00:02,970
>> [MUSIC PLAYING]

2
00:00:02,970 --> 00:00:14,355

3
00:00:14,355 --> 00:00:15,700
>> DAVID J. MALAN: All right.

4
00:00:15,700 --> 00:00:18,832
This is CS50 and this
is the start of Week 2.

5
00:00:18,832 --> 00:00:21,040
And you'll recall that over
the past couple of weeks,

6
00:00:21,040 --> 00:00:24,490
we've been introducing computer
science and, in turn, programming.

7
00:00:24,490 --> 00:00:27,640
>> And we started the story by way of
Scratch, that graphical language

8
00:00:27,640 --> 00:00:28,990
from MIT'S Media Lab.

9
00:00:28,990 --> 00:00:30,780
And then most recently,
last week, did we

10
00:00:30,780 --> 00:00:34,450
introduce a higher-- a
lower-level language known

11
00:00:34,450 --> 00:00:36,770
as C, something that's purely textual.

12
00:00:36,770 --> 00:00:39,440
And, indeed, last time we
explored within that context

13
00:00:39,440 --> 00:00:40,450
a number of concepts.

14
00:00:40,450 --> 00:00:43,010
>> This, recall, was the very
first program we looked at.

15
00:00:43,010 --> 00:00:45,710
And this program, quite simply,
prints out, "hello, world."

16
00:00:45,710 --> 00:00:47,730
But there's so much
seeming magic going on.

17
00:00:47,730 --> 00:00:51,460
There's this #include 
with these angle brackets.

18
00:00:51,460 --> 00:00:52,170
There's int.

19
00:00:52,170 --> 00:00:53,020
There's (void).

20
00:00:53,020 --> 00:00:56,330
There's parentheses, curly braces,
semi-colons, and so much more.

21
00:00:56,330 --> 00:00:58,480
>> And so, recall that
we introduced Scratch

22
00:00:58,480 --> 00:01:02,110
so that we could, ideally, see past
that syntax, the stuff that's really not

23
00:01:02,110 --> 00:01:04,590
all that intellectually
interesting but early on

24
00:01:04,590 --> 00:01:07,700
is, absolutely, a bit tricky
to wrap your mind around.

25
00:01:07,700 --> 00:01:10,860
And, indeed, one of the most common
things early on in a programming class,

26
00:01:10,860 --> 00:01:13,443
especially for those less
comfortable, is to get frustrated by

27
00:01:13,443 --> 00:01:17,460
and tripped up by certain syntactic
errors, not to mention logical errors.

28
00:01:17,460 --> 00:01:19,800
And so among our goals
today, actually, will

29
00:01:19,800 --> 00:01:23,280
be to equip you with some
problem-solving techniques for how

30
00:01:23,280 --> 00:01:26,705
to better solve problems themselves
in the form of debugging.

31
00:01:26,705 --> 00:01:29,330
And you'll recall, too, that the
environment that we introduced

32
00:01:29,330 --> 00:01:31,780
last time was called CS50 IDE.

33
00:01:31,780 --> 00:01:34,850
This is web-based software that
allows you to program in the cloud,

34
00:01:34,850 --> 00:01:38,450
so to speak, while keeping all of your
files together, as we again will today.

35
00:01:38,450 --> 00:01:41,480
And recall that we
revisited these topics here,

36
00:01:41,480 --> 00:01:44,480
among them functions, and loops, and
variables, and Boolean expressions,

37
00:01:44,480 --> 00:01:45,110
and conditions.

38
00:01:45,110 --> 00:01:49,190
And actually a few more that we
translated from the world of Scratch

39
00:01:49,190 --> 00:01:50,800
to the world of C.

40
00:01:50,800 --> 00:01:53,220
>> But the fundamental building
blocks, so to speak,

41
00:01:53,220 --> 00:01:55,150
were really still the same last week.

42
00:01:55,150 --> 00:01:57,900
In fact, we really just had a
different puzzle piece, if you will.

43
00:01:57,900 --> 00:02:00,300
Instead of that purple
save block, we instead

44
00:02:00,300 --> 00:02:02,940
had printf, which is
this function in C that

45
00:02:02,940 --> 00:02:05,890
allows you to print something
and format it on the screen.

46
00:02:05,890 --> 00:02:07,950
We introduced the CS50
Library, where you

47
00:02:07,950 --> 00:02:11,420
have now at your disposal get_char,
and get_int, and get_string,

48
00:02:11,420 --> 00:02:14,610
and a few other functions as
well, via which you can get input

49
00:02:14,610 --> 00:02:16,260
from the user's own keyboard.

50
00:02:16,260 --> 00:02:20,640
And we also took a look at things
like these- bool, and char,

51
00:02:20,640 --> 00:02:22,490
and double, float,
int, long_long string.

52
00:02:22,490 --> 00:02:25,170
And there's even other data types in C.

53
00:02:25,170 --> 00:02:28,560
>> In other words, when you declare
a variable to store some value,

54
00:02:28,560 --> 00:02:32,600
or when you implement a function
that returns some value,

55
00:02:32,600 --> 00:02:35,290
you can specify what
type of value that is.

56
00:02:35,290 --> 00:02:37,310
Is it a string, like a
sequence of characters?

57
00:02:37,310 --> 00:02:39,490
Is it a number, like an integer?

58
00:02:39,490 --> 00:02:41,390
Is it a floating point
value, or the like?

59
00:02:41,390 --> 00:02:46,180
So in C, unlike Scratch, we actually
began to specify what kind of data

60
00:02:46,180 --> 00:02:48,330
we were returning or using.

61
00:02:48,330 --> 00:02:51,910
>> But, of course, we also ran into
some fundamental limits of computing.

62
00:02:51,910 --> 00:02:54,100
And in particular,
this language C, recall

63
00:02:54,100 --> 00:02:57,070
that we took a look at
integer overflow, the reality

64
00:02:57,070 --> 00:03:00,460
that if you only have a
finite amount of memory

65
00:03:00,460 --> 00:03:04,600
or, specifically, a finite number
of bits, you can only count so high.

66
00:03:04,600 --> 00:03:08,460
And so we looked at this example here
whereby a counter in an airplane, ,

67
00:03:08,460 --> 00:03:13,510
actually, if running long enough would
overflow and result in a software

68
00:03:13,510 --> 00:03:15,560
an actual physical potential error.

69
00:03:15,560 --> 00:03:18,600
>> We also looked at floating
point imprecision, the reality

70
00:03:18,600 --> 00:03:22,280
that with only a finite number
of bits, whether it's 32 or 64,

71
00:03:22,280 --> 00:03:27,330
you can only specify so many numbers
after a decimal point, after which you

72
00:03:27,330 --> 00:03:29,110
begin to get imprecise.

73
00:03:29,110 --> 00:03:32,360
So for instance, one-third in the
world here, in our human world,

74
00:03:32,360 --> 00:03:35,360
we know is just an infinite number
of 3s after the decimal point.

75
00:03:35,360 --> 00:03:38,820
But a computer can't necessarily
represent an infinite number of numbers

76
00:03:38,820 --> 00:03:42,590
if you only allow it some
finite amount of information.

77
00:03:42,590 --> 00:03:45,900
>> So not only did we equip you
with greater power in terms

78
00:03:45,900 --> 00:03:49,280
of how you might express yourself at
a keyboard in terms of programming,

79
00:03:49,280 --> 00:03:51,430
we also limited what
you can actually do.

80
00:03:51,430 --> 00:03:55,790
And indeed, bugs and mistakes can
arise from those kinds of issues.

81
00:03:55,790 --> 00:03:59,900
And indeed, among the topics today
are going to be topics like debugging

82
00:03:59,900 --> 00:04:03,699
and actually looking underneath the hood
at how things were introduced last week

83
00:04:03,699 --> 00:04:05,490
are actually implemented
so that you better

84
00:04:05,490 --> 00:04:10,530
understand both the capabilities of and
the limitations of a language like C.

85
00:04:10,530 --> 00:04:14,770
>> And in fact, we'll peel back the layers
of the simplest of data structure,

86
00:04:14,770 --> 00:04:17,756
something called an array, which
Scratch happens to call a "list."

87
00:04:17,756 --> 00:04:19,589
It's a little bit
different in that context.

88
00:04:19,589 --> 00:04:23,340
And then we'll also introduce one of the
first of our domain-specific problems

89
00:04:23,340 --> 00:04:26,790
in CS50, the world of
cryptography, the art of scrambling

90
00:04:26,790 --> 00:04:29,650
or in ciphering information so
that you can send secret messages

91
00:04:29,650 --> 00:04:34,520
and decode secret messages
between two persons, A and B.

92
00:04:34,520 --> 00:04:37,490
>> So before we transition
to that new world,

93
00:04:37,490 --> 00:04:42,059
let's try to equip you with some
techniques with which you can eliminate

94
00:04:42,059 --> 00:04:43,850
or reduce at least some
of the frustrations

95
00:04:43,850 --> 00:04:46,630
that you have probably encountered
over the past week alone.

96
00:04:46,630 --> 00:04:50,830
In fact, ahead of you are such-- some of
your first problems in C. And odds are,

97
00:04:50,830 --> 00:04:54,010
if you're like me, the first time
you try to type out a program,

98
00:04:54,010 --> 00:04:57,330
even if you think logically
the program is pretty simple,

99
00:04:57,330 --> 00:05:01,200
you might very well hit a wall, and
the compiler is not going to cooperate.

100
00:05:01,200 --> 00:05:03,940
Make or Clang is not going
to actually do your bidding.

101
00:05:03,940 --> 00:05:05,450
>> And why might that be?

102
00:05:05,450 --> 00:05:07,950
Well, let's take a look at,
perhaps, a simple program.

103
00:05:07,950 --> 00:05:11,190
I'm going to go ahead and save this in
a file deliberately called buggy0.c,

104
00:05:11,190 --> 00:05:13,590
because I know it to
be flawed in advance.

105
00:05:13,590 --> 00:05:17,400
But I might not realize that if this
is the first or second or third program

106
00:05:17,400 --> 00:05:18,830
that I'm actually making myself.

107
00:05:18,830 --> 00:05:23,820
So I'm going to go ahead and
type out, int main(void).

108
00:05:23,820 --> 00:05:28,130
And then inside of my curly braces,
a very familiar ("hello, world--

109
00:05:28,130 --> 00:05:30,980
backslash, n")-- and a semi-colon.

110
00:05:30,980 --> 00:05:32,360
>> I've saved the file.

111
00:05:32,360 --> 00:05:34,850
Now I'm going to go down
to my terminal window

112
00:05:34,850 --> 00:05:40,340
and type make buggy0, because, again,
the name of the file today is buggy0.c.

113
00:05:40,340 --> 00:05:43,660
So I type make buggy0, Enter.

114
00:05:43,660 --> 00:05:48,200
>> And, oh, gosh, recall from last time
that no error messages is a good thing.

115
00:05:48,200 --> 00:05:49,740
So no output is a good thing.

116
00:05:49,740 --> 00:05:52,920
But here I have clearly
some number of mistakes.

117
00:05:52,920 --> 00:05:56,470
>> So the first line of output
after typing make buggy0, recall,

118
00:05:56,470 --> 00:05:59,540
is Clang's fairly verbose output.

119
00:05:59,540 --> 00:06:02,067
Underneath the hood,
CS50 IDE is configured

120
00:06:02,067 --> 00:06:04,150
to use a whole bunch of
options with this compiler

121
00:06:04,150 --> 00:06:05,941
so that you don't have
to think about them.

122
00:06:05,941 --> 00:06:08,840
And that's all that first line
means that starts with Clang.

123
00:06:08,840 --> 00:06:11,720
>> But after that, the problems
begin to make their appearance.

124
00:06:11,720 --> 00:06:17,390
Buggy0.c on line 3, character
5, there is a big, red error.

125
00:06:17,390 --> 00:06:18,380
What is that?

126
00:06:18,380 --> 00:06:23,562
Implicitly declaring library function
printf with type int (const char *,

127
00:06:23,562 --> 00:06:26,050
...) [-Werror].

128
00:06:26,050 --> 00:06:28,379
I mean, it very quickly
gets very arcane.

129
00:06:28,379 --> 00:06:30,170
And certainly, at first
glance, we wouldn't

130
00:06:30,170 --> 00:06:32,380
expect you to understand the
entirety of that message.

131
00:06:32,380 --> 00:06:34,213
And so one of the lessons
for today is going

132
00:06:34,213 --> 00:06:36,919
to be to try to notice
patterns, or similar things,

133
00:06:36,919 --> 00:06:38,960
to errors you might have
encountered in the past.

134
00:06:38,960 --> 00:06:41,335
So let's tease apart only
those words that look familiar.

135
00:06:41,335 --> 00:06:44,290
The big, red error is clearly
symbolic of something being wrong.

136
00:06:44,290 --> 00:06:47,940
>> Implicitly declaring
library function printf.

137
00:06:47,940 --> 00:06:51,680
So even if I don't quite understand what
implicitly declaring library function

138
00:06:51,680 --> 00:06:54,900
means, the problem surely
relates to printf somehow.

139
00:06:54,900 --> 00:06:59,130
And the source of that issue
has to do with declaring it.

140
00:06:59,130 --> 00:07:02,440
>> Declaring a function is
mentioning it for the first time.

141
00:07:02,440 --> 00:07:06,210
And we used the terminology last week
of declaring a function's prototype,

142
00:07:06,210 --> 00:07:11,860
either with one line at the top of your
own file or in a so-called header file.

143
00:07:11,860 --> 00:07:15,300
And in what file did we say
last week that printf is quote,

144
00:07:15,300 --> 00:07:17,080
unquote, declared?

145
00:07:17,080 --> 00:07:20,950
In what file is its prototype?

146
00:07:20,950 --> 00:07:24,640
>> So if you recall, the very first thing I
typed, almost every program last time--

147
00:07:24,640 --> 00:07:30,790
and accidentally a moment ago started
typing myself-- was this one here--

148
00:07:30,790 --> 00:07:38,630
hash-- #include <stio-- for
input/output-- dot h And indeed,

149
00:07:38,630 --> 00:07:41,860
if I now save this file, I'm going
to go ahead and clear my screen,

150
00:07:41,860 --> 00:07:44,740
which you can do by typing
Clear, or you can hold Control L,

151
00:07:44,740 --> 00:07:47,680
just to clear your terminal window
just to eliminate some clutter.

152
00:07:47,680 --> 00:07:51,370
>> I'm going to go ahead and
re-type make buggy0, Enter.

153
00:07:51,370 --> 00:07:53,790
And voila, I still see that
long command from Clang,

154
00:07:53,790 --> 00:07:55,470
but there's no error message this time.

155
00:07:55,470 --> 00:07:58,800
And indeed, if I do ./buggy0,
just like last time,

156
00:07:58,800 --> 00:08:01,860
where dot means this
directory, Slash just means,

157
00:08:01,860 --> 00:08:05,040
here comes the name of the program and
that name of the program is buggy0,

158
00:08:05,040 --> 00:08:07,340
Enter, "hello, world."

159
00:08:07,340 --> 00:08:09,440
>> Now, how might you have
gleaned this solution

160
00:08:09,440 --> 00:08:12,017
without necessarily
recognizing as many words

161
00:08:12,017 --> 00:08:14,350
as I did, certainly, having
done this for so many years?

162
00:08:14,350 --> 00:08:18,720
Well, realize per the first problem
set, we introduce you to a command

163
00:08:18,720 --> 00:08:21,175
that CS50's own staff
wrote called help50.

164
00:08:21,175 --> 00:08:24,300
And indeed, C does specification for
the problem set as to how to use this.

165
00:08:24,300 --> 00:08:27,210
>> But help50 is essentially
a program that CS50's staff

166
00:08:27,210 --> 00:08:30,850
wrote that allows you to run
a command or run a program,

167
00:08:30,850 --> 00:08:36,169
and if you don't understand its
output, to pass its output to help50,

168
00:08:36,169 --> 00:08:38,890
at which point the software
that the course's staff wrote

169
00:08:38,890 --> 00:08:42,429
will look at your program's output
line by line, character by character.

170
00:08:42,429 --> 00:08:46,000
And if we, the staff, recognize the
error message that you're experiencing,

171
00:08:46,000 --> 00:08:50,580
we will try to provoke you with some
rhetorical questions, with some advice,

172
00:08:50,580 --> 00:08:54,890
much like a TF or a CA or myself
would do in person at office hours.

173
00:08:54,890 --> 00:08:58,320
>> So look to help50 if you don't
necessarily recognize a problem.

174
00:08:58,320 --> 00:09:00,790
But don't rely on it
too much as a crutch.

175
00:09:00,790 --> 00:09:03,990
Certainly try to understand its
output and then learn from it

176
00:09:03,990 --> 00:09:07,571
so that only once or twice do you
ever run help50 for a particular error

177
00:09:07,571 --> 00:09:08,070
message.

178
00:09:08,070 --> 00:09:10,660
After that, you should be
better equipped yourself

179
00:09:10,660 --> 00:09:13,180
to figure out what it actually is.

180
00:09:13,180 --> 00:09:14,350
>> Let's do one other here.

181
00:09:14,350 --> 00:09:20,410
Let me go ahead, and in another
file we'll call this buggy1.c.

182
00:09:20,410 --> 00:09:23,110
And in this file I'm
going to deliberately--

183
00:09:23,110 --> 00:09:26,330
but pretend that I don't
understand what mistake I've made.

184
00:09:26,330 --> 00:09:31,420
>> I'm going to go ahead and do this--
#include , since I've

185
00:09:31,420 --> 00:09:33,660
learned my lesson from a moment ago.

186
00:09:33,660 --> 00:09:36,220
Int main(void), as before.

187
00:09:36,220 --> 00:09:40,880
And then in here I'm going
to do string s - get_string.

188
00:09:40,880 --> 00:09:43,770
And recall from last time that
this means, hey, computer,

189
00:09:43,770 --> 00:09:48,280
give me a variable, call it s, and
make the type of that variable a string

190
00:09:48,280 --> 00:09:50,150
so I can store one or more words in it.

191
00:09:50,150 --> 00:09:52,191
>> And then on the right-hand
side of the equal sign

192
00:09:52,191 --> 00:09:54,980
is get_string, which is a
function in the CS50 Library

193
00:09:54,980 --> 00:09:55,980
that does exactly that.

194
00:09:55,980 --> 00:09:59,740
It gets a function and then
hands it from right to left.

195
00:09:59,740 --> 00:10:02,670
So this equal sign doesn't mean
"equals" as we might think in math.

196
00:10:02,670 --> 00:10:04,750
It means assignment from right to left.

197
00:10:04,750 --> 00:10:09,640
So this means, take the string from
the user and store it inside of s.

198
00:10:09,640 --> 00:10:10,460
>> Now let's use it.

199
00:10:10,460 --> 00:10:13,820
Let me go ahead now and as a second
line, let me go ahead and say "hello"--

200
00:10:13,820 --> 00:10:19,330
not "world," but "hello,%s--
which is our placeholder, comma s,

201
00:10:19,330 --> 00:10:22,030
which is our variable,
and then a semi-colon.

202
00:10:22,030 --> 00:10:26,070
So if I didn't screw up too much
here, this looks like correct code.

203
00:10:26,070 --> 00:10:28,090
>> And my instincts now are to compile it.

204
00:10:28,090 --> 00:10:30,400
The file is called buggy1.c.

205
00:10:30,400 --> 00:10:33,770
So I'm going to do make buggy1, Enter.

206
00:10:33,770 --> 00:10:36,377
And darn-it, if there isn't
even more errors than before.

207
00:10:36,377 --> 00:10:38,210
I mean, there's more
error messages it would

208
00:10:38,210 --> 00:10:40,400
seem than actual lines in this program.

209
00:10:40,400 --> 00:10:42,730
>> But the takeaway here is,
even if you're overwhelmed

210
00:10:42,730 --> 00:10:45,040
with two or three or
four more error messages,

211
00:10:45,040 --> 00:10:48,340
focus always on the very
first of those messages.

212
00:10:48,340 --> 00:10:52,220
Looking at the top-most one,
scrolling back up as need be.

213
00:10:52,220 --> 00:10:53,930
So here I typed make buggy1.

214
00:10:53,930 --> 00:10:55,700
Here's that Clang output as expected.

215
00:10:55,700 --> 00:10:57,290
>> And here's the first red error.

216
00:10:57,290 --> 00:11:02,370
Use of undeclared identifier
string, did I mean standard in?

217
00:11:02,370 --> 00:11:04,260
So standard in is
actually something else.

218
00:11:04,260 --> 00:11:06,240
It refers to the user's
keyboard, essentially.

219
00:11:06,240 --> 00:11:08,080
>> But that's not what I meant.

220
00:11:08,080 --> 00:11:11,770
I meant string, and I meant get_string.

221
00:11:11,770 --> 00:11:16,200
So what is it that I
forgot to do this time?

222
00:11:16,200 --> 00:11:20,230
What's missing this time?

223
00:11:20,230 --> 00:11:23,600
I have my #include ,
so I have access to printf.

224
00:11:23,600 --> 00:11:26,090
>> But what do I not have
access to just yet?

225
00:11:26,090 --> 00:11:29,420
Well, just like last time,
I need to tell the compiler

226
00:11:29,420 --> 00:11:31,691
Clang what these functions are.

227
00:11:31,691 --> 00:11:33,940
Get_string does not come
with C. And in particular, it

228
00:11:33,940 --> 00:11:38,160
doesn't come in the 
header file, .

229
00:11:38,160 --> 00:11:40,770
It instead comes in
something the staff wrote,

230
00:11:40,770 --> 00:11:44,176
which is a different file
name but aptly named .

231
00:11:44,176 --> 00:11:46,990

232
00:11:46,990 --> 00:11:50,861
>> So simply by adding that one line
of code-- recall from last time

233
00:11:50,861 --> 00:11:53,610
that when Clang runs, it's going
to look at my code top to bottom,

234
00:11:53,610 --> 00:11:54,193
left to right.

235
00:11:54,193 --> 00:11:57,200
It's going to notice,
oh, you want .

236
00:11:57,200 --> 00:11:59,900
Let me go and find that,
wherever it is on the server,

237
00:11:59,900 --> 00:12:03,090
copy and paste it, essentially,
into the top of your own file

238
00:12:03,090 --> 00:12:06,820
so that at this point in the story,
line 1, the rest of the program

239
00:12:06,820 --> 00:12:11,651
can, indeed, use any of the functions
therein, among them get_string.

240
00:12:11,651 --> 00:12:13,650
So I'm going to ignore
the rest of those errors,

241
00:12:13,650 --> 00:12:17,190
because I, indeed, suspect that only
the first one actually mattered.

242
00:12:17,190 --> 00:12:20,780
And I'm going to go ahead and rerun,
after saving my file make buggy1.

243
00:12:20,780 --> 00:12:22,580
And voila, it did work.

244
00:12:22,580 --> 00:12:29,200
And if I do ./buggy1 and type in, for
instance, Zamyla, I now will get hello,

245
00:12:29,200 --> 00:12:32,000
Zamyla, instead of hello, world.

246
00:12:32,000 --> 00:12:32,550
>> All right.

247
00:12:32,550 --> 00:12:35,890
So the takeaways here then are to,
one, try to glean as much as you can

248
00:12:35,890 --> 00:12:39,140
from the error messages alone, looking
at some of the recognizable words.

249
00:12:39,140 --> 00:12:43,070
Barring that, use help50 per
the problem set specification.

250
00:12:43,070 --> 00:12:46,500
But barring that, too, always look
at the top error only, at least

251
00:12:46,500 --> 00:12:50,051
initially, to see what information
it might actually yield.

252
00:12:50,051 --> 00:12:52,300
But it turns out there's
even more functionality built

253
00:12:52,300 --> 00:12:55,030
into the CS50 Library to help
you early on in the semester

254
00:12:55,030 --> 00:12:57,580
and early on in programming
figure out what's going wrong.

255
00:12:57,580 --> 00:12:59,840
So let's do another example here.

256
00:12:59,840 --> 00:13:04,350
I'm going to call this buggy2, which,
again, is going to be flawed out

257
00:13:04,350 --> 00:13:05,650
of the gate, by design.

258
00:13:05,650 --> 00:13:09,980
>> And I'm going to go ahead
and do #include .

259
00:13:09,980 --> 00:13:12,580
And then I'm going to do int main(void).

260
00:13:12,580 --> 00:13:14,840
And then I'm going to do a for loop.

261
00:13:14,840 --> 00:13:16,690
For (int i _ 0.

262
00:13:16,690 --> 00:13:18,750
i is less than or equal to 10.

263
00:13:18,750 --> 00:13:24,260
i++, and then in curly braces, I'm going
to print out just a hashtag symbol here

264
00:13:24,260 --> 00:13:25,920
and a new line character.

265
00:13:25,920 --> 00:13:29,220
>> So my intent with this
program is quite simply

266
00:13:29,220 --> 00:13:33,150
to iterate 10 times
and on each iteration

267
00:13:33,150 --> 00:13:35,260
of that loop each time
through the cycle,

268
00:13:35,260 --> 00:13:37,660
print out a hashtag,
a hashtag, a hashtag.

269
00:13:37,660 --> 00:13:40,480
One per line because I
have the new line there.

270
00:13:40,480 --> 00:13:42,787
And recall that the for
loop, per last week--

271
00:13:42,787 --> 00:13:44,620
and you'll get more
familiar with the syntax

272
00:13:44,620 --> 00:13:47,170
by using it with practice
before long-- this gives me

273
00:13:47,170 --> 00:13:49,740
a variable called i and sets it to 0.

274
00:13:49,740 --> 00:13:52,650
>> This increments i on
every iteration by 1.

275
00:13:52,650 --> 00:13:54,940
So i goes to 1 to 2 to 3.

276
00:13:54,940 --> 00:13:57,690
And then this condition in the
middle between the semi-colons

277
00:13:57,690 --> 00:14:03,010
gets checked on every iteration to make
sure that we are still within range.

278
00:14:03,010 --> 00:14:06,830
So I want to iterate 10 times, so I
have sort of very intuitively just

279
00:14:06,830 --> 00:14:09,070
put 10 as my upper bound there.

280
00:14:09,070 --> 00:14:14,310
>> And yet, when I run this, after
compiling it with make buggy2--

281
00:14:14,310 --> 00:14:15,440
and it does compile OK.

282
00:14:15,440 --> 00:14:17,980
So I don't have a
syntax error this time.

283
00:14:17,980 --> 00:14:20,940
Let me go ahead now
and run buggy2, Enter.

284
00:14:20,940 --> 00:14:22,620
And now scroll up.

285
00:14:22,620 --> 00:14:24,890
And let me increase
the size of the window.

286
00:14:24,890 --> 00:14:33,720
>> I seem to have 1, 2, 3,
4, 5, 6, 7, 8, 9, 10, 11.

287
00:14:33,720 --> 00:14:38,891
So there's 11 hashtags, even though
I clearly put 10 inside of this loop.

288
00:14:38,891 --> 00:14:42,140
Now, some of you might see immediately
what the error is because, indeed, this

289
00:14:42,140 --> 00:14:43,720
isn't a very hard error to make.

290
00:14:43,720 --> 00:14:46,070
But it's very commonly
made very early on.

291
00:14:46,070 --> 00:14:49,820
>> What I want to point out, though,
is, how might I figure this out?

292
00:14:49,820 --> 00:14:52,300
Well, it turns out that
the CS50 Library comes

293
00:14:52,300 --> 00:14:55,380
with not only get_string and get_int
and get_float and other functions.

294
00:14:55,380 --> 00:14:59,980
It also comes with a special function
called eprintf, or, error printf.

295
00:14:59,980 --> 00:15:03,270
And it exists solely to make
it a little bit easier for you

296
00:15:03,270 --> 00:15:06,310
when debugging your code to just
print an error message on the screen

297
00:15:06,310 --> 00:15:07,850
and know where it came from.

298
00:15:07,850 --> 00:15:11,000
>> So for instance, one thing I might
do here with this function is this--

299
00:15:11,000 --> 00:15:20,230
eprintf, and then I'm going to go ahead
and say i is now %i, backslash, n.

300
00:15:20,230 --> 00:15:22,330
And I'm going to plug in the value of i.

301
00:15:22,330 --> 00:15:25,400
And up top, because this
is in the CS50 Library,

302
00:15:25,400 --> 00:15:27,580
I'm going to go ahead
and include 

303
00:15:27,580 --> 00:15:29,169
so I have access to this function.

304
00:15:29,169 --> 00:15:31,460
But let's consider what line
9 is supposed to be doing.

305
00:15:31,460 --> 00:15:32,670
I'm going to delete this eventually.

306
00:15:32,670 --> 00:15:34,670
This has nothing to do
with my overarching goal.

307
00:15:34,670 --> 00:15:39,090
But eprintf, error printf, is just meant
to give me some diagnostic information.

308
00:15:39,090 --> 00:15:42,460
When I run my program, I want to
see this on the screen temporarily

309
00:15:42,460 --> 00:15:44,550
as well just to understand
what's going on.

310
00:15:44,550 --> 00:15:47,330
>> And, indeed, on each
iteration here of line 9

311
00:15:47,330 --> 00:15:49,260
I want to see, what is the value of i?

312
00:15:49,260 --> 00:15:50,290
What is the value of i?

313
00:15:50,290 --> 00:15:51,280
What is the value of i?

314
00:15:51,280 --> 00:15:55,650
And, hopefully, I should only
see that message, also, 10 times.

315
00:15:55,650 --> 00:15:57,780
>> So let me go ahead and
recompile my program,

316
00:15:57,780 --> 00:15:59,905
as I have to do any time
I make a change. ./buggy2.

317
00:15:59,905 --> 00:16:02,680

318
00:16:02,680 --> 00:16:03,640
And now-- OK.

319
00:16:03,640 --> 00:16:04,820
There's a lot more going on.

320
00:16:04,820 --> 00:16:07,610
So let me scroll up in
an even bigger window.

321
00:16:07,610 --> 00:16:10,190
>> And you'll see that each of
the hashtags is still printing.

322
00:16:10,190 --> 00:16:15,270
But in between each of them is now this
diagnostic output formatted as follows.

323
00:16:15,270 --> 00:16:17,960
The name of my program here is buggy2.

324
00:16:17,960 --> 00:16:20,432
The name of the file is buggy2.c.

325
00:16:20,432 --> 00:16:24,080
The line number from which
this was printed is line 9.

326
00:16:24,080 --> 00:16:27,500
And then to the right of that is the
error message that I'm expecting.

327
00:16:27,500 --> 00:16:30,701
>> And what's nice about this is that
now I don't have to necessarily count

328
00:16:30,701 --> 00:16:32,200
in my head what my program is doing.

329
00:16:32,200 --> 00:16:34,240
I can see that on the
first iteration i is 0,

330
00:16:34,240 --> 00:16:39,420
then 1, then 2, then 3, then 4, then
5, then 6, then 7, then 8, then 9, then

331
00:16:39,420 --> 00:16:40,980
10.

332
00:16:40,980 --> 00:16:42,050
So wait a minute.

333
00:16:42,050 --> 00:16:43,740
What's going on here?

334
00:16:43,740 --> 00:16:48,190
I still seem to be counting
as intended up to 10.

335
00:16:48,190 --> 00:16:50,550
>> But where did I start?

336
00:16:50,550 --> 00:16:53,240
0, 1, 2, 3, 4, 5, 6, 7, 8, 9 10.

337
00:16:53,240 --> 00:16:58,040
So 0, 1, 2, 3, 4, 5, 6, 7,
8, 9, 10-- the 11th finger

338
00:16:58,040 --> 00:16:59,990
is indicative of the problem.

339
00:16:59,990 --> 00:17:02,850
I seem to have counted
incorrectly in my loop.

340
00:17:02,850 --> 00:17:06,599
Rather than go 10 iterations,
I'm starting at 0,

341
00:17:06,599 --> 00:17:09,550
I'm ending at and through 10.

342
00:17:09,550 --> 00:17:12,030
But because, like a computer,
I'm starting counting at 0,

343
00:17:12,030 --> 00:17:15,250
I should be counting up
to, but not through, 10.

344
00:17:15,250 --> 00:17:18,510
>> And so the fix, I eventually
realized here, is one of two things.

345
00:17:18,510 --> 00:17:22,430
I could very simply say
count up to less than 10.

346
00:17:22,430 --> 00:17:27,260
So 0, 1, 2, 3, 4, 5, 6, 7, 8,
9, which is, indeed, correct,

347
00:17:27,260 --> 00:17:28,900
even though it sounds a little wrong.

348
00:17:28,900 --> 00:17:35,070
Or I could do less than or equal
to 9, so long as I start at 0.

349
00:17:35,070 --> 00:17:40,056
Or if you really don't like that, you
can count up through 10 but start at 1.

350
00:17:40,056 --> 00:17:41,680
But again, this just isn't that common.

351
00:17:41,680 --> 00:17:43,977
In programming-- albeit
not so much in Scratch--

352
00:17:43,977 --> 00:17:45,810
but in programming in
C and other languages,

353
00:17:45,810 --> 00:17:47,670
like JavaScript and
Python and others, it's

354
00:17:47,670 --> 00:17:49,880
just very common for
our discussion of binary

355
00:17:49,880 --> 00:17:53,450
to just start counting at the
lowest number you can, which is 0.

356
00:17:53,450 --> 00:17:53,950
All right.

357
00:17:53,950 --> 00:17:55,160
So that's eprintf.

358
00:17:55,160 --> 00:17:58,600
And again, now that I've figured out my
problem, and I'm going to go back to 0

359
00:17:58,600 --> 00:18:01,470
through less than 10, I'm going
to go in and delete eprintf.

360
00:18:01,470 --> 00:18:04,580
>> It should not be there when I
ship my code or submit my code

361
00:18:04,580 --> 00:18:05,800
or show it to anyone else.

362
00:18:05,800 --> 00:18:07,980
It's really just meant
to be used temporarily.

363
00:18:07,980 --> 00:18:11,650
But now I've fixed this
particular problem as well.

364
00:18:11,650 --> 00:18:16,780
>> Well, let's do one more example here
that I'm going to whip up as follows.

365
00:18:16,780 --> 00:18:22,850
I'm going to go ahead and
#include . $50

366
00:18:22,850 --> 00:18:25,580
And I'm going to go ahead
and #include .

367
00:18:25,580 --> 00:18:29,030
>> And I'm going to save
this file as buggy3.c.

368
00:18:29,030 --> 00:18:31,740
And I'm going to go ahead
and declare int main(void).

369
00:18:31,740 --> 00:18:34,186
And then inside of there
I'm going to do int i _ --

370
00:18:34,186 --> 00:18:36,435
I want to implement a program
with a get_negative_int.

371
00:18:36,435 --> 00:18:39,146

372
00:18:39,146 --> 00:18:40,770
This is not a function that exists yet.

373
00:18:40,770 --> 00:18:42,870
So we're going to implement
it in just a moment.

374
00:18:42,870 --> 00:18:45,541
But we're going to see why
it's buggy at first pass.

375
00:18:45,541 --> 00:18:47,290
And once I've gotten
an int from the user,

376
00:18:47,290 --> 00:18:53,365
I'm just going to print %i is a negative
integer, backslash, n, comma, i.

377
00:18:53,365 --> 00:18:55,240
In other words, all I
want this program to do

378
00:18:55,240 --> 00:18:58,000
is get a negative int from
the user and then print out

379
00:18:58,000 --> 00:18:59,980
that such and such is a negative int.

380
00:18:59,980 --> 00:19:02,080
>> Now I need to implement this function.

381
00:19:02,080 --> 00:19:05,740
So later in my file, I'm going to go
ahead and declare a function called

382
00:19:05,740 --> 00:19:10,670
get_negative_int(void)-- and we'll
come back to what that line means again

383
00:19:10,670 --> 00:19:18,790
in a moment-- int n; do-- do
the following-- printf n is:.

384
00:19:18,790 --> 00:19:26,210
And then I'm going to do n - get_int,
and do this while n is greater than 0.

385
00:19:26,210 --> 00:19:28,310
And then return n;.

386
00:19:28,310 --> 00:19:31,730
>> So there's a lot going on in
this but none of which we didn't

387
00:19:31,730 --> 00:19:33,710
look at last week, at least briefly.

388
00:19:33,710 --> 00:19:36,980
So on line 10 here I've declared a
function called get_negative_int,

389
00:19:36,980 --> 00:19:39,620
and I've put (void), in
parentheses, the reason being this

390
00:19:39,620 --> 00:19:40,950
does not take an input.

391
00:19:40,950 --> 00:19:42,910
I'm not passing anything
to this function.

392
00:19:42,910 --> 00:19:44,690
I'm just getting something back from it.

393
00:19:44,690 --> 00:19:47,270
>> And what I'm hoping to
get back is an integer.

394
00:19:47,270 --> 00:19:50,040
There is no data type in
C called negative_int.

395
00:19:50,040 --> 00:19:52,880
It's just int, so it's going
to be on us to make sure

396
00:19:52,880 --> 00:19:55,340
that the value that's actually
returned is not only an int

397
00:19:55,340 --> 00:19:56,380
but is also negative.

398
00:19:56,380 --> 00:20:02,150
>> On line 12 I'm declaring a variable
called n and making it of type int.

399
00:20:02,150 --> 00:20:07,500
And then in line 13 through 18 I'm
doing something while something is true.

400
00:20:07,500 --> 00:20:11,040
I'm going ahead and printing
n is, colon, and then a space,

401
00:20:11,040 --> 00:20:12,800
like a prompt for the user.

402
00:20:12,800 --> 00:20:16,410
>> I'm then calling get_int and
storing its so-called return value

403
00:20:16,410 --> 00:20:18,130
in that variable n.

404
00:20:18,130 --> 00:20:22,600
But I'm going to keep doing
this while n is greater than 0.

405
00:20:22,600 --> 00:20:27,960
In other words, if the user gives me an
int and that number is greater than 0,

406
00:20:27,960 --> 00:20:31,180
ergo, positive, I'm going to
just keep reprompting the user,

407
00:20:31,180 --> 00:20:37,160
keep reprompting, by forcing them to
cooperate and give me a negative int.

408
00:20:37,160 --> 00:20:41,640
>> And once n is actually negative--
suppose the user finally types -50,

409
00:20:41,640 --> 00:20:46,710
then this while loop is no longer true
because -50 is not greater than 0.

410
00:20:46,710 --> 00:20:51,140
So we break out of that
loop logically and return n.

411
00:20:51,140 --> 00:20:53,520
>> But there's one other
thing I have to do.

412
00:20:53,520 --> 00:20:56,190
And I can simply do this
by copying and pasting

413
00:20:56,190 --> 00:20:58,540
one line of code at the top of the file.

414
00:20:58,540 --> 00:21:01,630
I need to teach Clang,
or promise to Clang,

415
00:21:01,630 --> 00:21:04,630
explicitly that I will,
indeed, go and implement

416
00:21:04,630 --> 00:21:06,020
this function get_negative_int.

417
00:21:06,020 --> 00:21:07,674
It might just be lower in the file.

418
00:21:07,674 --> 00:21:09,840
Again, recall that Clang
reads things top to bottom,

419
00:21:09,840 --> 00:21:12,330
left to right, so you can't
call a function if Clang

420
00:21:12,330 --> 00:21:15,330
doesn't know it's going to exist.

421
00:21:15,330 --> 00:21:18,430
>> Now, unfortunately, this program,
as some of you might have noticed,

422
00:21:18,430 --> 00:21:19,590
is already buggy.

423
00:21:19,590 --> 00:21:21,400
Let me go ahead and make buggy3.

424
00:21:21,400 --> 00:21:26,904
It compiles, so my problem now is not
a syntax error, like a textual error,

425
00:21:26,904 --> 00:21:29,570
it's actually going to be a logical
error that I've deliberately

426
00:21:29,570 --> 00:21:32,450
made as an opportunity to
step through what's going on.

427
00:21:32,450 --> 00:21:35,540
>> I'm going to go ahead
now and run buggy3.

428
00:21:35,540 --> 00:21:37,490
And I'm going to go
ahead and not cooperate.

429
00:21:37,490 --> 00:21:39,494
I'm going to give it the number 1.

430
00:21:39,494 --> 00:21:41,410
It didn't like it, so
it's prompting me again.

431
00:21:41,410 --> 00:21:42,147
>> How about 2?

432
00:21:42,147 --> 00:21:43,021
3?

433
00:21:43,021 --> 00:21:43,520
50?

434
00:21:43,520 --> 00:21:44,740
None of those are working.

435
00:21:44,740 --> 00:21:46,890
How about -50?

436
00:21:46,890 --> 00:21:48,560
And the program seems to work.

437
00:21:48,560 --> 00:21:49,970
>> Let me try it once more.

438
00:21:49,970 --> 00:21:53,400
Let me try -1, seems to work.

439
00:21:53,400 --> 00:21:56,380
Let me try -2, seems to work.

440
00:21:56,380 --> 00:21:59,640
Let me try 0.

441
00:21:59,640 --> 00:22:01,684
Huh, that's incorrect.

442
00:22:01,684 --> 00:22:03,350
Now, we're being a little pedantic here.

443
00:22:03,350 --> 00:22:07,090
But it's, indeed, the case that 0
is neither positive nor negative.

444
00:22:07,090 --> 00:22:11,150
And so the fact that my program is
saying that 0 is a negative integer,

445
00:22:11,150 --> 00:22:12,820
that's not technically correct.

446
00:22:12,820 --> 00:22:15,180
>> Now, why is it doing this?

447
00:22:15,180 --> 00:22:16,270
Well, it might be obvious.

448
00:22:16,270 --> 00:22:18,110
And, indeed, the program is
meant to be fairly simple

449
00:22:18,110 --> 00:22:19,670
so we have something to explore.

450
00:22:19,670 --> 00:22:25,870
>> But let's introduce a third debugging
technique here called debug50.

451
00:22:25,870 --> 00:22:27,750
So this is a program
that we've just created

452
00:22:27,750 --> 00:22:30,770
this year called debug50
that will allow you

453
00:22:30,770 --> 00:22:34,130
to use what's called a built-in
graphical debugger in CS50 IDE.

454
00:22:34,130 --> 00:22:38,400
And a debugger is just a program that
generally lets you run your program

455
00:22:38,400 --> 00:22:44,050
but step by step by step, line
by line by line, pausing, poking

456
00:22:44,050 --> 00:22:47,626
around, looking at variables so that
the program doesn't just blow past you

457
00:22:47,626 --> 00:22:49,750
and quickly print something
or not print something.

458
00:22:49,750 --> 00:22:53,250
It gives you an opportunity, at
human speed, to interact with it.

459
00:22:53,250 --> 00:22:55,470
>> And to do this, you
simply do the following.

460
00:22:55,470 --> 00:22:58,479
After compiling your code,
which I already did, buggy3,

461
00:22:58,479 --> 00:23:00,020
you go ahead and run debug50 ./buggy.

462
00:23:00,020 --> 00:23:03,460

463
00:23:03,460 --> 00:23:06,760
So much like help50 has you run
help50 and then the command,

464
00:23:06,760 --> 00:23:10,120
debug50 has you run debug50 and
then the name of the command.

465
00:23:10,120 --> 00:23:14,440
>> Now watch what happens on my screen,
on the right-hand side in particular.

466
00:23:14,440 --> 00:23:19,400
When I hit Run, all of the
sudden this right-hand panel

467
00:23:19,400 --> 00:23:20,419
opens up on the screen.

468
00:23:20,419 --> 00:23:22,210
And there's a lot going
on at first glance.

469
00:23:22,210 --> 00:23:25,110
But there's not too
much to worry about yet.

470
00:23:25,110 --> 00:23:28,570
>> This is showing me everything
that's going on inside of my program

471
00:23:28,570 --> 00:23:31,130
right now and via these
buttons up top is then

472
00:23:31,130 --> 00:23:35,910
allowing me to step through my code
ultimately step by step by step.

473
00:23:35,910 --> 00:23:37,140
But not just yet.

474
00:23:37,140 --> 00:23:38,060
Notice what happens.

475
00:23:38,060 --> 00:23:40,600
At my terminal window
I'm being prompted for n.

476
00:23:40,600 --> 00:23:44,560
And I'm going to go ahead and
cooperate this time and type in -1.

477
00:23:44,560 --> 00:23:48,770
And albeit a little cryptically, -1
is a negative integer, as expected.

478
00:23:48,770 --> 00:23:52,020
>> And then child exited with
status 0 GDBserver exiting.

479
00:23:52,020 --> 00:23:55,180
GDB, GNU Debugger, is the name
of the underlying software

480
00:23:55,180 --> 00:23:56,620
that implements this debugger.

481
00:23:56,620 --> 00:24:00,500
But all this really means, the debugger
went away because my program quit

482
00:24:00,500 --> 00:24:01,710
and all was well.

483
00:24:01,710 --> 00:24:06,020
If I want to truly debug my program,
I have to preemptively tell debug50,

484
00:24:06,020 --> 00:24:08,920
where do I want to start
stepping through my code?

485
00:24:08,920 --> 00:24:11,750
>> And perhaps the simplest way
to do that is as follows.

486
00:24:11,750 --> 00:24:15,300
If I hover over the
gutter of my editor here,

487
00:24:15,300 --> 00:24:19,090
so really just in the sidebar here,
to the left of the line number,

488
00:24:19,090 --> 00:24:21,870
notice that if I just click
once, I put a little red dot.

489
00:24:21,870 --> 00:24:24,460
And that little red dot,
like a stop sign, means, hey,

490
00:24:24,460 --> 00:24:29,430
debug50, pause execution of my code
right there when I run this program.

491
00:24:29,430 --> 00:24:30,260
>> So let's do that.

492
00:24:30,260 --> 00:24:37,340
Let me go ahead and run my program
again with debug50 ./buggy3, Enter.

493
00:24:37,340 --> 00:24:40,110
And now, notice, something
different has happened.

494
00:24:40,110 --> 00:24:42,440
I'm not being prompted
yet in my terminal window

495
00:24:42,440 --> 00:24:45,430
for anything, because I haven't
gotten there yet in my program.

496
00:24:45,430 --> 00:24:47,950
Notice that on line 8
which is now highlighted,

497
00:24:47,950 --> 00:24:51,720
and there's a little arrow at
left saying, you are paused here.

498
00:24:51,720 --> 00:24:55,030
This line of code, line
8, has not yet executed.

499
00:24:55,030 --> 00:24:58,940
>> And what's curious, if I look
over here on the right-hand side,

500
00:24:58,940 --> 00:25:03,530
notice that i is a local
variable, local in the sense

501
00:25:03,530 --> 00:25:05,450
that it's inside the current function.

502
00:25:05,450 --> 00:25:08,920
And its value, apparently by default,
and sort of conveniently, is 0.

503
00:25:08,920 --> 00:25:10,260
But I didn't type 0.

504
00:25:10,260 --> 00:25:13,410
That just happens to be its
default value at the moment.

505
00:25:13,410 --> 00:25:15,490
>> So let me go ahead and do this now.

506
00:25:15,490 --> 00:25:18,680
Let me go ahead and on
the top right here, I'm

507
00:25:18,680 --> 00:25:20,970
going to go ahead and
click this first icon which

508
00:25:20,970 --> 00:25:25,360
means step over which means don't skip
it but step over this line of code,

509
00:25:25,360 --> 00:25:27,770
executing it along the way.

510
00:25:27,770 --> 00:25:30,710
>> And now, notice, my
prompt has just changed.

511
00:25:30,710 --> 00:25:31,380
Why is that?

512
00:25:31,380 --> 00:25:33,639
I've told debug50,
run this line of code.

513
00:25:33,639 --> 00:25:34,930
What does this line of code do?

514
00:25:34,930 --> 00:25:35,960
Prompts me for an int.

515
00:25:35,960 --> 00:25:36,460
OK.

516
00:25:36,460 --> 00:25:37,400
Let me cooperate.

517
00:25:37,400 --> 00:25:41,340
Let me go ahead now and type -1, Enter.

518
00:25:41,340 --> 00:25:42,920
And now notice what has changed.

519
00:25:42,920 --> 00:25:46,060
On the right-hand side,
my local variable i

520
00:25:46,060 --> 00:25:48,200
is indicated as being -1 now.

521
00:25:48,200 --> 00:25:49,810
And it's still of type int.

522
00:25:49,810 --> 00:25:53,102
>> And notice, too, my so-called
call stack, where did I pause?

523
00:25:53,102 --> 00:25:54,810
We'll talk more about
this in the future.

524
00:25:54,810 --> 00:25:58,620
But the call stack just refers to what
functions are currently in motion.

525
00:25:58,620 --> 00:26:00,040
Right now it's just main.

526
00:26:00,040 --> 00:26:03,590
And right now the only local
variable is i with a value of 1.

527
00:26:03,590 --> 00:26:09,840
>> And when I finally step over this line
here, with that same icon at top right,

528
00:26:09,840 --> 00:26:11,410
-1 is a negative integer.

529
00:26:11,410 --> 00:26:13,580
Now it's pausing over that curly brace.

530
00:26:13,580 --> 00:26:14,740
Let's let it do its thing.

531
00:26:14,740 --> 00:26:17,300
I step over that line, and voila.

532
00:26:17,300 --> 00:26:20,240
>> So not all that terribly
enlightening yet,

533
00:26:20,240 --> 00:26:23,550
but it did let me pause
and think through logically

534
00:26:23,550 --> 00:26:24,870
what this program is doing.

535
00:26:24,870 --> 00:26:26,890
But that wasn't the erroneous case.

536
00:26:26,890 --> 00:26:28,510
Let's do this again as follows.

537
00:26:28,510 --> 00:26:31,340
>> I'm going to leave that breakpoint
on line 8 with the red dot.

538
00:26:31,340 --> 00:26:32,830
I'm going to rerun debug50.

539
00:26:32,830 --> 00:26:34,400
It's automatically paused here.

540
00:26:34,400 --> 00:26:37,660
But this time, instead of
stepping over this line,

541
00:26:37,660 --> 00:26:42,290
let me actually go inside of
get_negative_int and figure out,

542
00:26:42,290 --> 00:26:45,530
why is it accepting 0 as a valid answer?

543
00:26:45,530 --> 00:26:47,990
>> So instead of clicking Step Over.

544
00:26:47,990 --> 00:26:50,630
I'm going to go ahead
and click Step Into.

545
00:26:50,630 --> 00:26:54,030
And notice that the line 8 that's
now highlighted now suddenly

546
00:26:54,030 --> 00:26:56,900
becomes line 17.

547
00:26:56,900 --> 00:26:59,947
>> Now, it's not that the debugger
has skipped lines 14 and 15 and 16.

548
00:26:59,947 --> 00:27:01,780
It's just there's nothing
to show you there.

549
00:27:01,780 --> 00:27:04,050
Those are just declaring variables,
and then there's the word Do

550
00:27:04,050 --> 00:27:05,390
and then an open curly brace.

551
00:27:05,390 --> 00:27:09,227
The only functional line that's
juicy really is this one here, 17.

552
00:27:09,227 --> 00:27:11,060
And that's where we've
paused automatically.

553
00:27:11,060 --> 00:27:13,870
>> So printf("n.is: ");, so
that hasn't happened yet.

554
00:27:13,870 --> 00:27:18,250
So let's go ahead and click Step Over.

555
00:27:18,250 --> 00:27:20,326
Now my prompt, indeed,
changed to ("n is: ").

556
00:27:20,326 --> 00:27:22,450
Now get_int, I'm not going
to bother stepping into,

557
00:27:22,450 --> 00:27:24,750
because that function was
made by CS50 in the Library.

558
00:27:24,750 --> 00:27:25,750
It's presumably correct.

559
00:27:25,750 --> 00:27:28,440
>> So I'm going to go ahead and
sort of cooperate by giving it

560
00:27:28,440 --> 00:27:30,590
an int, but not a negative int.

561
00:27:30,590 --> 00:27:32,870
So let me go ahead and hit 0.

562
00:27:32,870 --> 00:27:39,460
And now what happens here
when I get down to line 21?

563
00:27:39,460 --> 00:27:40,890
I've not iterated again.

564
00:27:40,890 --> 00:27:43,320
I don't seem to be stuck in that loop.

565
00:27:43,320 --> 00:27:45,990
In other words, this yellow
bar did not keep going around,

566
00:27:45,990 --> 00:27:47,130
and around, and around.

567
00:27:47,130 --> 00:27:48,340
>> Now, why is that?

568
00:27:48,340 --> 00:27:49,920
Well, n, what is n right now?

569
00:27:49,920 --> 00:27:53,280
I can look at the local
variables in the debugger.

570
00:27:53,280 --> 00:27:53,816
n is 0.

571
00:27:53,816 --> 00:27:55,190
All right, what was my condition?

572
00:27:55,190 --> 00:27:58,700
>> 20-- line 20 is, well,
0 is greater than 0.

573
00:27:58,700 --> 00:27:59,500
That is not true.

574
00:27:59,500 --> 00:28:01,020
0 is not greater than 0.

575
00:28:01,020 --> 00:28:02,820
And so I broke out of this.

576
00:28:02,820 --> 00:28:06,370
>> And so that's why on line
21, if I actually continue,

577
00:28:06,370 --> 00:28:10,370
I'm going to return 0, even
though I should have rejected 0

578
00:28:10,370 --> 00:28:12,484
as not actually being negative.

579
00:28:12,484 --> 00:28:14,650
So now, I don't really even
care about the debugger.

580
00:28:14,650 --> 00:28:16,900
Got it, I don't need to
know what more is going on.

581
00:28:16,900 --> 00:28:19,233
>> So I'm going to go ahead and
just click the Play button,

582
00:28:19,233 --> 00:28:20,240
and let this finish up.

583
00:28:20,240 --> 00:28:23,440
Now, I've realized that my
bug is apparently on line 20.

584
00:28:23,440 --> 00:28:25,160
That's my logical error.

585
00:28:25,160 --> 00:28:28,100
>> And so what do I want
to do to change this?

586
00:28:28,100 --> 00:28:32,500
If the problem is that I'm not
catching 0, it's just a logical error.

587
00:28:32,500 --> 00:28:35,910
And I can say while n is
greater than or equal to 0,

588
00:28:35,910 --> 00:28:38,330
keep prompting the user again and again.

589
00:28:38,330 --> 00:28:41,050
>> So, again, simple mistake, perhaps
even obvious when you saw me

590
00:28:41,050 --> 00:28:42,410
write it just a few minutes ago.

591
00:28:42,410 --> 00:28:44,570
But the takeaway here
is that with debug 50,

592
00:28:44,570 --> 00:28:46,850
and with debugging
software more generally,

593
00:28:46,850 --> 00:28:51,370
you have this new found power to
walk through your own code, look

594
00:28:51,370 --> 00:28:55,590
via that right hand panel what
your variables values are.

595
00:28:55,590 --> 00:28:57,700
So you don't necessarily
have to use something

596
00:28:57,700 --> 00:29:00,630
like you eprintf to print those values.

597
00:29:00,630 --> 00:29:04,430
You can actually see them
visually on the screen.

598
00:29:04,430 --> 00:29:08,920
>> Now, beyond this, it's worth noting
that there's another technique that's

599
00:29:08,920 --> 00:29:09,890
actually super common.

600
00:29:09,890 --> 00:29:13,120
And you might wonder why this little
guy here has been sitting on the stage.

601
00:29:13,120 --> 00:29:16,490
So there's this technique, generally
known as rubber duck debugging,

602
00:29:16,490 --> 00:29:18,786
which really is just a
testament to the fact

603
00:29:18,786 --> 00:29:20,660
that often when programmers
are writing code,

604
00:29:20,660 --> 00:29:22,650
they're not necessarily
collaborating with others,

605
00:29:22,650 --> 00:29:24,030
or working in a shared environment.

606
00:29:24,030 --> 00:29:25,050
>> They're sort of at home.

607
00:29:25,050 --> 00:29:25,910
Maybe it's late at night.

608
00:29:25,910 --> 00:29:28,190
They're trying to figure
out some bug in their code.

609
00:29:28,190 --> 00:29:29,330
And they're just not seeing it.

610
00:29:29,330 --> 00:29:30,329
>> And there's no roommate.

611
00:29:30,329 --> 00:29:31,250
There is no TF.

612
00:29:31,250 --> 00:29:32,680
There is no CA around.

613
00:29:32,680 --> 00:29:36,440
All they have on their shelf
is this little rubber ducky.

614
00:29:36,440 --> 00:29:39,030
>> And so rubber duck debugging
is just this invitation

615
00:29:39,030 --> 00:29:42,780
to think of something as silly
as this as a real creature,

616
00:29:42,780 --> 00:29:46,940
and actually walk through your code
verbally to this inanimate object.

617
00:29:46,940 --> 00:29:49,230
So, for instance, if
this is my example here--

618
00:29:49,230 --> 00:29:52,470
and recall that earlier
the problem was this,

619
00:29:52,470 --> 00:29:58,140
if I delete this first line of code,
and I go ahead and make buggy 0 again,

620
00:29:58,140 --> 00:30:01,220
recall that I had these
error messages here.

621
00:30:01,220 --> 00:30:05,997
So the idea here, ridiculous though I
feel at the moment doing this publicly,

622
00:30:05,997 --> 00:30:06,580
is that error.

623
00:30:06,580 --> 00:30:10,910
>> OK, so my problem is that I've
implicitly declared a library function.

624
00:30:10,910 --> 00:30:12,610
And that library function is printf.

625
00:30:12,610 --> 00:30:15,290
Declare-- OK, declare
reminds me of prototypes.

626
00:30:15,290 --> 00:30:18,930
>> That means I need to actually
tell the compiler in advance what

627
00:30:18,930 --> 00:30:19,980
the function looks like.

628
00:30:19,980 --> 00:30:20,930
Wait a minute.

629
00:30:20,930 --> 00:30:23,580
I didn't have standard io.h.

630
00:30:23,580 --> 00:30:24,530
Thank you very much.

631
00:30:24,530 --> 00:30:27,330
>> So just this process of-- you
don't need to actually have a duck.

632
00:30:27,330 --> 00:30:29,819
But this idea of walking
yourself through your own code

633
00:30:29,819 --> 00:30:31,610
so that you even hear
yourself, so that you

634
00:30:31,610 --> 00:30:35,620
realize omissions in your own
remarks, is generally the idea.

635
00:30:35,620 --> 00:30:38,910
>> And, perhaps more logically, not so
much with that one but the more involved

636
00:30:38,910 --> 00:30:44,220
example we just did in buggy 3.c,
you might walk yourself through it

637
00:30:44,220 --> 00:30:45,310
as follows.

638
00:30:45,310 --> 00:30:49,190
So all right, rubber
ducky, DDB, if you will.

639
00:30:49,190 --> 00:30:52,350
Here we have in my main function,
I'm calling get negative int.

640
00:30:52,350 --> 00:30:54,660
>> And I am getting the return value.

641
00:30:54,660 --> 00:31:00,410
I'm storing it on the left hand side
on line 8 in a variable called i.

642
00:31:00,410 --> 00:31:02,380
OK, but wait, how did
that get that value?

643
00:31:02,380 --> 00:31:04,130
Let me look at the function in line 12.

644
00:31:04,130 --> 00:31:05,760
>> In line 12, we have get negative int.

645
00:31:05,760 --> 00:31:08,190
Doesn't take any inputs,
does return an int, OK.

646
00:31:08,190 --> 00:31:10,929
I declare on line 14 a variable n.

647
00:31:10,929 --> 00:31:12,220
It's going to store an integer.

648
00:31:12,220 --> 00:31:13,760
That's what I want.

649
00:31:13,760 --> 00:31:18,480
>> So do the following while n is-- let
me undo what the fix I already made.

650
00:31:18,480 --> 00:31:22,710
So while n is greater than
0, print out n is, OK.

651
00:31:22,710 --> 00:31:25,170
And then call get int stored in n.

652
00:31:25,170 --> 00:31:30,160
And then check if n is 0,
n is not-- there it is.

653
00:31:30,160 --> 00:31:31,910
So, again, you don't
need the actual duck.

654
00:31:31,910 --> 00:31:35,650
But just walking yourself through
your code as an intellectual exercise

655
00:31:35,650 --> 00:31:37,720
will often help you
realize what's going on,

656
00:31:37,720 --> 00:31:41,170
as opposed to just doing something
like this, staring at the screen,

657
00:31:41,170 --> 00:31:43,720
and not talking yourself through
it, which honestly is not

658
00:31:43,720 --> 00:31:46,270
nearly as an effective technique.

659
00:31:46,270 --> 00:31:48,620
So there you have it, a
number of different techniques

660
00:31:48,620 --> 00:31:52,102
for actually debugging your code
and finding fault, all of which

661
00:31:52,102 --> 00:31:54,810
should be tools in your toolkit
so that you're not late at night,

662
00:31:54,810 --> 00:31:57,660
especially, you're in the dining
halls, or at office hours,

663
00:31:57,660 --> 00:32:00,368
banging your head against the
wall, trying to solve some problem.

664
00:32:00,368 --> 00:32:02,020
Realize that there are software tools.

665
00:32:02,020 --> 00:32:03,720
There are rubber duck tools.

666
00:32:03,720 --> 00:32:09,630
And there's a whole staff of
support waiting to lend a hand.

667
00:32:09,630 --> 00:32:13,120
>> So now, a word on the problem
sets, and on what we're hoping you

668
00:32:13,120 --> 00:32:15,620
get out of them, and how
we go about evaluating.

669
00:32:15,620 --> 00:32:17,680
Per the course's syllabus,
CS50's problem sets

670
00:32:17,680 --> 00:32:22,320
are evaluated on four primary axes, so
to speak-- scope, correctness, design,

671
00:32:22,320 --> 00:32:23,060
and style.

672
00:32:23,060 --> 00:32:25,910
And scope just refers to how much
of the piece have you bitten off?

673
00:32:25,910 --> 00:32:28,080
How much of a problem have you tried?

674
00:32:28,080 --> 00:32:30,110
What level of effort
have you manifested?

675
00:32:30,110 --> 00:32:35,750
>> Correctness is, does the program work as
it's supposed to per CS50 specification

676
00:32:35,750 --> 00:32:38,640
when you provide certain inputs
or certain outputs coming back?

677
00:32:38,640 --> 00:32:41,130
Design is the most subjective of them.

678
00:32:41,130 --> 00:32:43,360
And it's the one that will
take the longest to learn

679
00:32:43,360 --> 00:32:47,220
and the longest to teach, in
so far as it boils down to,

680
00:32:47,220 --> 00:32:49,530
how well written is your code?

681
00:32:49,530 --> 00:32:52,920
>> It's one thing to just print the correct
outputs or return the right values.

682
00:32:52,920 --> 00:32:55,400
But are you doing it as
efficiently as possible?

683
00:32:55,400 --> 00:32:58,210
Are you doing it divide
and conquer, or binary

684
00:32:58,210 --> 00:33:01,500
search as we'll soon see that we did
two weeks ago with the phone book?

685
00:33:01,500 --> 00:33:04,670
Are there better ways to solve the
problem than you currently have here?

686
00:33:04,670 --> 00:33:06,380
That's an opportunity for better design.

687
00:33:06,380 --> 00:33:08,530
>> And then style-- how
pretty is your code?

688
00:33:08,530 --> 00:33:12,370
You'll notice that I'm pretty
particular about indenting my code,

689
00:33:12,370 --> 00:33:15,300
and making sure my variables
are reasonably named. n,

690
00:33:15,300 --> 00:33:19,660
while short, is a good name for a
number, i for a counting integer,

691
00:33:19,660 --> 00:33:20,727
s for a string.

692
00:33:20,727 --> 00:33:22,560
And we can have longer
variable names style.

693
00:33:22,560 --> 00:33:25,500
Style is just how good
does your code look?

694
00:33:25,500 --> 00:33:26,600
And how readable is it?

695
00:33:26,600 --> 00:33:29,650
>> And over time, what your TAs
and TFs will do in the course

696
00:33:29,650 --> 00:33:31,870
is provide you with that
kind of qualitative feedback

697
00:33:31,870 --> 00:33:34,330
so that you get better
at those various aspects.

698
00:33:34,330 --> 00:33:37,510
And in terms of how we
evaluate each of these axes,

699
00:33:37,510 --> 00:33:40,080
it's typically with very few
buckets so that you, generally,

700
00:33:40,080 --> 00:33:41,680
get a sense of how well you're doing.

701
00:33:41,680 --> 00:33:45,680
And, indeed, if you receive a score on
any of those axes-- correctness, design

702
00:33:45,680 --> 00:33:49,659
and style especially-- that number
will generally be between 1 and 5.

703
00:33:49,659 --> 00:33:52,450
And, literally, if you're getting
3's at the start of the semester,

704
00:33:52,450 --> 00:33:53,977
this is a very good thing.

705
00:33:53,977 --> 00:33:55,810
It means there's still
room for improvement,

706
00:33:55,810 --> 00:33:58,490
which you would hope for in
taking a class for the first time.

707
00:33:58,490 --> 00:34:01,820
There's hopefully some bit of ceiling
to which you're aspiring to reaching.

708
00:34:01,820 --> 00:34:03,970
And so getting 3's on
the earliest pieces,

709
00:34:03,970 --> 00:34:06,550
if not some 2's and 4's,
is, indeed, a good thing.

710
00:34:06,550 --> 00:34:08,880
It's well within range,
well within expectations.

711
00:34:08,880 --> 00:34:11,421
>> And if your mind is racing, wait
a minute, three out of five.

712
00:34:11,421 --> 00:34:12,620
That's really a 6 out of 10.

713
00:34:12,620 --> 00:34:13,560
That's 60%.

714
00:34:13,560 --> 00:34:14,830
My God, that's an F.

715
00:34:14,830 --> 00:34:15,870
>> It's not.

716
00:34:15,870 --> 00:34:17,600
It's not, in fact, that.

717
00:34:17,600 --> 00:34:22,710
Rather, it's an opportunity to improve
over the course of the semester.

718
00:34:22,710 --> 00:34:25,580
And if you're getting some
poors, these are an opportunity

719
00:34:25,580 --> 00:34:29,199
to take advantage of office hours,
certainly sections and other resources.

720
00:34:29,199 --> 00:34:32,840
>> Best is an opportunity, really,
to be proud of just how far you've

721
00:34:32,840 --> 00:34:34,520
come over the course of the semester.

722
00:34:34,520 --> 00:34:38,199
So do realize, if nothing
else, three is good.

723
00:34:38,199 --> 00:34:40,179
And it allows room for growth over time.

724
00:34:40,179 --> 00:34:43,090
>> As to how those axes are
weighted, realistically you're

725
00:34:43,090 --> 00:34:46,745
going to spend most of your time getting
things to work, let alone correctly.

726
00:34:46,745 --> 00:34:49,120
And so correctness tends to
be weighted the most, as with

727
00:34:49,120 --> 00:34:51,360
this multiplicative factor of three.

728
00:34:51,360 --> 00:34:54,659
Design is also important, but
something that you don't necessarily

729
00:34:54,659 --> 00:34:58,220
spend all of those hours on
trying to get things just to work.

730
00:34:58,220 --> 00:35:00,019
>> And so it's weighted
a little more lightly.

731
00:35:00,019 --> 00:35:01,560
And then style is weighted the least.

732
00:35:01,560 --> 00:35:03,710
Even though it's no less
important fundamentally,

733
00:35:03,710 --> 00:35:05,990
it's just, perhaps, the
easiest thing to do right,

734
00:35:05,990 --> 00:35:08,440
mimicking the examples we
do in lecture and section,

735
00:35:08,440 --> 00:35:11,080
with things nicely
indented, and commented,

736
00:35:11,080 --> 00:35:14,320
and so forth is among the easiest
things to do and get right.

737
00:35:14,320 --> 00:35:16,960
So as such, realize
that those are points

738
00:35:16,960 --> 00:35:19,000
that are relatively easy to grasp.

739
00:35:19,000 --> 00:35:22,360
>> And now a word on
this-- academic honesty.

740
00:35:22,360 --> 00:35:25,150
So per the course's
syllabus, you will see

741
00:35:25,150 --> 00:35:27,630
that the course has quite a
bit of language around this.

742
00:35:27,630 --> 00:35:31,380
And the course takes the issue of
academic honesty quite seriously.

743
00:35:31,380 --> 00:35:33,450
>> We have the distinction,
for better or for worse,

744
00:35:33,450 --> 00:35:36,570
of having sent each year more
students for disciplinary action

745
00:35:36,570 --> 00:35:39,670
than most any other
course, that I am aware of.

746
00:35:39,670 --> 00:35:42,580
This is not necessarily
indicative of the fact

747
00:35:42,580 --> 00:35:46,340
that CS students, or CS50 students, are
any less honest than your classmates.

748
00:35:46,340 --> 00:35:49,090
But the reality that in this
world, electronically, we just

749
00:35:49,090 --> 00:35:50,990
have technological
means of detecting this.

750
00:35:50,990 --> 00:35:53,360
>> It is important to us for
fairness across the class

751
00:35:53,360 --> 00:35:58,550
that we do detect this, and raise
the issue when we see things.

752
00:35:58,550 --> 00:36:01,980
And just to paint a picture, and really
to help something like this sink in,

753
00:36:01,980 --> 00:36:04,600
these are the numbers of
students over the past 10 years

754
00:36:04,600 --> 00:36:07,610
that have been involved in some
such issues of academic honesty,

755
00:36:07,610 --> 00:36:10,990
with some 32 students
from fall 2015, which

756
00:36:10,990 --> 00:36:13,760
is to say that we do take
the matter very seriously.

757
00:36:13,760 --> 00:36:18,380
And, ultimately, these numbers compose,
most recently, about 3%, 4% or so

758
00:36:18,380 --> 00:36:19,120
of the class.

759
00:36:19,120 --> 00:36:25,220
>> So for the super majority of students
it seems that the lines are clear.

760
00:36:25,220 --> 00:36:27,940
But do keep this in
mind, particularly late

761
00:36:27,940 --> 00:36:32,080
at night when struggling with
some solution to a problem set,

762
00:36:32,080 --> 00:36:34,830
that there are mechanisms
for getting yourself better

763
00:36:34,830 --> 00:36:37,870
support than you might
think, even at that hour.

764
00:36:37,870 --> 00:36:40,514
Realize that when we receive
student submissions, we cross

765
00:36:40,514 --> 00:36:43,430
compare every submission this year
against every submission last year,

766
00:36:43,430 --> 00:36:47,590
against every submission from 2007,
and since, looking at, as well,

767
00:36:47,590 --> 00:36:49,931
code repositories online,
discussion forums, job sites.

768
00:36:49,931 --> 00:36:51,806
And we mention this,
really, all for the sake

769
00:36:51,806 --> 00:36:56,040
of full disclosure, that if
someone else can find it online,

770
00:36:56,040 --> 00:36:57,880
certainly, so can we the course.

771
00:36:57,880 --> 00:37:00,100
But, really, the spirit
of the course boils down

772
00:37:00,100 --> 00:37:01,650
to this clause in the syllabus.

773
00:37:01,650 --> 00:37:03,670
It really is just, be reasonable.

774
00:37:03,670 --> 00:37:06,680
>> And if we had to elaborate on that
with just a bit more language,

775
00:37:06,680 --> 00:37:09,770
realize that the essence of all
work that you submit to this course

776
00:37:09,770 --> 00:37:10,954
must be your own.

777
00:37:10,954 --> 00:37:13,870
But within that, there are certainly
opportunities, and encouragement,

778
00:37:13,870 --> 00:37:17,300
and pedagogical value in turning to
others-- myself, the TFs, the CAs,

779
00:37:17,300 --> 00:37:20,760
the TAs, and others in the class,
for support, let alone friends

780
00:37:20,760 --> 00:37:23,547
and roommates who have studied
CS and programming before.

781
00:37:23,547 --> 00:37:25,130
And so there is an allowance for that.

782
00:37:25,130 --> 00:37:28,180
And the general rule of thumb
is this-- when asking for help,

783
00:37:28,180 --> 00:37:31,470
you may show your code to others,
but you may not view theirs.

784
00:37:31,470 --> 00:37:34,880
So even if you're at office hours,
or in the D hall, or somewhere else

785
00:37:34,880 --> 00:37:37,450
working on some piece set,
working alongside a friend, which

786
00:37:37,450 --> 00:37:40,160
is totally fine, at the
end of the day your work

787
00:37:40,160 --> 00:37:43,034
should ultimately belong to each
of you respectively, and not

788
00:37:43,034 --> 00:37:45,700
be some collaborative effort,
except for the final project where

789
00:37:45,700 --> 00:37:47,410
it's allowed and encouraged.

790
00:37:47,410 --> 00:37:49,830
>> Realize that if you are
struggling with something

791
00:37:49,830 --> 00:37:52,520
and your friend just happens
to be better at this then you,

792
00:37:52,520 --> 00:37:55,130
or better at that problem than you,
or a little farther ahead than you,

793
00:37:55,130 --> 00:37:57,330
it's totally reasonable to turn
to your friend and say, hey,

794
00:37:57,330 --> 00:38:00,480
do you mind looking at my code here,
helping me spot what my issue is?

795
00:38:00,480 --> 00:38:03,760
And, hopefully, in the
interest of pedagogical value

796
00:38:03,760 --> 00:38:07,040
that friend doesn't just
say, oh, do this, but rather,

797
00:38:07,040 --> 00:38:09,917
what are you missing on line
6, or something like that?

798
00:38:09,917 --> 00:38:12,000
But the solution is not
for the friend next to you

799
00:38:12,000 --> 00:38:15,617
to say, oh, well, here, let me pull
this up, and show my solution to you.

800
00:38:15,617 --> 00:38:16,450
So that is the line.

801
00:38:16,450 --> 00:38:18,670
You show your code to
others, but you may not

802
00:38:18,670 --> 00:38:22,350
view theirs, subject to the other
constraints in the course's syllabus.

803
00:38:22,350 --> 00:38:24,760
>> So do keep in mind this
so-called regret clause

804
00:38:24,760 --> 00:38:27,560
in the course's syllabus as well,
that if you commit some act that

805
00:38:27,560 --> 00:38:30,476
is not reasonable, but bring it to
the attention of the course's heads

806
00:38:30,476 --> 00:38:34,240
within 72 hours, the course
may impose local sanctions that

807
00:38:34,240 --> 00:38:37,380
may include an unsatisfactory or
failing grade for the work submitted.

808
00:38:37,380 --> 00:38:41,410
But the course will not refer the
matter for further disciplinary action,

809
00:38:41,410 --> 00:38:43,010
except in cases of repeated acts.

810
00:38:43,010 --> 00:38:46,632
In other words, if you do make some
stupid, especially late night, decision

811
00:38:46,632 --> 00:38:49,340
that the next morning or two days
later, you wake up and realize,

812
00:38:49,340 --> 00:38:50,870
what was I thinking?

813
00:38:50,870 --> 00:38:53,890
You do in CS50 have an outlet
for fixing that problem

814
00:38:53,890 --> 00:38:57,170
and owning up to it, so that we
will meet you halfway and deal

815
00:38:57,170 --> 00:39:01,500
with it in a matter that is both
educational and valuable for you,

816
00:39:01,500 --> 00:39:04,200
but still punitive in some way.

817
00:39:04,200 --> 00:39:08,590
And now, to take the edge off, this.

818
00:39:08,590 --> 00:39:10,570
>> [VIDEO PLAYBACK]

819
00:39:10,570 --> 00:39:13,540
>> [MUSIC PLAYING]

820
00:39:13,540 --> 00:39:58,090

821
00:39:58,090 --> 00:39:58,866
>> [END PLAYBACK]

822
00:39:58,866 --> 00:40:00,490
DAVID J. MALAN: All right, we are back.

823
00:40:00,490 --> 00:40:03,680
And now we look at one of the
first of our real world domains

824
00:40:03,680 --> 00:40:08,720
in CS50, the art of cryptography,
the art of sending and receiving

825
00:40:08,720 --> 00:40:11,840
secret messages, encrypted
messages if you will,

826
00:40:11,840 --> 00:40:17,060
that can only be deciphered if you have
some key ingredient that the sender has

827
00:40:17,060 --> 00:40:18,030
as well.

828
00:40:18,030 --> 00:40:22,120
So to motivate this we'll take
a look at this thing here,

829
00:40:22,120 --> 00:40:26,750
which is an example of a
secret decoder ring that

830
00:40:26,750 --> 00:40:34,042
can be used in order to figure out
what a secret message actually is.

831
00:40:34,042 --> 00:40:35,750
In fact, back in the
day in grade school,

832
00:40:35,750 --> 00:40:38,787
if you ever sent secret messages to
some friend or some crush in class,

833
00:40:38,787 --> 00:40:40,620
you might have thought
you were being clever

834
00:40:40,620 --> 00:40:46,530
by on your piece of paper changing,
like, A to B, and B to C, and C to D,

835
00:40:46,530 --> 00:40:47,590
and so forth.

836
00:40:47,590 --> 00:40:50,300
But you were actually encrypting
your information, even

837
00:40:50,300 --> 00:40:53,300
if it was a little trivial, wasn't
that hard for the teacher to realize,

838
00:40:53,300 --> 00:40:55,675
well, if you just change
B to A and C to B,

839
00:40:55,675 --> 00:40:57,550
you actually figure out
what the message was,

840
00:40:57,550 --> 00:40:59,700
but you were in ciphering information.

841
00:40:59,700 --> 00:41:03,420
>> You were just doing it
simply, much like Ralphie here

842
00:41:03,420 --> 00:41:07,934
in a famous movie that plays
pretty much ad nauseum each winter.

843
00:41:07,934 --> 00:41:08,600
[VIDEO PLAYBACK]

844
00:41:08,600 --> 00:41:11,180
-Be it known to all that
Ralph Parker is hereby

845
00:41:11,180 --> 00:41:14,070
appointed a member of the Little
Orphan Annie Secret Circle

846
00:41:14,070 --> 00:41:17,700
and is entitled to all the honors
and benefits occurring thereto.

847
00:41:17,700 --> 00:41:24,340
>> -Signed, Little Orphan Annie,
counter-signed Pierre Andre, in ink.

848
00:41:24,340 --> 00:41:27,160
Honors and benefits,
already at the age of nine.

849
00:41:27,160 --> 00:41:30,490

850
00:41:30,490 --> 00:41:31,825
>> [SHOUTING]

851
00:41:31,825 --> 00:41:33,750

852
00:41:33,750 --> 00:41:34,250
-Come on.

853
00:41:34,250 --> 00:41:35,210
Let's get on with it.

854
00:41:35,210 --> 00:41:39,530
I don't need all that jazz
about smugglers and pirates.

855
00:41:39,530 --> 00:41:41,660
>> -Listen tomorrow night for
the concluding adventure

856
00:41:41,660 --> 00:41:43,880
of the black pirate ship.

857
00:41:43,880 --> 00:41:46,650
Now, it's time for
Annie's secret message

858
00:41:46,650 --> 00:41:49,840
for you members of the Secret Circle.

859
00:41:49,840 --> 00:41:53,570
Remember, kids, only members
of Annie's Secret Circle

860
00:41:53,570 --> 00:41:56,140
can decode Annie's secret message.

861
00:41:56,140 --> 00:42:00,340
>> Remember, Annie is depending on you.

862
00:42:00,340 --> 00:42:02,880
Set your pins to B2.

863
00:42:02,880 --> 00:42:05,230
Here is the message.

864
00:42:05,230 --> 00:42:06,090
12, 11--

865
00:42:06,090 --> 00:42:10,250
>> -I am in, my first secret meeting.

866
00:42:10,250 --> 00:42:13,890
>> -14, 11, 18, 16.

867
00:42:13,890 --> 00:42:15,780
>> -Pierre was in great voice tonight.

868
00:42:15,780 --> 00:42:19,000
I could tell that tonight's
message was really important.

869
00:42:19,000 --> 00:42:22,694
>> -3, 25, that's a message
from Annie herself.

870
00:42:22,694 --> 00:42:23,860
Remember, don't tell anyone.

871
00:42:23,860 --> 00:42:28,760

872
00:42:28,760 --> 00:42:32,930
>> -90 seconds later, I'm in the only
room in the house where a boy of nine

873
00:42:32,930 --> 00:42:37,040
could sit in privacy and decode.

874
00:42:37,040 --> 00:42:39,730
Aha, B!

875
00:42:39,730 --> 00:42:42,360
I went to the next, E.

876
00:42:42,360 --> 00:42:44,520
>> The first word is be.

877
00:42:44,520 --> 00:42:49,032
S, it was coming easier now, U, 25--

878
00:42:49,032 --> 00:42:51,733
>> -Oh, come on, Ralphie, I gotta go!

879
00:42:51,733 --> 00:42:53,688
>> -I'll be right down, Ma!

880
00:42:53,688 --> 00:42:54,188
Gee whiz!

881
00:42:54,188 --> 00:42:58,116

882
00:42:58,116 --> 00:43:04,060
>> -T, O, be sure to-- be sure to what?

883
00:43:04,060 --> 00:43:05,970
What was Little Orphan
Annie trying to say?

884
00:43:05,970 --> 00:43:07,264
Be sure to what?

885
00:43:07,264 --> 00:43:09,634
>> -Ralphie, Andy has got to
go, will you please come out?

886
00:43:09,634 --> 00:43:10,480
>> -All right, Ma!

887
00:43:10,480 --> 00:43:12,880
I'll be right out!

888
00:43:12,880 --> 00:43:14,550
>> -I was getting closer now.

889
00:43:14,550 --> 00:43:16,620
The tension was terrible.

890
00:43:16,620 --> 00:43:17,720
What was it?

891
00:43:17,720 --> 00:43:20,170
The fate of the planet
may hang in the balance.

892
00:43:20,170 --> 00:43:20,670
>> -Ralphie!

893
00:43:20,670 --> 00:43:23,170
Andy's gotta go!

894
00:43:23,170 --> 00:43:26,890
>> -I'll be right out, for crying out loud!

895
00:43:26,890 --> 00:43:32,680
>> -Almost there, my fingers flew, my mind
was a steel trap, every pore vibrated.

896
00:43:32,680 --> 00:43:37,198
It was almost clear, yes, yes, yes.

897
00:43:37,198 --> 00:43:43,091
>> -Be sure to drink your ovaltine.

898
00:43:43,091 --> 00:43:43,590
Ovaltine?

899
00:43:43,590 --> 00:43:48,160

900
00:43:48,160 --> 00:43:49,430
A crummy commercial?

901
00:43:49,430 --> 00:43:53,046

902
00:43:53,046 --> 00:43:54,227
Son of a bitch.

903
00:43:54,227 --> 00:43:54,810
[END PLAYBACK]

904
00:43:54,810 --> 00:43:57,390
DAVID J. MALAN: OK, so
that was a very long way

905
00:43:57,390 --> 00:44:00,660
of introducing cryptography,
and also ovaltine.

906
00:44:00,660 --> 00:44:04,470
In fact, from this old advert
here, why is ovaltine so good?

907
00:44:04,470 --> 00:44:09,470
It is a concentrated extraction of ripe
barley malt, pure creamy cow's milk,

908
00:44:09,470 --> 00:44:14,360
and specially prepared cocoa, together
with natural phosphatides and vitamins.

909
00:44:14,360 --> 00:44:18,240
It is further fortified with
additional vitamins B and D, yum.

910
00:44:18,240 --> 00:44:21,600
And you can still get it, apparently,
on Amazon, as we did here.

911
00:44:21,600 --> 00:44:24,810
>> But the motivation here was to
introduce cryptography, specifically

912
00:44:24,810 --> 00:44:28,340
a type of cryptography known
as secret key cryptography.

913
00:44:28,340 --> 00:44:34,284
And as the name suggests, the whole
security of a secret key crypto system,

914
00:44:34,284 --> 00:44:36,200
if you will, a methodology
for just scrambling

915
00:44:36,200 --> 00:44:40,960
information between two people, is that
only the sender and only the recipient

916
00:44:40,960 --> 00:44:46,980
know a secret key-- some value, some
secret phrase, some secret number, that

917
00:44:46,980 --> 00:44:50,660
allows them to both encrypt
and decrypt information.

918
00:44:50,660 --> 00:44:53,470
And cryptography, really,
is just this from week 0.

919
00:44:53,470 --> 00:44:56,715
>> It's a problem where there's inputs,
like the actual message in English

920
00:44:56,715 --> 00:44:59,340
or whatever language that you
want to send to someone in class,

921
00:44:59,340 --> 00:45:00,580
or across the internet.

922
00:45:00,580 --> 00:45:03,840
There is some output, which is going
to be the scrambled message that you

923
00:45:03,840 --> 00:45:05,250
want the recipient to receive.

924
00:45:05,250 --> 00:45:07,405
And even if someone in the
middle receives it too,

925
00:45:07,405 --> 00:45:09,780
you don't want them to
necessarily be able to decrypt it,

926
00:45:09,780 --> 00:45:12,840
because inside of this
black box, or algorithm,

927
00:45:12,840 --> 00:45:17,650
is some mechanism, some step by step
instructions, for taking that input

928
00:45:17,650 --> 00:45:20,710
and converting it into the
output, in hopefully a secure way.

929
00:45:20,710 --> 00:45:23,640
>> And, in fact, there is some
vocabulary in this world as follows.

930
00:45:23,640 --> 00:45:26,100
Plain text is the word a
computer scientist would

931
00:45:26,100 --> 00:45:28,449
use to describe the input
message, like the English

932
00:45:28,449 --> 00:45:31,240
or whatever language you actually
want to send to some other human.

933
00:45:31,240 --> 00:45:35,450
And then the ciphertext is the scramble
to the enciphered, or encrypted,

934
00:45:35,450 --> 00:45:36,520
version thereof.

935
00:45:36,520 --> 00:45:38,750
>> But there's one other ingredient here.

936
00:45:38,750 --> 00:45:43,200
There's one other input to
secret key cryptography.

937
00:45:43,200 --> 00:45:45,200
And that is the key itself,
which is, generally,

938
00:45:45,200 --> 00:45:48,930
as we'll see, a number, or
letter, or word, whatever

939
00:45:48,930 --> 00:45:51,980
the algorithm it is actually expects.

940
00:45:51,980 --> 00:45:53,870
>> And how do you decrypt information?

941
00:45:53,870 --> 00:45:55,110
How do you unscramble it?

942
00:45:55,110 --> 00:45:57,950
Well, you just reverse the
outputs and the inputs.

943
00:45:57,950 --> 00:46:00,900
>> In other words, once someone
receives your encrypted message,

944
00:46:00,900 --> 00:46:03,740
he or she simply has
to know that same key.

945
00:46:03,740 --> 00:46:05,700
They have received the ciphertext.

946
00:46:05,700 --> 00:46:09,530
And by plugging those two
inputs into the crypto system,

947
00:46:09,530 --> 00:46:14,260
the algorithm, this black box, out
should come the original plaintext.

948
00:46:14,260 --> 00:46:17,830
And so that's the very high level
view of what cryptography is actually

949
00:46:17,830 --> 00:46:18,590
all about.

950
00:46:18,590 --> 00:46:20,030
>> So let's get there.

951
00:46:20,030 --> 00:46:22,700
Let's now look underneath
the hood of something

952
00:46:22,700 --> 00:46:26,000
we've been taking for granted for
the past week, and for this session

953
00:46:26,000 --> 00:46:27,629
here-- the string.

954
00:46:27,629 --> 00:46:30,295
A string at the end of the day
is just a sequence of characters.

955
00:46:30,295 --> 00:46:33,610
>> It might be hello world, or
hello Zamyla, or whatever.

956
00:46:33,610 --> 00:46:37,050
But what does that mean to
be a sequence of characters?

957
00:46:37,050 --> 00:46:41,520
In fact, the CS50 library gives
us a data type called string.

958
00:46:41,520 --> 00:46:45,140
>> But there is actually no
such thing as a string in C.

959
00:46:45,140 --> 00:46:49,450
It really is just a sequence of
character, character, character,

960
00:46:49,450 --> 00:46:52,180
character, back, to back, to
back, to back, to back inside

961
00:46:52,180 --> 00:46:54,650
of your computer's memory, or RAM.

962
00:46:54,650 --> 00:46:58,940
And we'll look deeper into that in the
future when we look at memory itself,

963
00:46:58,940 --> 00:47:02,030
and the utilization, and the
threats that are involved.

964
00:47:02,030 --> 00:47:04,100
>> But let's consider the string Zamyla.

965
00:47:04,100 --> 00:47:07,480
So just the name of
the human here, Zamyla,

966
00:47:07,480 --> 00:47:12,030
that is a sequence of
characters, Z-A-M-Y-L-A.

967
00:47:12,030 --> 00:47:16,020
And now let's suppose that Zamyla's name
is being stored inside of a computer

968
00:47:16,020 --> 00:47:16,880
program.

969
00:47:16,880 --> 00:47:20,830
>> Well, it stands to reason that we should
be able to look at those characters

970
00:47:20,830 --> 00:47:21,590
individually.

971
00:47:21,590 --> 00:47:24,710
So I'm just going to draw a little
box around Zamyla's name here.

972
00:47:24,710 --> 00:47:31,580
And it is the case in C that when you
have a string, like Zamyla-- and maybe

973
00:47:31,580 --> 00:47:34,940
that string has come back from
a function like get string,

974
00:47:34,940 --> 00:47:38,540
you can actually manipulate
it character by character.

975
00:47:38,540 --> 00:47:42,070
>> Now, this is germane for the
conversation at hand, because

976
00:47:42,070 --> 00:47:46,420
in cryptography if you want to change
A to B, and B to C, and C to D,

977
00:47:46,420 --> 00:47:49,650
and so forth, you need to be able
to look at the individual characters

978
00:47:49,650 --> 00:47:50,190
in a string.

979
00:47:50,190 --> 00:47:52,695
You need to be able to change
the Z to something else, the A

980
00:47:52,695 --> 00:47:55,280
to something else, the M to
something else, and so on.

981
00:47:55,280 --> 00:47:58,000
And so we need a way,
programmatically, so

982
00:47:58,000 --> 00:48:03,020
to speak, in C to be able to change
and look at individual letters.

983
00:48:03,020 --> 00:48:05,690
And we can do this as follows.

984
00:48:05,690 --> 00:48:08,340
>> Let me go head back in CS50 IDE.

985
00:48:08,340 --> 00:48:11,130
And let me go ahead
and create a new file

986
00:48:11,130 --> 00:48:16,134
that I'll call this time string0,
as our first such example, dot c.

987
00:48:16,134 --> 00:48:18,300
And I'm going to go ahead
and whip it up as follows.

988
00:48:18,300 --> 00:48:22,870
>> So include CS50.h, and
then include standard io.h,

989
00:48:22,870 --> 00:48:25,990
which I'm almost always going to
be using in my programs, at least

990
00:48:25,990 --> 00:48:26,780
initially.

991
00:48:26,780 --> 00:48:32,180
int main void, and then in here I'm
going to do strings gets get string.

992
00:48:32,180 --> 00:48:35,260
And then I'm going to
go ahead and do this.

993
00:48:35,260 --> 00:48:37,460
I want to go ahead
and, as a sanity check,

994
00:48:37,460 --> 00:48:43,607
just say, hello, percent s,
semi-colon, makes string 0.

995
00:48:43,607 --> 00:48:44,690
Uh oh, what did I do here?

996
00:48:44,690 --> 00:48:45,930
Oh, I didn't plug it in.

997
00:48:45,930 --> 00:48:48,120
So lesson learned, that
was not intentional.

998
00:48:48,120 --> 00:48:52,480
>> So error, more percent
conversions than data arguments.

999
00:48:52,480 --> 00:48:54,940
And this is where, in
line 7-- OK, so I have,

1000
00:48:54,940 --> 00:48:56,690
quote unquote, that's
my string to printf.

1001
00:48:56,690 --> 00:48:58,151
I've got a percent sign.

1002
00:48:58,151 --> 00:48:59,650
But I'm missing the second argument.

1003
00:48:59,650 --> 00:49:03,190
>> I'm missing the comma s, which
I did have in previous examples.

1004
00:49:03,190 --> 00:49:06,650
So a good opportunity to fix
one more mistake, accidentally.

1005
00:49:06,650 --> 00:49:09,950
And now let me run
string0, type in Zamyla.

1006
00:49:09,950 --> 00:49:10,970
OK, hello Zamyla.

1007
00:49:10,970 --> 00:49:14,144
>> So we've run this kind of program
a few different times now.

1008
00:49:14,144 --> 00:49:16,310
But let's do something a
little different this time.

1009
00:49:16,310 --> 00:49:19,450
Instead of just printing Zamyla's
whole name out with printf,

1010
00:49:19,450 --> 00:49:21,350
let's do it character by character.

1011
00:49:21,350 --> 00:49:22,700
>> I'm going to use a for loop.

1012
00:49:22,700 --> 00:49:26,160
And I'm going to give myself
a counting variable, called i.

1013
00:49:26,160 --> 00:49:33,530
And I'm going to keep iterating, so
long as i is less than the length of s.

1014
00:49:33,530 --> 00:49:35,930
>> It turns out, we didn't
do this last time,

1015
00:49:35,930 --> 00:49:39,100
that c comes with a
function called Stirling.

1016
00:49:39,100 --> 00:49:42,690
Back in the day, and in general
still when implementing functions,

1017
00:49:42,690 --> 00:49:45,405
humans will often choose very
succinct names that kind of sound

1018
00:49:45,405 --> 00:49:48,280
like what you want, even though it's
missing a few vowels or letters.

1019
00:49:48,280 --> 00:49:50,660
So Stirling is the
name of a function that

1020
00:49:50,660 --> 00:49:53,880
takes an argument between
parentheses that should be a string.

1021
00:49:53,880 --> 00:49:56,910
And it just returns an integer,
the length of that string.

1022
00:49:56,910 --> 00:50:00,580
>> So this for loop on line 7 is going
to start counting at i equals 0.

1023
00:50:00,580 --> 00:50:02,530
It's going to increment
i on each iteration

1024
00:50:02,530 --> 00:50:04,350
by 1, as we've been doing a few times.

1025
00:50:04,350 --> 00:50:06,780
But it's going to only do
this up until the point

1026
00:50:06,780 --> 00:50:09,660
when i is the length
of the string itself.

1027
00:50:09,660 --> 00:50:14,520
>> So this is a way of, ultimately,
iterating over the characters

1028
00:50:14,520 --> 00:50:17,430
in the string as is follows.

1029
00:50:17,430 --> 00:50:20,670
I'm going to print out not a
whole string, but percent c,

1030
00:50:20,670 --> 00:50:22,860
a single character
followed by a new line.

1031
00:50:22,860 --> 00:50:24,880
And then I'm going to
go ahead, and I need

1032
00:50:24,880 --> 00:50:29,080
to say I want to print
ith character of s.

1033
00:50:29,080 --> 00:50:33,450
>> So if i is the variable that indicates
the index of the string, where

1034
00:50:33,450 --> 00:50:37,230
you are in it, I need to be able to
say, give me the ith character of s.

1035
00:50:37,230 --> 00:50:40,390
And c has a way of doing
this with square brackets.

1036
00:50:40,390 --> 00:50:43,679
You simply say the name of the
string, which in this case is s.

1037
00:50:43,679 --> 00:50:46,970
Then you use square brackets, which are
usually just above your Return or Enter

1038
00:50:46,970 --> 00:50:48,110
key on the keyboard.

1039
00:50:48,110 --> 00:50:52,410
And then you put the index of the
character that you want to print.

1040
00:50:52,410 --> 00:50:55,960
So the index is going to be a
number-- 0, or 1, or 2, or 3, or dot,

1041
00:50:55,960 --> 00:50:57,590
dot, dot, some other number.

1042
00:50:57,590 --> 00:51:00,920
>> And we ensure that it's going to
be the right number, because I

1043
00:51:00,920 --> 00:51:02,360
start counting at 0.

1044
00:51:02,360 --> 00:51:07,020
And by default, the first character
in a string is by convention 0.

1045
00:51:07,020 --> 00:51:09,230
And the second character is bracket 1.

1046
00:51:09,230 --> 00:51:11,120
And the third character is bracket 2.

1047
00:51:11,120 --> 00:51:13,630
And you don't want to go too
far, but we won't because we're

1048
00:51:13,630 --> 00:51:17,780
going to only increment i until it
equals the length of the string.

1049
00:51:17,780 --> 00:51:20,210
And at which point,
this for loop will stop.

1050
00:51:20,210 --> 00:51:25,550
>> So let me go ahead and save this
program, and run make string 0.

1051
00:51:25,550 --> 00:51:28,400
But I screwed up.

1052
00:51:28,400 --> 00:51:35,390
Implicitly declaring library function
Stirling with type such and such-- now,

1053
00:51:35,390 --> 00:51:36,430
this sounds familiar.

1054
00:51:36,430 --> 00:51:37,440
But it's not printf.

1055
00:51:37,440 --> 00:51:38,540
And it's not get string.

1056
00:51:38,540 --> 00:51:40,480
>> I didn't screw up in
the same way this time.

1057
00:51:40,480 --> 00:51:45,100
But notice down here a little down
further, include the header string.h,

1058
00:51:45,100 --> 00:51:47,210
explicitly provide the
declaration for Stirling.

1059
00:51:47,210 --> 00:51:48,820
So there is actually a clue in there.

1060
00:51:48,820 --> 00:51:51,670
>> And indeed it turns out
there's another header file

1061
00:51:51,670 --> 00:51:53,970
that we've not used
in class yet, but it's

1062
00:51:53,970 --> 00:51:56,480
among those available
to you, called string.h.

1063
00:51:56,480 --> 00:52:00,930
And in that file, string.h
is Stirling declared.

1064
00:52:00,930 --> 00:52:05,220
So let me go ahead and
save this, make string

1065
00:52:05,220 --> 00:52:08,040
0-- nice, no error messages this time.

1066
00:52:08,040 --> 00:52:12,290
>> ./string0 Zamyla, and
I'm about to hit Enter,

1067
00:52:12,290 --> 00:52:16,710
at which point getstring is going
to return the string, put it in s.

1068
00:52:16,710 --> 00:52:21,890
Then that for loop is going to iterate
over S's characters one at a time,

1069
00:52:21,890 --> 00:52:28,420
and print them one per line, because
I had that backslash n at the end.

1070
00:52:28,420 --> 00:52:34,530
So I could omit that backslash
n, and then just print Zamyla all

1071
00:52:34,530 --> 00:52:37,460
in the same line,
effectively reimplementing

1072
00:52:37,460 --> 00:52:38,999
printf, which isn't all that useful.

1073
00:52:38,999 --> 00:52:40,540
But in this case, I've not done that.

1074
00:52:40,540 --> 00:52:43,610
I've actually printed one
character at a time, one per line,

1075
00:52:43,610 --> 00:52:45,400
so that we actually see the effect.

1076
00:52:45,400 --> 00:52:46,900
>> But I should note one thing here.

1077
00:52:46,900 --> 00:52:48,930
And we'll come back to
this in a future week.

1078
00:52:48,930 --> 00:52:52,650
It turns out that this
code is potentially buggy.

1079
00:52:52,650 --> 00:52:56,560
>> It turns out that get string
and some other functions in life

1080
00:52:56,560 --> 00:53:00,280
don't necessarily always
return what you're expecting.

1081
00:53:00,280 --> 00:53:03,010
We know from class last
time in this that get

1082
00:53:03,010 --> 00:53:04,960
string is supposed to return a string.

1083
00:53:04,960 --> 00:53:09,900
But what if the user types out such
a long word, or paragraph, or essay

1084
00:53:09,900 --> 00:53:13,010
that there's just not enough
memory in the computer to fit it.

1085
00:53:13,010 --> 00:53:15,410
>> Like, what if something goes
wrong underneath the hood?

1086
00:53:15,410 --> 00:53:18,400
It might not happen often,
but it could happen once

1087
00:53:18,400 --> 00:53:21,520
in a while, very infrequently.

1088
00:53:21,520 --> 00:53:25,460
And so it turns out that get string
and functions like it don't necessarily

1089
00:53:25,460 --> 00:53:26,380
always return strings.

1090
00:53:26,380 --> 00:53:30,680
They might return some error value,
some sentinel value so to speak,

1091
00:53:30,680 --> 00:53:32,612
that indicates that
something has gone wrong.

1092
00:53:32,612 --> 00:53:35,320
And you would only know this from
having learned it in class now,

1093
00:53:35,320 --> 00:53:37,700
or having read some more documentation.

1094
00:53:37,700 --> 00:53:43,120
It turns out that get string
can return a value called null.

1095
00:53:43,120 --> 00:53:46,220
Null is a special value that we'll
come back to in a future week.

1096
00:53:46,220 --> 00:53:50,420
But for now, just know that if I want
to be really proper in moving forward

1097
00:53:50,420 --> 00:53:52,650
using get string, I
shouldn't just call it,

1098
00:53:52,650 --> 00:53:56,870
and blindly use its return value,
trusting that it's a string.

1099
00:53:56,870 --> 00:53:59,420
>> I should first say,
hey, wait a minute, only

1100
00:53:59,420 --> 00:54:03,380
proceed if s does not equal
null, where null, again,

1101
00:54:03,380 --> 00:54:04,660
is just some special value.

1102
00:54:04,660 --> 00:54:07,770
And it's the only special value you
need to worry about for get string.

1103
00:54:07,770 --> 00:54:10,900
Get string is either going
to return a string or null.

1104
00:54:10,900 --> 00:54:17,219
>> And this exclamation point equals sign
you might know from maybe math class

1105
00:54:17,219 --> 00:54:20,510
that you might draw an equal sign with
a line through it to indicate not equal.

1106
00:54:20,510 --> 00:54:23,135
That's not generally a character
you can type on your keyboard.

1107
00:54:23,135 --> 00:54:26,480
And so in most programming languages,
when you want to say not equal,

1108
00:54:26,480 --> 00:54:29,160
you use an exclamation point,
otherwise known as bang.

1109
00:54:29,160 --> 00:54:33,180
So you say bang equals, which
means not equals, logically.

1110
00:54:33,180 --> 00:54:38,060
It's just like there's not a greater
than, or equal to, or less than

1111
00:54:38,060 --> 00:54:41,270
or equal to key on your keyboard
that does it all in one symbol.

1112
00:54:41,270 --> 00:54:44,020
So that's why, in past examples,
you did an open bracket, and then

1113
00:54:44,020 --> 00:54:48,670
an equal sign, in order to do
greater than or, say, less than.

1114
00:54:48,670 --> 00:54:49,910
>> So what's the takeaway here?

1115
00:54:49,910 --> 00:54:53,880
This is simply a way now of
introducing this syntax, this feature,

1116
00:54:53,880 --> 00:54:57,390
iterating over individual
characters in a string.

1117
00:54:57,390 --> 00:55:00,260
And just like those square
brackets allow you to get at them,

1118
00:55:00,260 --> 00:55:03,790
consider those square brackets as
kind of hinting at this underlying

1119
00:55:03,790 --> 00:55:06,040
design, whereby every
character inside of a string

1120
00:55:06,040 --> 00:55:10,180
is kind of boxed in somewhere underneath
the hood in your computer's memory.

1121
00:55:10,180 --> 00:55:12,340
>> But let's make a variant of this.

1122
00:55:12,340 --> 00:55:14,880
It turns out that this
program is correct.

1123
00:55:14,880 --> 00:55:18,810
So per CS50's axes for evaluating
code, this is correct now.

1124
00:55:18,810 --> 00:55:22,959
Especially now that I'm checking for
null, this program should never crash.

1125
00:55:22,959 --> 00:55:24,500
And I just know that from experience.

1126
00:55:24,500 --> 00:55:28,040
But there's nothing else that
we can really go wrong here.

1127
00:55:28,040 --> 00:55:31,860
But it's not very well-designed,
because let's go back to basics.

1128
00:55:31,860 --> 00:55:34,450
>> First, principles--
what does a for loop do?

1129
00:55:34,450 --> 00:55:36,290
A for loop does three things.

1130
00:55:36,290 --> 00:55:39,340
It initializes some
value, if you ask it to.

1131
00:55:39,340 --> 00:55:41,770
It checks a condition.

1132
00:55:41,770 --> 00:55:45,380
And then after each
iteration, after each cycle,

1133
00:55:45,380 --> 00:55:49,330
it increments some
value, or values, here.

1134
00:55:49,330 --> 00:55:50,600
>> So what does that mean?

1135
00:55:50,600 --> 00:55:52,940
We initialize i to 0.

1136
00:55:52,940 --> 00:55:58,610
We check and make sure i is less than
the length of s, which is Z-A-M-Y-L-A,

1137
00:55:58,610 --> 00:55:59,900
so which is less than 6.

1138
00:55:59,900 --> 00:56:02,590
And, indeed, 0 as less than 6.

1139
00:56:02,590 --> 00:56:05,580
>> We print out Z from Zamyla's name.

1140
00:56:05,580 --> 00:56:08,080
Then we increment i from 0 to 1.

1141
00:56:08,080 --> 00:56:11,290
We then check, is 1 less
than the length of s?

1142
00:56:11,290 --> 00:56:13,270
The length of s is 6.

1143
00:56:13,270 --> 00:56:13,950
Yes, it is.

1144
00:56:13,950 --> 00:56:16,880
>> So we print a in Zamyla's name, ZA.

1145
00:56:16,880 --> 00:56:20,090
We increment i from 0, to 1, to 2.

1146
00:56:20,090 --> 00:56:23,720
We then check, is 2 less than
the length of Zamyla's name.

1147
00:56:23,720 --> 00:56:25,380
6- so 2 is less than 6.

1148
00:56:25,380 --> 00:56:30,460
Yes, let's print out now M in
Zamyla's name, the third character.

1149
00:56:30,460 --> 00:56:34,110
>> The key here is that on each
iteration of the story, I'm checking,

1150
00:56:34,110 --> 00:56:37,810
is i less than the length of Zamyla?

1151
00:56:37,810 --> 00:56:40,350
But the catch is that
Stirling is not a property.

1152
00:56:40,350 --> 00:56:43,100
Those of you who have programmed
before in Java or other languages

1153
00:56:43,100 --> 00:56:46,310
might know the length of a string is
a property, just some read only value.

1154
00:56:46,310 --> 00:56:50,220
>> In C in this case, if this is
a function that is literally

1155
00:56:50,220 --> 00:56:53,520
counting the number of
characters in Zamyla every time

1156
00:56:53,520 --> 00:56:54,740
we call that function.

1157
00:56:54,740 --> 00:56:58,500
Every time you ask the computer to use
Stirling, it's taking a look at Zamyla,

1158
00:56:58,500 --> 00:57:01,960
and saying Z-A-M-Y-L-A, 6.

1159
00:57:01,960 --> 00:57:02,962
And it returns 6.

1160
00:57:02,962 --> 00:57:04,920
The next time you call
it inside that for loop,

1161
00:57:04,920 --> 00:57:08,610
it's going to look at Zamyla
again, say Z-A-M-Y-L-A, 6.

1162
00:57:08,610 --> 00:57:10,320
And it's going to return 6.

1163
00:57:10,320 --> 00:57:12,980
So what's stupid about this design?

1164
00:57:12,980 --> 00:57:17,700
>> Why is my code not a 5 out of 5
for design right now, so to speak?

1165
00:57:17,700 --> 00:57:20,600
Well, I'm asking a
question unnecessarily.

1166
00:57:20,600 --> 00:57:23,030
I'm doing more work than I need to.

1167
00:57:23,030 --> 00:57:25,370
>> So even though the
answer is correct, I am

1168
00:57:25,370 --> 00:57:29,560
asking the computer, what is
the length of Zamyla again,

1169
00:57:29,560 --> 00:57:31,380
and again, and again, and again?

1170
00:57:31,380 --> 00:57:33,980
And that answer is
never going to change.

1171
00:57:33,980 --> 00:57:35,900
It's always going to be 6.

1172
00:57:35,900 --> 00:57:39,730
>> So a better solution than this
would be this next version.

1173
00:57:39,730 --> 00:57:43,390
Let me go ahead and put it in a
separate file called string1.c,

1174
00:57:43,390 --> 00:57:44,990
just to keep it separate.

1175
00:57:44,990 --> 00:57:47,260
And it turns out in a for
loop, you can actually

1176
00:57:47,260 --> 00:57:50,210
declare multiple variables at once.

1177
00:57:50,210 --> 00:57:53,460
>> So I'm going to keep i and set it to 0.

1178
00:57:53,460 --> 00:57:56,190
But I'm also going to
add a comma, and say,

1179
00:57:56,190 --> 00:58:01,050
give me a variable called n, whose
value equals the string length of s.

1180
00:58:01,050 --> 00:58:09,410
And now, please make my condition
so long as i is less than n.

1181
00:58:09,410 --> 00:58:14,140
>> So in this way, the logic is
identical at the end of the day.

1182
00:58:14,140 --> 00:58:18,280
But I am remembering the
value 6, in this case.

1183
00:58:18,280 --> 00:58:19,780
What is the length of Zamyla's name?

1184
00:58:19,780 --> 00:58:20,860
And I'm putting it at n.

1185
00:58:20,860 --> 00:58:23,050
>> And I'm still checking
the condition every time.

1186
00:58:23,050 --> 00:58:24,300
Is 0 less than 6?

1187
00:58:24,300 --> 00:58:25,600
Is 1 less than 6?

1188
00:58:25,600 --> 00:58:28,600
Is 2 less than 6, and so forth?

1189
00:58:28,600 --> 00:58:31,914
>> But I'm not asking the computer
again, and again, what's

1190
00:58:31,914 --> 00:58:33,080
the length of Zamyla's name?

1191
00:58:33,080 --> 00:58:34,320
What's the length of Zamyla's name?

1192
00:58:34,320 --> 00:58:35,986
What's the length of this Zamyla's name?

1193
00:58:35,986 --> 00:58:40,440
I'm literally remembering that first and
only answer in this second variable n.

1194
00:58:40,440 --> 00:58:45,280
So this now would be not only
correct, but also well-designed.

1195
00:58:45,280 --> 00:58:46,670
>> Now, what about style?

1196
00:58:46,670 --> 00:58:48,866
I've named my variables
pretty well, I would say.

1197
00:58:48,866 --> 00:58:50,240
They're super succinct right now.

1198
00:58:50,240 --> 00:58:52,090
And that's totally fine.

1199
00:58:52,090 --> 00:58:55,120
>> If you only have one
string in a program,

1200
00:58:55,120 --> 00:58:56,860
you might as well call it s for string.

1201
00:58:56,860 --> 00:58:59,370
If you only have one variable
for counting in a program,

1202
00:58:59,370 --> 00:59:00,710
you might as well call it i.

1203
00:59:00,710 --> 00:59:03,500
If you have a length, n
is super common as well.

1204
00:59:03,500 --> 00:59:05,800
But I haven't commented any of my code.

1205
00:59:05,800 --> 00:59:09,200
>> I've not informed the reader--
whether that's my TF, or TA,

1206
00:59:09,200 --> 00:59:12,460
or just colleague-- what is supposed
to be going on in this program.

1207
00:59:12,460 --> 00:59:15,760
And so to get good style,
what I would want to do

1208
00:59:15,760 --> 00:59:24,580
is this-- something
like ask user for input.

1209
00:59:24,580 --> 00:59:26,670
And I could rewrite
this any number of ways.

1210
00:59:26,670 --> 00:59:35,630
>> Make sure s-- make sure get
string returned a string.

1211
00:59:35,630 --> 00:59:40,280
And then in here-- and this is perhaps
the most important comment-- iterate

1212
00:59:40,280 --> 00:59:44,450
over the characters in s one at a time.

1213
00:59:44,450 --> 00:59:47,060
And I could use any
choice of English language

1214
00:59:47,060 --> 00:59:49,650
here to describe each
of these chunks of code.

1215
00:59:49,650 --> 00:59:52,740
>> Notice that I haven't put a
comment on every line of code,

1216
00:59:52,740 --> 00:59:55,690
really just on the interesting
ones, the ones that

1217
00:59:55,690 --> 00:59:59,460
have some meaning that I might
want to make super clear to someone

1218
00:59:59,460 --> 01:00:00,460
reading my code.

1219
01:00:00,460 --> 01:00:02,920
And why are you calling get
string ask user for input?

1220
01:00:02,920 --> 01:00:05,450
Even that one is not necessarily
all that descriptive.

1221
01:00:05,450 --> 01:00:09,340
But it helps tell a story, because the
second line in the story is, make sure

1222
01:00:09,340 --> 01:00:10,740
get string returned a string.

1223
01:00:10,740 --> 01:00:14,260
>> And the third line in the story is,
iterate over the characters in s one

1224
01:00:14,260 --> 01:00:15,380
at a time.

1225
01:00:15,380 --> 01:00:17,920
And now just for good measure,
I'm going to go ahead and add

1226
01:00:17,920 --> 01:00:24,560
one more comment that just
says print i-th character in s.

1227
01:00:24,560 --> 01:00:26,520
Now, what have I done
at the end of the day?

1228
01:00:26,520 --> 01:00:29,190
>> I have added some English
words in the form of comments.

1229
01:00:29,190 --> 01:00:32,700
The slash slash symbol means, hey,
computer this is for the human,

1230
01:00:32,700 --> 01:00:33,820
not for you, the computer.

1231
01:00:33,820 --> 01:00:35,119
So they're ignored logically.

1232
01:00:35,119 --> 01:00:35,910
They're just there.

1233
01:00:35,910 --> 01:00:39,830
>> And, indeed, CS50 IDE shows them as
gray, as being useful, but not key

1234
01:00:39,830 --> 01:00:41,000
to the program.

1235
01:00:41,000 --> 01:00:42,570
Notice what you can now do.

1236
01:00:42,570 --> 01:00:44,950
Whether you know C
programming or not, you

1237
01:00:44,950 --> 01:00:47,722
can just stand back at this
program, and skim the comments.

1238
01:00:47,722 --> 01:00:50,180
Ask user for input, make sure
get string returned a string,

1239
01:00:50,180 --> 01:00:53,009
iterate over the characters in s
one at a time, print the character

1240
01:00:53,009 --> 01:00:55,550
i-th character in s-- you don't
even have to look at the code

1241
01:00:55,550 --> 01:00:57,270
to understand what this program does.

1242
01:00:57,270 --> 01:01:00,280
And, better yet, if you yourself look
at this program in a week or two,

1243
01:01:00,280 --> 01:01:02,280
or a month, or a year,
you too don't have

1244
01:01:02,280 --> 01:01:04,420
to stare at the code,
trying to remember,

1245
01:01:04,420 --> 01:01:06,630
what was I trying to do with this code?

1246
01:01:06,630 --> 01:01:07,770
>> You've told yourself.

1247
01:01:07,770 --> 01:01:11,660
You've described it for yourself,
or some colleague, or TA, or TF.

1248
01:01:11,660 --> 01:01:14,860
And so this would now be
correct, and good design,

1249
01:01:14,860 --> 01:01:18,210
and ultimately good style as well.

1250
01:01:18,210 --> 01:01:19,990
So do keep that in mind.

1251
01:01:19,990 --> 01:01:22,200
>> So there's one other
thing I'm going to do here

1252
01:01:22,200 --> 01:01:28,240
that can now reveal exactly what's
going on underneath the hood.

1253
01:01:28,240 --> 01:01:30,390
So there's this feature
in C, and other languages,

1254
01:01:30,390 --> 01:01:33,010
called typecasting
that either implicitly

1255
01:01:33,010 --> 01:01:37,250
or explicitly allows you to convert
from one data type to another.

1256
01:01:37,250 --> 01:01:39,800
We've been dealing so
far today with strings.

1257
01:01:39,800 --> 01:01:41,250
>> And strings are characters.

1258
01:01:41,250 --> 01:01:44,910
But recall from week
0, what are characters?

1259
01:01:44,910 --> 01:01:49,334
Characters are just an abstraction
on top of numbers-- decimal numbers,

1260
01:01:49,334 --> 01:01:52,500
and decimal numbers are really just an
abstraction on top of binary numbers,

1261
01:01:52,500 --> 01:01:53,720
as we defined it.

1262
01:01:53,720 --> 01:01:55,540
>> So characters are numbers.

1263
01:01:55,540 --> 01:01:58,410
And numbers are characters,
just depending on the context.

1264
01:01:58,410 --> 01:02:01,250
And it turns out that inside
of a computer program,

1265
01:02:01,250 --> 01:02:06,830
can you specify how you want to look
at the bits inside of that program?

1266
01:02:06,830 --> 01:02:10,400
>> Recall from week 0 that we had
Ascii, which is just this code

1267
01:02:10,400 --> 01:02:11,620
mapping letters to numbers.

1268
01:02:11,620 --> 01:02:13,660
And we said, capital A is 65.

1269
01:02:13,660 --> 01:02:15,860
Capital B is 66, and so forth.

1270
01:02:15,860 --> 01:02:20,500
>> And notice, we essentially have chars on
the top row here, as C would call them,

1271
01:02:20,500 --> 01:02:23,400
characters, and then
ints on the second row.

1272
01:02:23,400 --> 01:02:28,180
And it turns out you can convert
seamlessly between the two, typically.

1273
01:02:28,180 --> 01:02:30,042
And if we want to do
this deliberately, we

1274
01:02:30,042 --> 01:02:31,750
might want to tackle
something like this.

1275
01:02:31,750 --> 01:02:33,590
>> We might want to convert
upper case to lower

1276
01:02:33,590 --> 01:02:35,330
case, or lower case to upper case.

1277
01:02:35,330 --> 01:02:38,000
And it turns out there's
actually a pattern here

1278
01:02:38,000 --> 01:02:39,900
we can embrace in just a moment.

1279
01:02:39,900 --> 01:02:44,120
But let's look first at an
example of doing this explicitly.

1280
01:02:44,120 --> 01:02:46,340
>> I'm going to go back into CS50 IDE.

1281
01:02:46,340 --> 01:02:50,640
I'm going to create a
file called Ascii 0.c.

1282
01:02:50,640 --> 01:02:55,960
And I'm going to go ahead and add my
standard io.h at the top, int main void

1283
01:02:55,960 --> 01:02:57,370
at the top of my function.

1284
01:02:57,370 --> 01:03:02,700
And then I'm just going to do the
following-- a for loop from i equals,

1285
01:03:02,700 --> 01:03:04,610
let's say, 65.

1286
01:03:04,610 --> 01:03:10,460
>> And then i is going to be less than
65, plus 26 letters in the alphabet.

1287
01:03:10,460 --> 01:03:12,640
So I'll let the computer
do the math for me there.

1288
01:03:12,640 --> 01:03:15,100
And then inside this loop,
what am I going to print?

1289
01:03:15,100 --> 01:03:19,230
>> %c is % i backslash n.

1290
01:03:19,230 --> 01:03:21,290
And now I want to plug in two values.

1291
01:03:21,290 --> 01:03:24,530
I've temporarily put question
marks there to invite the question.

1292
01:03:24,530 --> 01:03:29,940
>> I want to iterate from 65 onward
for 26 letters of the alphabet,

1293
01:03:29,940 --> 01:03:35,190
printing out on each iteration that
character's integral equivalent.

1294
01:03:35,190 --> 01:03:38,299
In other words, I want to
iterate over 26 numbers printing

1295
01:03:38,299 --> 01:03:41,590
what the Ascii character is, the letter,
and what the corresponding number is--

1296
01:03:41,590 --> 01:03:44,650
really just recreating
the chart from that slide.

1297
01:03:44,650 --> 01:03:47,010
So what should these question marks be?

1298
01:03:47,010 --> 01:03:51,760
>> Well, it turns out that the second
one should just be the variable i.

1299
01:03:51,760 --> 01:03:53,860
I want to see that as a number.

1300
01:03:53,860 --> 01:03:58,920
And the middle argument
here, I can tell the computer

1301
01:03:58,920 --> 01:04:03,470
to treat that integer
i as a character, so as

1302
01:04:03,470 --> 01:04:05,880
to substitute it here for percent C.

1303
01:04:05,880 --> 01:04:07,990
>> In other words, if I, the
human programmer, know

1304
01:04:07,990 --> 01:04:09,865
these are just numbers
at the end of the day.

1305
01:04:09,865 --> 01:04:12,500
And I know that 65 should
map to some character.

1306
01:04:12,500 --> 01:04:15,310
With this explicit cast,
with a parenthesis,

1307
01:04:15,310 --> 01:04:18,840
the name of the data type you want to
convert to, and a closed parenthesis,

1308
01:04:18,840 --> 01:04:21,200
you can tell the
computer, hey, computer,

1309
01:04:21,200 --> 01:04:24,130
convert this integer to a char.

1310
01:04:24,130 --> 01:04:26,250
>> So when I run this
program after compiling,

1311
01:04:26,250 --> 01:04:29,740
let's see what I get-- make Ascii 0.

1312
01:04:29,740 --> 01:04:33,020
Darn it, what did I do wrong here?

1313
01:04:33,020 --> 01:04:35,884
Use of undeclared identifier,
all right, not intentional,

1314
01:04:35,884 --> 01:04:37,800
but let's see if we can't
reason through this.

1315
01:04:37,800 --> 01:04:41,220
>> So line five-- so I didn't get
very far before screwing up.

1316
01:04:41,220 --> 01:04:42,140
That's OK.

1317
01:04:42,140 --> 01:04:46,560
So line 5 for i equals 65-- I see.

1318
01:04:46,560 --> 01:04:50,130
So remember that in C, unlike some
languages if you have prior programming

1319
01:04:50,130 --> 01:04:52,190
experience, you have
to tell the computer,

1320
01:04:52,190 --> 01:04:55,040
unlike Scratch, what
type of variable it is.

1321
01:04:55,040 --> 01:04:56,860
>> And I forgot a key phrase here.

1322
01:04:56,860 --> 01:04:59,200
In line five, I've started using i.

1323
01:04:59,200 --> 01:05:01,560
But I haven't told C
what data type it is.

1324
01:05:01,560 --> 01:05:04,570
So I'm going to go in here and
say, ah, make it an integer.

1325
01:05:04,570 --> 01:05:07,050
>> Now I'm going to go ahead and recompile.

1326
01:05:07,050 --> 01:05:08,080
That fixed that.

1327
01:05:08,080 --> 01:05:12,660
./ascii0 Enter, that's kind of cool.

1328
01:05:12,660 --> 01:05:15,360
Not only is it super fast to
ask the computer this question,

1329
01:05:15,360 --> 01:05:18,885
rather than looking it up on a slide,
it printed out one per line, A is 65,

1330
01:05:18,885 --> 01:05:24,860
B is 66, all the way down-- since I
did this 26 times-- to the letters z,

1331
01:05:24,860 --> 01:05:25,630
which is 90.

1332
01:05:25,630 --> 01:05:27,790
And, in fact, slightly
more intelligent would

1333
01:05:27,790 --> 01:05:31,030
have been for me not to rely
on the computer to add 26.

1334
01:05:31,030 --> 01:05:34,060
I could have just done
90 as well, so long

1335
01:05:34,060 --> 01:05:37,390
as I don't make the same mistake twice.

1336
01:05:37,390 --> 01:05:41,880
I want to go up through
z, not just up through y.

1337
01:05:41,880 --> 01:05:44,000
>> So that's an explicit cast.

1338
01:05:44,000 --> 01:05:47,860
It turns out that this
isn't even necessary.

1339
01:05:47,860 --> 01:05:52,480
Let me go ahead and rerun this
compiler, and rerun Ascii 0.

1340
01:05:52,480 --> 01:05:54,940
It turns out that C is pretty smart.

1341
01:05:54,940 --> 01:05:57,150
>> And printf, in particular,
is pretty smart.

1342
01:05:57,150 --> 01:06:01,260
If you just pass an i twice
for both placeholders, printf

1343
01:06:01,260 --> 01:06:04,510
will realize, oh, well I know you
gave me an integer-- some number,

1344
01:06:04,510 --> 01:06:06,380
like 65, or 90, or whatever.

1345
01:06:06,380 --> 01:06:10,170
But I see that you want me to
format that number like a character.

1346
01:06:10,170 --> 01:06:16,460
And so printf can implicitly cast
the int to a char for you as well.

1347
01:06:16,460 --> 01:06:19,360
So that's not a problem at all.

1348
01:06:19,360 --> 01:06:23,100
>> But notice, because of this equivalence
we can actually do this as well.

1349
01:06:23,100 --> 01:06:26,520
Let me go ahead and make one
other version of this-- Ascii 1.c.

1350
01:06:26,520 --> 01:06:31,800
And instead of iterating over
integers, can really blow your mind

1351
01:06:31,800 --> 01:06:33,610
by iterating over characters.

1352
01:06:33,610 --> 01:06:37,660
If a char c gets capital A, I
want to go ahead and do this,

1353
01:06:37,660 --> 01:06:41,740
so long as C is less than or equal
to capital Z. And on each iteration

1354
01:06:41,740 --> 01:06:45,690
I want to increment C, I can
now in my printf line here

1355
01:06:45,690 --> 01:06:51,320
say, percent C is
percent i again, comma C.

1356
01:06:51,320 --> 01:06:57,200
>> And now, I can go the other direction,
casting the character explicitly

1357
01:06:57,200 --> 01:06:58,500
to an integer.

1358
01:06:58,500 --> 01:07:00,560
So, again, why would you do this?

1359
01:07:00,560 --> 01:07:03,830
It's a little weird to sort of
count in terms of characters.

1360
01:07:03,830 --> 01:07:07,430
>> But if you understand what's
going on underneath the hood,

1361
01:07:07,430 --> 01:07:08,430
there's really no magic.

1362
01:07:08,430 --> 01:07:13,060
You're just saying, hey, computer give
me a variable called C of type char.

1363
01:07:13,060 --> 01:07:16,520
Initialize it to capital A. And
notice single quotes matter.

1364
01:07:16,520 --> 01:07:19,580
>> For characters in C, recall from
last week, you use single quotes.

1365
01:07:19,580 --> 01:07:23,720
For strings, for words,
phrases, you use double quotes.

1366
01:07:23,720 --> 01:07:27,210
OK, computer, keep doing this, so
long as the character is less than

1367
01:07:27,210 --> 01:07:28,050
or equal to z.

1368
01:07:28,050 --> 01:07:32,640
And I know from my Ascii table that all
of these Ascii codes are contiguous.

1369
01:07:32,640 --> 01:07:33,400
>> There's no gaps.

1370
01:07:33,400 --> 01:07:36,737
So it's just A through Z,
separated by one number each.

1371
01:07:36,737 --> 01:07:38,820
And then I can increment
a char, if I really want.

1372
01:07:38,820 --> 01:07:40,390
At the end of the day,
it's just a number.

1373
01:07:40,390 --> 01:07:41,030
I know this.

1374
01:07:41,030 --> 01:07:43,670
So I can just presume to add 1 to it.

1375
01:07:43,670 --> 01:07:46,940
>> And then this time, I print c,
and then the integral equivalent.

1376
01:07:46,940 --> 01:07:50,170
And I don't even need the explicit cast.

1377
01:07:50,170 --> 01:07:52,680
I can let printf and the
computer figure things out,

1378
01:07:52,680 --> 01:07:57,300
so that now if I run
make Ascii1./ascii1,

1379
01:07:57,300 --> 01:08:01,520
I get the exact same thing as well.

1380
01:08:01,520 --> 01:08:04,530
>> Useless program, though-- no one
is going to actually write software

1381
01:08:04,530 --> 01:08:07,549
in order to figure out, what was the
number that maps to A, or B, or Z?

1382
01:08:07,549 --> 01:08:10,340
You're just going to Google it, or
look it up online, or look it up

1383
01:08:10,340 --> 01:08:11,650
on a slide, or the like.

1384
01:08:11,650 --> 01:08:13,520
So where does this actually get useful?

1385
01:08:13,520 --> 01:08:15,960
>> Well, speaking of that
slide, notice there's

1386
01:08:15,960 --> 01:08:20,890
an actual pattern here between uppercase
and lowercase that was not accidental.

1387
01:08:20,890 --> 01:08:23,760
Notice that capital A is 65.

1388
01:08:23,760 --> 01:08:25,830
Lowercase a is 97.

1389
01:08:25,830 --> 01:08:29,649
And how far away is lower case a?

1390
01:08:29,649 --> 01:08:32,649
>> So 65 is how many steps away from 97?

1391
01:08:32,649 --> 01:08:36,210
So 97 minus 65 is 32.

1392
01:08:36,210 --> 01:08:37,910
So capital a is 65.

1393
01:08:37,910 --> 01:08:39,939
If you add 32 to that,
you get lowercase a.

1394
01:08:39,939 --> 01:08:43,729
And, equivalently, if you subtract 32,
you get back to capital A-- same with B

1395
01:08:43,729 --> 01:08:46,380
to little b, big C to little c.

1396
01:08:46,380 --> 01:08:50,670
>> All of these gaps are 32 apart.

1397
01:08:50,670 --> 01:08:54,450
Now, this would seem to allow us to
do something like Microsoft Word,

1398
01:08:54,450 --> 01:08:57,729
or Google Docs feature, where you
can select everything and then say,

1399
01:08:57,729 --> 01:09:00,520
change all to lowercase, or
change all to upper case,

1400
01:09:00,520 --> 01:09:03,840
or change only the first word
of a sentence to upper case.

1401
01:09:03,840 --> 01:09:07,390
We can actually do something
like that ourselves.

1402
01:09:07,390 --> 01:09:12,645
>> Let me go ahead and save a file
here called capitalize 0.c.

1403
01:09:12,645 --> 01:09:15,770
And let's go ahead and whip up a program
that does exactly that as follows.

1404
01:09:15,770 --> 01:09:18,460
So include the CS50 library.

1405
01:09:18,460 --> 01:09:21,430
And include standard I/O.

1406
01:09:21,430 --> 01:09:22,787
>> And I know this is coming soon.

1407
01:09:22,787 --> 01:09:24,870
So I'm going to put it in
there already, string.h,

1408
01:09:24,870 --> 01:09:26,960
so I have access to
things like Stirling,

1409
01:09:26,960 --> 01:09:29,620
and then int main void, as usual.

1410
01:09:29,620 --> 01:09:33,420
And then I'm going to go ahead
and do strings gets get string,

1411
01:09:33,420 --> 01:09:35,032
just to get a string from the user.

1412
01:09:35,032 --> 01:09:36,740
And then I'm going to
do my sanity check.

1413
01:09:36,740 --> 01:09:40,510
If string does not equal null,
then it's safe to proceed.

1414
01:09:40,510 --> 01:09:42,000
And what do I want to do?

1415
01:09:42,000 --> 01:09:48,700
I'm going to iterate from i equals 0,
and n up to the string length of s.

1416
01:09:48,700 --> 01:09:51,899
>> And I'm going to do this so long as
i is less than n, and i plus plus.

1417
01:09:51,899 --> 01:09:55,060
So far, I'm really just
borrowing ideas from before.

1418
01:09:55,060 --> 01:09:57,010
And now I'm going to introduce a branch.

1419
01:09:57,010 --> 01:09:59,635
>> So think back to Scratch, where
we had those forks in the road,

1420
01:09:59,635 --> 01:10:05,110
and last week in C. I'm going to
say this, if the i-th character in s

1421
01:10:05,110 --> 01:10:09,250
is greater than or
equal to lower case a,

1422
01:10:09,250 --> 01:10:13,340
and-- in Scratch you would literally
say and, but in C you say ampersand,

1423
01:10:13,340 --> 01:10:19,830
ampersand-- and the i-th character in s
is less than or equal to lower case z,

1424
01:10:19,830 --> 01:10:21,780
let's do something interesting.

1425
01:10:21,780 --> 01:10:27,020
Let's actually print out a
character with no newline

1426
01:10:27,020 --> 01:10:31,760
that is the character in the string,
the i-th character in the string.

1427
01:10:31,760 --> 01:10:37,420
>> But let's go ahead and
subtract 32 from it.

1428
01:10:37,420 --> 01:10:42,120
Else if the character in the
string that we're looking

1429
01:10:42,120 --> 01:10:45,950
is not between little a
and little z, go ahead

1430
01:10:45,950 --> 01:10:48,610
and just printed it out unchanged.

1431
01:10:48,610 --> 01:10:50,840
So we've introduced
this bracketed notation

1432
01:10:50,840 --> 01:10:53,560
for our strings to get at the
i-th character in the string.

1433
01:10:53,560 --> 01:10:57,520
>> I've added some conditional logic, like
Scratch in last week's week one, where

1434
01:10:57,520 --> 01:10:59,880
I'm just using my fundamental
understanding of what's

1435
01:10:59,880 --> 01:11:01,130
going on underneath the hood.

1436
01:11:01,130 --> 01:11:04,190
Is the i-th character of s
greater than or equal to a?

1437
01:11:04,190 --> 01:11:08,290
Like, is it 97, or 98,
or 99, and so forth?

1438
01:11:08,290 --> 01:11:11,940
>> But is it also less than or equal
to the value of lowercase z?

1439
01:11:11,940 --> 01:11:16,210
And if so, what does this line mean?

1440
01:11:16,210 --> 01:11:20,250
14, this is sort of the
germ of the whole idea,

1441
01:11:20,250 --> 01:11:23,840
capitalize the letter by
simply subtracting 32 from it,

1442
01:11:23,840 --> 01:11:29,370
in this case, because I know, per that
chart, how my numbers are represented.

1443
01:11:29,370 --> 01:11:33,925
So let's go ahead and run this,
after compiling capitalize 0.c,

1444
01:11:33,925 --> 01:11:36,210
and run capitalize 0.

1445
01:11:36,210 --> 01:11:40,300
>> Let's type in something like
Zamyla in all lowercase enter.

1446
01:11:40,300 --> 01:11:42,780
And now we have Zamyla in all uppercase.

1447
01:11:42,780 --> 01:11:45,050
Let's type in Rob in all lowercase.

1448
01:11:45,050 --> 01:11:46,674
Let's try Jason in all lowercase.

1449
01:11:46,674 --> 01:11:48,590
And we keep getting the
forced capitalization.

1450
01:11:48,590 --> 01:11:50,960
There's a minor bug that I
kind of didn't anticipate.

1451
01:11:50,960 --> 01:11:54,050
Notice my new prompt is ending up
on the same line as their names,

1452
01:11:54,050 --> 01:11:55,520
which feels a little messy.

1453
01:11:55,520 --> 01:11:59,170
>> So I'm going to go here, and
actually at the end of this program

1454
01:11:59,170 --> 01:12:02,110
print out a newline character.

1455
01:12:02,110 --> 01:12:03,160
That's all.

1456
01:12:03,160 --> 01:12:06,120
With printf, you don't need to
pass in variables or format code.

1457
01:12:06,120 --> 01:12:08,460
You can literally just print
something like a newline.

1458
01:12:08,460 --> 01:12:13,529
>> So let's go ahead and make
capitalize 0 again, rerun it, Zamyla.

1459
01:12:13,529 --> 01:12:14,820
And now it's a little prettier.

1460
01:12:14,820 --> 01:12:17,274
Now, my prompt is on its own new line.

1461
01:12:17,274 --> 01:12:18,440
So that's all fine and good.

1462
01:12:18,440 --> 01:12:19,910
So that's a good example.

1463
01:12:19,910 --> 01:12:22,700
But I don't even necessarily
need to hard code the 32.

1464
01:12:22,700 --> 01:12:23,350
You know what?

1465
01:12:23,350 --> 01:12:26,350
I could say-- I don't ever
remember what the difference is.

1466
01:12:26,350 --> 01:12:29,330
>> But I know that if I
have a lower case letter,

1467
01:12:29,330 --> 01:12:34,430
I essentially want to subtract off
whatever the distance is between little

1468
01:12:34,430 --> 01:12:39,160
a and big A, because if I assume that
all of the other letters are the same,

1469
01:12:39,160 --> 01:12:41,045
that should get the job done.

1470
01:12:41,045 --> 01:12:42,670
But rather than do that, you know what?

1471
01:12:42,670 --> 01:12:44,240
There's another way still.

1472
01:12:44,240 --> 01:12:48,090
>> If that's capitalize 1.c-- if I were
to put that into a separate file.

1473
01:12:48,090 --> 01:12:51,030
let's do capitalize 2.c as follows.

1474
01:12:51,030 --> 01:12:53,060
I'm going to really clean this up here.

1475
01:12:53,060 --> 01:12:57,420
And instead of even having to
know or care about those low level

1476
01:12:57,420 --> 01:13:01,090
implementation details, I'm instead
just going to print a character,

1477
01:13:01,090 --> 01:13:04,610
quote unquote, percent C, and
then call another function that

1478
01:13:04,610 --> 01:13:09,950
exists that takes an argument,
which is a character, like this.

1479
01:13:09,950 --> 01:13:12,630
>> It turns out in C, there's
another function call

1480
01:13:12,630 --> 01:13:15,550
to upper, which as its name
suggests takes a character

1481
01:13:15,550 --> 01:13:19,350
and makes it to its upper case
equivalent, and then returns it

1482
01:13:19,350 --> 01:13:21,410
so that printf can plug it in there.

1483
01:13:21,410 --> 01:13:25,484
And so to do this, though, I
need to introduce one other file.

1484
01:13:25,484 --> 01:13:28,400
It turns out there's another file
that you would only know from class,

1485
01:13:28,400 --> 01:13:33,020
or a textbook, or an online
reference, called C type.h.

1486
01:13:33,020 --> 01:13:38,570
>> So if I add that up among my header
files, and now re-compile this program,

1487
01:13:38,570 --> 01:13:43,040
capitalize2, ./capitalize2 Enter.

1488
01:13:43,040 --> 01:13:46,690
Let's type in Zamyla in all
lowercase, still works the same.

1489
01:13:46,690 --> 01:13:48,040
But you know what?

1490
01:13:48,040 --> 01:13:55,590
It turns out that to upper
has some other functionality.

1491
01:13:55,590 --> 01:13:58,410
>> And let me introduce this
command here, sort of awkwardly

1492
01:13:58,410 --> 01:14:00,250
named, but man for manual.

1493
01:14:00,250 --> 01:14:03,960
It turns out that most Linux computers,
as we are using here-- Linux operating

1494
01:14:03,960 --> 01:14:06,270
system-- have a command
called man, which says,

1495
01:14:06,270 --> 01:14:08,530
hey, computer, give me
the computer's manual.

1496
01:14:08,530 --> 01:14:10,680
What do you want to
look up in that manual?

1497
01:14:10,680 --> 01:14:13,840
>> I want to look up the function
called to upper, Enter.

1498
01:14:13,840 --> 01:14:16,070
And it's a little cryptic
to read sometimes.

1499
01:14:16,070 --> 01:14:18,780
But notice we're in the
Linux programmer's manual.

1500
01:14:18,780 --> 01:14:19,530
And it's all text.

1501
01:14:19,530 --> 01:14:21,905
And notice that there's the
name of the function up here.

1502
01:14:21,905 --> 01:14:25,030
It turns out it has a cousin called
to lower, which does the opposite.

1503
01:14:25,030 --> 01:14:29,710
And notice under synopsis, to use this
function the man page, so to speak,

1504
01:14:29,710 --> 01:14:32,220
is telling me that I
need to include c type.h.

1505
01:14:32,220 --> 01:14:33,630
And I knew that from practice.

1506
01:14:33,630 --> 01:14:36,210
>> Here, it's showing me the two
prototypes for the function,

1507
01:14:36,210 --> 01:14:39,070
so that if I ever want to use this
I know what they take as input,

1508
01:14:39,070 --> 01:14:40,652
and what they return as output.

1509
01:14:40,652 --> 01:14:42,360
And then if I read
the description, I see

1510
01:14:42,360 --> 01:14:44,820
in more detail what the function does.

1511
01:14:44,820 --> 01:14:48,100
But more importantly, if
I look under return value,

1512
01:14:48,100 --> 01:14:51,710
it says the value returned is
that of the converted letter,

1513
01:14:51,710 --> 01:14:57,880
or C, the original input, if
the conversion was not possible.

1514
01:14:57,880 --> 01:15:01,992
>> In other words, to upper will try
to convert a letter to upper case.

1515
01:15:01,992 --> 01:15:03,450
And if so, it's going to return it.

1516
01:15:03,450 --> 01:15:07,010
But if it can't for some reason--
maybe it's already upper case,

1517
01:15:07,010 --> 01:15:09,550
maybe it's an exclamation point
or some other punctuation--

1518
01:15:09,550 --> 01:15:12,200
it's just going to
return the original C,

1519
01:15:12,200 --> 01:15:17,340
which means I can make my code
better designed as follows.

1520
01:15:17,340 --> 01:15:20,580
>> I don't need all of
these darn lines of code.

1521
01:15:20,580 --> 01:15:22,610
All of the lines I've
just highlighted can

1522
01:15:22,610 --> 01:15:28,700
be collapsed into just one simple
line, which is this-- printf percent

1523
01:15:28,700 --> 01:15:33,510
c to upper S bracket i.

1524
01:15:33,510 --> 01:15:36,090
And this would be an
example of better design.

1525
01:15:36,090 --> 01:15:40,040
>> Why implement in 7 or 8 lines
of code, whatever it was I just

1526
01:15:40,040 --> 01:15:44,960
deleted, when you can instead collapse
all of that logic and decision making

1527
01:15:44,960 --> 01:15:49,620
into one single line, 13 now, that
relies on a library function--

1528
01:15:49,620 --> 01:15:53,430
a function that comes with C, but that
does exactly what you want it to do.

1529
01:15:53,430 --> 01:15:55,295
And, frankly, even if
it didn't come with C,

1530
01:15:55,295 --> 01:15:58,880
you could implement it yourself, as
we've seen, with get negative int

1531
01:15:58,880 --> 01:16:01,700
and get positive int last week as well.

1532
01:16:01,700 --> 01:16:03,470
>> This code now is much more readable.

1533
01:16:03,470 --> 01:16:06,670
And, indeed, if we scroll up,
look how much more compact

1534
01:16:06,670 --> 01:16:08,360
this version of my program is.

1535
01:16:08,360 --> 01:16:11,230
It's a little top heavy now,
with all these includes.

1536
01:16:11,230 --> 01:16:14,380
But that's OK, because now I'm standing
on the shoulders of programmers

1537
01:16:14,380 --> 01:16:15,300
before me.

1538
01:16:15,300 --> 01:16:18,440
And whoever it was who
implemented to upper really

1539
01:16:18,440 --> 01:16:21,470
did me a favor, much like whoever
implemented Stirling really

1540
01:16:21,470 --> 01:16:24,790
did me a favor some time ago.

1541
01:16:24,790 --> 01:16:26,970
And so now we have a
better design program

1542
01:16:26,970 --> 01:16:31,680
that implements the exact same logic.

1543
01:16:31,680 --> 01:16:35,580
>> Speaking of stirling, let
me go ahead and do this.

1544
01:16:35,580 --> 01:16:38,320
Let me go ahead and save
this file as stirling.c.

1545
01:16:38,320 --> 01:16:43,255
And it turns out, we can peel back
one other layer pretty simply now.

1546
01:16:43,255 --> 01:16:45,630
I'm going to go ahead and whip
up another program in main

1547
01:16:45,630 --> 01:16:49,759
here that simply re-implements
string length as follows.

1548
01:16:49,759 --> 01:16:52,300
So here's a line of code that
gets me a string from the user.

1549
01:16:52,300 --> 01:16:53,910
We keep using this again and again.

1550
01:16:53,910 --> 01:16:58,900
Let me give myself a variable called
n of type int that stores a number.

1551
01:16:58,900 --> 01:17:02,490
>> And let me go ahead and
do the following logic.

1552
01:17:02,490 --> 01:17:15,610
While the n-th character in s does
not equal backslash 0, go ahead

1553
01:17:15,610 --> 01:17:17,930
and increment n.

1554
01:17:17,930 --> 01:17:23,506
And then print out printf percent i n.

1555
01:17:23,506 --> 01:17:29,200
I claim that this program here,
without calling string length,

1556
01:17:29,200 --> 01:17:31,150
figures out the length of a string.

1557
01:17:31,150 --> 01:17:34,600
>> And the magic is entirely
encapsulated in line 8

1558
01:17:34,600 --> 01:17:39,830
here with what looks like new syntax,
this backslash 0 in single quotes.

1559
01:17:39,830 --> 01:17:41,360
But why is that?

1560
01:17:41,360 --> 01:17:44,100
Well, consider what's been
going on all this time.

1561
01:17:44,100 --> 01:17:47,990
>> And as an aside before I forget, realize
too, that in addition to the man pages

1562
01:17:47,990 --> 01:17:50,920
that come with a typical
Linux system like CS50 IDE,

1563
01:17:50,920 --> 01:17:53,770
realize that we, the
course's staff, have also

1564
01:17:53,770 --> 01:17:56,030
made a website version
of this same idea called

1565
01:17:56,030 --> 01:17:59,940
reference.cs50.net, which has
all of those same man pages,

1566
01:17:59,940 --> 01:18:02,020
all of that same
documentation, as well as

1567
01:18:02,020 --> 01:18:05,730
a little box at the top that allows
you to convert all of the fairly

1568
01:18:05,730 --> 01:18:09,025
arcane language into less comfortable
mode, where we, the teaching staff,

1569
01:18:09,025 --> 01:18:12,150
have gone through and tried to simplify
some of the language to keep things

1570
01:18:12,150 --> 01:18:14,830
focused on the ideas, and not
some of the technicalities.

1571
01:18:14,830 --> 01:18:20,070
So keep in mind, reference.cs50.net
as another resource as well.

1572
01:18:20,070 --> 01:18:23,800
>> But why does string length work in
the way I proposed a moment ago?

1573
01:18:23,800 --> 01:18:25,160
Here's Zamyla's name again.

1574
01:18:25,160 --> 01:18:27,690
And here's Zamyla's name
boxed in, as I keep doing,

1575
01:18:27,690 --> 01:18:31,360
to paint a picture of it being,
really, just a sequence of characters.

1576
01:18:31,360 --> 01:18:34,260
But Zamyla does not exist
in isolation in a program.

1577
01:18:34,260 --> 01:18:37,420
>> When you write and run a program,
you're using your Mac or your PC

1578
01:18:37,420 --> 01:18:40,010
as memory, or RAM so to speak.

1579
01:18:40,010 --> 01:18:42,620
And you can think of
your computer as having

1580
01:18:42,620 --> 01:18:44,730
lots of gigabytes of memory these days.

1581
01:18:44,730 --> 01:18:47,700
And a gig means billions,
so billions of bytes.

1582
01:18:47,700 --> 01:18:48,910
>> But let's rewind in time.

1583
01:18:48,910 --> 01:18:51,530
And suppose that we're using
a really old computer that

1584
01:18:51,530 --> 01:18:55,150
only has 32 bytes of memory.

1585
01:18:55,150 --> 01:18:59,310
I could, on my computer screen,
simply draw this out as follows.

1586
01:18:59,310 --> 01:19:05,240
>> I could simply say that my
computer has all of this memory.

1587
01:19:05,240 --> 01:19:08,830
And this is like a stick of memory, if
you recall our picture from last time.

1588
01:19:08,830 --> 01:19:11,670
And if I just divide
this in enough times,

1589
01:19:11,670 --> 01:19:15,040
I claim that I have 32 bytes
of memory on the screen.

1590
01:19:15,040 --> 01:19:18,239
>> Now, in reality, I can only
draw so far on this screen here.

1591
01:19:18,239 --> 01:19:20,280
So I'm going to go ahead,
and just by convention,

1592
01:19:20,280 --> 01:19:24,050
draw my computer's memory as a
grid, not just as one straight line.

1593
01:19:24,050 --> 01:19:28,190
Specifically, I claim now that
this grid, this 8 by 4 grid,

1594
01:19:28,190 --> 01:19:31,800
just represents all 32 bytes
of memory available in my Mac,

1595
01:19:31,800 --> 01:19:33,030
or available in my PC.

1596
01:19:33,030 --> 01:19:34,780
And they're wrapping
on to two lines, just

1597
01:19:34,780 --> 01:19:38,030
because it fits more on the screen.

1598
01:19:38,030 --> 01:19:40,800
But this is the first byte.

1599
01:19:40,800 --> 01:19:41,990
This is the second byte.

1600
01:19:41,990 --> 01:19:43,300
This is the third byte.

1601
01:19:43,300 --> 01:19:45,310
>> And this is the 32nd byte.

1602
01:19:45,310 --> 01:19:52,910
Or, if we think like a computer
scientist, this is byte 0, 1, 2, 3, 31.

1603
01:19:52,910 --> 01:19:55,950
So you have 0 to 31, if
you start counting at 0.

1604
01:19:55,950 --> 01:19:59,830
>> So if we use a program
that calls get string,

1605
01:19:59,830 --> 01:20:05,280
and we get a string from the human
like I did called Zamyla, Z-A-M-Y-L-A,

1606
01:20:05,280 --> 01:20:09,430
how in the world does the
computer keep track of which byte,

1607
01:20:09,430 --> 01:20:12,230
which chunk of memory,
belongs to which string?

1608
01:20:12,230 --> 01:20:16,270
In other words, if we proceed to
type another name into the computer,

1609
01:20:16,270 --> 01:20:19,890
like this Andi, calling
get string a second time,

1610
01:20:19,890 --> 01:20:23,030
A-N-D-I has to end up in the
computer's memory as well.

1611
01:20:23,030 --> 01:20:23,850
But how?

1612
01:20:23,850 --> 01:20:29,700
>> Well, it turns out that underneath the
hood, what C does when storing strings

1613
01:20:29,700 --> 01:20:35,080
that the human types in, or that
come from some other source, is it

1614
01:20:35,080 --> 01:20:39,190
delineates the end of them with
a special character-- backslash

1615
01:20:39,190 --> 01:20:44,750
0, which is just a special way
of saying 80 bits in a row.

1616
01:20:44,750 --> 01:20:47,950
>> So A-- this is the number 97 recall.

1617
01:20:47,950 --> 01:20:51,770
So some pattern of 8 bits
represents decimal number 97.

1618
01:20:51,770 --> 01:20:58,070
This backslash 0 is literally the number
0, a.k.a. nul, N-U-L, unlike earlier,

1619
01:20:58,070 --> 01:20:59,630
N-U-L-L, which we talked about.

1620
01:20:59,630 --> 01:21:05,700
But for now, just know that this
backslash 0 is just 80 bits in a row.

1621
01:21:05,700 --> 01:21:09,810
>> And it's just this line in the
sand that says anything to the left

1622
01:21:09,810 --> 01:21:12,610
belongs to one string, or one data type.

1623
01:21:12,610 --> 01:21:15,480
And anything to the right
belongs to something else.

1624
01:21:15,480 --> 01:21:17,440
Andi's name, meanwhile,
which just visually

1625
01:21:17,440 --> 01:21:21,310
happens to wrap on to the other line,
but that's just an aesthetic detail,

1626
01:21:21,310 --> 01:21:23,990
similarly is nul terminated.

1627
01:21:23,990 --> 01:21:29,290
>> It is a string of a A-N-D-I characters,
plus a fifth secret character,

1628
01:21:29,290 --> 01:21:33,560
all 0 bits, that just demarcates
the end of Andi's name as well.

1629
01:21:33,560 --> 01:21:37,120
And if we call get string a third time
in the computer to get a string like

1630
01:21:37,120 --> 01:21:44,210
Maria, M-A-R-I-A, similarly is Maria's
name nul terminated with backslash 0.

1631
01:21:44,210 --> 01:21:47,170
>> This is fundamentally different
from how a computer would typically

1632
01:21:47,170 --> 01:21:51,850
store an integer, or a float, or other
data types still, because recall,

1633
01:21:51,850 --> 01:21:57,420
an integer is usually 32 bits, or
4 bytes, or maybe even 64 bits,

1634
01:21:57,420 --> 01:21:59,100
or eight bytes.

1635
01:21:59,100 --> 01:22:02,620
But many primitives in a computer
in a programming language

1636
01:22:02,620 --> 01:22:05,550
have a fixed number of
bytes underneath the hood--

1637
01:22:05,550 --> 01:22:08,100
maybe 1, maybe 2, maybe 4, maybe 8.

1638
01:22:08,100 --> 01:22:13,250
>> But strings, by design, have a
dynamic number of characters.

1639
01:22:13,250 --> 01:22:16,980
You don't know in advance, until
the human types in Z-A-M-Y-L-A,

1640
01:22:16,980 --> 01:22:21,400
or M-A-R-I-A, or A-N-D-I. You don't know
how many times the user is going to hit

1641
01:22:21,400 --> 01:22:22,070
the keyboard.

1642
01:22:22,070 --> 01:22:26,490
Therefore, you don't know how
many characters in advance

1643
01:22:26,490 --> 01:22:27,540
you're going to need.

1644
01:22:27,540 --> 01:22:31,840
>> And so C just kind of leaves like a
secret breadcrumb underneath the hood

1645
01:22:31,840 --> 01:22:32,960
at the end of the string.

1646
01:22:32,960 --> 01:22:39,280
After storing Z-A-M-Y-L-A in memory,
it also just puts the equivalent

1647
01:22:39,280 --> 01:22:40,210
of a period.

1648
01:22:40,210 --> 01:22:45,060
At the end of a sentence,
it puts 80 bits, so as

1649
01:22:45,060 --> 01:22:49,120
to remember where
Zamyla begins and ends.

1650
01:22:49,120 --> 01:22:51,490
>> So what's the connection,
then, to this program?

1651
01:22:51,490 --> 01:22:55,190
This program here, Stirling,
is simply a mechanism

1652
01:22:55,190 --> 01:22:57,970
for getting a string
from the user, line 6.

1653
01:22:57,970 --> 01:23:01,160
Line 7, I declare a variable
called n and set it equal to 0.

1654
01:23:01,160 --> 01:23:08,680
>> And then in line 8, I simply asked the
question, while the n-th character does

1655
01:23:08,680 --> 01:23:12,120
not equal all 0 bits--
in other words, does not

1656
01:23:12,120 --> 01:23:14,500
equal this special
character, backslash 0, which

1657
01:23:14,500 --> 01:23:18,470
was just that special nul character--
go ahead and just increment n.

1658
01:23:18,470 --> 01:23:21,460
>> And keep doing it, and keep
doing it, and keep doing it.

1659
01:23:21,460 --> 01:23:23,430
And so even though in
the past we've used i,

1660
01:23:23,430 --> 01:23:25,181
it's perfectly fine
semantically to use n,

1661
01:23:25,181 --> 01:23:27,430
if you're just trying to
count this time deliberately,

1662
01:23:27,430 --> 01:23:28,720
and just want to call it n.

1663
01:23:28,720 --> 01:23:34,720
So this just keeps asking the question,
is the n-th character of s all 0s?

1664
01:23:34,720 --> 01:23:38,470
If not, look to the next look,
look to the next, look to the next,

1665
01:23:38,470 --> 01:23:39,460
look to the next.

1666
01:23:39,460 --> 01:23:45,540
>> But as soon as you see backslash 0,
this loop-- line 9 through 11-- stops.

1667
01:23:45,540 --> 01:23:49,640
You break out of the while loop,
leaving inside of that variable n

1668
01:23:49,640 --> 01:23:54,530
a total count of all of the
characters in the string you saw,

1669
01:23:54,530 --> 01:23:55,660
thereby printing it out.

1670
01:23:55,660 --> 01:23:56,760
So let's try this.

1671
01:23:56,760 --> 01:23:59,500
>> Let me go ahead and, without
using the stirling function,

1672
01:23:59,500 --> 01:24:04,240
but just using my own homegrown version
here called stirling, let me go ahead

1673
01:24:04,240 --> 01:24:07,700
and run stirling, type in something
like Zamyla, which I know in advance

1674
01:24:07,700 --> 01:24:08,670
is six characters.

1675
01:24:08,670 --> 01:24:10,080
Let's see if it works.

1676
01:24:10,080 --> 01:24:10,920
Indeed, it's six.

1677
01:24:10,920 --> 01:24:15,257
Let's try with Rob, three characters,
three characters as well, and so forth.

1678
01:24:15,257 --> 01:24:17,340
So that's all that's going
on underneath the hood.

1679
01:24:17,340 --> 01:24:19,548
And notice the connections,
then, with the first week

1680
01:24:19,548 --> 01:24:22,370
of class, where we talked about
something like abstraction,

1681
01:24:22,370 --> 01:24:26,960
which is just this layering of ideas, or
complexity, on top of basic principles.

1682
01:24:26,960 --> 01:24:30,710
Here, we're sort of looking
underneath the hood of stirling,

1683
01:24:30,710 --> 01:24:33,510
so to speak, to figure out,
how would it be implemented?

1684
01:24:33,510 --> 01:24:35,232
>> And we could re-implement it ourselves.

1685
01:24:35,232 --> 01:24:37,440
But we're never again going
to re-implement stirling.

1686
01:24:37,440 --> 01:24:39,780
We're just going to
use stirling in order

1687
01:24:39,780 --> 01:24:42,100
to actually get some strings length.

1688
01:24:42,100 --> 01:24:44,200
>> But there's no magic
underneath the hood.

1689
01:24:44,200 --> 01:24:46,716
If you know that underneath
the hood, a string

1690
01:24:46,716 --> 01:24:48,090
is just a sequence of characters.

1691
01:24:48,090 --> 01:24:51,090
And that sequence of characters
all can be numerically addressed

1692
01:24:51,090 --> 01:24:53,330
with bracket 0, bracket
1, bracket 2, and you

1693
01:24:53,330 --> 01:24:57,420
know that at the end of a string is a
special character, you can figure out

1694
01:24:57,420 --> 01:25:01,710
how to do most anything in a
program, because all it boils down to

1695
01:25:01,710 --> 01:25:03,400
is reading and writing memory.

1696
01:25:03,400 --> 01:25:06,130
That is, changing and looking
at memory, or moving things

1697
01:25:06,130 --> 01:25:10,940
around in memory, printing things
on the screen, and so forth.

1698
01:25:10,940 --> 01:25:14,800
>> So let's now use this newfound
understanding of what strings actually

1699
01:25:14,800 --> 01:25:17,910
are underneath the hood, and
peel back one other layer

1700
01:25:17,910 --> 01:25:20,080
that up until now we've
been ignoring altogether.

1701
01:25:20,080 --> 01:25:22,650
In particular, any time
we've implemented a program,

1702
01:25:22,650 --> 01:25:25,930
we've had this line of code
near the top declaring main.

1703
01:25:25,930 --> 01:25:27,810
And we've specified int main void.

1704
01:25:27,810 --> 01:25:31,240
>> And that void inside the parentheses
has been saying all this time that main

1705
01:25:31,240 --> 01:25:33,440
itself does not take any arguments.

1706
01:25:33,440 --> 01:25:36,210
Any input that main is
going to get from the user

1707
01:25:36,210 --> 01:25:39,020
has to come from some other
mechanism, like get int,

1708
01:25:39,020 --> 01:25:42,040
or get float, or get string,
or some other function.

1709
01:25:42,040 --> 01:25:44,710
But it turns out that
when you write a program,

1710
01:25:44,710 --> 01:25:47,690
you can actually specify
that this program shall

1711
01:25:47,690 --> 01:25:51,730
take inputs from the human
at the command line itself.

1712
01:25:51,730 --> 01:25:56,310
>> In other words, even though we thus far
have been running just ./hello hello

1713
01:25:56,310 --> 01:26:00,312
or similar programs, all of the
other programs that we've been using,

1714
01:26:00,312 --> 01:26:02,770
that we ourselves didn't write,
have been taking, it seems,

1715
01:26:02,770 --> 01:26:05,210
command line arguments--
things like make.

1716
01:26:05,210 --> 01:26:07,450
You say something like make,
and then a second word.

1717
01:26:07,450 --> 01:26:10,950
Or clang, you say clang, and then
a second word, the name of a file.

1718
01:26:10,950 --> 01:26:14,410
>> Or even RM or CP, as you might
have seen or used already

1719
01:26:14,410 --> 01:26:15,880
to remove or copy files.

1720
01:26:15,880 --> 01:26:18,920
All of those take so-called
command line arguments--

1721
01:26:18,920 --> 01:26:21,130
additional words at the terminal prompt.

1722
01:26:21,130 --> 01:26:23,260
But up until now, we
ourselves have not had

1723
01:26:23,260 --> 01:26:27,080
this luxury of taking input from the
user when he or she actually runs

1724
01:26:27,080 --> 01:26:29,120
the program itself at the command line.

1725
01:26:29,120 --> 01:26:33,710
>> But we can do that by re-declaring
main moving forward, not as having

1726
01:26:33,710 --> 01:26:36,750
void in parentheses,
but these two arguments

1727
01:26:36,750 --> 01:26:40,600
instead-- the first an integer,
and the second something

1728
01:26:40,600 --> 01:26:44,170
new, something that we're going to call
an array, something similar in spirit

1729
01:26:44,170 --> 01:26:49,220
to what we saw in Scratch as a list, but
an array of strings, as we'll soon see.

1730
01:26:49,220 --> 01:26:51,790
But let's see this by
way of example, before we

1731
01:26:51,790 --> 01:26:53,690
distinguish exactly what that means.

1732
01:26:53,690 --> 01:26:56,520
>> So if I go into CS50 IDE
here, I've gone ahead

1733
01:26:56,520 --> 01:27:01,840
and declared in a file called
argv0.c the following template.

1734
01:27:01,840 --> 01:27:04,120
And notice the only thing
that's different so far

1735
01:27:04,120 --> 01:27:08,570
is that I've changed void to int
argc string argv open bracket, close

1736
01:27:08,570 --> 01:27:09,070
bracket.

1737
01:27:09,070 --> 01:27:11,730
And notice for now, there's
nothing inside of those brackets.

1738
01:27:11,730 --> 01:27:12,620
>> There's no number.

1739
01:27:12,620 --> 01:27:15,070
And there's no i, or
n, or any other letter.

1740
01:27:15,070 --> 01:27:17,010
I'm just using the
square brackets for now,

1741
01:27:17,010 --> 01:27:19,510
for reasons we'll come
back to in just a moment.

1742
01:27:19,510 --> 01:27:21,330
>> And now what I'm going to do is this.

1743
01:27:21,330 --> 01:27:26,680
If argc equals equals 2--
and recall that equals equals

1744
01:27:26,680 --> 01:27:30,040
is the equality operator comparing
the left and right for equality.

1745
01:27:30,040 --> 01:27:31,790
It's not the assignment
operator, which is

1746
01:27:31,790 --> 01:27:36,510
the single equal sign, which means copy
from the right to the left some value.

1747
01:27:36,510 --> 01:27:42,840
>> If argc equals equals 2, I want to
say, printf, hello, percents, new line,

1748
01:27:42,840 --> 01:27:47,340
and then plug in-- and here's the new
trick-- argv bracket 1, for reasons

1749
01:27:47,340 --> 01:27:48,840
that we'll come back to in a moment.

1750
01:27:48,840 --> 01:27:52,110
Else if argc does not
equal 2, you know what?

1751
01:27:52,110 --> 01:27:57,400
Let's just go ahead and, as usual, print
out hello world with no substitution.

1752
01:27:57,400 --> 01:28:02,710
>> So it would seem that if argc, which
stands for argument count, equals 2,

1753
01:28:02,710 --> 01:28:04,740
I'm going to print out
hello something or other.

1754
01:28:04,740 --> 01:28:07,560
Otherwise, by default, I'm
going to print hello world.

1755
01:28:07,560 --> 01:28:08,770
So what does this mean?

1756
01:28:08,770 --> 01:28:15,550
>> Well, let me go ahead and save
this file, and then do make argv0,

1757
01:28:15,550 --> 01:28:18,940
and then ./argv0, Enter.

1758
01:28:18,940 --> 01:28:20,300
And it says hello world.

1759
01:28:20,300 --> 01:28:21,260
Now, why is that?

1760
01:28:21,260 --> 01:28:24,730
>> Well, it turns out anytime you
run a program at the command line,

1761
01:28:24,730 --> 01:28:29,570
you are filling in what we'll
generally call an argument vector.

1762
01:28:29,570 --> 01:28:33,100
In other words, automatically the
computer, the operating system,

1763
01:28:33,100 --> 01:28:38,340
is going to hand to your program
itself a list of all of the words

1764
01:28:38,340 --> 01:28:40,850
that the human typed at
the prompt, in case you

1765
01:28:40,850 --> 01:28:43,790
the programmer want to do
something with that information.

1766
01:28:43,790 --> 01:28:48,540
And in this case, the only word
I've typed at the prompt is ./argv0.

1767
01:28:48,540 --> 01:28:55,420
>> And so the number of arguments that is
being passed to my program is just one.

1768
01:28:55,420 --> 01:28:58,880
In other words, the argument
count, otherwise known as argc

1769
01:28:58,880 --> 01:29:00,970
here as an integer, is just one.

1770
01:29:00,970 --> 01:29:03,000
One, of course, does not equal two.

1771
01:29:03,000 --> 01:29:05,980
And so this is what prints, hello world.

1772
01:29:05,980 --> 01:29:08,170
>> But let me take this somewhere.

1773
01:29:08,170 --> 01:29:09,930
Let me say, argv0.

1774
01:29:09,930 --> 01:29:12,740
And then how about Maria?

1775
01:29:12,740 --> 01:29:14,990
And then hit Enter.

1776
01:29:14,990 --> 01:29:18,020
>> And notice what magically happens here.

1777
01:29:18,020 --> 01:29:22,640
Now, instead of hello world, I have
changed the behavior of this program

1778
01:29:22,640 --> 01:29:26,310
by taking the input not from get
string or some other function,

1779
01:29:26,310 --> 01:29:30,570
but from, apparently, my command
itself, what I originally typed in.

1780
01:29:30,570 --> 01:29:35,720
And I can play this game again by
changing it to Stelios, for instance.

1781
01:29:35,720 --> 01:29:38,400
>> And now I see another name still.

1782
01:29:38,400 --> 01:29:40,540
And here, I might say Andi.

1783
01:29:40,540 --> 01:29:42,137
And I might say Zamyla.

1784
01:29:42,137 --> 01:29:45,220
And we can play this game all day long,
just plugging in different values,

1785
01:29:45,220 --> 01:29:49,550
so long as I provide exactly
two words at the prompt,

1786
01:29:49,550 --> 01:29:52,260
such that argc, my argument count, is 2.

1787
01:29:52,260 --> 01:29:57,240
>> Do I see that name plugged into
printf, per this condition here?

1788
01:29:57,240 --> 01:30:00,550
So we seem to have now
the expressive capability

1789
01:30:00,550 --> 01:30:04,410
of taking input from another mechanism,
from the so-called command line,

1790
01:30:04,410 --> 01:30:07,000
rather than having to wait
until the user runs the program,

1791
01:30:07,000 --> 01:30:10,220
and then prompt him or her
using something like get string.

1792
01:30:10,220 --> 01:30:11,230
>> So what is this?

1793
01:30:11,230 --> 01:30:15,010
Argc, again, is just an integer,
the number of words-- arguments--

1794
01:30:15,010 --> 01:30:18,540
that the user provided at the
prompt, at the terminal window,

1795
01:30:18,540 --> 01:30:20,110
including the program's name.

1796
01:30:20,110 --> 01:30:23,340
So our ./argv0 is, effectively,
the program's name,

1797
01:30:23,340 --> 01:30:24,520
or how I run the program.

1798
01:30:24,520 --> 01:30:25,810
>> That counts as a word.

1799
01:30:25,810 --> 01:30:27,080
So argc would be 1.

1800
01:30:27,080 --> 01:30:29,750
But when I write Stelios, or
Andi, or Zamyla, or Maria,

1801
01:30:29,750 --> 01:30:31,660
that means the argument count is two.

1802
01:30:31,660 --> 01:30:33,910
And so now there's two words passed in.

1803
01:30:33,910 --> 01:30:36,070
>> And notice, we can continue this logic.

1804
01:30:36,070 --> 01:30:39,050
If I actually say
something like Zamyla Chan,

1805
01:30:39,050 --> 01:30:42,200
a full name, thereby passing
three arguments in total,

1806
01:30:42,200 --> 01:30:47,410
now it says the default again,
because, of course, 3 does not equal 2.

1807
01:30:47,410 --> 01:30:54,080
>> And so in this way, do I have
access via argv this new argument

1808
01:30:54,080 --> 01:30:56,080
that we could technically
call anything we want.

1809
01:30:56,080 --> 01:30:58,940
But by convention, it's
argv and argc, respectively.

1810
01:30:58,940 --> 01:31:04,470
Argv, argument vector, is kind
of a synonym for a programming

1811
01:31:04,470 --> 01:31:07,140
feature in C called an array.

1812
01:31:07,140 --> 01:31:14,410
>> An array is a list of similar values
back, to back, to back, to back.

1813
01:31:14,410 --> 01:31:17,810
In other words, if one is right here in
RAM, the next one is right next to it,

1814
01:31:17,810 --> 01:31:18,800
and right next to it.

1815
01:31:18,800 --> 01:31:20,101
They're not all over the place.

1816
01:31:20,101 --> 01:31:23,100
And that latter scenario, where things
are all over the place in memory,

1817
01:31:23,100 --> 01:31:25,082
can actually be a powerful feature.

1818
01:31:25,082 --> 01:31:28,040
But we'll come back to that when we
talk about fancier data structures.

1819
01:31:28,040 --> 01:31:32,260
For now, an array is just a
chunk of contiguous memory,

1820
01:31:32,260 --> 01:31:36,520
each of whose elements are
back, to back, to back, to back,

1821
01:31:36,520 --> 01:31:38,050
and generally the same type.

1822
01:31:38,050 --> 01:31:42,630
>> So if you think about, from a
moment ago, what is a string?

1823
01:31:42,630 --> 01:31:50,460
Well, a string, like Zamyla,
Z-A-M-Y-L-A, is, technically,

1824
01:31:50,460 --> 01:31:51,400
just an array.

1825
01:31:51,400 --> 01:31:53,700
It's an array of characters.

1826
01:31:53,700 --> 01:31:59,250
>> And so if we really draw this, as I
did earlier, as a chunk of memory,

1827
01:31:59,250 --> 01:32:04,510
it turns out that each of these
characters takes up a byte.

1828
01:32:04,510 --> 01:32:07,630
And then there's that special
sentinel character, the backslash 0,

1829
01:32:07,630 --> 01:32:12,360
or all eight 0 bits, that
demarcates the end of that string.

1830
01:32:12,360 --> 01:32:15,090
So a string, it turns
out, quote unquote string,

1831
01:32:15,090 --> 01:32:20,580
is just an array of chara--
char being an actual data type.

1832
01:32:20,580 --> 01:32:24,560
>> And now argv, meanwhile--
let's go back to the program.

1833
01:32:24,560 --> 01:32:29,582
Argv, even though we see the word
string here, is not a string itself.

1834
01:32:29,582 --> 01:32:33,640
Argv, argument vector,
is an array of strings.

1835
01:32:33,640 --> 01:32:37,620
>> So just as you can have an array of
characters, you can have higher level,

1836
01:32:37,620 --> 01:32:46,279
an array of strings-- so, for instance,
when I typed a moment ago ./argv0

1837
01:32:46,279 --> 01:33:00,150
argv0, space Z-A-M-Y-L-A, I claimed that
argv had two strings in it-- ./argv0,

1838
01:33:00,150 --> 01:33:03,185
and Z-A-M-Y-L-A. In
other words, argc was 2.

1839
01:33:03,185 --> 01:33:03,980
Why is that?

1840
01:33:03,980 --> 01:33:08,370
>> Well, effectively, what's going
on is that each of these strings

1841
01:33:08,370 --> 01:33:13,990
is, of course, an array of characters
as before, each of whose characters

1842
01:33:13,990 --> 01:33:15,670
takes up one byte.

1843
01:33:15,670 --> 01:33:19,720
And don't confuse the actual 0
in the program's name with the 0,

1844
01:33:19,720 --> 01:33:22,040
which means all 80 bits.

1845
01:33:22,040 --> 01:33:27,140
And Zamyla, meanwhile, is still
also an array of characters.

1846
01:33:27,140 --> 01:33:31,450
>> So at the end of the day, it really
looks like this underneath the hood.

1847
01:33:31,450 --> 01:33:38,800
But argv, by nature of how main
works, allows me to wrap all of this

1848
01:33:38,800 --> 01:33:44,810
up into, if you will, a bigger array
that, if we slightly over simplify

1849
01:33:44,810 --> 01:33:48,180
what the picture looks like and don't
quite draw it to scale up there,

1850
01:33:48,180 --> 01:33:56,720
this array is only of size 2, the first
element of which contains a string,

1851
01:33:56,720 --> 01:33:59,230
the second element of
which contains a string.

1852
01:33:59,230 --> 01:34:01,687
And, in turn, if you
kind of zoom in on each

1853
01:34:01,687 --> 01:34:03,770
of those strings, what you
see underneath the hood

1854
01:34:03,770 --> 01:34:07,190
is that each string is just
an array of characters.

1855
01:34:07,190 --> 01:34:11,680
>> Now, just as with strings,
we were able to get access

1856
01:34:11,680 --> 01:34:15,260
to the i-th character in a string
using that square bracket notation.

1857
01:34:15,260 --> 01:34:17,320
Similarly, with arrays
in general, can we

1858
01:34:17,320 --> 01:34:22,700
use square bracket notation to get
at any number of strings in an array?

1859
01:34:22,700 --> 01:34:25,100
For instance, let me
go ahead and do this.

1860
01:34:25,100 --> 01:34:32,420
>> Let me go ahead and create argv1.c,
which is a little different this time.

1861
01:34:32,420 --> 01:34:35,635
Instead of checking for argc2,
I'm going to instead do this.

1862
01:34:35,635 --> 01:34:41,270
For int I get 0, I is less
than argc, I plus plus,

1863
01:34:41,270 --> 01:34:47,920
and then print out inside of this,
percent s, new line, and then

1864
01:34:47,920 --> 01:34:50,740
argv bracket i.

1865
01:34:50,740 --> 01:34:55,220
>> So in other words, I'm not dealing with
individual characters at the moment.

1866
01:34:55,220 --> 01:35:00,190
Argv, as implied by these empty square
braces to the right of the name argv,

1867
01:35:00,190 --> 01:35:03,320
means argv is an array of strings.

1868
01:35:03,320 --> 01:35:04,870
And argc is just an int.

1869
01:35:04,870 --> 01:35:08,800
>> This line here, 6, is
saying set i equal to 0.

1870
01:35:08,800 --> 01:35:11,980
Count all the way up to,
but not including, argc.

1871
01:35:11,980 --> 01:35:14,010
And then on each iteration,
print out a string.

1872
01:35:14,010 --> 01:35:14,800
What string?

1873
01:35:14,800 --> 01:35:17,270
>> The i-th string in argv.

1874
01:35:17,270 --> 01:35:19,530
So whereas before I was
using the square bracket

1875
01:35:19,530 --> 01:35:22,180
notation to get at the ith
character in a string, now

1876
01:35:22,180 --> 01:35:27,240
I'm using the square bracket notation
to get at the ith string in an array.

1877
01:35:27,240 --> 01:35:30,310
So it's kind of one layer
above, conceptually.

1878
01:35:30,310 --> 01:35:35,390
>> And so what's neat about this
program now, if I compile argv1,

1879
01:35:35,390 --> 01:35:42,067
and then do ./argv1, and then type
in something like foo bar baz,

1880
01:35:42,067 --> 01:35:45,400
which are the three default words that a
computer scientist reaches for any time

1881
01:35:45,400 --> 01:35:51,010
he or she needs some placeholder words,
and hit Enter, each of those words,

1882
01:35:51,010 --> 01:35:54,980
including the program's name, which
is in argv at the first location,

1883
01:35:54,980 --> 01:35:58,320
ends up being printed one at a time.

1884
01:35:58,320 --> 01:36:05,290
And if I change this, and I say
something like argv1 Zamyla Chan,

1885
01:36:05,290 --> 01:36:08,800
we get all three of those
words, which is argv0,

1886
01:36:08,800 --> 01:36:14,400
argv1, argv2, because in this
case argc, the count, is 3.

1887
01:36:14,400 --> 01:36:20,020
>> But what's neat is if you understand
that argv is just an array of strings,

1888
01:36:20,020 --> 01:36:24,910
and you understand that a string
is an array of characters,

1889
01:36:24,910 --> 01:36:29,470
we can actually kind of use this
square bracket notation multiple times

1890
01:36:29,470 --> 01:36:33,320
to choose a string, and then choose
a character within the string,

1891
01:36:33,320 --> 01:36:35,730
diving in deeper as follows.

1892
01:36:35,730 --> 01:36:40,100
In this example, let me go
ahead and call this argv2.c.

1893
01:36:40,100 --> 01:36:43,920

1894
01:36:43,920 --> 01:36:50,180
And in this example, let me go ahead
and do the following-- for int i get 0,

1895
01:36:50,180 --> 01:36:53,286
i is less than argc, i plus
plus, just like before.

1896
01:36:53,286 --> 01:36:55,910
So in other words-- and now this
is getting complicated enough.

1897
01:36:55,910 --> 01:36:59,940
Then I'm going to say
iterate over strings in argv,

1898
01:36:59,940 --> 01:37:01,294
as a comment to myself.

1899
01:37:01,294 --> 01:37:03,960
And then I'm going to have a
nested for loop, which you probably

1900
01:37:03,960 --> 01:37:06,290
have done, or considered
doing, in Scratch, where

1901
01:37:06,290 --> 01:37:08,600
I'm going to say int-- I'm
not going to use i again,

1902
01:37:08,600 --> 01:37:12,590
because I don't want to shadow, or
sort of overwrite the existing i.

1903
01:37:12,590 --> 01:37:15,780
>> I'm going to, instead, say j, because
that's my go to variable after i,

1904
01:37:15,780 --> 01:37:18,590
when I'm just trying to
count simple numbers.

1905
01:37:18,590 --> 01:37:28,850
For j gets 0-- and also, n, is going to
get the stern length of argv bracket i,

1906
01:37:28,850 --> 01:37:36,030
so long as j is less than m,
j plus plus, do the following.

1907
01:37:36,030 --> 01:37:37,500
And here's the interesting part.

1908
01:37:37,500 --> 01:37:46,330
>> Print out a character and a new line,
plugging in argv bracket i, bracket j.

1909
01:37:46,330 --> 01:37:47,940
OK, so let me add some comments here.

1910
01:37:47,940 --> 01:37:54,820
Iterate over characters
in current string,

1911
01:37:54,820 --> 01:38:02,290
print j-th character in i-th string.

1912
01:38:02,290 --> 01:38:04,630
So now, let's consider
what these comments mean.

1913
01:38:04,630 --> 01:38:06,750
>> Iterate over the strings
in argv-- how many

1914
01:38:06,750 --> 01:38:09,300
strings are in argv, which is an array?

1915
01:38:09,300 --> 01:38:13,420
Argc many, so I'm iterating
from i equal 0 up to argc.

1916
01:38:13,420 --> 01:38:20,020
Meanwhile, how many characters
are in the i-th string in argv?

1917
01:38:20,020 --> 01:38:22,880
>> Well, to get that answer,
I just call string length

1918
01:38:22,880 --> 01:38:26,810
on the current string I care
about, which is argv bracket i.

1919
01:38:26,810 --> 01:38:30,090
And I'm going to temporarily store that
value in n, just for caching purposes,

1920
01:38:30,090 --> 01:38:31,590
to remember it for efficiency.

1921
01:38:31,590 --> 01:38:36,330
And then I'm going initialize j to 0,
keep going so long as j is less than n,

1922
01:38:36,330 --> 01:38:38,430
and on each iteration increment j.

1923
01:38:38,430 --> 01:38:41,030
>> And then in here, per
my comment on line 12,

1924
01:38:41,030 --> 01:38:43,390
print out a character,
followed by a new line,

1925
01:38:43,390 --> 01:38:48,140
specifically argv bracket
i gives me the i-th string

1926
01:38:48,140 --> 01:38:51,690
in argv-- so the first word, the
second word, the third word, whatever.

1927
01:38:51,690 --> 01:38:57,370
And then j dives in deeper, and gets
me the j-th character of that word.

1928
01:38:57,370 --> 01:39:02,200
And so, in effect, you can treat
argv as a multi-dimensional,

1929
01:39:02,200 --> 01:39:06,050
as a two-dimensional, array,
whereby every word kind of looks

1930
01:39:06,050 --> 01:39:08,580
like this in your mind's
eye, and every character

1931
01:39:08,580 --> 01:39:10,930
is kind of composed in
a column, if that helps.

1932
01:39:10,930 --> 01:39:13,260
>> In reality, when we tease
this apart in future weeks,

1933
01:39:13,260 --> 01:39:15,580
it's going to be a little
more sophisticated than that.

1934
01:39:15,580 --> 01:39:17,800
But you can really
think of that, for now,

1935
01:39:17,800 --> 01:39:22,110
as just this two-dimensional
array, whereby one level of it

1936
01:39:22,110 --> 01:39:23,260
is all of the strings.

1937
01:39:23,260 --> 01:39:26,760
And then if you dive in deeper, you
can get at the individual characters

1938
01:39:26,760 --> 01:39:29,600
therein by using this notation here.

1939
01:39:29,600 --> 01:39:31,620
>> So what is the net effect?

1940
01:39:31,620 --> 01:39:34,970
Let me go ahead and
make argv2-- darn it.

1941
01:39:34,970 --> 01:39:36,210
I made a mistake here.

1942
01:39:36,210 --> 01:39:40,160
Implicitly declaring the
library function stirling.

1943
01:39:40,160 --> 01:39:42,190
So all this time, it's
perhaps appropriate

1944
01:39:42,190 --> 01:39:45,130
that we're sort of finishing
exactly where we started.

1945
01:39:45,130 --> 01:39:48,160
>> I screwed up, implicitly declaring
library function stirling.

1946
01:39:48,160 --> 01:39:48,987
OK, wait a minute.

1947
01:39:48,987 --> 01:39:51,070
I remember that, especially
since it's right here.

1948
01:39:51,070 --> 01:39:54,490
I need to include string.h in
this version of the program.

1949
01:39:54,490 --> 01:40:00,050
>> Let me go ahead and include
string.h, save that, go ahead

1950
01:40:00,050 --> 01:40:04,460
and recompile argv2.

1951
01:40:04,460 --> 01:40:08,390
And now, here we go, make argv2, Enter.

1952
01:40:08,390 --> 01:40:10,590
And though it's a little
cryptic at first glance,

1953
01:40:10,590 --> 01:40:15,690
notice that, indeed, what
is printed is dot argv2.

1954
01:40:15,690 --> 01:40:19,970
>> But if I type some words after the
prompt, like argv2 Zamyla Chan,

1955
01:40:19,970 --> 01:40:22,560
Enter, also a little
cryptic at first glance.

1956
01:40:22,560 --> 01:40:30,540
But if we scroll back up,
./argv2 Z-A-M-Y-L-A C-H-A-N.

1957
01:40:30,540 --> 01:40:32,190
So we've iterated over every word.

1958
01:40:32,190 --> 01:40:37,770
And, in turn, we've iterated over
every character within a word.

1959
01:40:37,770 --> 01:40:40,040
>> Now, after all of this,
realize that there's

1960
01:40:40,040 --> 01:40:43,120
one other detail we've been kind
of ignoring this whole time.

1961
01:40:43,120 --> 01:40:46,180
We just teased apart what
main's inputs can be?

1962
01:40:46,180 --> 01:40:47,780
What about main's output?

1963
01:40:47,780 --> 01:40:50,540
>> All of this time, we've been
just copying and pasting

1964
01:40:50,540 --> 01:40:53,870
the word int in front of main,
though you may see online,

1965
01:40:53,870 --> 01:40:58,340
sometimes incorrectly in older versions
of C and compilers, that they say void,

1966
01:40:58,340 --> 01:40:59,410
or nothing at all.

1967
01:40:59,410 --> 01:41:01,580
But, indeed, for the version
of C that we're using,

1968
01:41:01,580 --> 01:41:06,180
C 11, or 2011, realize
that it should be int.

1969
01:41:06,180 --> 01:41:09,300
And it should either be
void or argc and argv here.

1970
01:41:09,300 --> 01:41:10,790
>> But why int main?

1971
01:41:10,790 --> 01:41:12,480
What is it actually returning?

1972
01:41:12,480 --> 01:41:16,280
Well, it turns out all of this time,
any time you've written a program main

1973
01:41:16,280 --> 01:41:18,440
is always returning something.

1974
01:41:18,440 --> 01:41:19,960
But it's been doing so secretly.

1975
01:41:19,960 --> 01:41:23,350
>> That something is an
int, as line 5 suggests.

1976
01:41:23,350 --> 01:41:24,225
But what int?

1977
01:41:24,225 --> 01:41:26,100
Well, there's this
convention in programming,

1978
01:41:26,100 --> 01:41:29,790
whereby if nothing has
gone wrong and all is well,

1979
01:41:29,790 --> 01:41:34,250
programs and functions generally
return-- somewhat counterintuitively--

1980
01:41:34,250 --> 01:41:35,230
0.

1981
01:41:35,230 --> 01:41:38,070
0 generally signifies all is well.

1982
01:41:38,070 --> 01:41:40,610
So even though you think of
it as false in many contexts,

1983
01:41:40,610 --> 01:41:42,930
it actually generally means a good thing

1984
01:41:42,930 --> 01:41:49,560
>> Meanwhile, if a program returns 1,
or negative 1, or 5, or negative 42,

1985
01:41:49,560 --> 01:41:52,941
or any non-0 value,
that generally signifies

1986
01:41:52,941 --> 01:41:54,190
that something has gone wrong.

1987
01:41:54,190 --> 01:41:56,700
In fact, on your own Mac or PC,
you might have actually seen

1988
01:41:56,700 --> 01:42:01,050
an error message, whereby it
says something or other, error

1989
01:42:01,050 --> 01:42:04,940
code negative 42, or error code
23, or something like that.

1990
01:42:04,940 --> 01:42:08,980
That number is generally just a hint
to the programmer, or the company

1991
01:42:08,980 --> 01:42:11,174
that made the software,
what went wrong and why,

1992
01:42:11,174 --> 01:42:13,590
so that they can look through
their documentation or code,

1993
01:42:13,590 --> 01:42:15,465
and figure out what the
error actually means.

1994
01:42:15,465 --> 01:42:18,400
It's generally not
useful to us end users.

1995
01:42:18,400 --> 01:42:20,550
>> But when main returns 0, all is well.

1996
01:42:20,550 --> 01:42:23,770
And if you don't specify
what main should return,

1997
01:42:23,770 --> 01:42:26,950
it will just automatically
return 0 for you.

1998
01:42:26,950 --> 01:42:30,870
But returning something
else is actually useful.

1999
01:42:30,870 --> 01:42:34,660
>> In this final program, let me
go ahead and call this exit.c,

2000
01:42:34,660 --> 01:42:38,630
and introduce the last of today's
topics, known as an error code.

2001
01:42:38,630 --> 01:42:42,930
Let me go ahead and include our
familiar files up top, do int main.

2002
01:42:42,930 --> 01:42:49,500
And this time, let's do int argc,
string argv, and with my brackets

2003
01:42:49,500 --> 01:42:50,836
to imply that it's in the array.

2004
01:42:50,836 --> 01:42:52,460
And then let me just do a sanity check.

2005
01:42:52,460 --> 01:42:56,640
This time, if argc does not
equal 2, then you know what?

2006
01:42:56,640 --> 01:42:57,520
Forget it.

2007
01:42:57,520 --> 01:43:03,170
I am going to say that, hey, user,
you are missing command line argument

2008
01:43:03,170 --> 01:43:04,210
backslash n.

2009
01:43:04,210 --> 01:43:05,230
>> And then that's it.

2010
01:43:05,230 --> 01:43:06,130
I want to exit.

2011
01:43:06,130 --> 01:43:11,030
I am going to preemptively,
and prematurely really, return

2012
01:43:11,030 --> 01:43:12,810
something other than the number 1.

2013
01:43:12,810 --> 01:43:15,360
The go to value for the first
error that can happen is 1.

2014
01:43:15,360 --> 01:43:17,860
If you have some other erroneous
situation that might occur,

2015
01:43:17,860 --> 01:43:21,390
you might say return 2 or return 3, or
maybe even negative 1 or negative 2.

2016
01:43:21,390 --> 01:43:23,750
>> These are just exit codes
that are, generally,

2017
01:43:23,750 --> 01:43:27,770
only useful to the programmer, or the
company that's shipping the software.

2018
01:43:27,770 --> 01:43:30,500
But the fact that it's
not 0 is what's important.

2019
01:43:30,500 --> 01:43:34,310
So if in this program, I want to
guarantee that this program only

2020
01:43:34,310 --> 01:43:38,190
works if the user provides me
with an argument count of two,

2021
01:43:38,190 --> 01:43:42,880
the name of the program, and some other
word, I can enforce as much as follows,

2022
01:43:42,880 --> 01:43:46,110
yell at the user with printf saying,
missing command line argument,

2023
01:43:46,110 --> 01:43:46,970
return 1.

2024
01:43:46,970 --> 01:43:49,940
That will just immediately
quit the program.

2025
01:43:49,940 --> 01:43:55,840
>> Only if argc equals 2 will we get down
here, at which point I'm going to say,

2026
01:43:55,840 --> 01:44:00,410
hello percent s, backslash n, argv1.

2027
01:44:00,410 --> 01:44:03,827
In other words, I'm
not going after argv 0,

2028
01:44:03,827 --> 01:44:05,410
which is just the name of the program.

2029
01:44:05,410 --> 01:44:09,450
I want to print out hello, comma,
the second word that the human typed.

2030
01:44:09,450 --> 01:44:12,580
And in this case on
line 13, all is well.

2031
01:44:12,580 --> 01:44:15,920
>> I know that argc is 2
logically from this program.

2032
01:44:15,920 --> 01:44:17,770
I'm going to go ahead and return 0.

2033
01:44:17,770 --> 01:44:21,230
As an aside, keep in mind that
this is true in Scratch as well.

2034
01:44:21,230 --> 01:44:24,760
>> Logically, I could do this
and encapsulate these lines

2035
01:44:24,760 --> 01:44:27,020
of code in this else clause here.

2036
01:44:27,020 --> 01:44:29,420
But that's sort of
unnecessarily indenting my code.

2037
01:44:29,420 --> 01:44:31,800
And I want to make super
clear that no matter what,

2038
01:44:31,800 --> 01:44:34,670
by default, hello
something will get printed,

2039
01:44:34,670 --> 01:44:36,050
so long as the user cooperates.

2040
01:44:36,050 --> 01:44:39,360
>> So it's very common to use
a condition, just an if,

2041
01:44:39,360 --> 01:44:41,870
to catch some erroneous
situation, and then exit.

2042
01:44:41,870 --> 01:44:45,690
And then, so long all is
well, not have an else,

2043
01:44:45,690 --> 01:44:48,060
but just have the code
outside that if, because it's

2044
01:44:48,060 --> 01:44:51,060
equivalent in this
particular case, logically.

2045
01:44:51,060 --> 01:44:54,480
So I'm returning 0, just to
explicitly signify all is well.

2046
01:44:54,480 --> 01:44:58,480
>> If I omitted the return 0, it would
be automatically assumed for me.

2047
01:44:58,480 --> 01:45:00,890
But now that I'm returning
one in at least this case,

2048
01:45:00,890 --> 01:45:04,940
I'm going to, for good measure and
clarity, return 0 in this case.

2049
01:45:04,940 --> 01:45:09,690
So now let me go ahead and make exit,
which is a perfect segue to just leave.

2050
01:45:09,690 --> 01:45:14,401
>> But make exit, and let me go
ahead and do ./exit, Enter.

2051
01:45:14,401 --> 01:45:16,900
And the program yelled at me,
missing command line argument.

2052
01:45:16,900 --> 01:45:18,120
OK, let me cooperate.

2053
01:45:18,120 --> 01:45:23,810
>> Let me instead do ./exit, David, Enter.

2054
01:45:23,810 --> 01:45:25,190
And now it says, hello David.

2055
01:45:25,190 --> 01:45:27,300
And you wouldn't normally see this.

2056
01:45:27,300 --> 01:45:30,650
>> But it turns out that there's a
special way in Linux to actually see

2057
01:45:30,650 --> 01:45:34,470
with what exit code a program exited.

2058
01:45:34,470 --> 01:45:37,184
Sometimes in a graphical
world like Mac OS or Windows,

2059
01:45:37,184 --> 01:45:40,100
you only see these numbers when an
error message pops up on the screen

2060
01:45:40,100 --> 01:45:41,940
and the programmer
shows you that number.

2061
01:45:41,940 --> 01:45:44,773
But if we want to see what the error
message is, we can do it here--

2062
01:45:44,773 --> 01:45:48,100
so ./exit, Enter, print
missing command line argument.

2063
01:45:48,100 --> 01:45:54,590
>> If I now do echo $?, which is
ridiculously cryptic looking.

2064
01:45:54,590 --> 01:45:56,590
But $?

2065
01:45:56,590 --> 01:45:59,220
is the magical incantation
that says, hey, computer,

2066
01:45:59,220 --> 01:46:01,900
tell me what the previous
program's exit code was.

2067
01:46:01,900 --> 01:46:03,410
And I hit Enter.

2068
01:46:03,410 --> 01:46:07,520
I see 1, because that's what I
told my main function to return.

2069
01:46:07,520 --> 01:46:12,310
>> Meanwhile, if I do ./exit David,
and hit Enter, I see, hello David.

2070
01:46:12,310 --> 01:46:16,800
And if I now do echo $?, I see hello 0.

2071
01:46:16,800 --> 01:46:19,080
And so this will actually
be valuable information

2072
01:46:19,080 --> 01:46:23,420
in the context of the debugger, not so
much that you, the human, would care.

2073
01:46:23,420 --> 01:46:26,060
But the debugger and other
programs we'll use this semester

2074
01:46:26,060 --> 01:46:29,420
will often look at that number,
even though it's sort of hidden away

2075
01:46:29,420 --> 01:46:32,780
unless you look for it, to
determine whether or not a program's

2076
01:46:32,780 --> 01:46:37,050
execution was correct or incorrect.

2077
01:46:37,050 --> 01:46:40,450
>> And so that brings us to
this, at the end of the day.

2078
01:46:40,450 --> 01:46:43,917
We started today by looking at
debugging, and in turn at the course

2079
01:46:43,917 --> 01:46:46,750
itself, and then more interestingly,
technically underneath the hood

2080
01:46:46,750 --> 01:46:49,490
at what strings are, which last
week we just took for granted,

2081
01:46:49,490 --> 01:46:51,900
and certainly took them
for granted in Scratch.

2082
01:46:51,900 --> 01:46:56,040
>> We then looked at how we can access
individual characters in a string,

2083
01:46:56,040 --> 01:47:00,310
and then again took a higher level
look at things, looking at how well--

2084
01:47:00,310 --> 01:47:04,226
if we want to get at individual
elements in a list like structure,

2085
01:47:04,226 --> 01:47:05,850
can't we do that with multiple strings?

2086
01:47:05,850 --> 01:47:08,050
And we can with command line arguments.

2087
01:47:08,050 --> 01:47:12,800
But this picture here of just boxes
is demonstrative of this general idea

2088
01:47:12,800 --> 01:47:14,451
of an array, or a list, or a vector.

2089
01:47:14,451 --> 01:47:16,450
And depending on the
context, all of these words

2090
01:47:16,450 --> 01:47:17,880
mean slightly different things.

2091
01:47:17,880 --> 01:47:20,060
So in C, we're only going
to talk about an array.

2092
01:47:20,060 --> 01:47:23,840
And an array is a chunk
of memory, each of whom's

2093
01:47:23,840 --> 01:47:27,720
elements are contiguous, back,
to back, to back, to back.

2094
01:47:27,720 --> 01:47:31,970
>> And those elements are, generally,
of the same data type, character,

2095
01:47:31,970 --> 01:47:35,966
character, character, character, or
string, string, string, string, or int,

2096
01:47:35,966 --> 01:47:38,600
int, int, whatever it is
we're trying to store.

2097
01:47:38,600 --> 01:47:42,540
But at the end of the day, this is
what it looks like conceptually.

2098
01:47:42,540 --> 01:47:44,530
You're taking your
computer's memory or RAM.

2099
01:47:44,530 --> 01:47:48,590
And you're carving it out into
identically sized boxes, all of which

2100
01:47:48,590 --> 01:47:50,920
are back, to back, to
back, to back in this way.

2101
01:47:50,920 --> 01:47:53,200
>> And what's nice about
this idea, and the fact

2102
01:47:53,200 --> 01:47:58,580
that we can express values in this way
with the first of our data structures

2103
01:47:58,580 --> 01:48:02,520
in the class, means we can start
to solve problems with code

2104
01:48:02,520 --> 01:48:04,079
that came so intuitively in week 0.

2105
01:48:04,079 --> 01:48:05,870
You'll recall the phone
book example, where

2106
01:48:05,870 --> 01:48:09,110
we used a divide and conquer,
or a binary search algorithm,

2107
01:48:09,110 --> 01:48:13,220
to sift through a whole
bunch of names and numbers.

2108
01:48:13,220 --> 01:48:18,220
But we assumed, recall, that that
phone book was already sorted,

2109
01:48:18,220 --> 01:48:21,630
that someone else had already
figured out-- given a list of names

2110
01:48:21,630 --> 01:48:24,430
and numbers-- how to alphabetize them.

2111
01:48:24,430 --> 01:48:26,950
And now that in C we,
too, have the ability

2112
01:48:26,950 --> 01:48:30,290
to lay things out, not
physically in a phone book

2113
01:48:30,290 --> 01:48:34,220
but virtually in a computer's
memory, will we be able next week

2114
01:48:34,220 --> 01:48:38,470
to introduce again this-- the first
of our data structures in an array--

2115
01:48:38,470 --> 01:48:43,530
but more importantly, actual computer
science algorithms implemented

2116
01:48:43,530 --> 01:48:47,720
in code, with which we can store
data in structures like this,

2117
01:48:47,720 --> 01:48:50,730
and then start to manipulate it, and
to actually solve problems with it,

2118
01:48:50,730 --> 01:48:53,570
and to build on top of that,
ultimately, programs in C,

2119
01:48:53,570 --> 01:48:56,730
in Python, in JavaScript,
querying databases with SQL?

2120
01:48:56,730 --> 01:48:59,980
>> And we'll see that all of these
different ideas interlock.

2121
01:48:59,980 --> 01:49:04,100
But for now, recall that the
domain that we introduced today

2122
01:49:04,100 --> 01:49:06,920
was this thing here, and
the world of cryptography.

2123
01:49:06,920 --> 01:49:11,200
And among the next problems you yourself
will solve is the art of cryptography,

2124
01:49:11,200 --> 01:49:13,630
scrambling and de-scrambling
information, and ciphering

2125
01:49:13,630 --> 01:49:15,930
and deciphering text,
and assuming ultimately

2126
01:49:15,930 --> 01:49:18,970
that you now know what
is underneath the hood

2127
01:49:18,970 --> 01:49:21,860
so that when you see or receive
a message like this, you

2128
01:49:21,860 --> 01:49:24,060
yourself can decipher it.

2129
01:49:24,060 --> 01:49:26,740
All this, and more next time.

2130
01:49:26,740 --> 01:49:29,890

2131
01:49:29,890 --> 01:49:30,790
>> [VIDEO PLAYBACK]

2132
01:49:30,790 --> 01:49:32,970
>> -Mover just arrived.

2133
01:49:32,970 --> 01:49:35,146
I'm going to go visit
his college professor.

2134
01:49:35,146 --> 01:49:37,611
Yep.

2135
01:49:37,611 --> 01:49:40,080
Hi.

2136
01:49:40,080 --> 01:49:40,660
It's you.

2137
01:49:40,660 --> 01:49:44,125

2138
01:49:44,125 --> 01:49:45,110
Wait!

2139
01:49:45,110 --> 01:49:45,610
David.

2140
01:49:45,610 --> 01:49:53,936

2141
01:49:53,936 --> 01:49:56,060
I'm just trying to figure
out what happened to you.

2142
01:49:56,060 --> 01:49:58,130
Please, anything could help.

2143
01:49:58,130 --> 01:50:05,020

2144
01:50:05,020 --> 01:50:08,354
You were his college
roommate, weren't you?

2145
01:50:08,354 --> 01:50:10,770
You were there with him when
he finished the CS50 project?

2146
01:50:10,770 --> 01:50:13,770

2147
01:50:13,770 --> 01:50:15,765
>> [MUSIC PLAYING]

2148
01:50:15,765 --> 01:50:32,110

2149
01:50:32,110 --> 01:50:33,150
>> -That was CS50.

2150
01:50:33,150 --> 01:50:42,690

2151
01:50:42,690 --> 01:50:44,770
>> I love this place.

2152
01:50:44,770 --> 01:50:45,854
>> -Eat up.

2153
01:50:45,854 --> 01:50:47,020
We're going out of business.

2154
01:50:47,020 --> 01:50:52,120

2155
01:50:52,120 --> 01:50:53,970
>> [END PLAYBACK]
