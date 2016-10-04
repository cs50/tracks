```
1
00:00:01,000 --> 00:00:17,255


2
00:00:17,255 --> 00:00:20,940
SPEAKER 1: All right, this is
CS50 and this is week five.

3
00:00:20,940 --> 00:00:23,560
And let's take a look at
where we left off last time.

4
00:00:23,560 --> 00:00:27,700
You may recall this guy here,
Binky from our friends at Stanford.

5
00:00:27,700 --> 00:00:30,950
And we used Binky to start
talking about pointers.

6
00:00:30,950 --> 00:00:32,159
What is a pointer?

7
00:00:32,159 --> 00:00:34,495
So, a pointer is just
an address, the location

8
00:00:34,495 --> 00:00:37,370
of some piece of data in memory,
because recall at the end of the day

9
00:00:37,370 --> 00:00:41,730
your computer just has a few pieces
of hardware inside of it, one of which

10
00:00:41,730 --> 00:00:43,910
is RAM or Random Access Memory.

11
00:00:43,910 --> 00:00:47,950
And in RAM you have the ability to
store bunches and bunches of bytes,

12
00:00:47,950 --> 00:00:50,067
or kilobytes, or
megabytes, or gigabytes,

13
00:00:50,067 --> 00:00:51,650
depending on how much memory you have.

14
00:00:51,650 --> 00:00:55,060
And if you assume that no
matter how much RAM you have you

15
00:00:55,060 --> 00:00:59,120
can enumerate the bytes-- this is byte
0, this is byte 1, this is byte 2,

16
00:00:59,120 --> 00:01:02,310
and so forth-- you can give each of
the bytes of your computer's memory

17
00:01:02,310 --> 00:01:05,459
an address and those addresses
are simply called pointers.

18
00:01:05,459 --> 00:01:08,930
And now in C we have the
ability to use pointers

19
00:01:08,930 --> 00:01:12,430
both to go to any location
in memory that we want

20
00:01:12,430 --> 00:01:15,860
and even to dynamically allocate
memory in case we don't necessarily

21
00:01:15,860 --> 00:01:20,037
know a priori how much memory
we might need for a program.

22
00:01:20,037 --> 00:01:21,870
Now, in terms of your
computer's RAM, recall

23
00:01:21,870 --> 00:01:23,870
that we divided the
world into this picture

24
00:01:23,870 --> 00:01:28,880
here whereby if this rectangular region,
arbitrarily, represents your computer's

25
00:01:28,880 --> 00:01:30,900
memory, here is how the
computer divvies it up

26
00:01:30,900 --> 00:01:33,270
when you're actually using a program.

27
00:01:33,270 --> 00:01:37,580
At the bottom of your computer's area
of memory, you have the so-called stack.

28
00:01:37,580 --> 00:01:40,750
And recall that the stack is where
any time you call a function,

29
00:01:40,750 --> 00:01:43,260
it gets a slice of
memory-- a frame of memory,

30
00:01:43,260 --> 00:01:46,100
if you will-- for all of its local
variables, all of its arguments

31
00:01:46,100 --> 00:01:47,790
and anything else that it might need.

32
00:01:47,790 --> 00:01:50,930
On top of that might go another
slice or frame of memory

33
00:01:50,930 --> 00:01:52,860
if that first function calls another.

34
00:01:52,860 --> 00:01:55,420
And if that second function in
turn calls another function,

35
00:01:55,420 --> 00:01:57,484
you might have a third
frame on the stack.

36
00:01:57,484 --> 00:02:00,650
Of course, this doesn't end well if you
keep calling function after function

37
00:02:00,650 --> 00:02:01,850
after function after function.

38
00:02:01,850 --> 00:02:04,980
And so, hopefully you don't accidentally
induce some kind of infinite loop

39
00:02:04,980 --> 00:02:08,060
such that these frames pile on
top of each other infinitely

40
00:02:08,060 --> 00:02:11,450
many times, because eventually they'll
run the risk of hitting the heap.

41
00:02:11,450 --> 00:02:13,550
Now, the heap is the same
type of physical memory.

42
00:02:13,550 --> 00:02:16,140
You're just using it in
a slightly different way.

43
00:02:16,140 --> 00:02:20,090
The heap is used any time you want
to dynamically allocate memory,

44
00:02:20,090 --> 00:02:22,320
when you don't know in
advance how many bytes

45
00:02:22,320 --> 00:02:25,270
you need but you do know once the
program is running how many you now

46
00:02:25,270 --> 00:02:25,840
want.

47
00:02:25,840 --> 00:02:28,970
You can ask via functions
like malloc the operating

48
00:02:28,970 --> 00:02:31,230
system for some number
of bytes, and those bytes

49
00:02:31,230 --> 00:02:33,010
are allocated from the heap.

50
00:02:33,010 --> 00:02:34,872
So, those two have addresses or numbers.

51
00:02:34,872 --> 00:02:36,830
And so, the operating
system, by way of malloc,

52
00:02:36,830 --> 00:02:38,871
just figures out which of
those bytes are not yet

53
00:02:38,871 --> 00:02:42,100
being used so that you can
now put whatever piece of data

54
00:02:42,100 --> 00:02:44,072
you have in that particular place.

55
00:02:44,072 --> 00:02:46,530
Now, beyond that [? appear ?]
things like initialized data,

56
00:02:46,530 --> 00:02:47,440
uninitialized data.

57
00:02:47,440 --> 00:02:50,700
That's where things like global
variables that are initialized or not

58
00:02:50,700 --> 00:02:53,060
end up that might be outside
of your main function.

59
00:02:53,060 --> 00:02:55,180
And then above that is the
so-called text segment,

60
00:02:55,180 --> 00:02:58,930
which are these zeros and ones
that actually compose your program.

61
00:02:58,930 --> 00:03:02,260
So when you double click an
icon on Windows or Mac OS

62
00:03:02,260 --> 00:03:06,250
to run a program or you type dot slash
something in the Linux command line

63
00:03:06,250 --> 00:03:10,080
environment in order to run a program,
the bits that compose your program

64
00:03:10,080 --> 00:03:14,180
are loaded also into memory
up into this region here.

65
00:03:14,180 --> 00:03:18,100
So, at the end of the day, you have
access to just pretty generic memory,

66
00:03:18,100 --> 00:03:19,840
but we use it in these different ways.

67
00:03:19,840 --> 00:03:22,720
And it allows us to
ultimately solve problems

68
00:03:22,720 --> 00:03:25,366
that we might not have
been able to in the past.

69
00:03:25,366 --> 00:03:28,490
Recall for instance this example here,
deliberately shown in red because it

70
00:03:28,490 --> 00:03:30,580
was [? buggy. ?] This does not work.

71
00:03:30,580 --> 00:03:36,820
Now, logically, it does do the swap that
we intend whereby a goes into b and b

72
00:03:36,820 --> 00:03:37,560
goes into a.

73
00:03:37,560 --> 00:03:40,060
And we achieve that result by
way of this temporary variable

74
00:03:40,060 --> 00:03:44,200
so that we have a temporary placeholder
into which to store one of those values

75
00:03:44,200 --> 00:03:45,510
while doing the swap.

76
00:03:45,510 --> 00:03:50,530
But it had no permanent impact on the
two variables that were passed into it.

77
00:03:50,530 --> 00:03:53,990
And that was because by default in C any
time you pass arguments to a function,

78
00:03:53,990 --> 00:03:56,820
those arguments are passed
so to speak, by value.

79
00:03:56,820 --> 00:04:00,310
You get copies of those values
being passed into a function.

80
00:04:00,310 --> 00:04:03,600
And so, if main, for instance,
has two variables, x and y--

81
00:04:03,600 --> 00:04:05,790
as they did last time--
and you pass x and y

82
00:04:05,790 --> 00:04:08,950
into a function like this
one here swap, x and y

83
00:04:08,950 --> 00:04:11,700
are going to get copied
as a and b respectively.

84
00:04:11,700 --> 00:04:15,330
So you might perfectly,
logically, correctly swap a and b,

85
00:04:15,330 --> 00:04:20,459
but you're having no permanent
impact on x and y themselves.

86
00:04:20,459 --> 00:04:23,530
But what if, per this
green version here,

87
00:04:23,530 --> 00:04:26,680
we reimplement swap to be
a little more complicated

88
00:04:26,680 --> 00:04:30,150
looking, but at the end of
the day actually correct?

89
00:04:30,150 --> 00:04:32,530
Notice now we've declared
a and b not to be

90
00:04:32,530 --> 00:04:37,140
integers but to be pointers to
integers, the addresses of integers.

91
00:04:37,140 --> 00:04:39,650
And that's what's implied by
the star that we're putting

92
00:04:39,650 --> 00:04:41,540
right there before the variable's name.

93
00:04:41,540 --> 00:04:43,544
Meanwhile, inside of the
body of this function,

94
00:04:43,544 --> 00:04:44,960
we still have three lines of code.

95
00:04:44,960 --> 00:04:47,820
And we're still using a temporary
variable, and that in itself

96
00:04:47,820 --> 00:04:48,550
is not a pointer.

97
00:04:48,550 --> 00:04:50,990
It's just an integer
as before, but notice

98
00:04:50,990 --> 00:04:54,170
we're using this star notation
again, albeit for a different purpose

99
00:04:54,170 --> 00:04:56,750
to actually dereference these pointers.

100
00:04:56,750 --> 00:05:02,150
Recall that int star a and int star
b means give me a variable that

101
00:05:02,150 --> 00:05:04,010
can store the address of a pointer.

102
00:05:04,010 --> 00:05:05,820
That's declaring a pointer.

103
00:05:05,820 --> 00:05:09,620
Meanwhile, if you just say star
a without declaring something

104
00:05:09,620 --> 00:05:11,610
to the left of it with
a data type like int,

105
00:05:11,610 --> 00:05:14,630
you're saying go to the
address that is in a.

106
00:05:14,630 --> 00:05:18,650
So if a is an address,
star a is at that address,

107
00:05:18,650 --> 00:05:21,760
which of course per its declaration
is going to be an integer.

108
00:05:21,760 --> 00:05:24,160
Similarly, star b means
go to the address in b.

109
00:05:24,160 --> 00:05:29,510
Star a means go to the address in a
and put the former into the latter,

110
00:05:29,510 --> 00:05:33,870
ultimately putting the value of temp at
the address in b-- so absolutely more

111
00:05:33,870 --> 00:05:36,120
complicated at first glance,
but if you consider again

112
00:05:36,120 --> 00:05:39,430
the first principles of what's
going on here, all we are doing

113
00:05:39,430 --> 00:05:42,457
are moving things around in memory.

114
00:05:42,457 --> 00:05:44,540
And we can do that now
because we have the ability

115
00:05:44,540 --> 00:05:47,450
to express the locations, the
numeric locations of where

116
00:05:47,450 --> 00:05:48,500
things are in memory.

117
00:05:48,500 --> 00:05:50,780
But nicely enough, we,
the programmer, don't have

118
00:05:50,780 --> 00:05:52,750
to care where things are in memory.

119
00:05:52,750 --> 00:05:57,080
We can access things symbolically
as we're doing here with a and b.

120
00:05:57,080 --> 00:05:59,260
So even though we might
have seen on the screen

121
00:05:59,260 --> 00:06:02,630
or you might see while debugging
actual addresses of memory,

122
00:06:02,630 --> 00:06:05,650
rarely does that actually
matter in practice.

123
00:06:05,650 --> 00:06:09,230
We can deal with everything we've
learned thus far symbolically.

124
00:06:09,230 --> 00:06:12,800
Now, last time we also took a
look at the world of forensics,

125
00:06:12,800 --> 00:06:15,900
and we took a look at how images are
implemented and specifically file

126
00:06:15,900 --> 00:06:19,510
formats like BNP, and JPEG,
and GIF, and yet others.

127
00:06:19,510 --> 00:06:23,640
And we glanced into [? Asmila's ?]
here as we tried to enhance this image,

128
00:06:23,640 --> 00:06:27,280
but of course, there was only
finite amount of information.

129
00:06:27,280 --> 00:06:30,350
So, what you see is what you get
in terms of any kind of glint

130
00:06:30,350 --> 00:06:32,260
or suspect in her eyes.

131
00:06:32,260 --> 00:06:34,360
But we did this in part
so that we could also

132
00:06:34,360 --> 00:06:38,420
introduce another feature of C that
allows us to declare our own data

133
00:06:38,420 --> 00:06:41,117
types, indeed our own data structures.

134
00:06:41,117 --> 00:06:42,950
For instance, we proposed
that if you wanted

135
00:06:42,950 --> 00:06:46,050
to write a program
that stores a student,

136
00:06:46,050 --> 00:06:48,980
you could actually declare
your own student data type

137
00:06:48,980 --> 00:06:52,850
inside of which is a name and
inside of which is a dorm,

138
00:06:52,850 --> 00:06:55,000
and anything else that
you might actually want.

139
00:06:55,000 --> 00:06:59,350
Meanwhile, this syntax here gives
us a new data type called student

140
00:06:59,350 --> 00:07:02,080
so that if we want to write a
program that implements students,

141
00:07:02,080 --> 00:07:06,260
we can actually wrap related
information together like name and dorm

142
00:07:06,260 --> 00:07:09,132
without having to maintain
a whole bunch of strings

143
00:07:09,132 --> 00:07:11,590
for just names and a whole
bunch of strings for just dorms.

144
00:07:11,590 --> 00:07:15,280
We can actually encapsulate things
all inside of one structure.

145
00:07:15,280 --> 00:07:18,370
And indeed encapsulation is another
principle of computer science

146
00:07:18,370 --> 00:07:22,350
that you'll see throughout program
and throughout the field itself.

147
00:07:22,350 --> 00:07:24,730
So, what do we now do this time?

148
00:07:24,730 --> 00:07:28,800
So, today we introduce more
sophisticated ingredients

149
00:07:28,800 --> 00:07:32,500
with which we can solve problems and
we revisit a problem from the past

150
00:07:32,500 --> 00:07:35,360
that we thought we had rather
knocked off and had solved.

151
00:07:35,360 --> 00:07:38,270
So, this might represent
a whole bunch of names,

152
00:07:38,270 --> 00:07:42,140
a whole bunch of numbers, a whole bunch
of telephone numbers in a phone book

153
00:07:42,140 --> 00:07:44,810
back to back to back to
back stored in this case

154
00:07:44,810 --> 00:07:47,920
in the form of an array, the simplest
of data structure, so to speak,

155
00:07:47,920 --> 00:07:49,170
that we've discussed thus far.

156
00:07:49,170 --> 00:07:53,670
And an array, again, is a contiguous
block of memory each of whose element--

157
00:07:53,670 --> 00:07:57,490
typically are of the same data type,
integers, or strings, or the like--

158
00:07:57,490 --> 00:08:00,520
and they are by definition
back to back to back to back,

159
00:08:00,520 --> 00:08:02,080
which allows you random access.

160
00:08:02,080 --> 00:08:04,163
Which means you can jump
to any of these locations

161
00:08:04,163 --> 00:08:07,120
instantly just by using in C
that square bracket notation

162
00:08:07,120 --> 00:08:10,580
or as we saw last time
using pointer arithmetic,

163
00:08:10,580 --> 00:08:13,870
actually using the star operator
and maybe adding some number two

164
00:08:13,870 --> 00:08:17,310
and address to get at
some subsequent address.

165
00:08:17,310 --> 00:08:21,320
But it turns out there's a few problems
with this fundamental approach.

166
00:08:21,320 --> 00:08:25,450
Nice and as simple as it is, it would
seem that we rather paint ourselves

167
00:08:25,450 --> 00:08:27,410
into a corner with this approach.

168
00:08:27,410 --> 00:08:33,270
This array has 1, 2, 3, 4, 5, 6 total
elements, at least as depicted here.

169
00:08:33,270 --> 00:08:35,630
So that's fine if you want
to insert a number, and then

170
00:08:35,630 --> 00:08:37,421
another number, and
then four more numbers.

171
00:08:37,421 --> 00:08:40,057
But what if you want to then
insert a seventh number,

172
00:08:40,057 --> 00:08:42,640
not to mention an eighth number
or a ninth number or the like?

173
00:08:42,640 --> 00:08:43,780
Well, where do you put them?

174
00:08:43,780 --> 00:08:45,488
Well, you might think,
well, that's fine.

175
00:08:45,488 --> 00:08:48,220
I'm just going to go put the
seventh number over here,

176
00:08:48,220 --> 00:08:51,590
or the eighth number over here,
or the ninth number over there.

177
00:08:51,590 --> 00:08:54,690
But you can't just blindly do that.

178
00:08:54,690 --> 00:08:56,880
If this memory is being
managed not by you

179
00:08:56,880 --> 00:09:01,130
per se but by malloc and by the computer
itself inside-- and your program,

180
00:09:01,130 --> 00:09:03,920
this memory over here, while
it might physically exist,

181
00:09:03,920 --> 00:09:07,985
might be used by some other part
of your program all together.

182
00:09:07,985 --> 00:09:10,760
It doesn't necessarily belong to
you unless you've asked for it.

183
00:09:10,760 --> 00:09:13,900
And the problem with an array is
that as we've seen it typically

184
00:09:13,900 --> 00:09:17,100
you declare their size in advance,
as with the square bracket notation,

185
00:09:17,100 --> 00:09:21,520
and say give me six integers or give me
six something or others, but that's it.

186
00:09:21,520 --> 00:09:23,100
You have to decide in advance.

187
00:09:23,100 --> 00:09:26,770
You can't just grow it as you can in
some programming languages thereafter.

188
00:09:26,770 --> 00:09:29,310
You've rather painted
yourself into a corner.

189
00:09:29,310 --> 00:09:33,080
But with malloc and other
functions like we saw last time,

190
00:09:33,080 --> 00:09:36,320
you can actually allocate
more memory using malloc.

191
00:09:36,320 --> 00:09:40,217
Unfortunately, it might end up in
another location in your computer's

192
00:09:40,217 --> 00:09:42,050
memory, so you might
have to do some copying

193
00:09:42,050 --> 00:09:43,800
to take the original six
elements and move them

194
00:09:43,800 --> 00:09:45,370
elsewhere just to make room for more.

195
00:09:45,370 --> 00:09:48,286
And there is a data function for
that, something called [? re-alloc ?]

196
00:09:48,286 --> 00:09:49,170
or reallocate.

197
00:09:49,170 --> 00:09:50,730
And indeed it can do exactly that.

198
00:09:50,730 --> 00:09:53,570
It can give you a bigger
chunk of memory and reallocate

199
00:09:53,570 --> 00:09:56,434
what was previously there
to be a larger [? size. ?]

200
00:09:56,434 --> 00:09:58,100
But you have to do a little bit of work.

201
00:09:58,100 --> 00:09:59,933
You have to invoke it
in order achieve that.

202
00:09:59,933 --> 00:10:03,260
You can't just blindly keep adding
things at the end of this array.

203
00:10:03,260 --> 00:10:07,720
Now, unfortunately, while a solution
that might not be very efficient.

204
00:10:07,720 --> 00:10:11,561
Even if you can allocate a bigger
chunk of memory that's bigger than six

205
00:10:11,561 --> 00:10:13,810
because you have more numbers,
for instance, to store,

206
00:10:13,810 --> 00:10:16,869
what if that takes a bit of time?

207
00:10:16,869 --> 00:10:17,910
And indeed it's going to.

208
00:10:17,910 --> 00:10:20,430
If you allocate more integers
somewhere else in memory

209
00:10:20,430 --> 00:10:22,360
you still have to copy
those original values,

210
00:10:22,360 --> 00:10:24,330
and now it just feels
like you're wasting time.

211
00:10:24,330 --> 00:10:26,510
Now, instead of just inserting
things into the list,

212
00:10:26,510 --> 00:10:30,520
you might have to copy it into a
bigger space, reallocate things, grow.

213
00:10:30,520 --> 00:10:31,420
It's a lot more work.

214
00:10:31,420 --> 00:10:34,640
And all of that discussion of
running time and performance

215
00:10:34,640 --> 00:10:38,660
comes back into play, because if that
whole copying process and reallocating

216
00:10:38,660 --> 00:10:41,520
is costing you time, your
algorithm or your program

217
00:10:41,520 --> 00:10:45,250
ultimately might not really be
as fast as you might want it.

218
00:10:45,250 --> 00:10:46,710
So, what could we do instead?

219
00:10:46,710 --> 00:10:49,250
What could we do instead
in order to solve

220
00:10:49,250 --> 00:10:53,060
this problem dynamically, so to
speak, that being the operative word.

221
00:10:53,060 --> 00:10:57,920
And luckily enough, last week we learned
that there is dynamic memory allocation

222
00:10:57,920 --> 00:11:00,120
in C by way of that function malloc.

223
00:11:00,120 --> 00:11:03,330
And we also learned that there is
ways of representing structures

224
00:11:03,330 --> 00:11:07,279
in C that you don't necessarily
get with the language itself,

225
00:11:07,279 --> 00:11:08,570
because they're not primitives.

226
00:11:08,570 --> 00:11:09,530
They're not built in.

227
00:11:09,530 --> 00:11:13,880
In other words, let me propose
this as a solution to our problem.

228
00:11:13,880 --> 00:11:18,020
This is a list of, let's see,
five numbers it would seem,

229
00:11:18,020 --> 00:11:22,180
9, 17, 22, 26, and 34.

230
00:11:22,180 --> 00:11:24,340
Pretty arbitrary right
now, but you might

231
00:11:24,340 --> 00:11:27,850
imagine very simply drawing those
same numbers-- 9, 17, 22, 26,

232
00:11:27,850 --> 00:11:33,220
34-- in the form of an array and
they're clearly deliberately sorted.

233
00:11:33,220 --> 00:11:37,090
But again, what if you wanted to grow
that array or even shrink that array

234
00:11:37,090 --> 00:11:38,850
dynamically over time?

235
00:11:38,850 --> 00:11:42,370
Well, let me propose that we not draw
those numbers back to back to back

236
00:11:42,370 --> 00:11:45,950
to back literally next to each other
but allow ourselves potentially

237
00:11:45,950 --> 00:11:47,600
a little bit of space?

238
00:11:47,600 --> 00:11:51,920
But if that's the case and nine is here
in my computer's memory and 17 is here

239
00:11:51,920 --> 00:11:55,010
and 22 is here, or over here,
or over here-- in other words,

240
00:11:55,010 --> 00:11:58,440
what if I relax the constraint that
my numbers or my data types more

241
00:11:58,440 --> 00:12:02,710
generally have to be stored contiguously
back to back to back to back in memory

242
00:12:02,710 --> 00:12:06,310
and instead allow them to be anywhere,
indeed anywhere a function like malloc

243
00:12:06,310 --> 00:12:08,430
wants to give me more
memory, that's fine.

244
00:12:08,430 --> 00:12:10,960
If it wants to give me memory up here
in my computer, I'll deal with that.

245
00:12:10,960 --> 00:12:13,418
If it wants to give me extra
memory over here, that's fine.

246
00:12:13,418 --> 00:12:17,510
I'll deal with it, because I'll use
these conceptual arrows to stitch

247
00:12:17,510 --> 00:12:20,606
together my data structure this time.

248
00:12:20,606 --> 00:12:22,980
And now, where have we seen
these kinds of arrows before?

249
00:12:22,980 --> 00:12:26,620
What feature of C allows
us to connect one thing

250
00:12:26,620 --> 00:12:31,100
to another where a la chutes and
ladders get from one place to another?

251
00:12:31,100 --> 00:12:34,230
Well, that's exactly what we saw
last time which was pointers.

252
00:12:34,230 --> 00:12:38,900
While we've drawn these here per the
snippet from a textbook using arrows,

253
00:12:38,900 --> 00:12:40,410
those are really just pointers.

254
00:12:40,410 --> 00:12:43,630
And what does each of
these rectangles represent?

255
00:12:43,630 --> 00:12:46,700
Well, clearly a number in the
top half of the rectangle,

256
00:12:46,700 --> 00:12:49,810
but I claim that at the bottom
half of these rectangles

257
00:12:49,810 --> 00:12:53,030
let's consider that bottom rectangle
to just be another piece of data,

258
00:12:53,030 --> 00:12:55,820
specifically an int star, a pointer.

259
00:12:55,820 --> 00:12:59,950
Or rather not a pointer because it seems
to be pointing not just to the number

260
00:12:59,950 --> 00:13:03,320
but to this whole rectangle,
so I need some new terminology.

261
00:13:03,320 --> 00:13:08,900
I need some kind of structure to
contain an integer and this pointer.

262
00:13:08,900 --> 00:13:11,300
And for that, I think I'm
going to need a struct.

263
00:13:11,300 --> 00:13:15,840
And indeed let me propose that to
solve this problem we give ourselves

264
00:13:15,840 --> 00:13:19,642
this building block as a new
C data type called a node.

265
00:13:19,642 --> 00:13:21,850
You can call it anything
you want, but the convention

266
00:13:21,850 --> 00:13:24,120
would be to call something like
this in a data structure-- that's

267
00:13:24,120 --> 00:13:26,578
like a puzzle piece or a building
block in a data structure

268
00:13:26,578 --> 00:13:27,770
would be called a node.

269
00:13:27,770 --> 00:13:30,750
Let me propose that we
define it as follows.

270
00:13:30,750 --> 00:13:34,060
I'm using that same syntax from last
time with which we declared a student

271
00:13:34,060 --> 00:13:37,720
data type, but here I'm saying
inside of this data structure,

272
00:13:37,720 --> 00:13:39,874
this node shall be an int.

273
00:13:39,874 --> 00:13:41,290
And that's pretty straightforward.

274
00:13:41,290 --> 00:13:43,331
Just like a student might
have a name and a dorm,

275
00:13:43,331 --> 00:13:46,920
this node will have an
int called n arbitrarily.

276
00:13:46,920 --> 00:13:50,590
And then the only piece of detail
that's a little bit new now is

277
00:13:50,590 --> 00:13:53,359
the second line, struct node star next.

278
00:13:53,359 --> 00:13:54,400
Now, what does that mean?

279
00:13:54,400 --> 00:13:59,130
It's pretty verbose, but struct node
is just recursively, if you will,

280
00:13:59,130 --> 00:14:02,080
referring to this same
type of data structure.

281
00:14:02,080 --> 00:14:05,800
Star means this is going to be a
pointer, the address of one such thing,

282
00:14:05,800 --> 00:14:08,160
and next is just an arbitrary
but pretty reasonable

283
00:14:08,160 --> 00:14:10,220
name to give to such a pointer.

284
00:14:10,220 --> 00:14:13,050
So this line here,
struct node star next,

285
00:14:13,050 --> 00:14:16,790
is the incantation in C
with which you declare

286
00:14:16,790 --> 00:14:20,690
one of those arrows that will
point from one node, one rectangle

287
00:14:20,690 --> 00:14:23,260
to another node, another rectangle.

288
00:14:23,260 --> 00:14:26,700
And the fact that we have a
little bit of additional verbiage

289
00:14:26,700 --> 00:14:30,280
up here, typedef struct
node, is because again C

290
00:14:30,280 --> 00:14:32,810
is a language that is read
top to bottom, left to right,

291
00:14:32,810 --> 00:14:35,580
so words have to exist
before you actually use them.

292
00:14:35,580 --> 00:14:37,644
So, whereas last time when
we declared a student,

293
00:14:37,644 --> 00:14:40,310
we didn't actually mention struct
student or anything like that.

294
00:14:40,310 --> 00:14:42,570
We just said typedef open curly brace.

295
00:14:42,570 --> 00:14:44,830
Today, when declaring
a node, we actually

296
00:14:44,830 --> 00:14:47,997
have to have some additional syntax
here just called struct node.

297
00:14:47,997 --> 00:14:49,830
And technically this
word could be anything,

298
00:14:49,830 --> 00:14:51,920
but I'll leave it as
node for consistency.

299
00:14:51,920 --> 00:14:54,600
And that allows me
inside of this definition

300
00:14:54,600 --> 00:14:58,350
or to specify that the
second data member is

301
00:14:58,350 --> 00:15:01,430
going to be a pointer to exactly
that kind of data structure.

302
00:15:01,430 --> 00:15:06,180
But typedef, just to be clear, allows
me to type a smaller name for this data

303
00:15:06,180 --> 00:15:11,070
structure here, which I will
simply called node at this point.

304
00:15:11,070 --> 00:15:14,136
So, what can we actually do with
this kind of data structure now?

305
00:15:14,136 --> 00:15:16,260
And, indeed, let's give
this data structure a name.

306
00:15:16,260 --> 00:15:18,150
Let's start calling a linked list.

307
00:15:18,150 --> 00:15:21,632
Previously, we had arrays, but now
we have linked lists, both of which

308
00:15:21,632 --> 00:15:24,090
at the end of the day are types
of lists, but linked lists,

309
00:15:24,090 --> 00:15:27,750
as the name suggests, are linked or
threaded together using pointers.

310
00:15:27,750 --> 00:15:30,896
Now, when you have a linked list,
what might be some operations,

311
00:15:30,896 --> 00:15:33,020
some algorithms that you
might want to run on them?

312
00:15:33,020 --> 00:15:36,228
Well, if you've got a linked list of
say numbers, for the sake of discussion,

313
00:15:36,228 --> 00:15:38,481
you might want to insert a
new number into that list.

314
00:15:38,481 --> 00:15:40,480
You might want to delete
a number from that list

315
00:15:40,480 --> 00:15:43,514
and you might want to search that list.

316
00:15:43,514 --> 00:15:45,930
And that allows us to then
consider how we might implement

317
00:15:45,930 --> 00:15:47,250
each of these kinds of things.

318
00:15:47,250 --> 00:15:51,610
But it turns out while all simply--
while fairly simple intuitively,

319
00:15:51,610 --> 00:15:54,860
we're going to have to be a little
careful now by way of our pointers.

320
00:15:54,860 --> 00:15:58,160
So, let's more formally declare a
linked list to look something like this.

321
00:15:58,160 --> 00:16:01,110
It's a collection of nodes
that are linked together

322
00:16:01,110 --> 00:16:04,010
with pointers as represented
by these arrows here,

323
00:16:04,010 --> 00:16:06,810
but we're going to need some
special pointer, at least

324
00:16:06,810 --> 00:16:08,069
at the beginning of the list.

325
00:16:08,069 --> 00:16:09,110
Let's just call it first.

326
00:16:09,110 --> 00:16:12,260
It doesn't necessarily
store a actual integer.

327
00:16:12,260 --> 00:16:16,540
It itself first is just a
pointer to the start of the list.

328
00:16:16,540 --> 00:16:20,060
And by way of that pointer can we access
the first actual node in the list.

329
00:16:20,060 --> 00:16:23,060
From there can we get at the second,
from there can we get at the third,

330
00:16:23,060 --> 00:16:25,060
and the fourth, and the fifth,
and any number of others.

331
00:16:25,060 --> 00:16:27,520
And this syntax over here
might just represent null.

332
00:16:27,520 --> 00:16:28,900
Because you don't want
to have that pointer just

333
00:16:28,900 --> 00:16:32,020
pointing off into no man's land, that
will have to be a null pointer so

334
00:16:32,020 --> 00:16:34,145
that if we check for that
with a condition we know,

335
00:16:34,145 --> 00:16:35,772
OK, we're at the end of the list.

336
00:16:35,772 --> 00:16:38,730
So, let's pause for just a moment
and consider these three algorithms--

337
00:16:38,730 --> 00:16:43,845
insert, delete, and search, and
consider what's going to be involved.

338
00:16:43,845 --> 00:16:47,410
Well, how would you go about
searching for an element of this list?

339
00:16:47,410 --> 00:16:50,270
Suppose I wanted to find the number 22?

340
00:16:50,270 --> 00:16:51,150
What do you do?

341
00:16:51,150 --> 00:16:53,941
Well, me, I, the human can just
look at this and be like all right,

342
00:16:53,941 --> 00:16:55,430
22 is right there.

343
00:16:55,430 --> 00:16:56,690
But a computer can't do that.

344
00:16:56,690 --> 00:16:58,330
A computer every time
we've had this discussion

345
00:16:58,330 --> 00:17:00,090
can only look at one thing at a time.

346
00:17:00,090 --> 00:17:02,990
But moreover the computer this
time is even more constrained

347
00:17:02,990 --> 00:17:07,030
because it can't just use
our old friend binary search

348
00:17:07,030 --> 00:17:11,315
or divide and conquer, because how do
you get to the middle of a linked list?

349
00:17:11,315 --> 00:17:13,079
Well, you have to find your way there.

350
00:17:13,079 --> 00:17:16,310
The only thing you have in a
linked list from the outset

351
00:17:16,310 --> 00:17:20,750
is one pointer called first or whatever
it is, but one pointer that leads you

352
00:17:20,750 --> 00:17:23,940
to the beginning of the list,
the first node in the list.

353
00:17:23,940 --> 00:17:26,190
So, if you want to get to
the second node in the list,

354
00:17:26,190 --> 00:17:29,000
you can't just go to bracket one,
or bracket two, or bracket three

355
00:17:29,000 --> 00:17:31,000
to get any number of other
elements in the list.

356
00:17:31,000 --> 00:17:33,200
You have to follow these
bread crumbs, if you will.

357
00:17:33,200 --> 00:17:36,870
You have to follow these arrows or these
addresses to go from one node's address

358
00:17:36,870 --> 00:17:38,490
to the other to the other.

359
00:17:38,490 --> 00:17:41,630
And so, we've paid a price already.

360
00:17:41,630 --> 00:17:43,930
And we'll see that there
is still an advantage here,

361
00:17:43,930 --> 00:17:45,350
but what's the running time?

362
00:17:45,350 --> 00:17:51,060
What's an upper bound on the running
time of search for a linked list,

363
00:17:51,060 --> 00:17:52,255
even if it is sorted?

364
00:17:52,255 --> 00:17:55,009


365
00:17:55,009 --> 00:17:55,550
Any thoughts?

366
00:17:55,550 --> 00:17:58,620


367
00:17:58,620 --> 00:18:01,000
Is it constant time like big O of 1?

368
00:18:01,000 --> 00:18:02,400
Is it log of n?

369
00:18:02,400 --> 00:18:06,190
Is it n, n squared?

370
00:18:06,190 --> 00:18:07,980
What's the running time going to be?

371
00:18:07,980 --> 00:18:11,250
Well, they're sorted, and that was this
magical ingredient, this assumption

372
00:18:11,250 --> 00:18:13,820
we've been allowed to make in
the past which was helpful,

373
00:18:13,820 --> 00:18:16,220
but that assumed that
we had random access.

374
00:18:16,220 --> 00:18:19,500
In C, we had square bracket notation,
so that using some simple arithmetic

375
00:18:19,500 --> 00:18:21,640
we could jump roughly to the
middle, and then the next middle,

376
00:18:21,640 --> 00:18:24,723
and the next middle looking for Mike
Smith or whatever element it is we're

377
00:18:24,723 --> 00:18:25,420
looking for.

378
00:18:25,420 --> 00:18:28,570
Unfortunately here, one
price we have already

379
00:18:28,570 --> 00:18:34,340
paid already by taking this step
toward linked lists is linear time.

380
00:18:34,340 --> 00:18:38,050
Big O of n would seem to be the running
time of searching a linked list,

381
00:18:38,050 --> 00:18:40,630
because the only way you can
start is at the beginning,

382
00:18:40,630 --> 00:18:44,530
and the only way you can get through
the list is by following these arrows.

383
00:18:44,530 --> 00:18:47,230
And if there's n nodes
in the list, you're

384
00:18:47,230 --> 00:18:51,490
going to need as many as n steps to
find, something like 22, or 26, or 34,

385
00:18:51,490 --> 00:18:53,767
or any elements all together.

386
00:18:53,767 --> 00:18:55,100
Well, that's not all that great.

387
00:18:55,100 --> 00:18:57,720
What about insert?

388
00:18:57,720 --> 00:19:02,230
What's an upper bound on
the running time of insert?

389
00:19:02,230 --> 00:19:03,970
Well, here too it depends.

390
00:19:03,970 --> 00:19:08,030
Suppose that we don't care
about keeping the list sorted.

391
00:19:08,030 --> 00:19:11,010
That's kind of a nice advantage,
so I can be a little lazy here.

392
00:19:11,010 --> 00:19:13,230
So, what's the running
time going to be if I

393
00:19:13,230 --> 00:19:16,770
want to insert a new number like
the number 50 into this list,

394
00:19:16,770 --> 00:19:19,160
but I don't care about
keeping it sorted?

395
00:19:19,160 --> 00:19:22,600
Well, instinctively, where
would you put this element?

396
00:19:22,600 --> 00:19:24,610
Where would you put it?

397
00:19:24,610 --> 00:19:27,390
You might be inclined-- you kind
of want to put it over here,

398
00:19:27,390 --> 00:19:28,930
because it's the biggest element.

399
00:19:28,930 --> 00:19:30,450
But again, if you don't care
about keeping it sorted,

400
00:19:30,450 --> 00:19:33,116
where is the fastest, the quickest
and dirtiest place to put it?

401
00:19:33,116 --> 00:19:35,660
I would propose let's just put
it at the front of the list.

402
00:19:35,660 --> 00:19:39,770
Let's take this first pointer,
point it at the new number

403
00:19:39,770 --> 00:19:42,290
50 that we've have somehow
added to the picture

404
00:19:42,290 --> 00:19:44,920
as by calling malloc, asking
malloc for a new node.

405
00:19:44,920 --> 00:19:49,910
And then have 50, in turn, point to the
number 9, and then 9 can point to 17,

406
00:19:49,910 --> 00:19:51,080
and 22, and so forth.

407
00:19:51,080 --> 00:19:52,956
What if we want to insert
another number, 42,

408
00:19:52,956 --> 00:19:54,538
and we don't care about where it goes?

409
00:19:54,538 --> 00:19:57,100
Well, why don't we just put it
at the beginning of the list?

410
00:19:57,100 --> 00:19:59,860
Then we have the first
pointers pointing at 42,

411
00:19:59,860 --> 00:20:03,630
which in turn should point at 50, which
in turn can point at 9, then 17, then

412
00:20:03,630 --> 00:20:04,897
22, and so forth.

413
00:20:04,897 --> 00:20:06,980
So, if we're just lazy
about this, we can actually

414
00:20:06,980 --> 00:20:10,520
achieve a great running time
for insert constant time.

415
00:20:10,520 --> 00:20:14,280
Unfortunately, if we want
to keep things sorted then

416
00:20:14,280 --> 00:20:17,830
we're going to have to incur a
linear time cost again, right?

417
00:20:17,830 --> 00:20:20,446
Because if we have to
insert 42 or 50, worst case

418
00:20:20,446 --> 00:20:23,070
they might belong all the way at
the end of the list and that's

419
00:20:23,070 --> 00:20:25,090
Big O of n steps.

420
00:20:25,090 --> 00:20:28,840
And delete, too, unfortunately,
whether it's sorted or unsorted

421
00:20:28,840 --> 00:20:31,015
is also like search
going to be Big O of n

422
00:20:31,015 --> 00:20:33,890
because you don't necessarily know
when you're searching for a number

423
00:20:33,890 --> 00:20:36,889
to delete if it's going to be at the
beginning, the middle, and the end.

424
00:20:36,889 --> 00:20:39,440
So, in the worst case, it
might indeed be at the end.

425
00:20:39,440 --> 00:20:40,380
You know what?

426
00:20:40,380 --> 00:20:42,970
Why don't we instead of
walking through this verbally,

427
00:20:42,970 --> 00:20:44,752
let's see if we can't
get some volunteers?

428
00:20:44,752 --> 00:20:49,090
Can we get seven volunteers to play--
wow, to play the role of numbers here.

429
00:20:49,090 --> 00:20:53,870
1, 2, 3, 4, 5, 6, and
yes, 7, come on up.

430
00:20:53,870 --> 00:20:56,800
All right, so I have here some
printouts for all seven of you

431
00:20:56,800 --> 00:21:00,150
that represent exactly the nodes
that we have here on the screen.

432
00:21:00,150 --> 00:21:01,820
Let's meet one of our first contestants.

433
00:21:01,820 --> 00:21:02,320
What is your name?

434
00:21:02,320 --> 00:21:02,910
AUDIENCE: Scully.

435
00:21:02,910 --> 00:21:04,420
SPEAKER 1: Scully, nice to see you.

436
00:21:04,420 --> 00:21:07,310
So, you shall be literally first
and represent our first pointer.

437
00:21:07,310 --> 00:21:09,690
So, if you want to come and
stand roughly over here.

438
00:21:09,690 --> 00:21:10,330
And then what is your name?

439
00:21:10,330 --> 00:21:10,720
AUDIENCE: Maria.

440
00:21:10,720 --> 00:21:12,136
SPEAKER 1: Maria, nice to see you.

441
00:21:12,136 --> 00:21:16,830
And you can be the number 9 right
next to our first contestant.

442
00:21:16,830 --> 00:21:17,420
And your name?

443
00:21:17,420 --> 00:21:17,780
AUDIENCE: Sarah.

444
00:21:17,780 --> 00:21:19,196
SPEAKER 1: Sarah, nice to see you.

445
00:21:19,196 --> 00:21:20,537
You shall be the number 17.

446
00:21:20,537 --> 00:21:21,120
And your name?

447
00:21:21,120 --> 00:21:21,540
[? AUDIENCE: Satoshi. ?]

448
00:21:21,540 --> 00:21:23,290
[? SPEAKER 1: Satoshi, ?]
nice to see you.

449
00:21:23,290 --> 00:21:24,657
You shall be 20.

450
00:21:24,657 --> 00:21:25,240
And your name?

451
00:21:25,240 --> 00:21:25,870
[? AUDIENCE: Mosof. ?]

452
00:21:25,870 --> 00:21:27,536
[? SPEAKER 1: Mosof, ?] nice to see you.

453
00:21:27,536 --> 00:21:28,897
And you shall be 22.

454
00:21:28,897 --> 00:21:29,480
AUDIENCE: Jed.

455
00:21:29,480 --> 00:21:34,330
SPEAKER 1: Jed, nice to
see you-- 29, formerly 26.

456
00:21:34,330 --> 00:21:35,025
And your name?

457
00:21:35,025 --> 00:21:35,650
AUDIENCE: Erin.

458
00:21:35,650 --> 00:21:37,025
SPEAKER 1: Erin, nice to see you.

459
00:21:37,025 --> 00:21:37,940
You shall be 34.

460
00:21:37,940 --> 00:21:42,630
All right, so what we have here
is seven elements, six of which

461
00:21:42,630 --> 00:21:46,260
are very similar to themselves, one
of which is fundamentally different.

462
00:21:46,260 --> 00:21:49,370
So, Scully here represents first,
and indeed her sheet of paper

463
00:21:49,370 --> 00:21:52,080
is horizontal to suggest
that she is just a node.

464
00:21:52,080 --> 00:21:55,770
She is just going to be the
pointer of to a node in a list.

465
00:21:55,770 --> 00:21:57,742
Everyone else's nodes
are vertical, as have

466
00:21:57,742 --> 00:21:59,950
been the rectangles we've
been drawing on the screen,

467
00:21:59,950 --> 00:22:04,350
because each of these guys represents
a number as well as a next pointer.

468
00:22:04,350 --> 00:22:06,940
Now of course, you're only seeing
in front of you the number.

469
00:22:06,940 --> 00:22:08,500
So we're going to go ahead
and if you wouldn't mind,

470
00:22:08,500 --> 00:22:12,170
use your left hand to represent the
arrow that we've long had on the screen

471
00:22:12,170 --> 00:22:13,820
to point to the person next to you.

472
00:22:13,820 --> 00:22:16,680
And Erin, you're a bit
of an anomaly, but also

473
00:22:16,680 --> 00:22:19,759
because you need to have a null
pointer at the end of the list,

474
00:22:19,759 --> 00:22:21,550
so that you're not just
pointing aimlessly.

475
00:22:21,550 --> 00:22:23,820
And pointing to the ground
seems fine, so literally

476
00:22:23,820 --> 00:22:28,120
pointing to the ground will
represent-- will infer as null.

477
00:22:28,120 --> 00:22:30,870
So, Scully, you are the only
thing keeping this list together,

478
00:22:30,870 --> 00:22:31,510
so to speak.

479
00:22:31,510 --> 00:22:35,990
So, you two need to point with
your one pointer to Maria there.

480
00:22:35,990 --> 00:22:37,870
So, here we have a linked list.

481
00:22:37,870 --> 00:22:41,130
And just to make this clear, could
everyone separate from each other

482
00:22:41,130 --> 00:22:43,710
by a step or two in any direction?

483
00:22:43,710 --> 00:22:47,029
Notice that the list is still--
it's almost identical to before.

484
00:22:47,029 --> 00:22:49,070
Can some of you take a
step forward, a step back,

485
00:22:49,070 --> 00:22:51,010
but still point at the other person?

486
00:22:51,010 --> 00:22:53,540
So, now we're capturing a
little more accurately the fact

487
00:22:53,540 --> 00:22:56,650
that these nodes and these
pointers can be anywhere in memory,

488
00:22:56,650 --> 00:23:01,080
so long as they're linking themselves
together by way of these pointers.

489
00:23:01,080 --> 00:23:03,320
All right, so suppose
now that I want to insert

490
00:23:03,320 --> 00:23:08,590
an element like 55, which happens
to belong at the end of this list.

491
00:23:08,590 --> 00:23:12,410
Let me go ahead and malloc
Christian if I could.

492
00:23:12,410 --> 00:23:15,010
So we have asked malloc for
a chunk of memory equivalent

493
00:23:15,010 --> 00:23:17,820
to the size of one
integer and one pointer.

494
00:23:17,820 --> 00:23:20,350
That is going to be represented
with this rectangle here.

495
00:23:20,350 --> 00:23:21,146
Nice to see you.

496
00:23:21,146 --> 00:23:21,552
AUDIENCE: Nice to see you.

497
00:23:21,552 --> 00:23:23,000
SPEAKER 1: You shall be 55.

498
00:23:23,000 --> 00:23:26,069
And I'll play the role of the temporary
pointer as predecessor pointer

499
00:23:26,069 --> 00:23:27,860
or pointer just using
my left or right hand

500
00:23:27,860 --> 00:23:30,920
to try to figure out
where Christian belongs.

501
00:23:30,920 --> 00:23:36,370
So, just like you might-- just like
we might want to search the list,

502
00:23:36,370 --> 00:23:39,120
inserting is fundamentally
rather the same.

503
00:23:39,120 --> 00:23:41,940
The only thing I have access to
at the outset of this algorithm

504
00:23:41,940 --> 00:23:44,680
is my first pointer, and
it's only by way of Scully

505
00:23:44,680 --> 00:23:46,630
that I can even access
the rest of the list.

506
00:23:46,630 --> 00:23:48,930
I cannot jump to the
middle, jump to the end.

507
00:23:48,930 --> 00:23:52,307
I can only start at the beginning
and literally follow the pointer.

508
00:23:52,307 --> 00:23:53,640
So, let me go ahead and do that.

509
00:23:53,640 --> 00:23:55,010
Let me go ahead and
point at whatever Scully

510
00:23:55,010 --> 00:23:58,076
is pointing at, which happens to
be Maria, which is the number 9.

511
00:23:58,076 --> 00:24:00,210
55, of course, is
bigger than that, and I

512
00:24:00,210 --> 00:24:02,550
do want to keep the list
sorted for today's purposes.

513
00:24:02,550 --> 00:24:06,870
So I'm going to very carefully
follow the next pointer, 17.

514
00:24:06,870 --> 00:24:08,370
Follow the next pointer, 20.

515
00:24:08,370 --> 00:24:10,120
Follow the next pointer, 22.

516
00:24:10,120 --> 00:24:11,960
Follow the next pointer, 29.

517
00:24:11,960 --> 00:24:13,790
Follow the next pointer, 34.

518
00:24:13,790 --> 00:24:16,634
Follow the next pointer,
ah dammit, null.

519
00:24:16,634 --> 00:24:19,300
And so this is why it is important
with some of these algorithms

520
00:24:19,300 --> 00:24:23,450
to have a predecessor pointer, a
second pointer or really my left hand

521
00:24:23,450 --> 00:24:26,160
so that maybe my left hand
can still point at Erin.

522
00:24:26,160 --> 00:24:29,620
My right hand can realize,
ah, null, so that I still

523
00:24:29,620 --> 00:24:32,540
have access to the last node
in the list so that Christian--

524
00:24:32,540 --> 00:24:34,270
if you could come over here.

525
00:24:34,270 --> 00:24:40,750
I'm going to go ahead and tell Erin
quite simply to point at Christian.

526
00:24:40,750 --> 00:24:44,795
Good, and let's just say for
students' sake come on over here,

527
00:24:44,795 --> 00:24:47,420
but technically we could have
left Christian there and just had

528
00:24:47,420 --> 00:24:48,310
Erin pointing at him.

529
00:24:48,310 --> 00:24:50,560
It's just going to get a
little confusing before long,

530
00:24:50,560 --> 00:24:52,859
so we'll just cheat and
move you right over here.

531
00:24:52,859 --> 00:24:55,400
But now we have a linked list
that has one additional member.

532
00:24:55,400 --> 00:24:59,430
Suppose now that we want to
make another insertion-- pardon.

533
00:24:59,430 --> 00:25:04,290
Let me go ahead and propose
that we insert say the number 5.

534
00:25:04,290 --> 00:25:09,890
Well, the number 5, of course,
belongs at the beginning of the list.

535
00:25:09,890 --> 00:25:10,600
So you know what?

536
00:25:10,600 --> 00:25:11,620
I need to malloc.

537
00:25:11,620 --> 00:25:16,126
Can I malloc Jordan off
camera five, perhaps?

538
00:25:16,126 --> 00:25:18,810
So malloc, a very slow return value.

539
00:25:18,810 --> 00:25:22,930
OK, we're going to store your
node your n value five here.

540
00:25:22,930 --> 00:25:25,530
His pointer is undefined right
now, because he's not actually

541
00:25:25,530 --> 00:25:26,520
pointing at anything.

542
00:25:26,520 --> 00:25:28,431
And so where does he ultimately belong?

543
00:25:28,431 --> 00:25:30,180
Well, he belongs at
the start of the list.

544
00:25:30,180 --> 00:25:32,210
So, let me deliberately make a mistake.

545
00:25:32,210 --> 00:25:35,450
Let me go ahead and update
Scully to point at Jordan,

546
00:25:35,450 --> 00:25:38,200
thereby putting Jordan effectively
at the front of the list.

547
00:25:38,200 --> 00:25:42,820
Unfortunately, whom should
Jordan now point at technically?

548
00:25:42,820 --> 00:25:46,340
It should be Maria, but this is code.

549
00:25:46,340 --> 00:25:49,000
The only thing we can do
is copy pointers in memory,

550
00:25:49,000 --> 00:25:51,790
and if Scully's left hand is
no longer pointing at Maria,

551
00:25:51,790 --> 00:25:54,800
I have literally orphaned
the entirety of this list.

552
00:25:54,800 --> 00:25:58,900
I have leaked 1, 2, 3, 4,
5, 6, 7 chunks of memory,

553
00:25:58,900 --> 00:26:02,680
seven nodes, because I got my
order of operations out of order.

554
00:26:02,680 --> 00:26:06,370
Indeed, I should have done
what-- let's undo, control Z.

555
00:26:06,370 --> 00:26:08,190
And now let me go ahead and do what?

556
00:26:08,190 --> 00:26:11,990
Jordan should point at the exact
same thing Scully is pointing at,

557
00:26:11,990 --> 00:26:13,520
which has no downside.

558
00:26:13,520 --> 00:26:16,200
Even though it feels redundant,
we've not lost any information.

559
00:26:16,200 --> 00:26:19,030
And now that Jordan
is pointing at Maria,

560
00:26:19,030 --> 00:26:21,965
Scully's pointer can
be pointed at Jordan.

561
00:26:21,965 --> 00:26:24,090
And now, even though the
list looks a little weird,

562
00:26:24,090 --> 00:26:25,798
this is a key feature
of the linked list.

563
00:26:25,798 --> 00:26:28,230
These nodes could have
been malloc from anywhere.

564
00:26:28,230 --> 00:26:31,530
So indeed, even though we initially
kept everyone physically sorted

565
00:26:31,530 --> 00:26:36,570
left to right-- and you've all cleaned
the list up even since-- that's OK.

566
00:26:36,570 --> 00:26:39,594
The point is that all of these
nodes are linked together.

567
00:26:39,594 --> 00:26:41,260
So, thank you so much to our volunteers.

568
00:26:41,260 --> 00:26:43,468
You can keep these pieces
of paper and later on we'll

569
00:26:43,468 --> 00:26:44,910
have some stress balls for you.

570
00:26:44,910 --> 00:26:51,140
But that's the key idea
here behind a linked list.

571
00:26:51,140 --> 00:26:52,800
Thank you.

572
00:26:52,800 --> 00:26:56,110
So, of course, there are some
more complicated operations

573
00:26:56,110 --> 00:26:57,444
that we might have to deal with.

574
00:26:57,444 --> 00:27:00,068
For instance, if we want to insert
into the middle of the list,

575
00:27:00,068 --> 00:27:02,750
that's going to be a little more
of a burden on me, the program,

576
00:27:02,750 --> 00:27:05,520
keeping track of where
things have to go.

577
00:27:05,520 --> 00:27:07,900
But nicely enough, there's
only these three cases--

578
00:27:07,900 --> 00:27:10,620
the beginning of the list, the end of
the list, and the middle of the list,

579
00:27:10,620 --> 00:27:13,320
because middle of the list doesn't
have to mean literally the middle,

580
00:27:13,320 --> 00:27:15,447
just anywhere that's not
the beginning or the end.

581
00:27:15,447 --> 00:27:17,280
Of course, we should
be careful to make sure

582
00:27:17,280 --> 00:27:20,010
that we handle the empty
list scenario, which

583
00:27:20,010 --> 00:27:23,200
is equivalent to putting something
at both the beginning of the list

584
00:27:23,200 --> 00:27:24,830
and the end of the list.

585
00:27:24,830 --> 00:27:28,750
But that would be perhaps a special
case we could deal with separately.

586
00:27:28,750 --> 00:27:32,460
Of course, there are other operations
like inserting-- or rather removing

587
00:27:32,460 --> 00:27:35,140
from the tail of the list,
removing from the head of the list,

588
00:27:35,140 --> 00:27:36,650
and removing in the middle.

589
00:27:36,650 --> 00:27:39,380
And that would be the opposite
of malloc, if you will.

590
00:27:39,380 --> 00:27:41,670
And in those cases, we
have to take care to call

591
00:27:41,670 --> 00:27:44,670
our friend free to free
those bytes of memory,

592
00:27:44,670 --> 00:27:47,530
give them back to the operating
system so that we don't leak memory.

593
00:27:47,530 --> 00:27:51,810
But there, too, I'm probably going to
have to be careful as to what order

594
00:27:51,810 --> 00:27:53,960
I change my pointers and free nodes.

595
00:27:53,960 --> 00:27:56,750
Because what you don't want to
do, and what unfortunately you

596
00:27:56,750 --> 00:27:59,200
might very well accidentally
do at some point,

597
00:27:59,200 --> 00:28:03,770
is free a pointer and then try to access
that pointer or change the pointer,

598
00:28:03,770 --> 00:28:06,864
even after you've told the operating
system I'm done with this address.

599
00:28:06,864 --> 00:28:08,780
That can give you what's
called a segmentation

600
00:28:08,780 --> 00:28:10,830
fault, which is just one
of the ways in which you

601
00:28:10,830 --> 00:28:14,120
can deduce that kind of mistake.

602
00:28:14,120 --> 00:28:16,899
So, let's actually implement
one of these methods.

603
00:28:16,899 --> 00:28:19,190
And we'll pluck off one that
allows us to actually take

604
00:28:19,190 --> 00:28:21,749
a look at the syntax with which
we can manipulate pointers.

605
00:28:21,749 --> 00:28:23,540
And let's go ahead and
implement a function

606
00:28:23,540 --> 00:28:25,560
called search, for
instance, where search

607
00:28:25,560 --> 00:28:29,710
I [? proposed ?] just returns a
bool, true or false, this number n

608
00:28:29,710 --> 00:28:31,320
is in the given the list.

609
00:28:31,320 --> 00:28:33,580
And now, why have I said node star list?

610
00:28:33,580 --> 00:28:38,340
Well, at the end of the day, a linked
list is just a whole bunch of nodes.

611
00:28:38,340 --> 00:28:42,290
But the first of those nodes that
we keep calling first is of what

612
00:28:42,290 --> 00:28:43,530
data type?

613
00:28:43,530 --> 00:28:46,130
If you have a pointer,
a variable, that's

614
00:28:46,130 --> 00:28:52,300
pointing to a linked list, that means
it's storing the address of a node,

615
00:28:52,300 --> 00:28:53,780
otherwise known as a node star.

616
00:28:53,780 --> 00:28:57,940
So, this would be the syntax with which
you can pass to a function something

617
00:28:57,940 --> 00:28:58,810
like a linked list.

618
00:28:58,810 --> 00:29:02,800
You simply have to pass it a pointer
to the first element in that list.

619
00:29:02,800 --> 00:29:05,970
And if I want to go ahead
now and implement this,

620
00:29:05,970 --> 00:29:08,670
let me go ahead and
propose the following.

621
00:29:08,670 --> 00:29:13,860
Let me go ahead here and give myself a
temporary value, so node star pointer

622
00:29:13,860 --> 00:29:15,190
we'll call it, PTR.

623
00:29:15,190 --> 00:29:17,550
And that's going to equal
the start of the list.

624
00:29:17,550 --> 00:29:19,525
So, I'm just creating
another box of memory

625
00:29:19,525 --> 00:29:21,400
and I'm storing inside
of it the same address

626
00:29:21,400 --> 00:29:24,274
that I was passed in, just so that
I have a temporary variable that I

627
00:29:24,274 --> 00:29:25,640
can use to update.

628
00:29:25,640 --> 00:29:29,100
After this, let me go ahead and
say while that pointer is not

629
00:29:29,100 --> 00:29:33,140
equal to null-- because recall that
null is this special sentinel value that

630
00:29:33,140 --> 00:29:34,670
means end of the list.

631
00:29:34,670 --> 00:29:38,080
So inside of this loop,
what do I want to do?

632
00:29:38,080 --> 00:29:42,330
I'm going to go ahead
and say if pointer--

633
00:29:42,330 --> 00:29:46,360
and now I have to get at
the number inside of it.

634
00:29:46,360 --> 00:29:49,780
So, if I recall from the last time,
we only spent a little bit of time

635
00:29:49,780 --> 00:29:52,850
on the student example, but
we said something like student

636
00:29:52,850 --> 00:29:54,905
dot name or student dot dorm.

637
00:29:54,905 --> 00:29:59,030
And in this case I'm inclined
to say pointer dot n, where n is

638
00:29:59,030 --> 00:30:01,470
the number, the integer that's inside.

639
00:30:01,470 --> 00:30:04,000
But pointer this time
is not a struct, per se.

640
00:30:04,000 --> 00:30:05,830
It's the address of a node.

641
00:30:05,830 --> 00:30:07,290
It's the address of a struct.

642
00:30:07,290 --> 00:30:12,830
And so, perhaps the most
intuitive piece of syntax in C,

643
00:30:12,830 --> 00:30:15,180
at least retrospectively
now, is that if you

644
00:30:15,180 --> 00:30:19,400
want to access a piece of
data that's inside of a node

645
00:30:19,400 --> 00:30:23,750
and you have a pointer to that node much
like our arrows in the pictures imply,

646
00:30:23,750 --> 00:30:26,180
you literally draw an
arrow using a hyphen

647
00:30:26,180 --> 00:30:30,750
and then using a right angle bracket.

648
00:30:30,750 --> 00:30:34,450
So, now if we do see-- whoops,
let me finish my thought.

649
00:30:34,450 --> 00:30:39,250
If pointer n equals equals the n we're
looking for, let me go ahead in here

650
00:30:39,250 --> 00:30:41,220
and say return true.

651
00:30:41,220 --> 00:30:43,817
Or else, let me go ahead
and not return false,

652
00:30:43,817 --> 00:30:46,900
because I don't want to just check one
element and then blindly say false.

653
00:30:46,900 --> 00:30:51,930
I instead want to say pointer
should get pointer arrow next.

654
00:30:51,930 --> 00:30:55,210
And then only after that
loop is all complete

655
00:30:55,210 --> 00:30:59,040
should I say something
like nope, return false.

656
00:30:59,040 --> 00:31:01,090
So, what's actually going on here?

657
00:31:01,090 --> 00:31:03,610
The function declaration,
again, took in two arguments--

658
00:31:03,610 --> 00:31:08,290
one, an int n that we're looking
for, two a pointer to a node,

659
00:31:08,290 --> 00:31:10,157
otherwise known as a
node in a linked list.

660
00:31:10,157 --> 00:31:11,990
And per the pictures
we've been drawing, you

661
00:31:11,990 --> 00:31:16,600
can access any other element in that
linked list by way of the first element

662
00:31:16,600 --> 00:31:18,590
in that list, as suggested here.

663
00:31:18,590 --> 00:31:21,504
So, now I'm just giving myself a
temporary variable called pointer,

664
00:31:21,504 --> 00:31:22,920
but I can call it anything I want.

665
00:31:22,920 --> 00:31:26,490
And I'm declaring it as node star, so
that it can store the address of a node

666
00:31:26,490 --> 00:31:28,690
as well, and then I'm
just initializing it to be

667
00:31:28,690 --> 00:31:30,181
the exact value that was passed in.

668
00:31:30,181 --> 00:31:32,930
So, I don't want to accidentally
break the list that I was passed.

669
00:31:32,930 --> 00:31:34,930
I don't want to change
the value of my parameter

670
00:31:34,930 --> 00:31:36,660
unnecessarily and complicate things.

671
00:31:36,660 --> 00:31:38,800
I just really want a
temporary variable, much

672
00:31:38,800 --> 00:31:43,130
like I in the world of loops that
allows me to constantly iterate

673
00:31:43,130 --> 00:31:48,606
through something and update it as
I go while the whole along the way

674
00:31:48,606 --> 00:31:49,730
I want to be checking this.

675
00:31:49,730 --> 00:31:51,700
While pointer is not null.

676
00:31:51,700 --> 00:31:54,720
If pointer is null, that means
I'm at the end of the list,

677
00:31:54,720 --> 00:31:59,321
or maybe more curiously, I was passed
null, in which case there is no list.

678
00:31:59,321 --> 00:32:02,570
And that's a valid scenario that could
happen, even though it's a bit strange.

679
00:32:02,570 --> 00:32:08,370
But if pointer is null, I don't want
to proceed further inside of this loop.

680
00:32:08,370 --> 00:32:12,260
But so long as pointer is not
null, let me go ahead and do this.

681
00:32:12,260 --> 00:32:16,240
Let me follow that pointer and
go inside that node and say

682
00:32:16,240 --> 00:32:19,080
is your n value equal
equal to the [? end ?]

683
00:32:19,080 --> 00:32:21,130
value that I've been
asked to search for?

684
00:32:21,130 --> 00:32:22,612
And if so, return true.

685
00:32:22,612 --> 00:32:25,070
I don't want to just return
false now because otherwise I'd

686
00:32:25,070 --> 00:32:28,040
only ever be checking the
first element in a linked list.

687
00:32:28,040 --> 00:32:34,490
So, I now want to do the equivalent
in spirit of i plus plus.

688
00:32:34,490 --> 00:32:35,407
But I'm not using i's.

689
00:32:35,407 --> 00:32:37,239
I don't need to use
pointer arithmetic here,

690
00:32:37,239 --> 00:32:40,210
and indeed it won't work because I
have this thing stitched together.

691
00:32:40,210 --> 00:32:42,470
It's not an array of contiguous memory.

692
00:32:42,470 --> 00:32:44,840
I want to say that my
current temporary value

693
00:32:44,840 --> 00:32:48,430
pointer should get
whatever pointer arrow next

694
00:32:48,430 --> 00:32:50,890
is, and then let this loop continue.

695
00:32:50,890 --> 00:32:52,270
If it's not null, check again.

696
00:32:52,270 --> 00:32:55,470
If it's [? end ?] value equals what
I'm looking for and repeat, repeat,

697
00:32:55,470 --> 00:32:57,704
repeat until pointer equals null.

698
00:32:57,704 --> 00:32:59,120
So, let's make this more concrete.

699
00:32:59,120 --> 00:33:01,870
Let me go ahead and just draw
a temporary picture here.

700
00:33:01,870 --> 00:33:05,080
And let me suppose here
that what I have been passed

701
00:33:05,080 --> 00:33:07,920
is something like the following.

702
00:33:07,920 --> 00:33:12,450
Let's do a very simple linked list
that has maybe the number one,

703
00:33:12,450 --> 00:33:18,190
and has the number two,
and has the number three.

704
00:33:18,190 --> 00:33:20,190
And, again, I've drawn
gaps between these nodes,

705
00:33:20,190 --> 00:33:21,580
because they could be
anywhere in memory.

706
00:33:21,580 --> 00:33:23,780
So, technically they don't need
to be left to right like this,

707
00:33:23,780 --> 00:33:24,990
but that'll keep us sane.

708
00:33:24,990 --> 00:33:27,180
And if this is indeed
a correct linked list,

709
00:33:27,180 --> 00:33:30,290
there are pointers in
each of those fields

710
00:33:30,290 --> 00:33:32,705
that point to the next node
in the list, and that slash

711
00:33:32,705 --> 00:33:34,330
I drew in the last one just means null.

712
00:33:34,330 --> 00:33:35,760
You can draw it however you want.

713
00:33:35,760 --> 00:33:39,150
But for a linked list to work, we need
to know the beginning of this thing.

714
00:33:39,150 --> 00:33:42,490
So, we'll call this
first, and that of course

715
00:33:42,490 --> 00:33:44,804
has to point to the first
element in my linked list.

716
00:33:44,804 --> 00:33:46,220
So, here's the state of our world.

717
00:33:46,220 --> 00:33:48,810
It's a linked list quite similar
in spirit to the other one.

718
00:33:48,810 --> 00:33:51,101
It's a little shorter, just
for the sake of discussion.

719
00:33:51,101 --> 00:33:54,060
And now, let's consider
my function search,

720
00:33:54,060 --> 00:33:56,100
which again takes two arguments.

721
00:33:56,100 --> 00:33:59,500
So, that the first argument
is of type int called n.

722
00:33:59,500 --> 00:34:02,220
And suppose I'm searching
for the number three.

723
00:34:02,220 --> 00:34:06,040
The second argument is a node star,
so the address of a node called list.

724
00:34:06,040 --> 00:34:07,150
So, what does that mean?

725
00:34:07,150 --> 00:34:10,909
When this function
search is called, let's

726
00:34:10,909 --> 00:34:15,100
suppose that we currently
have the value n, which

727
00:34:15,100 --> 00:34:17,010
is going to be 3, because
that's arbitrarily

728
00:34:17,010 --> 00:34:18,639
the number of decided to search for.

729
00:34:18,639 --> 00:34:25,670
And then this other value pointer
is going to be initialized-- sorry,

730
00:34:25,670 --> 00:34:26,889
not that.

731
00:34:26,889 --> 00:34:32,489
List is going to be
whatever pointer is passed

732
00:34:32,489 --> 00:34:34,770
in as the second argument
to this function.

733
00:34:34,770 --> 00:34:38,840
So, let's suppose that this linked list,
this sample linked list at the top,

734
00:34:38,840 --> 00:34:42,522
is indeed what is passed
in to this function.

735
00:34:42,522 --> 00:34:44,730
So, I've passed in 3, because
I want to search for 3.

736
00:34:44,730 --> 00:34:45,929
So what goes here?

737
00:34:45,929 --> 00:34:52,219
If I pass this sample linked
list into my search function,

738
00:34:52,219 --> 00:34:55,449
what is the value of list?

739
00:34:55,449 --> 00:34:59,860
Well, list if I'm past
this first pointer

740
00:34:59,860 --> 00:35:03,580
is really going to be the pointer
to the first element in the list.

741
00:35:03,580 --> 00:35:04,580
That's all we're saying.

742
00:35:04,580 --> 00:35:06,529
Node star list just
means give me the address

743
00:35:06,529 --> 00:35:09,320
of a linked list, which means give
me the address of the first node

744
00:35:09,320 --> 00:35:11,445
in the linked list, which
means that initially when

745
00:35:11,445 --> 00:35:15,220
I call search my picture--
my stack frame, if you will,

746
00:35:15,220 --> 00:35:18,100
in terms of my local arguments--
is going to look like this.

747
00:35:18,100 --> 00:35:21,540
All right, so with that said,
how does this code work?

748
00:35:21,540 --> 00:35:24,480
We recall in this code
have this while loop that

749
00:35:24,480 --> 00:35:28,170
just sits in a loop checking
whether the current nodes

750
00:35:28,170 --> 00:35:31,250
n equals equals the one we're looking
for, and if not, it updates it.

751
00:35:31,250 --> 00:35:34,440
So, we need one more local
variable called pointer that's

752
00:35:34,440 --> 00:35:37,810
initialized to the start of this list.

753
00:35:37,810 --> 00:35:42,960
So, this will be a pointer and
it's initialized to the same thing

754
00:35:42,960 --> 00:35:46,440
that my second argument
is initialized to.

755
00:35:46,440 --> 00:35:51,310
So, this now is the state of our world
once one line of code has executed,

756
00:35:51,310 --> 00:35:53,506
that very first one in there.

757
00:35:53,506 --> 00:35:54,880
So, now let's implement the loop.

758
00:35:54,880 --> 00:35:58,060
While pointer does not equal
null, so here's pointer.

759
00:35:58,060 --> 00:35:59,312
Does it equal null?

760
00:35:59,312 --> 00:36:01,020
No, because if it did,
we would just draw

761
00:36:01,020 --> 00:36:02,920
a slash or some other piece of syntax.

762
00:36:02,920 --> 00:36:05,170
But it's pointing at clearly
something that exists.

763
00:36:05,170 --> 00:36:07,960
So, this node here has
some valid address.

764
00:36:07,960 --> 00:36:10,460
Pointer is pointing at
it, so it's not null.

765
00:36:10,460 --> 00:36:12,390
So, what do I do inside of my code?

766
00:36:12,390 --> 00:36:20,230
I check if the n value
inside of pointer, PTR,

767
00:36:20,230 --> 00:36:22,340
equals equals the
number I'm looking for,

768
00:36:22,340 --> 00:36:26,020
and if so, return true, otherwise,
if not I update pointer.

769
00:36:26,020 --> 00:36:26,930
So let's check.

770
00:36:26,930 --> 00:36:30,350
Let's follow the arrow, PTR,
and look at the value n.

771
00:36:30,350 --> 00:36:32,370
Recall that the top of these boxes is n.

772
00:36:32,370 --> 00:36:36,280
The bottom of them is called
next-- n, next, n next.

773
00:36:36,280 --> 00:36:37,490
So, I followed this pointer.

774
00:36:37,490 --> 00:36:40,570
I'm looking at the box called n.

775
00:36:40,570 --> 00:36:41,720
Does 3 equal 1?

776
00:36:41,720 --> 00:36:43,220
No, obviously not.

777
00:36:43,220 --> 00:36:47,220
So I update-- pointer gets pointer next.

778
00:36:47,220 --> 00:36:51,820
So, to be clear, pointer
gets pointer next,

779
00:36:51,820 --> 00:36:53,910
that second to last line of actual code.

780
00:36:53,910 --> 00:36:56,050
So, what does that mean I need to do?

781
00:36:56,050 --> 00:37:00,620
That means I need to update pointer
to be equal to pointer next.

782
00:37:00,620 --> 00:37:01,550
What is pointer next?

783
00:37:01,550 --> 00:37:04,050
Well, here's pointer and here's next.

784
00:37:04,050 --> 00:37:05,480
We were looking a moment ago at n.

785
00:37:05,480 --> 00:37:06,980
Now I'm looking at next.

786
00:37:06,980 --> 00:37:14,090
So, pointer next means that I should
update whatever is inside this box--

787
00:37:14,090 --> 00:37:20,440
and a lot more on the screen-- to
be equal to pointer next, which

788
00:37:20,440 --> 00:37:21,060
is this field.

789
00:37:21,060 --> 00:37:24,140
This field is pointing at
that, so that line of code

790
00:37:24,140 --> 00:37:29,190
has the effect of updating PTR to
simply point at the second node.

791
00:37:29,190 --> 00:37:30,500
So, what happens next?

792
00:37:30,500 --> 00:37:34,145
I seem to still be in that loop and I
say, well, pointer does not equal null,

793
00:37:34,145 --> 00:37:34,770
and it doesn't.

794
00:37:34,770 --> 00:37:36,186
It's pointing at that second node.

795
00:37:36,186 --> 00:37:40,220
If pointer arrow n equals
equals n, but no that's not

796
00:37:40,220 --> 00:37:41,960
the case, because I'm looking for three.

797
00:37:41,960 --> 00:37:44,410
I'm pointing at two,
so that is again false.

798
00:37:44,410 --> 00:37:46,020
So, again, I don't return true.

799
00:37:46,020 --> 00:37:49,150
I instead update pointer
to equal pointer next.

800
00:37:49,150 --> 00:37:56,960
So, what has to happen here, at the
risk of deleting my handiwork again,

801
00:37:56,960 --> 00:38:01,440
now pointer gets pointer next,
which is this element, which

802
00:38:01,440 --> 00:38:04,280
is equivalent to pointing
at this node here.

803
00:38:04,280 --> 00:38:09,630
And so, now I'm still inside that loop
while pointer-- not equal to null.

804
00:38:09,630 --> 00:38:10,450
It's not null.

805
00:38:10,450 --> 00:38:14,390
If pointer arrow n equals equals
n, well, let's follow that logic.

806
00:38:14,390 --> 00:38:18,750
If pointer, follow the
arrow, n equals equals n,

807
00:38:18,750 --> 00:38:23,080
three-- which is the one I'm
looking for-- returned true.

808
00:38:23,080 --> 00:38:25,880
And so, how then does this
function ultimately behave?

809
00:38:25,880 --> 00:38:29,920
It would seem in this case to return
true, because I have eventually

810
00:38:29,920 --> 00:38:32,310
found that number three.

811
00:38:32,310 --> 00:38:36,580
What would happen by contrast if I were
looking not for three, but for four

812
00:38:36,580 --> 00:38:38,000
with this code?

813
00:38:38,000 --> 00:38:41,650
In other words, what if I'm not
looking for three and I want to go one

814
00:38:41,650 --> 00:38:42,230
step further?

815
00:38:42,230 --> 00:38:45,340
Well, one step further
is going to update PTR

816
00:38:45,340 --> 00:38:50,550
to equal null, that
slash in my last node.

817
00:38:50,550 --> 00:38:53,200
And that means code wise,
I'm going to break out

818
00:38:53,200 --> 00:38:56,090
of that loop, because
pointer now does equal null.

819
00:38:56,090 --> 00:39:01,070
And so, by default that very last
line of code return false, not found.

820
00:39:01,070 --> 00:39:03,217
So, complicated at first
glance, and it certainly

821
00:39:03,217 --> 00:39:05,550
looks more complicated than
things we've written before,

822
00:39:05,550 --> 00:39:09,010
but again, if you go back to basics,
what does each of these lines mean?

823
00:39:09,010 --> 00:39:11,220
Consider that there's no magic here.

824
00:39:11,220 --> 00:39:15,187
This first line means give me a
variable that's a pointer to a node.

825
00:39:15,187 --> 00:39:17,020
It'd be in other words
the address of a node

826
00:39:17,020 --> 00:39:18,836
and assign it whatever I was passed in.

827
00:39:18,836 --> 00:39:21,460
While pointer [? naught ?] equals
null, we've seen null before.

828
00:39:21,460 --> 00:39:23,610
It's this special zero
value, and I'm just

829
00:39:23,610 --> 00:39:27,240
making sure that the pointer I'm using,
PTR, does not equal that special value.

830
00:39:27,240 --> 00:39:30,450
And then inside of this loop I'm using
one piece of new syntax, this arrow

831
00:39:30,450 --> 00:39:33,960
notation, which just like the picture
suggests means go there, and then

832
00:39:33,960 --> 00:39:37,770
look at the field called n and check
if it equals the n you're looking for,

833
00:39:37,770 --> 00:39:38,770
and if so return true.

834
00:39:38,770 --> 00:39:42,040
Otherwise, update yourself
much like i plus plus

835
00:39:42,040 --> 00:39:46,520
but specifically update pointer to
be whatever the value is when you

836
00:39:46,520 --> 00:39:50,754
follow the arrow in that next field.

837
00:39:50,754 --> 00:39:52,170
So, this of course is just search.

838
00:39:52,170 --> 00:39:55,860
We've not actually changed the
list, but imagine, if you will,

839
00:39:55,860 --> 00:39:58,930
that you could now
implement insert and delete,

840
00:39:58,930 --> 00:40:02,670
not simply by following these
pointers but actually changing

841
00:40:02,670 --> 00:40:09,570
the value of next in a node to the left,
a node to the right, or a new node all

842
00:40:09,570 --> 00:40:11,040
together.

843
00:40:11,040 --> 00:40:12,700
So, who cares?

844
00:40:12,700 --> 00:40:14,710
Why did we add all of this complexity?

845
00:40:14,710 --> 00:40:18,140
We had arrays, which were working
really well for a whole bunch of weeks,

846
00:40:18,140 --> 00:40:21,060
and now we've claimed that
arrays are not so good.

847
00:40:21,060 --> 00:40:22,860
We want to use linked lists instead.

848
00:40:22,860 --> 00:40:24,670
But why might we want
to use linked lists?

849
00:40:24,670 --> 00:40:26,300
Well, linked lists gives us dynamism.

850
00:40:26,300 --> 00:40:29,510
We can call malloc and give ourselves
more, and more, and more nodes

851
00:40:29,510 --> 00:40:32,420
and grow our list of numbers, even
if we don't know in advance how

852
00:40:32,420 --> 00:40:33,860
many such numbers we need.

853
00:40:33,860 --> 00:40:36,050
And we can shrink them,
similarly, so we don't

854
00:40:36,050 --> 00:40:38,860
have to allocate a massive
array unnecessarily.

855
00:40:38,860 --> 00:40:42,170
We can shrink our data structure based
on how many numbers we actually need.

856
00:40:42,170 --> 00:40:43,540
But we're paying a price.

857
00:40:43,540 --> 00:40:46,690
Search is a little bit slower,
delete is a little bit slower.

858
00:40:46,690 --> 00:40:50,110
Insert would be slower if we
insist on keeping things sorted,

859
00:40:50,110 --> 00:40:51,292
so we've paid this price.

860
00:40:51,292 --> 00:40:52,500
And indeed, this is thematic.

861
00:40:52,500 --> 00:40:54,950
In CS50, in computer
science more generally,

862
00:40:54,950 --> 00:40:57,630
there's often going to be
these trade-offs of time,

863
00:40:57,630 --> 00:41:01,020
or space, or just complexity,
or your human time.

864
00:41:01,020 --> 00:41:04,280
Any number of resources
can be in scarce supply.

865
00:41:04,280 --> 00:41:07,420
And, indeed, we've seen
by way of linked lists

866
00:41:07,420 --> 00:41:10,290
that we're solving one problem
while introducing another.

867
00:41:10,290 --> 00:41:13,000
It's like that silly
situation you might see

868
00:41:13,000 --> 00:41:16,440
memes of where you cover your hands--
put your hand around a hose that

869
00:41:16,440 --> 00:41:19,380
has a leak and all of a sudden
another leak springs up over there.

870
00:41:19,380 --> 00:41:22,100
We're just moving the problem
elsewhere, but maybe that leak

871
00:41:22,100 --> 00:41:25,050
is less problematic to
us than this one here.

872
00:41:25,050 --> 00:41:26,790
So, again, it's this
theme of trade-offs.

873
00:41:26,790 --> 00:41:28,454
Now, this here is Mather Dining Hall.

874
00:41:28,454 --> 00:41:30,370
And this, of course, is
a whole bunch of trays

875
00:41:30,370 --> 00:41:33,080
where you might go and get
some food, lunch, breakfast,

876
00:41:33,080 --> 00:41:36,121
or dinner, or the like, and you pick
up this tray and you put food on it.

877
00:41:36,121 --> 00:41:39,230
But what's interesting about trays,
as Mather and a lot of cafeterias do,

878
00:41:39,230 --> 00:41:42,690
is trays are stacked
one on top of the other.

879
00:41:42,690 --> 00:41:46,140
And it turns out now that
we have this second building

880
00:41:46,140 --> 00:41:49,290
block with which to create data
structures-- we're not just

881
00:41:49,290 --> 00:41:50,580
using arrays anymore.

882
00:41:50,580 --> 00:41:56,040
We now have pointers and this general
idea of linking nodes together

883
00:41:56,040 --> 00:42:00,340
in our toolkit, we can now start
to imagine more interesting data

884
00:42:00,340 --> 00:42:04,060
structures that solve problems
in slightly different ways.

885
00:42:04,060 --> 00:42:06,160
For instance, suppose
that I wanted to implement

886
00:42:06,160 --> 00:42:10,500
this paradigm of stacking things on
one on top of the other like this.

887
00:42:10,500 --> 00:42:12,630
Indeed, this is a data
structure called a stack,

888
00:42:12,630 --> 00:42:14,950
and it generally has two
operations associated with it,

889
00:42:14,950 --> 00:42:19,789
push to push something on the stack and
pop to take something off of the stack.

890
00:42:19,789 --> 00:42:21,580
And this is perhaps a
useful data structure

891
00:42:21,580 --> 00:42:26,140
if you just want to store numbers
or something else in really just

892
00:42:26,140 --> 00:42:29,420
the most efficient way for you
without regard really to fairness.

893
00:42:29,420 --> 00:42:33,370
So, for instance, if this table
here is my initial data structure

894
00:42:33,370 --> 00:42:36,972
and it's empty and I have a piece
of information that I want to store,

895
00:42:36,972 --> 00:42:39,180
I'm just going to going
ahead and put it right there.

896
00:42:39,180 --> 00:42:42,050
And now suppose I want to push
another number onto the stack.

897
00:42:42,050 --> 00:42:44,960
I'm just going to go
ahead and simply put it

898
00:42:44,960 --> 00:42:49,910
on top, third number on
top, fourth number on top.

899
00:42:49,910 --> 00:42:55,020
But I've now committed to a
certain property, if you will,

900
00:42:55,020 --> 00:43:00,220
a certain property whereby the last
tray in has to be the first tray out,

901
00:43:00,220 --> 00:43:02,900
otherwise known in computer
science as LIFO-- last in,

902
00:43:02,900 --> 00:43:05,960
first out-- because if I want to
get that first number, I mean,

903
00:43:05,960 --> 00:43:07,480
I've created a mess for myself.

904
00:43:07,480 --> 00:43:10,820
I have to lift these all up or
move them just to get at it.

905
00:43:10,820 --> 00:43:12,050
That just seems stupid.

906
00:43:12,050 --> 00:43:15,670
Intuitively, the easiest thing to
grab is probably going to be the top,

907
00:43:15,670 --> 00:43:18,560
but that's not necessarily
the first element I put in.

908
00:43:18,560 --> 00:43:19,207
But that's OK.

909
00:43:19,207 --> 00:43:21,040
This might still be a
valid data structure--

910
00:43:21,040 --> 00:43:23,670
and indeed later in the term when
we introduced web programming

911
00:43:23,670 --> 00:43:25,740
and we look at languages
like HTML, there's

912
00:43:25,740 --> 00:43:28,610
actually a number of applications
where it's actually super useful

913
00:43:28,610 --> 00:43:31,910
to have a data structure where you can
just stack stuff on top of each other

914
00:43:31,910 --> 00:43:35,300
in order to tuck some data
away for subsequent use.

915
00:43:35,300 --> 00:43:38,320
And, indeed, when we talked
about memory in our own computer,

916
00:43:38,320 --> 00:43:40,550
stacks clearly have some value.

917
00:43:40,550 --> 00:43:43,380
We talked about main and then swap,
and then maybe other functions.

918
00:43:43,380 --> 00:43:46,860
There are many contexts, one of which
we've seen already, where in life you

919
00:43:46,860 --> 00:43:49,500
actually want to stack
things on top of each other

920
00:43:49,500 --> 00:43:53,130
so as to keep track of really what
did I do most recently, because that's

921
00:43:53,130 --> 00:43:55,740
the next problem I'm going to
deal with or the next frame--

922
00:43:55,740 --> 00:43:58,480
in the case of memory-- that I'm
going to pop off of the stack.

923
00:43:58,480 --> 00:44:00,910
So, how might we implement
this data structure?

924
00:44:00,910 --> 00:44:04,410
Let me propose that if we want
to define our own data type

925
00:44:04,410 --> 00:44:09,310
called the stack that implements that
idea of cafeteria trays or frames

926
00:44:09,310 --> 00:44:14,960
in memory, let me go ahead and typedef
a structure called stack inside

927
00:44:14,960 --> 00:44:16,642
of which are two data members.

928
00:44:16,642 --> 00:44:18,350
Suppose that, for the
sake of discussion,

929
00:44:18,350 --> 00:44:21,183
I'm not going to try to store trays
or something that doesn't really

930
00:44:21,183 --> 00:44:23,880
exist computationally but
rather numbers, just integers.

931
00:44:23,880 --> 00:44:26,090
Inside of this structure
called a stack is

932
00:44:26,090 --> 00:44:28,806
going to be an array
called numbers of type int

933
00:44:28,806 --> 00:44:30,180
and it's going to store capacity.

934
00:44:30,180 --> 00:44:33,790
So capacity, let's assume, is hash
defined elsewhere to be some constant.

935
00:44:33,790 --> 00:44:37,950
So, maybe it's 10, maybe it's 1,000,
but it's some constant integer elsewhere

936
00:44:37,950 --> 00:44:42,480
that limits, ultimately, the capacity
of the stack to some integral value.

937
00:44:42,480 --> 00:44:45,390
And then size-- this seems weird.

938
00:44:45,390 --> 00:44:48,490
I have capacity here and then size here.

939
00:44:48,490 --> 00:44:50,690
Well, there's the
semantic distinction here.

940
00:44:50,690 --> 00:44:52,900
Just because you have
a stack ready to go,

941
00:44:52,900 --> 00:44:57,530
as I did a moment ago-- just because
I had this stack ready to go,

942
00:44:57,530 --> 00:44:59,900
empty initially, it's going
to have some capacity.

943
00:44:59,900 --> 00:45:02,030
Realistically, I can only
go as high as the ceiling

944
00:45:02,030 --> 00:45:03,790
or until the things fall over.

945
00:45:03,790 --> 00:45:06,820
But there's also a size here,
and the size is currently zero,

946
00:45:06,820 --> 00:45:09,230
but the capacity might be
like 1,000 or whatever.

947
00:45:09,230 --> 00:45:12,050
So, that's the difference
there and the size now is 4

948
00:45:12,050 --> 00:45:15,300
and the capacity is like
1,000 minus 4 at this point--

949
00:45:15,300 --> 00:45:19,590
or rather, capacity is still 1,000,
because that's the total possible size,

950
00:45:19,590 --> 00:45:21,690
not the actual size.

951
00:45:21,690 --> 00:45:23,230
But what if that's a limit?

952
00:45:23,230 --> 00:45:29,390
What if I don't want to restrict myself
to some fixed, finite number of trays

953
00:45:29,390 --> 00:45:31,360
or a fixed number of numbers?

954
00:45:31,360 --> 00:45:37,180
Well, I could instead declare
my stack as being a pointer.

955
00:45:37,180 --> 00:45:39,420
Now, this pointer
initially has no value,

956
00:45:39,420 --> 00:45:43,775
so let's assume that it's probably going
to be initialized to null in my code,

957
00:45:43,775 --> 00:45:45,400
but that too is not going to be useful.

958
00:45:45,400 --> 00:45:49,167
Why would I declare numbers now
not to be in an array, which

959
00:45:49,167 --> 00:45:50,250
felt very straightforward.

960
00:45:50,250 --> 00:45:52,880
Normally we draw arrays left
to right, but with the trays,

961
00:45:52,880 --> 00:45:56,410
just imagine turning an array vertically
and thinking of the number stacked

962
00:45:56,410 --> 00:45:57,760
on top of each other.

963
00:45:57,760 --> 00:46:00,830
But this is just a pointer to a number.

964
00:46:00,830 --> 00:46:04,470
Why might I want to implement a
stack as just a pointer to an int?

965
00:46:04,470 --> 00:46:07,300
That seems wrong.

966
00:46:07,300 --> 00:46:11,050
I want lots of numbers, not one number.

967
00:46:11,050 --> 00:46:13,000
So, what could I do?

968
00:46:13,000 --> 00:46:17,860
Well, what if in this world to implement
a stack I invoke our friend malloc

969
00:46:17,860 --> 00:46:20,400
and I say to malloc, malloc,
give me enough memory

970
00:46:20,400 --> 00:46:23,720
for 2,000 numbers or 5,000 numbers.

971
00:46:23,720 --> 00:46:25,150
What is malloc going to return?

972
00:46:25,150 --> 00:46:27,130
Well, by definition,
we know malloc is going

973
00:46:27,130 --> 00:46:32,300
to return the address of a chunk
of memory, and that chunk of memory

974
00:46:32,300 --> 00:46:35,780
is going to be of whatever
size I ask malloc for,

975
00:46:35,780 --> 00:46:39,220
and the address of the first is
really just equivalent to the address

976
00:46:39,220 --> 00:46:40,500
of one integer.

977
00:46:40,500 --> 00:46:43,150
And so long as I, the programmer,
remember that I asked malloc

978
00:46:43,150 --> 00:46:46,430
for 2,000 integers or
for 5,000 integers,

979
00:46:46,430 --> 00:46:49,670
I know implicitly the end of
that chunk of memory and malloc

980
00:46:49,670 --> 00:46:51,280
just need to tell me the beginning.

981
00:46:51,280 --> 00:46:55,810
So, it's perfectly fine to implement
the stack by way of a single pointer,

982
00:46:55,810 --> 00:46:58,000
because all I need to
know is, hey, malloc,

983
00:46:58,000 --> 00:47:00,260
where should I put my first integer?

984
00:47:00,260 --> 00:47:03,250
Because I know via pointer
arithmetic, per last week,

985
00:47:03,250 --> 00:47:06,280
that I can put my next
integer four bytes later,

986
00:47:06,280 --> 00:47:08,060
four bytes later, four bytes later.

987
00:47:08,060 --> 00:47:10,309
And I'm deliberately going
up this time, but it really

988
00:47:10,309 --> 00:47:13,270
is just an array where you can think
of the array as left and right.

989
00:47:13,270 --> 00:47:16,870
So, this would be a way of giving
ourselves a data structure called

990
00:47:16,870 --> 00:47:21,510
a stack that is not fixed from the
outset like this previous version

991
00:47:21,510 --> 00:47:23,380
to some specific capacity.

992
00:47:23,380 --> 00:47:27,620
Now, we are limited only by how much
physical memory or virtual memory

993
00:47:27,620 --> 00:47:30,990
my computer actually has.

994
00:47:30,990 --> 00:47:37,210
So, suppose Apple or someone
similar implemented the lines

995
00:47:37,210 --> 00:47:42,424
outside their stores for the
release of the iPhone as a stack.

996
00:47:42,424 --> 00:47:45,340
So, it's weird maybe to think of
people stacking on top of each other,

997
00:47:45,340 --> 00:47:52,230
but maybe you could imagine Apple
funneling everyone into the glass store

998
00:47:52,230 --> 00:47:57,730
here in Manhattan, and then whoever is
the last one in gets their phone first.

999
00:47:57,730 --> 00:47:58,380
Because why?

1000
00:47:58,380 --> 00:47:59,690
They're closest to the exit.

1001
00:47:59,690 --> 00:48:02,270
So, you have all these people show
up super early in the morning or days

1002
00:48:02,270 --> 00:48:04,740
before, you pile them all into
the store saying everyone, hey,

1003
00:48:04,740 --> 00:48:06,073
please go into the corner there.

1004
00:48:06,073 --> 00:48:07,170
Please get into the store.

1005
00:48:07,170 --> 00:48:09,387
And then as soon as 9:00
AM rolls around and it's

1006
00:48:09,387 --> 00:48:12,470
time to give out the iPhones, just for
logistical convenience you realize,

1007
00:48:12,470 --> 00:48:14,120
all right, why don't we just
give the person who came in

1008
00:48:14,120 --> 00:48:16,570
last their phone first because
they're closest to the exit

1009
00:48:16,570 --> 00:48:19,780
and get them out, last in, first out?

1010
00:48:19,780 --> 00:48:21,880
Good design, bad design?

1011
00:48:21,880 --> 00:48:24,800
It's correct in so far
as everyone's going

1012
00:48:24,800 --> 00:48:29,070
to get an iPhone if supply is there,
and that's never going to be the case.

1013
00:48:29,070 --> 00:48:31,872
So, it's not necessarily
very equitable or fair,

1014
00:48:31,872 --> 00:48:34,580
and indeed the humans are not
going to be very pleased with Apple

1015
00:48:34,580 --> 00:48:38,920
if they used a LIFO data
structure or a stack.

1016
00:48:38,920 --> 00:48:45,170
What would these fans of Apple
hardware prefer that Apple use?

1017
00:48:45,170 --> 00:48:46,040
We call it a line.

1018
00:48:46,040 --> 00:48:47,890
If you go to the UK,
they call it a queue,

1019
00:48:47,890 --> 00:48:51,380
which is actually a perfect answer,
because there's this other data

1020
00:48:51,380 --> 00:48:54,030
structure in the world
called a queue, which

1021
00:48:54,030 --> 00:48:57,130
is exactly what you would hope
the Apple store line would be,

1022
00:48:57,130 --> 00:49:00,540
a line whereby it's first in, first out.

1023
00:49:00,540 --> 00:49:02,415
So, the first person
there three days before,

1024
00:49:02,415 --> 00:49:05,740
at 5:00 AM gets his or her
phone first, and the one person

1025
00:49:05,740 --> 00:49:08,000
who comes in at 9:01 AM
doesn't get their phone

1026
00:49:08,000 --> 00:49:11,015
because they're at the last
position in the queue or the list.

1027
00:49:11,015 --> 00:49:13,890
And a queue, nicely enough, might
just have at least two operations--

1028
00:49:13,890 --> 00:49:16,730
enqueue and dequeue
whereby enqueue means get

1029
00:49:16,730 --> 00:49:19,050
into line d queue means
get out of the line,

1030
00:49:19,050 --> 00:49:20,654
but these happen at different places.

1031
00:49:20,654 --> 00:49:23,820
For instance, if there's a whole bunch
of people lined up here on the stage,

1032
00:49:23,820 --> 00:49:25,340
closest over there's
the front of the list.

1033
00:49:25,340 --> 00:49:26,180
I get here last.

1034
00:49:26,180 --> 00:49:29,520
I enqueue myself at the
end of this data structure,

1035
00:49:29,520 --> 00:49:32,150
but you dequeue someone from
the beginning of the list.

1036
00:49:32,150 --> 00:49:36,120
By contrast, when we had a stack,
when you push someone onto the stack,

1037
00:49:36,120 --> 00:49:40,620
you pop it off, or him or
her off first by nature

1038
00:49:40,620 --> 00:49:43,440
of it being a LIFO data structure.

1039
00:49:43,440 --> 00:49:46,140
So, how might we implement a queue?

1040
00:49:46,140 --> 00:49:49,730
It's actually slightly
more complicated, 50% more

1041
00:49:49,730 --> 00:49:52,980
pieces of information you need to
keep track of, the front of the list.

1042
00:49:52,980 --> 00:49:55,740
But you can still do it in an array.

1043
00:49:55,740 --> 00:49:58,810
So, suppose that we do use an array,
and let me go ahead and draw this

1044
00:49:58,810 --> 00:49:59,780
as follows.

1045
00:49:59,780 --> 00:50:06,150
Suppose that like hopscotch we
draw the queue for an Apple Store

1046
00:50:06,150 --> 00:50:08,000
like an array like this.

1047
00:50:08,000 --> 00:50:11,960
And here is the door of the Apple store,
so you want to be at location zero,

1048
00:50:11,960 --> 00:50:12,460
ideally.

1049
00:50:12,460 --> 00:50:16,230
1, 2, 3, 4, 5, 6-- so
this is how many people

1050
00:50:16,230 --> 00:50:18,870
can fit into our queue in this case.

1051
00:50:18,870 --> 00:50:23,190
So, suppose that Alice wants to buy an
iPhone and she gets to the store first.

1052
00:50:23,190 --> 00:50:25,950
Where should she go to keep things fair?

1053
00:50:25,950 --> 00:50:29,254
This is the queue, so we don't
want to put her into the corner,

1054
00:50:29,254 --> 00:50:30,670
so to speak, in our first example.

1055
00:50:30,670 --> 00:50:32,503
We want to put her at
the front of the list.

1056
00:50:32,503 --> 00:50:35,870
So, Alice belongs right
there, pretty straightforward.

1057
00:50:35,870 --> 00:50:38,490
Now, Bob arrives and he comes
in slightly after Alice,

1058
00:50:38,490 --> 00:50:40,850
so he gets to get behind Alice in line.

1059
00:50:40,850 --> 00:50:44,810
And so Bob is there, and maybe Charlie
arrives thereafter, and then so forth.

1060
00:50:44,810 --> 00:50:47,520
David maybe comes in fourth and beyond.

1061
00:50:47,520 --> 00:50:50,160
So, that's how people would
queue up, so to speak.

1062
00:50:50,160 --> 00:50:53,410
And now, when it's time
for Apple to open this door

1063
00:50:53,410 --> 00:50:56,670
and start selling iPhones, what happens?

1064
00:50:56,670 --> 00:50:59,060
We want to take Alice
out of the list first.

1065
00:50:59,060 --> 00:51:01,240
We want to de-queue Alice.

1066
00:51:01,240 --> 00:51:04,230
So, we need to start
remembering some information,

1067
00:51:04,230 --> 00:51:08,830
because it's not sufficient
now to just remove-- whoops,

1068
00:51:08,830 --> 00:51:12,550
it's not sufficient just
to remove Alice like this,

1069
00:51:12,550 --> 00:51:15,646
because suppose that we do keep
adding other people, person

1070
00:51:15,646 --> 00:51:18,470
d, e-- whoops, that's not an f.

1071
00:51:18,470 --> 00:51:21,170
OK, don't know what happened there.

1072
00:51:21,170 --> 00:51:24,200
Person f is here, g, h.

1073
00:51:24,200 --> 00:51:27,590
Suppose that Alice has bought
her phone and left the store,

1074
00:51:27,590 --> 00:51:29,550
and then Bob does the same.

1075
00:51:29,550 --> 00:51:34,210
He goes ahead and leaves the store,
and then Charlie leaves the store.

1076
00:51:34,210 --> 00:51:38,330
Where do I put person i who
maybe shows up a little late?

1077
00:51:38,330 --> 00:51:41,780
It would seem that I want to put
them at the end of the queue, which

1078
00:51:41,780 --> 00:51:46,890
makes good sense, but right now d, e,
f, g, and h are still in the queue,

1079
00:51:46,890 --> 00:51:48,740
and this is an array I proposed.

1080
00:51:48,740 --> 00:51:54,620
My data structure's an array, so I can't
just move d to the front of the line

1081
00:51:54,620 --> 00:51:55,720
easily.

1082
00:51:55,720 --> 00:51:58,050
I have to actually
shift him or move him,

1083
00:51:58,050 --> 00:52:01,367
and this might conjure up some memory
of our searching and sorting examples

1084
00:52:01,367 --> 00:52:03,450
where when we had our
humans on stage, we actually

1085
00:52:03,450 --> 00:52:05,910
had to physically move
people like an insertion sort

1086
00:52:05,910 --> 00:52:08,080
to make room for those elements.

1087
00:52:08,080 --> 00:52:08,810
And that's fine.

1088
00:52:08,810 --> 00:52:13,094
We can absolutely say, hey, David,
come over here please and person e,

1089
00:52:13,094 --> 00:52:16,010
come over here please, and that's
obviously what the Apple store does.

1090
00:52:16,010 --> 00:52:18,200
But when you're implementing
this idea in memory,

1091
00:52:18,200 --> 00:52:21,750
you can't just ask the numbers
themselves or the elements themselves

1092
00:52:21,750 --> 00:52:22,860
to do that moving.

1093
00:52:22,860 --> 00:52:25,824
You need to do it for them, and
that's going to cost you time,

1094
00:52:25,824 --> 00:52:27,990
and that's going to be a
price that you have to pay.

1095
00:52:27,990 --> 00:52:31,230
But I propose that we
can be clever here.

1096
00:52:31,230 --> 00:52:37,520
We do not need to incur the cost of
moving d, e, f, g h where Alice, Bob,

1097
00:52:37,520 --> 00:52:40,640
and Charlie previously were.

1098
00:52:40,640 --> 00:52:44,650
Where can we put person i instead?

1099
00:52:44,650 --> 00:52:47,000
I mean, there's obviously
room in the line,

1100
00:52:47,000 --> 00:52:49,645
so maybe why don't we
just put person i here?

1101
00:52:49,645 --> 00:52:53,780
But, again, we don't want to piss off
everyone who's already in the line.

1102
00:52:53,780 --> 00:52:57,420
So, if this now is an array, we
have to be mindful of the fact

1103
00:52:57,420 --> 00:53:02,830
that the front of this list has
to be remembered separately.

1104
00:53:02,830 --> 00:53:08,010
This data member here front really
should store not 0 in perpetuity

1105
00:53:08,010 --> 00:53:10,210
but really 0, 1, 2, 3.

1106
00:53:10,210 --> 00:53:13,510
It should store the
current front of the list.

1107
00:53:13,510 --> 00:53:16,140
And I need another
variable, presumably, called

1108
00:53:16,140 --> 00:53:19,330
size that keeps track of how many
elements are in the list, which

1109
00:53:19,330 --> 00:53:21,660
in this case is going to be six.

1110
00:53:21,660 --> 00:53:24,160
So with a queue, if I'm
implementing it using an array,

1111
00:53:24,160 --> 00:53:26,780
there's some added
complexity if I want to avoid

1112
00:53:26,780 --> 00:53:29,802
the inefficiency of moving
all of these elements

1113
00:53:29,802 --> 00:53:33,010
and incurring the kind of running times
we saw when we talked about searching

1114
00:53:33,010 --> 00:53:34,200
and sorting the other day.

1115
00:53:34,200 --> 00:53:39,690
There's no reason mechanically to move
d, e, f, g, h anywhere in the array.

1116
00:53:39,690 --> 00:53:43,370
We can in constant time, and maybe
our old friend the modulo operator

1117
00:53:43,370 --> 00:53:45,700
that you might have
used in [INAUDIBLE], we

1118
00:53:45,700 --> 00:53:48,400
can just figure out where
i, and j, and everyone else

1119
00:53:48,400 --> 00:53:51,010
should go so long as we
keep track separately

1120
00:53:51,010 --> 00:53:53,580
with a queue of what the
front of the list would be.

1121
00:53:53,580 --> 00:53:54,560
And why is this 3?

1122
00:53:54,560 --> 00:53:59,220
Well, if I continue numbering the
array like this, as we've often done,

1123
00:53:59,220 --> 00:54:03,430
you can now see that d is the head of
the list, or the front of the list.

1124
00:54:03,430 --> 00:54:07,390
And so, we should remember
his location there as 3.

1125
00:54:07,390 --> 00:54:11,840
But, again, what happens if
j, k, and then l shows up?

1126
00:54:11,840 --> 00:54:15,600
There is no room for l in this
world, not to mention m, n, o.

1127
00:54:15,600 --> 00:54:18,860
So what if we solved
this problem as before

1128
00:54:18,860 --> 00:54:23,710
by changing the array from having
some fixed capacity to having

1129
00:54:23,710 --> 00:54:27,470
no pre-determined capacity,
just use a pointer so that we

1130
00:54:27,470 --> 00:54:30,680
can use malloc to dynamically
allocate a big chunk of memory,

1131
00:54:30,680 --> 00:54:34,000
remember its capacity
ultimately, but also

1132
00:54:34,000 --> 00:54:36,870
remember the front and the
size of this data structure?

1133
00:54:36,870 --> 00:54:40,210
So, the same idea there might apply.

1134
00:54:40,210 --> 00:54:42,360
So, at the end of the
day, what have we done?

1135
00:54:42,360 --> 00:54:46,400
We've taken these new
building blocks, pointers,

1136
00:54:46,400 --> 00:54:48,970
and this notion of linking
things together using pointers

1137
00:54:48,970 --> 00:54:51,210
much like a linked list,
and we've looked back

1138
00:54:51,210 --> 00:54:53,330
at our data structure called an array.

1139
00:54:53,330 --> 00:54:57,020
And using these now, we can implement
what are generally called abstract data

1140
00:54:57,020 --> 00:55:00,220
types, a queue in a stack
does not have as a low level

1141
00:55:00,220 --> 00:55:02,979
meaning as an array does, which
is a very technical concept.

1142
00:55:02,979 --> 00:55:05,270
And in a linked list, this
is a very technical concept.

1143
00:55:05,270 --> 00:55:07,480
It's a node with pointers
linking things together.

1144
00:55:07,480 --> 00:55:10,001
A stack is like a stack
of cafeteria trays,

1145
00:55:10,001 --> 00:55:13,000
or a queue is something like people
lining up outside of an Apple Store.

1146
00:55:13,000 --> 00:55:16,250
These are abstract data types
that can be implemented clearly

1147
00:55:16,250 --> 00:55:19,340
underneath the hood in at least
a couple of different ways.

1148
00:55:19,340 --> 00:55:21,490
You can use an array and
keep things simple, a la

1149
00:55:21,490 --> 00:55:23,840
weeks two and beyond in
the class, but you're

1150
00:55:23,840 --> 00:55:26,350
going to paint yourself into
a corner by fixing their size,

1151
00:55:26,350 --> 00:55:29,100
as I did a moment ago,
by declaring this queue

1152
00:55:29,100 --> 00:55:31,810
and before it a stack to
be of a fixed capacity.

1153
00:55:31,810 --> 00:55:35,160
But now that we have pointers, and
malloc, and dynamic memory allocation,

1154
00:55:35,160 --> 00:55:38,220
and this spirit of linked
lists, we can change

1155
00:55:38,220 --> 00:55:41,170
that to actually be
numbers and actually just

1156
00:55:41,170 --> 00:55:43,630
remember where things
are underneath the hood.

1157
00:55:43,630 --> 00:55:45,840
And nicely enough, a stack
in a queue doesn't even

1158
00:55:45,840 --> 00:55:48,680
need me to stitch things
together like a linked list.

1159
00:55:48,680 --> 00:55:52,730
I just need malloc in
order to allocate those.

1160
00:55:52,730 --> 00:55:54,920
So, let's tie these two
topics together if you would

1161
00:55:54,920 --> 00:55:58,200
and compare and contrast them
by way of a wonderful animation

1162
00:55:58,200 --> 00:56:00,300
that a fellow educator
made and posted online

1163
00:56:00,300 --> 00:56:04,290
that we've abbreviated here to give us
a sense of the difference between stacks

1164
00:56:04,290 --> 00:56:04,999
and queues.

1165
00:56:04,999 --> 00:56:05,665
[AUDIO PLAYBACK]

1166
00:56:05,665 --> 00:56:10,320
[MUSIC PLAYING]

1167
00:56:10,320 --> 00:56:13,230
-Once upon a time, there
was a guy named Jack.

1168
00:56:13,230 --> 00:56:16,590
When it came to making friends,
Jack did not have the knack.

1169
00:56:16,590 --> 00:56:19,570
So, Jack went to talk to the
most popular guy he knew.

1170
00:56:19,570 --> 00:56:22,170
He went to Lou and asked what do I do?

1171
00:56:22,170 --> 00:56:24,820
Lou saw that his friend
was really distressed.

1172
00:56:24,820 --> 00:56:27,280
Well, Lou, began just
look how you're dressed.

1173
00:56:27,280 --> 00:56:30,010
Don't you have any clothes
with a different look?

1174
00:56:30,010 --> 00:56:30,980
Yes, said, Jack.

1175
00:56:30,980 --> 00:56:32,170
I sure do.

1176
00:56:32,170 --> 00:56:34,630
Come to my house and
I'll show them to you.

1177
00:56:34,630 --> 00:56:37,590
So, they went off to Jack's,
and Jack showed Lou the box

1178
00:56:37,590 --> 00:56:40,810
where he kept all his shirts,
and his pants, and his socks Lou

1179
00:56:40,810 --> 00:56:43,630
said I see you have all
your clothes in a pile.

1180
00:56:43,630 --> 00:56:46,160
Why don't you wear some
others once in a while?

1181
00:56:46,160 --> 00:56:49,330
Jack said, well, when I
remove clothes and socks,

1182
00:56:49,330 --> 00:56:53,330
I wash them and put them away in
the box, then comes the next morning

1183
00:56:53,330 --> 00:56:54,530
and up I hop.

1184
00:56:54,530 --> 00:56:57,710
I go to the box and get
my clothes off the top.

1185
00:56:57,710 --> 00:57:00,440
Lou quickly realized
the problem with Jack.

1186
00:57:00,440 --> 00:57:03,340
He kept clothes, CDs,
and books in a stack.

1187
00:57:03,340 --> 00:57:05,790
When he reached something
to read or to wear

1188
00:57:05,790 --> 00:57:08,410
he chose [? the top ?]
book or underwear.

1189
00:57:08,410 --> 00:57:10,820
Then when he was done he
would put it right back,

1190
00:57:10,820 --> 00:57:13,310
back it would go on top of the stack.

1191
00:57:13,310 --> 00:57:15,800
I know the solution,
said a triumphant Lou.

1192
00:57:15,800 --> 00:57:18,390
You need to learn to
start using a queue.

1193
00:57:18,390 --> 00:57:21,200
Lou took Jack's clothes
and hung them in a closet,

1194
00:57:21,200 --> 00:57:24,040
and when he had emptied
the box he just tossed it.

1195
00:57:24,040 --> 00:57:27,290
Then he said, now, Jack, at the
end of the day put your clothes

1196
00:57:27,290 --> 00:57:29,300
on the left when you put them away.

1197
00:57:29,300 --> 00:57:31,810
Then tomorrow morning
when you see the sunshine,

1198
00:57:31,810 --> 00:57:34,770
get your clothes from right
from the end of the line.

1199
00:57:34,770 --> 00:57:36,210
Don't you see, said Lou.

1200
00:57:36,210 --> 00:57:37,700
It will be so nice.

1201
00:57:37,700 --> 00:57:41,100
You'll wear everything once
before you wear something twice.

1202
00:57:41,100 --> 00:57:43,950
And with everything in queues
in his closet and shelf,

1203
00:57:43,950 --> 00:57:47,010
Jack started to feel quite
sure of himself all thanks

1204
00:57:47,010 --> 00:57:51,586
to Lou and his wonderful queue.

1205
00:57:51,586 --> 00:57:52,568
[END PLAYBACK]

1206
00:57:52,568 --> 00:57:56,280
SPEAKER 1: All right, so let's
take a look at another data type,

1207
00:57:56,280 --> 00:57:58,220
this one known as a tree.

1208
00:57:58,220 --> 00:58:02,380
Because now that we have the ability
to stitch data structures together much

1209
00:58:02,380 --> 00:58:04,270
like a linked list, we
now have the ability

1210
00:58:04,270 --> 00:58:10,050
to stitch things together not just left
to right or top to bottom conceptually,

1211
00:58:10,050 --> 00:58:11,395
but in any number of directions.

1212
00:58:11,395 --> 00:58:13,520
And indeed, there's nothing
stopping us from having

1213
00:58:13,520 --> 00:58:17,930
one node linked to by way of
multiple pointers, multiple nodes.

1214
00:58:17,930 --> 00:58:22,270
So, for instance, this picture here
from a textbook is a tree structure.

1215
00:58:22,270 --> 00:58:24,676
And it's very much like the
family trees that you might

1216
00:58:24,676 --> 00:58:26,300
have drawn in grade school or the like.

1217
00:58:26,300 --> 00:58:29,210
But in this case, you
have just one root node,

1218
00:58:29,210 --> 00:58:31,740
the node at the top of the
data structure, so to speak,

1219
00:58:31,740 --> 00:58:33,750
from which everything else descends.

1220
00:58:33,750 --> 00:58:36,010
And that node is said to have children.

1221
00:58:36,010 --> 00:58:40,070
For instance, 2 and 3 are children
of the node number 1 here.

1222
00:58:40,070 --> 00:58:43,590
And then there's other semantics in
this world of trees in computer science.

1223
00:58:43,590 --> 00:58:46,120
Much like family trees,
anything that does not

1224
00:58:46,120 --> 00:58:48,820
have children-- like 5,
6, and 7, or 8 and 9--

1225
00:58:48,820 --> 00:58:51,815
would be called leaves of the
tree, because like the leaves

1226
00:58:51,815 --> 00:58:54,190
at the end of the branches,
there is nothing beyond them.

1227
00:58:54,190 --> 00:58:56,720
So, nicely enough we borrow
a lot of the language

1228
00:58:56,720 --> 00:58:59,470
from family trees and
actual trees in order

1229
00:58:59,470 --> 00:59:02,610
to discuss this data
structure known as a tree.

1230
00:59:02,610 --> 00:59:07,660
But why in the world would we want
to lay out data in a tree structure?

1231
00:59:07,660 --> 00:59:10,720
Now we just seem to be
doing things because we can,

1232
00:59:10,720 --> 00:59:12,290
it would seem at first glance.

1233
00:59:12,290 --> 00:59:17,430
Because, for instance, suppose we had
these numbers-- 22, 33, 44, 55, 66, 77,

1234
00:59:17,430 --> 00:59:18,530
and 88.

1235
00:59:18,530 --> 00:59:19,630
They're clearly sorted.

1236
00:59:19,630 --> 00:59:22,900
And suppose that I wanted to lay
these out in a data structure

1237
00:59:22,900 --> 00:59:27,090
and be able to search them
efficiently, assuming the whole time

1238
00:59:27,090 --> 00:59:28,280
that they are indeed sorted.

1239
00:59:28,280 --> 00:59:32,540
Well, if we wanted to do that, we have
our old friend arrays from weeks ago.

1240
00:59:32,540 --> 00:59:36,660
And we also have our old algorithm
from Mike Smith, our binary search

1241
00:59:36,660 --> 00:59:38,190
algorithm, divide and conquer.

1242
00:59:38,190 --> 00:59:40,710
And we can find nodes in
this data structure super,

1243
00:59:40,710 --> 00:59:45,100
super fast in logarithmic
time, big O of log n.

1244
00:59:45,100 --> 00:59:46,770
So, we've solved that problem.

1245
00:59:46,770 --> 00:59:51,850
But it turns out we don't necessarily
have to use an array laying out data

1246
00:59:51,850 --> 00:59:57,820
from left to right because, again, one
of the prices we pay of using arrays

1247
00:59:57,820 --> 01:00:00,850
where as we've realized
today is this finiteness.

1248
01:00:00,850 --> 01:00:03,410
At the end of the day, the
size of an array is fixed.

1249
01:00:03,410 --> 01:00:06,760
You have to decide in advance how
big your array is going to be.

1250
01:00:06,760 --> 01:00:08,759
So, what if you want to
add more numbers to it?

1251
01:00:08,759 --> 01:00:10,800
What if you want to remove
numbers for efficiency

1252
01:00:10,800 --> 01:00:12,260
and not waste so much memory?

1253
01:00:12,260 --> 01:00:13,930
You can't really do that with an array.

1254
01:00:13,930 --> 01:00:16,470
You can, but have to
jump through some hoops.

1255
01:00:16,470 --> 01:00:19,940
You have to reallocate the array, as
with a function like [? re-alloc ?]

1256
01:00:19,940 --> 01:00:22,870
if you indeed used malloc in
the first place to allocate it.

1257
01:00:22,870 --> 01:00:25,520
But then you have to copy the
old array into the new array,

1258
01:00:25,520 --> 01:00:26,810
so it's all possible.

1259
01:00:26,810 --> 01:00:30,770
Nothing's impossible once you
have a keyboard at your disposal,

1260
01:00:30,770 --> 01:00:32,730
but it's a lot of work,
and it's more time,

1261
01:00:32,730 --> 01:00:35,030
and it's expensive there for
both in terms of your time

1262
01:00:35,030 --> 01:00:36,730
and the computer's time.

1263
01:00:36,730 --> 01:00:39,640
But could we achieve
the beauty of divide

1264
01:00:39,640 --> 01:00:43,920
and conquer and binary search from
week zero without the constraints

1265
01:00:43,920 --> 01:00:45,230
that arrays impose?

1266
01:00:45,230 --> 01:00:47,840
And today, the solution to
all of our array problems

1267
01:00:47,840 --> 01:00:51,170
seems to be linked lists or
more generally pointers so

1268
01:00:51,170 --> 01:00:54,420
that, one, we can dynamically allocate
more memory with malloc when we need it

1269
01:00:54,420 --> 01:00:57,300
and then use pointers to
thread or stitch together

1270
01:00:57,300 --> 01:00:59,820
that node with any existing nodes.

1271
01:00:59,820 --> 01:01:03,740
So, indeed let me propose this
variant on a tree structure

1272
01:01:03,740 --> 01:01:06,720
that the world calls binary
search trees or BSTs.

1273
01:01:06,720 --> 01:01:11,310
Binary in this case means two, and this
just means that every node in this tree

1274
01:01:11,310 --> 01:01:16,010
is going to have 0, 1,
or 2 maximally children.

1275
01:01:16,010 --> 01:01:23,360
And now, in this case binary search tree
means that for every node in the tree

1276
01:01:23,360 --> 01:01:28,720
it's left child is less than it and
its right child is greater than it.

1277
01:01:28,720 --> 01:01:30,390
And that's a recursive definition.

1278
01:01:30,390 --> 01:01:33,870
You can look at the root of this
tree and ask that same question.

1279
01:01:33,870 --> 01:01:34,570
55?

1280
01:01:34,570 --> 01:01:36,070
Is it greater than its left child?

1281
01:01:36,070 --> 01:01:36,610
Yep.

1282
01:01:36,610 --> 01:01:37,990
Is it less than its right child?

1283
01:01:37,990 --> 01:01:38,820
Yep.

1284
01:01:38,820 --> 01:01:41,490
That is the beginning, it would
seem, of a binary search tree.

1285
01:01:41,490 --> 01:01:44,410
But it's recursive in so far as
this is indeed a binary search

1286
01:01:44,410 --> 01:01:46,490
tree if that statement is true.

1287
01:01:46,490 --> 01:01:49,370
Those answers are the same for
every other node in the tree.

1288
01:01:49,370 --> 01:01:51,530
33, is its left child smaller?

1289
01:01:51,530 --> 01:01:52,030
Yep.

1290
01:01:52,030 --> 01:01:53,230
Is its right child bigger?

1291
01:01:53,230 --> 01:01:53,760
Yep.

1292
01:01:53,760 --> 01:01:54,920
How about over here, 77?

1293
01:01:54,920 --> 01:01:55,870
Left child smaller?

1294
01:01:55,870 --> 01:01:56,370
Yep.

1295
01:01:56,370 --> 01:01:57,530
Right child bigger?

1296
01:01:57,530 --> 01:01:58,480
Yep, indeed.

1297
01:01:58,480 --> 01:02:00,480
How about the leaves of the tree?

1298
01:02:00,480 --> 01:02:04,410
Is 22 greater than its left child?

1299
01:02:04,410 --> 01:02:07,810
I mean, yeah, there is no child,
so yes, that's a fair statement.

1300
01:02:07,810 --> 01:02:10,470
It certainly doesn't violate
our guiding principle.

1301
01:02:10,470 --> 01:02:12,520
Is it less than its right child, if any?

1302
01:02:12,520 --> 01:02:14,340
Yes, there just isn't any.

1303
01:02:14,340 --> 01:02:16,300
And so this is a binary search tree.

1304
01:02:16,300 --> 01:02:20,840
And indeed, if you took a scissors and
snipped off any branch of this tree,

1305
01:02:20,840 --> 01:02:24,820
you would have another binary
search tree, albeit smaller.

1306
01:02:24,820 --> 01:02:27,910
But it's recursive and that definition
applies to every one of the nodes.

1307
01:02:27,910 --> 01:02:31,790
But what's beautiful here now is that
if we implement this binary search

1308
01:02:31,790 --> 01:02:34,680
tree, similar in spirit to how
we implemented linked lists

1309
01:02:34,680 --> 01:02:39,020
using not arrays but using pointers
and not one pointer but two pointers

1310
01:02:39,020 --> 01:02:43,440
whereby every node in this tree
apparently has up to two pointers--

1311
01:02:43,440 --> 01:02:48,470
let's call them not next but how about
left and right just to be intuitive.

1312
01:02:48,470 --> 01:02:51,300
Well, if every node has a
left and a right pointer,

1313
01:02:51,300 --> 01:02:54,890
now you can conceptually attach
yourself to another node over there

1314
01:02:54,890 --> 01:02:58,180
and another node over there,
and they too can do the same.

1315
01:02:58,180 --> 01:03:02,400
So, we have the syntax already with our
pointers with which to implement this.

1316
01:03:02,400 --> 01:03:03,430
But why would we?

1317
01:03:03,430 --> 01:03:06,230
Well, one, if we're using
pointers now and not an array,

1318
01:03:06,230 --> 01:03:10,200
I can very, very easily allocate
more nodes for this tree.

1319
01:03:10,200 --> 01:03:14,460
I can insert 99 or 11 really
easily, because I just

1320
01:03:14,460 --> 01:03:16,280
called malloc like I did before.

1321
01:03:16,280 --> 01:03:19,040
I put the number 99 or
11 inside of that node,

1322
01:03:19,040 --> 01:03:20,920
and then I start from
the root of the tree,

1323
01:03:20,920 --> 01:03:23,700
much like I start from the first
element in the linked list,

1324
01:03:23,700 --> 01:03:27,510
and I just search for its destined
location going left or right

1325
01:03:27,510 --> 01:03:29,130
based on the size of that value.

1326
01:03:29,130 --> 01:03:32,980
And what's nice, too, here is
notice how short the tree is.

1327
01:03:32,980 --> 01:03:34,150
This is not a linked list.

1328
01:03:34,150 --> 01:03:37,650
It's not a long list, whether
vertically or horizontally.

1329
01:03:37,650 --> 01:03:40,580
This is very shallow this tree.

1330
01:03:40,580 --> 01:03:44,910
And indeed I claim that if we've
got n elements in this list,

1331
01:03:44,910 --> 01:03:48,950
the height of this tree
it turns out is log of n.

1332
01:03:48,950 --> 01:03:53,810
So, the height of this tree is
log of n, give or take one or so.

1333
01:03:53,810 --> 01:03:56,950
But that's compelling, because
how do I search this tree?

1334
01:03:56,950 --> 01:04:00,805
Suppose I am asked-- I'm trying to
answer the question is 44 on my list?

1335
01:04:00,805 --> 01:04:01,680
How do I answer that?

1336
01:04:01,680 --> 01:04:04,650
Well, we humans can obviously just look
back and it's like, yes, 44 is in it.

1337
01:04:04,650 --> 01:04:05,820
It's not how a computer works.

1338
01:04:05,820 --> 01:04:08,236
We have to start from what
we're given, which in this case

1339
01:04:08,236 --> 01:04:11,100
is going to be as the arrow
suggests a pointer to the tree

1340
01:04:11,100 --> 01:04:12,870
itself, a pointer towards first node.

1341
01:04:12,870 --> 01:04:15,230
And I look is this the number 44?

1342
01:04:15,230 --> 01:04:16,590
Obviously not.

1343
01:04:16,590 --> 01:04:20,425
55 is greater than 44, so I'm
going to go down to the left child

1344
01:04:20,425 --> 01:04:21,550
and ask that same question.

1345
01:04:21,550 --> 01:04:22,740
33, is this 44?

1346
01:04:22,740 --> 01:04:25,190
Obviously not, but it's
less than it so I'm

1347
01:04:25,190 --> 01:04:26,750
going to go down to the right child.

1348
01:04:26,750 --> 01:04:27,730
Is this 44?

1349
01:04:27,730 --> 01:04:32,610
Yes, and simply by
looking at three nodes

1350
01:04:32,610 --> 01:04:36,570
have I whittled this problem
down to my yes no answer.

1351
01:04:36,570 --> 01:04:39,060
And indeed, you can think
of it again with scissors.

1352
01:04:39,060 --> 01:04:41,670
I'm looking at 55 at the
beginning of this story.

1353
01:04:41,670 --> 01:04:42,740
Is 44 55?

1354
01:04:42,740 --> 01:04:43,860
No, 44 is less.

1355
01:04:43,860 --> 01:04:45,070
Well, you know what?

1356
01:04:45,070 --> 01:04:49,360
I can effectively snip off
the right half of that tree,

1357
01:04:49,360 --> 01:04:52,910
much like I tore that phone book in
week zero, throwing half of the problem

1358
01:04:52,910 --> 01:04:53,410
away.

1359
01:04:53,410 --> 01:04:57,820
Here I can throw essentially half of the
tree away and search only what remains

1360
01:04:57,820 --> 01:05:01,020
and then repeat that process again,
and again, and again, whittling

1361
01:05:01,020 --> 01:05:03,320
the tree down by half every time.

1362
01:05:03,320 --> 01:05:06,460
So therein lies our
logarithmic running time.

1363
01:05:06,460 --> 01:05:09,890
Therein lies the height
of the tree, so long

1364
01:05:09,890 --> 01:05:15,770
as I am good about
keeping the tree balanced.

1365
01:05:15,770 --> 01:05:17,020
There's a danger.

1366
01:05:17,020 --> 01:05:23,440
Suppose that I go ahead and start
building this tree myself in code

1367
01:05:23,440 --> 01:05:26,030
and I'm a little sloppy
about doing that.

1368
01:05:26,030 --> 01:05:33,910
And I go ahead and I insert, for
instance, let's say the number 33.

1369
01:05:33,910 --> 01:05:36,190
And it's the first
node in my tree, so I'm

1370
01:05:36,190 --> 01:05:38,880
going to put it right
up here at the top.

1371
01:05:38,880 --> 01:05:41,330
And now suppose that the
next number that just happens

1372
01:05:41,330 --> 01:05:43,555
to get inserted into this tree is 44.

1373
01:05:43,555 --> 01:05:45,040
Well, where does it go?

1374
01:05:45,040 --> 01:05:47,610
Well, it has no children
yet, but it is bigger,

1375
01:05:47,610 --> 01:05:49,110
so it should probably go over here.

1376
01:05:49,110 --> 01:05:50,900
So, yeah, I'll draw 44 there.

1377
01:05:50,900 --> 01:05:53,260
Now, suppose that the
inputs to this problem

1378
01:05:53,260 --> 01:05:55,050
are such that 55 is inserted next.

1379
01:05:55,050 --> 01:05:56,240
Where does it go?

1380
01:05:56,240 --> 01:06:00,330
All right, 55, it's bigger,
so it should go over here.

1381
01:06:00,330 --> 01:06:02,530
And then 66 is inserted next.

1382
01:06:02,530 --> 01:06:08,670
All right, it goes over
here-- never mind that.

1383
01:06:08,670 --> 01:06:12,012
So, what's happening to
my binary search tree?

1384
01:06:12,012 --> 01:06:13,970
Well, first of all, is
it a binary search tree?

1385
01:06:13,970 --> 01:06:18,480
It is because this node is
bigger than its left child,

1386
01:06:18,480 --> 01:06:22,170
if any-- there just isn't any--
and it's less than its right child.

1387
01:06:22,170 --> 01:06:23,190
How about here, 44?

1388
01:06:23,190 --> 01:06:26,000
It's bigger than its left child,
if any-- because there is none--

1389
01:06:26,000 --> 01:06:27,940
and it's smaller than its right child.

1390
01:06:27,940 --> 01:06:30,650
The same thing is true for 55,
the same thing is true for 66.

1391
01:06:30,650 --> 01:06:36,060
So, this is a binary search tree and
yet somehow what does it look like?

1392
01:06:36,060 --> 01:06:38,330
It looks like a linked list, right?

1393
01:06:38,330 --> 01:06:39,420
It's at a weird angle.

1394
01:06:39,420 --> 01:06:41,170
I've been drawing
everything horizontally,

1395
01:06:41,170 --> 01:06:43,290
but that's a meaningless
artistic detail.

1396
01:06:43,290 --> 01:06:45,960
It devolves potentially
into a linked list.

1397
01:06:45,960 --> 01:06:49,540
And so, binary search trees if
they are balanced, so to speak,

1398
01:06:49,540 --> 01:06:53,340
if they are built in the right order
or built with the right insertion

1399
01:06:53,340 --> 01:06:57,340
algorithm such that they do
have this balanced height,

1400
01:06:57,340 --> 01:07:01,830
this logarithmic height, do afford
us the same logarithmic running time

1401
01:07:01,830 --> 01:07:05,870
that the phone book example did and
our binary search of an array did.

1402
01:07:05,870 --> 01:07:08,340
But we have to do a little
bit more work in order

1403
01:07:08,340 --> 01:07:10,390
to make sure that these
trees are balanced.

1404
01:07:10,390 --> 01:07:12,600
And we won't go into detail
as to the algorithmics

1405
01:07:12,600 --> 01:07:14,670
of keeping the tree balanced.

1406
01:07:14,670 --> 01:07:17,110
But realize, again, there's
going to be this trade-off.

1407
01:07:17,110 --> 01:07:21,140
Yes, you can use a binary search tree or
trees more generally to store numbers.

1408
01:07:21,140 --> 01:07:25,920
Yes, they can allow you to achieve that
same binary or logarithmic running time

1409
01:07:25,920 --> 01:07:27,860
that we've gotten so
used to with arrays,

1410
01:07:27,860 --> 01:07:30,200
but they also give us
dynamism such that we

1411
01:07:30,200 --> 01:07:32,590
can keep adding or even removing nodes.

1412
01:07:32,590 --> 01:07:35,170
But, but, but, but it
turns out we're going

1413
01:07:35,170 --> 01:07:39,190
to have to think a lot harder about
how to keep these things balanced.

1414
01:07:39,190 --> 01:07:41,540
And indeed, in higher
level CS courses, courses

1415
01:07:41,540 --> 01:07:43,290
on data structures and
algorithms will you

1416
01:07:43,290 --> 01:07:46,250
explore concepts along
exactly those lines.

1417
01:07:46,250 --> 01:07:50,590
How would you go about implementing
insert and delete into a tree

1418
01:07:50,590 --> 01:07:52,600
so that you do maintain this balance?

1419
01:07:52,600 --> 01:07:54,900
And there is yet more variance
on these kinds of trees

1420
01:07:54,900 --> 01:07:56,450
that you'll encounter accordingly.

1421
01:07:56,450 --> 01:08:00,040
But for our purposes, let's consider
how you would implement the tree itself

1422
01:08:00,040 --> 01:08:04,310
independent of how you might
implement those actual algorithms.

1423
01:08:04,310 --> 01:08:06,050
Let me propose this type of node.

1424
01:08:06,050 --> 01:08:08,670
Again, notice just the very
generic term in programming

1425
01:08:08,670 --> 01:08:13,106
where it's usually like a container for
one or more other things, and this time

1426
01:08:13,106 --> 01:08:14,980
those things are an
integer-- we'll call it n

1427
01:08:14,980 --> 01:08:17,850
but it could be called
anything-- and two pointers.

1428
01:08:17,850 --> 01:08:22,630
And instead of next, I'm going to just
by convention call them left and right.

1429
01:08:22,630 --> 01:08:27,760
And as before, notice that I do
need to declare struct node up

1430
01:08:27,760 --> 01:08:29,529
here or some word up here.

1431
01:08:29,529 --> 01:08:33,960
But by convention I'm just going to do
typedef struct node, because C reads

1432
01:08:33,960 --> 01:08:35,460
things top to bottom, left to right.

1433
01:08:35,460 --> 01:08:38,529
So if I want to refer to
a node inside of a node,

1434
01:08:38,529 --> 01:08:42,910
I need to have that vocabulary, per
this first line, even though later on I

1435
01:08:42,910 --> 01:08:45,929
just want to call this
whole darn thing a node.

1436
01:08:45,929 --> 01:08:47,220
And so, that's the distinction.

1437
01:08:47,220 --> 01:08:49,439
This actually has the side
effect of creating a data

1438
01:08:49,439 --> 01:08:50,605
type by two different names.

1439
01:08:50,605 --> 01:08:53,410
One is called struct node, and
you can literally in your code

1440
01:08:53,410 --> 01:08:55,850
write struct node something,
struct node something.

1441
01:08:55,850 --> 01:08:59,029
It just feels unnecessarily
verbose, so typedef

1442
01:08:59,029 --> 01:09:01,649
allows you to simplify
this as just node, which

1443
01:09:01,649 --> 01:09:03,020
refers to the same structure.

1444
01:09:03,020 --> 01:09:07,479
But this is necessary for this
innermost implementation detail.

1445
01:09:07,479 --> 01:09:09,580
So, now that we have the
ability with a structure

1446
01:09:09,580 --> 01:09:12,870
to represent this thing, what
can we actually do with it?

1447
01:09:12,870 --> 01:09:16,750
Well, here is where recursion
from a few weeks ago

1448
01:09:16,750 --> 01:09:18,500
actually gets really compelling.

1449
01:09:18,500 --> 01:09:22,910
When we introduced that sigma example
a while ago and talked in the abstract

1450
01:09:22,910 --> 01:09:27,260
about recursion, frankly, it's kind of
hard to justify it early on, unless you

1451
01:09:27,260 --> 01:09:30,670
actually have a problem that lends
itself to recursion in a way that

1452
01:09:30,670 --> 01:09:33,229
makes sense to use recursion
and not just iteration,

1453
01:09:33,229 --> 01:09:36,040
loops-- for loops, while
loops, do while, and the like.

1454
01:09:36,040 --> 01:09:38,779
And here we actually have a
perfect incarnation of that.

1455
01:09:38,779 --> 01:09:41,229
What does it mean to search
a binary search tree?

1456
01:09:41,229 --> 01:09:44,010
Well, suppose I'm
searching for a number n

1457
01:09:44,010 --> 01:09:46,760
and I'm being given a pointer
to the root of the tree,

1458
01:09:46,760 --> 01:09:47,800
and I'll call it tree.

1459
01:09:47,800 --> 01:09:49,430
So, just like when I was
searching a linked list,

1460
01:09:49,430 --> 01:09:51,250
I'm given two things, the
number I'm looking for

1461
01:09:51,250 --> 01:09:54,029
and a pointer to the first thing in
the data structure-- the first thing

1462
01:09:54,029 --> 01:09:55,930
in a linked list or the
first thing in a tree.

1463
01:09:55,930 --> 01:09:57,929
And in this case, we would
call that first thing

1464
01:09:57,929 --> 01:10:00,450
in a tree a root, generally speaking.

1465
01:10:00,450 --> 01:10:03,230
So, the first thing I had
better do in my search function

1466
01:10:03,230 --> 01:10:04,390
is check, wait a minute.

1467
01:10:04,390 --> 01:10:08,270
If tree equals equals
null, don't do anything.

1468
01:10:08,270 --> 01:10:12,220
Do not risk touching any pointers,
because as you may have gleaned already

1469
01:10:12,220 --> 01:10:14,720
or soon will with some
of CS50's problems,

1470
01:10:14,720 --> 01:10:19,350
you will cause quite probably
a segmentation fault,

1471
01:10:19,350 --> 01:10:22,630
a memory-related problem in your
program such that it just crashes.

1472
01:10:22,630 --> 01:10:25,510
It literally says segmentation
fault on this screen

1473
01:10:25,510 --> 01:10:27,220
if you touch memory that you should not.

1474
01:10:27,220 --> 01:10:29,440
And you should not touch null values.

1475
01:10:29,440 --> 01:10:31,200
You should not go to null values.

1476
01:10:31,200 --> 01:10:35,090
You should not do star of any
value that itself might be null.

1477
01:10:35,090 --> 01:10:38,830
And so, if tree equals equals null
is super, super important here,

1478
01:10:38,830 --> 01:10:40,580
because I want to make
sure to immediately

1479
01:10:40,580 --> 01:10:44,110
say, well, if you hand me null, that's
like handing me no tree whatsoever.

1480
01:10:44,110 --> 01:10:45,830
So, my answer is obviously false.

1481
01:10:45,830 --> 01:10:48,670
N can't be in a non-existent tree.

1482
01:10:48,670 --> 01:10:51,805
But we need that condition
up top, because the next case

1483
01:10:51,805 --> 01:10:53,430
is [? noticed through ?] the following.

1484
01:10:53,430 --> 01:10:57,380
Else if n-- the value
we're looking for-- is less

1485
01:10:57,380 --> 01:11:01,770
than the value of n in
this node-- tree, recall,

1486
01:11:01,770 --> 01:11:04,310
doesn't refer to the whole
thing, per se, in this context.

1487
01:11:04,310 --> 01:11:06,200
It refers to the current
node that we've been

1488
01:11:06,200 --> 01:11:09,310
past, which at the beginning of
the story is the root of the tree.

1489
01:11:09,310 --> 01:11:13,740
So, if the number n in the root of
the tree is greater than the number

1490
01:11:13,740 --> 01:11:17,510
we're looking for, we
want to go to the left.

1491
01:11:17,510 --> 01:11:23,320
Else we want to go to the right
and search the right subtree.

1492
01:11:23,320 --> 01:11:24,820
So, what's the syntax here?

1493
01:11:24,820 --> 01:11:28,030
If the n we're looking
for, like 44, is less

1494
01:11:28,030 --> 01:11:33,210
than the value at the current node,
55, then what do we want to do?

1495
01:11:33,210 --> 01:11:37,270
We want to call search, still
searching for the same number n

1496
01:11:37,270 --> 01:11:40,120
but searching on the left subtree.

1497
01:11:40,120 --> 01:11:43,980
And how do you pass in a
pointer to the left tree?

1498
01:11:43,980 --> 01:11:47,420
Well, you have in tree a
pointer to the root node.

1499
01:11:47,420 --> 01:11:52,250
Tree arrow left just means go to my left
child and past that value in instead,

1500
01:11:52,250 --> 01:11:53,480
pass its address in instead.

1501
01:11:53,480 --> 01:11:55,910
Meanwhile, if the number
you're looking for

1502
01:11:55,910 --> 01:11:58,660
is actually greater than the
value in the current node, search

1503
01:11:58,660 --> 01:12:03,780
the right subtree, else return true.

1504
01:12:03,780 --> 01:12:08,340
Because if the list is not null-- if
there is actually a list and the number

1505
01:12:08,340 --> 01:12:10,610
you're looking for is not
less than the current node

1506
01:12:10,610 --> 01:12:14,780
and it's not greater than the current
node, it must be the current node,

1507
01:12:14,780 --> 01:12:17,170
so you can return true.

1508
01:12:17,170 --> 01:12:19,260
But there's one important detail here.

1509
01:12:19,260 --> 01:12:21,220
I didn't just call search.

1510
01:12:21,220 --> 01:12:24,970
I called return search in each
of these two middle cases.

1511
01:12:24,970 --> 01:12:25,756
Why is that?

1512
01:12:25,756 --> 01:12:28,630
Well, this is where recursion gets
potentially a little mind bending.

1513
01:12:28,630 --> 01:12:32,160
Recursion is the act of a
function calling itself.

1514
01:12:32,160 --> 01:12:35,790
Now, in and of itself, that sounds bad,
because if a function calls itself,

1515
01:12:35,790 --> 01:12:40,060
why wouldn't it call itself again, and
again, and again, and again, and again,

1516
01:12:40,060 --> 01:12:42,120
and just do this
infinitely many times such

1517
01:12:42,120 --> 01:12:45,180
that now you get a stack overflow
where all of those frames on the stack

1518
01:12:45,180 --> 01:12:47,070
hit the heap and bad things happen.

1519
01:12:47,070 --> 01:12:52,650
But no, recursion works beautifully
so long as every time you recurse,

1520
01:12:52,650 --> 01:12:58,660
every time a function calls itself it
takes a smaller byte of the problem.

1521
01:12:58,660 --> 01:13:00,970
Or rather, put another
way, it throws away

1522
01:13:00,970 --> 01:13:04,012
half of the problem, as in this case,
and looks only at a remaining half.

1523
01:13:04,012 --> 01:13:06,595
Because if you keep shrinking,
shrinking, shrinking, shrinking

1524
01:13:06,595 --> 01:13:09,070
the problem, you will
eventually hit this base case

1525
01:13:09,070 --> 01:13:13,230
where either there is no more tree
or you're looking right at the node

1526
01:13:13,230 --> 01:13:14,500
that you want to find.

1527
01:13:14,500 --> 01:13:18,020
And so, by returning
search and tree left,

1528
01:13:18,020 --> 01:13:22,740
or returning search and tree
right, you're deferring the answer.

1529
01:13:22,740 --> 01:13:25,960
When you, the search
function, are called and asked

1530
01:13:25,960 --> 01:13:28,835
is the number 44 in
this tree, you might not

1531
01:13:28,835 --> 01:13:31,710
know because the node you're looking
at at the beginning of the story

1532
01:13:31,710 --> 01:13:33,280
was again 55.

1533
01:13:33,280 --> 01:13:34,490
But you know who does know?

1534
01:13:34,490 --> 01:13:37,540
I bet my left child will know
the answer to that if I just

1535
01:13:37,540 --> 01:13:44,520
ask it by passing it-- passing to
search a pointer to it, my left child,

1536
01:13:44,520 --> 01:13:46,830
and passing in that same number 44.

1537
01:13:46,830 --> 01:13:50,330
So, saying return search is
like saying I don't know.

1538
01:13:50,330 --> 01:13:51,330
Ask my left child.

1539
01:13:51,330 --> 01:13:55,720
Or I don't know, ask my right child
and let me return as my answer

1540
01:13:55,720 --> 01:13:59,240
whatever my child's answer is instead.

1541
01:13:59,240 --> 01:14:03,640
So, you could do this same
function using iteration.

1542
01:14:03,640 --> 01:14:09,115
But you could solve it arguably much
more elegantly here using recursion,

1543
01:14:09,115 --> 01:14:11,740
because a data structure like
this-- like a binary search tree,

1544
01:14:11,740 --> 01:14:15,890
which again is recursively
defined-- each node is conceptually

1545
01:14:15,890 --> 01:14:19,030
identical, if numerically
different from the others,

1546
01:14:19,030 --> 01:14:23,720
allows us to apply this algorithm,
this recursive algorithm

1547
01:14:23,720 --> 01:14:26,984
to that particular data structure.

1548
01:14:26,984 --> 01:14:28,900
Now, let's look at a
more concrete incarnation

1549
01:14:28,900 --> 01:14:33,130
of trees that allows us to do something
pretty neat and pretty real world.

1550
01:14:33,130 --> 01:14:38,150
Indeed, this is another problem borne
of a real world domain of compression.

1551
01:14:38,150 --> 01:14:40,220
We talked a couple weeks
ago about encryption,

1552
01:14:40,220 --> 01:14:42,550
the art of concealing or
scrambling information.

1553
01:14:42,550 --> 01:14:46,090
Compression, meanwhile, is the art
of taking something that's this big

1554
01:14:46,090 --> 01:14:51,330
and compressing it to make it smaller,
ideally without losing any information.

1555
01:14:51,330 --> 01:14:54,340
It's pretty easy to take
a 10 page essay that's

1556
01:14:54,340 --> 01:14:56,970
maybe-- that was supposed
to be a five page essay

1557
01:14:56,970 --> 01:15:00,820
and just remove paragraphs from
it or remove sentences from it.

1558
01:15:00,820 --> 01:15:04,270
But that changes the meaning of
the paper, makes it a worse paper,

1559
01:15:04,270 --> 01:15:06,600
even though you're compressing
it by making it smaller.

1560
01:15:06,600 --> 01:15:09,420
No, what most students would typically
do, if you've written 10 pages

1561
01:15:09,420 --> 01:15:11,720
and it needs to fit into five,
you really, really, really

1562
01:15:11,720 --> 01:15:13,670
shrink the font size or
increase the margins.

1563
01:15:13,670 --> 01:15:16,402
Or maybe more realistically you
write a five page paper that's

1564
01:15:16,402 --> 01:15:19,110
supposed to be a 10 page paper,
and so you increase the font size

1565
01:15:19,110 --> 01:15:24,970
or increase the margins so as to
expand or decompress the essay.

1566
01:15:24,970 --> 01:15:29,540
So, similarly here, what if
we wanted to compress text,

1567
01:15:29,540 --> 01:15:32,440
but we want to do it
losslessly in a way that we

1568
01:15:32,440 --> 01:15:34,650
don't lose any information
by just throwing away

1569
01:15:34,650 --> 01:15:38,864
characters, or paragraphs,
or pages, but we

1570
01:15:38,864 --> 01:15:41,530
want to use the system with which
we're familiar from week zero.

1571
01:15:41,530 --> 01:15:44,910
So ASCII, again, is just this code,
this mapping of letters to numbers.

1572
01:15:44,910 --> 01:15:48,980
And so, A is-- capital A is 65
and that's some pattern of bits,

1573
01:15:48,980 --> 01:15:52,110
but it's some pattern of
8 bits-- 7 historically,

1574
01:15:52,110 --> 01:15:55,050
but really 8 bits in
practice So every one

1575
01:15:55,050 --> 01:15:58,730
of the characters in the
English alphabet, at least here,

1576
01:15:58,730 --> 01:16:00,890
takes up 8 bits.

1577
01:16:00,890 --> 01:16:01,990
Now, that sounds fine.

1578
01:16:01,990 --> 01:16:05,240
That allows us to express as many
as 256 possible characters, which

1579
01:16:05,240 --> 01:16:07,980
is more than enough for English
characters, plus some punctuation

1580
01:16:07,980 --> 01:16:09,160
and so forth.

1581
01:16:09,160 --> 01:16:11,390
But it seems wasteful.

1582
01:16:11,390 --> 01:16:14,630
I type A, E, and I, maybe
O and U pretty often.

1583
01:16:14,630 --> 01:16:18,408
I use the values often--
the vowels often.

1584
01:16:18,408 --> 01:16:21,260
B and D, I feel like I use those a lot.

1585
01:16:21,260 --> 01:16:25,570
I don't really type Q all
that much, Z all that much.

1586
01:16:25,570 --> 01:16:27,305
So, there are certain
letters that I just

1587
01:16:27,305 --> 01:16:29,430
feel like I don't type them
that often, and indeed,

1588
01:16:29,430 --> 01:16:32,670
probably if we analyzed a dictionary,
we wouldn't see them as frequently

1589
01:16:32,670 --> 01:16:33,490
as other letters.

1590
01:16:33,490 --> 01:16:35,990
Indeed, if you've ever played
or watched Wheel of Fortune,

1591
01:16:35,990 --> 01:16:38,030
certainly all the
contestants on that show

1592
01:16:38,030 --> 01:16:41,510
know which are the most popular
letters in English words.

1593
01:16:41,510 --> 01:16:44,840
And it seems silly and
perhaps inefficient--

1594
01:16:44,840 --> 01:16:47,490
certainly for a computer
scientist-- that we are not somehow

1595
01:16:47,490 --> 01:16:51,860
embracing the fact that some letters
are more commonly used than others,

1596
01:16:51,860 --> 01:16:55,780
and yet we are just blindly using
8 bits, the same amount of memory,

1597
01:16:55,780 --> 01:16:57,490
for every darn letter in our alphabet.

1598
01:16:57,490 --> 01:16:58,390
Why?

1599
01:16:58,390 --> 01:17:00,680
If you keep writing a certain
letter again and again,

1600
01:17:00,680 --> 01:17:03,800
why not use fewer bits for
the more popular letters,

1601
01:17:03,800 --> 01:17:06,040
and more bits for the
less popular letters

1602
01:17:06,040 --> 01:17:10,650
so that at least you're optimizing
for the common case, so to speak?

1603
01:17:10,650 --> 01:17:13,960
Well, it turns out that someone
named Huffman years ago did

1604
01:17:13,960 --> 01:17:17,570
figure this out and introduced what's
generally known as Huffman coding.

1605
01:17:17,570 --> 01:17:20,410
And, at first glance, it's a little
similar in spirit to something

1606
01:17:20,410 --> 01:17:23,659
some of you might have grown up learning
a little something about called Morse

1607
01:17:23,659 --> 01:17:25,800
code, but it's better
in a couple of ways.

1608
01:17:25,800 --> 01:17:31,320
Morse code typically transmitted with
electrical signals or audible signals.

1609
01:17:31,320 --> 01:17:34,410
It has dots and dashes
where a dot is a quick beep

1610
01:17:34,410 --> 01:17:36,840
and a dash is a slightly
longer beep, and you

1611
01:17:36,840 --> 01:17:40,970
can use those series of dots and
dashes, as per this chart here,

1612
01:17:40,970 --> 01:17:44,150
to represent letters of the
alphabet and some numbers.

1613
01:17:44,150 --> 01:17:48,550
The one problem, though, as efficient
as this seems-- and then by efficient

1614
01:17:48,550 --> 01:17:52,690
I mean look at E. Mr. Morse realized
that is super popular, so he

1615
01:17:52,690 --> 01:17:56,100
used literally the shortest symbol
for it, just a dot, a simple blip,

1616
01:17:56,100 --> 01:17:59,090
to represent an E. And,
meanwhile, as I kind of imagined,

1617
01:17:59,090 --> 01:18:02,560
Z is not that common,
so dash, dash, dot,

1618
01:18:02,560 --> 01:18:04,890
dot is longer than just a single dot.

1619
01:18:04,890 --> 01:18:07,480
So Z is probably less popular,
and that's why we did this.

1620
01:18:07,480 --> 01:18:10,917
And Y may be even less
popular-- dash, dot, dash--

1621
01:18:10,917 --> 01:18:12,500
I don't know why I'm using this voice.

1622
01:18:12,500 --> 01:18:17,556
But it's longer than E, so we
optimized for the shorter characters.

1623
01:18:17,556 --> 01:18:27,620
Unfortunately, suppose that you receive
the message dot, dot, dot, dot, dot,

1624
01:18:27,620 --> 01:18:32,440
dot, so six dots in a row, and I
technically paused in between them.

1625
01:18:32,440 --> 01:18:34,492
Six dots, what message
did I just send you?

1626
01:18:34,492 --> 01:18:38,190


1627
01:18:38,190 --> 01:18:38,950
Six dots.

1628
01:18:38,950 --> 01:18:44,182


1629
01:18:44,182 --> 01:18:48,250
So, I wanted to say hi, so I said
dot, dot, dot, dot, which is H,

1630
01:18:48,250 --> 01:18:51,480
and then dot, dot which is I. I
should not have paused between them,

1631
01:18:51,480 --> 01:18:54,605
because the whole point of Morse code
is to do this as quickly as possible,

1632
01:18:54,605 --> 01:18:57,650
even though you probably do want
to pause to resolve ambiguity,

1633
01:18:57,650 --> 01:18:59,180
and indeed, that's the problem.

1634
01:18:59,180 --> 01:19:03,210
I wanted to send you
hi, H-I, but maybe I

1635
01:19:03,210 --> 01:19:07,800
just sent you E, E, E,
E, E, E, six Es in a row,

1636
01:19:07,800 --> 01:19:09,490
because those two were just dots.

1637
01:19:09,490 --> 01:19:12,360
So, in other words, Morse code
is not immediately decodable

1638
01:19:12,360 --> 01:19:15,457
when you're reading, or hearing,
or seeing the dots and dashes come

1639
01:19:15,457 --> 01:19:18,040
over the wire, so to speak,
because there's these ambiguities,

1640
01:19:18,040 --> 01:19:21,510
unless this transmitter
does indeed pause,

1641
01:19:21,510 --> 01:19:25,050
as I accidentally did there, to give
you a moment to take your breath

1642
01:19:25,050 --> 01:19:30,000
and realize, oh, that was an H. That's
an I. As opposed to E, E, E, E, E, E.

1643
01:19:30,000 --> 01:19:34,020
So, it's not necessarily the best
system in so far as some letters

1644
01:19:34,020 --> 01:19:37,050
share prefixes with other letters.

1645
01:19:37,050 --> 01:19:41,980
In other words, I, dot dot, has a
common prefix with E. Both of them

1646
01:19:41,980 --> 01:19:43,465
start with a single dot.

1647
01:19:43,465 --> 01:19:45,340
It just so happens that
I is a little longer,

1648
01:19:45,340 --> 01:19:47,250
and that can lead
potentially to ambiguity,

1649
01:19:47,250 --> 01:19:52,110
and it certainly means that the
transmitter should probably slow down.

1650
01:19:52,110 --> 01:19:54,820
So, the whole system is meant to
be super fast, super efficient,

1651
01:19:54,820 --> 01:19:57,860
but you probably should
pause between certain letters

1652
01:19:57,860 --> 01:19:59,840
so that the recipient
doesn't get confused as

1653
01:19:59,840 --> 01:20:01,950
to the message you're actually sending.

1654
01:20:01,950 --> 01:20:05,200
Well, thankfully Huffman coding--
which as we'll see in a moment

1655
01:20:05,200 --> 01:20:07,800
is based on trees-- does
not have that ambiguity.

1656
01:20:07,800 --> 01:20:09,560
It is a immediately decodable.

1657
01:20:09,560 --> 01:20:12,620
And suppose for the sake of
discussion, as per this example here,

1658
01:20:12,620 --> 01:20:14,490
you just have a whole bunch of
text that you want to transmit.

1659
01:20:14,490 --> 01:20:15,323
This is meaningless.

1660
01:20:15,323 --> 01:20:18,110
There's no pattern in these
As, and E, B, C, Ds, and Es,

1661
01:20:18,110 --> 01:20:22,453
but if you go through and count them
up, each these letters-- A, B, C, D, E--

1662
01:20:22,453 --> 01:20:24,187
occur with some frequency in this text.

1663
01:20:24,187 --> 01:20:26,770
So, it's meant to be representative
of an essay, or a message,

1664
01:20:26,770 --> 01:20:28,644
or whatever that you
want to send to someone.

1665
01:20:28,644 --> 01:20:32,520
Indeed, if you count up all of the
As, Bs, Cs, Ds, and Es, and divide

1666
01:20:32,520 --> 01:20:34,490
by the total number of
letters, it turns out

1667
01:20:34,490 --> 01:20:39,880
that 20% of the characters in that
random string are As, 10% are Bs,

1668
01:20:39,880 --> 01:20:43,830
10% are Cs, 15% are
Ds, and 45% are Es, so

1669
01:20:43,830 --> 01:20:46,000
it's roughly consistent
with what I'm claiming,

1670
01:20:46,000 --> 01:20:47,830
which is that it E is pretty popular.

1671
01:20:47,830 --> 01:20:50,780
So, intuitively, [? it ?]
would be really nice

1672
01:20:50,780 --> 01:20:56,610
if I had an algorithm that came up
with some representation of bits

1673
01:20:56,610 --> 01:20:59,340
that's not just 8 bits
for every darn letter

1674
01:20:59,340 --> 01:21:02,580
but that is a few bits
for the popular letters

1675
01:21:02,580 --> 01:21:04,480
and more bits for the
less popular letters,

1676
01:21:04,480 --> 01:21:07,250
so I optimize, again, so to
speak, for the common case.

1677
01:21:07,250 --> 01:21:11,740
So, by this logic E, hopefully,
should have a pretty short encoding

1678
01:21:11,740 --> 01:21:17,430
in binary, and A, and B, and C, and D
should have slightly longer encoding,

1679
01:21:17,430 --> 01:21:20,910
so that again if I'm using E a lot I
want to send as few bits as possible.

1680
01:21:20,910 --> 01:21:22,739
But I need this algorithm
to be repeatable.

1681
01:21:22,739 --> 01:21:25,030
I don't want to just arbitrarily
come up with something

1682
01:21:25,030 --> 01:21:29,130
and then have to tell you in advance
that, hey, we're using this David Malan

1683
01:21:29,130 --> 01:21:30,190
system for binary.

1684
01:21:30,190 --> 01:21:32,300
We want an algorithmic process here.

1685
01:21:32,300 --> 01:21:36,500
And what's nice about trees is that
it's one way of seeing and solving

1686
01:21:36,500 --> 01:21:37,540
exactly that.

1687
01:21:37,540 --> 01:21:39,210
So, Huffman proposed this.

1688
01:21:39,210 --> 01:21:43,690
If you have a forest of nodes, so to
speak, a whole bunch of trees-- each

1689
01:21:43,690 --> 01:21:47,590
of size one, no children-- think of them
as each having a weight or a frequency.

1690
01:21:47,590 --> 01:21:50,380
So, I've drawn five circles
here, per this snippet

1691
01:21:50,380 --> 01:21:57,666
from a popular textbook that has 10%,
10%, 15%, 20%, 45% equivalently in each

1692
01:21:57,666 --> 01:21:58,290
of those nodes.

1693
01:21:58,290 --> 01:22:01,515
And I've just labeled the
leaves as B, C, D, A, E,

1694
01:22:01,515 --> 01:22:04,640
deliberately from left to right because
it will make my tree look prettier,

1695
01:22:04,640 --> 01:22:07,681
but technically the lines could cross
and it's not a big deal in reality.

1696
01:22:07,681 --> 01:22:09,100
We just need to be consistent.

1697
01:22:09,100 --> 01:22:10,920
So, Huffman proposed this.

1698
01:22:10,920 --> 01:22:18,310
In order to figure out the so-called
Huffman tree for this particular text,

1699
01:22:18,310 --> 01:22:22,360
in order to figure out what to encode
it's letters as with zeros and ones,

1700
01:22:22,360 --> 01:22:27,630
go ahead and take the two smallest nodes
and combine them with a new root node.

1701
01:22:27,630 --> 01:22:30,150
So in other words, B
and C were both 10%.

1702
01:22:30,150 --> 01:22:31,500
Those are the smallest nodes.

1703
01:22:31,500 --> 01:22:33,666
Let's go ahead and combine
them with a new root node

1704
01:22:33,666 --> 01:22:37,050
and add together their weights,
so 10% plus 10% is 20%.

1705
01:22:37,050 --> 01:22:40,470
And then arbitrarily,
but consistently, label

1706
01:22:40,470 --> 01:22:48,000
the left child's edge or arrow as a
0 and the right arrow's edge as a 1.

1707
01:22:48,000 --> 01:22:49,610
Meanwhile, repeat.

1708
01:22:49,610 --> 01:22:51,600
So, now look for the two smallest nodes.

1709
01:22:51,600 --> 01:22:54,910
And I see a 20%-- so
ignore the children now.

1710
01:22:54,910 --> 01:22:56,710
Only look at the roots of these trees.

1711
01:22:56,710 --> 01:23:01,850
And there's now four trees, one of which
has children, three of which don't.

1712
01:23:01,850 --> 01:23:06,440
So, now look at the smallest roots
now and you can go left to right here.

1713
01:23:06,440 --> 01:23:11,740
There's a 20%, there's a 15%,
there's a 20%, and a 45%.

1714
01:23:11,740 --> 01:23:14,135
So, I'm not sure which one
to go with, so you just

1715
01:23:14,135 --> 01:23:16,135
have to come up with some
rule to be consistent.

1716
01:23:16,135 --> 01:23:17,900
I'm going to go with
the ones on the left,

1717
01:23:17,900 --> 01:23:22,280
and so I'm going to combine the 20%
with the 15%, the 20% on the left.

1718
01:23:22,280 --> 01:23:23,420
Combine their weights.

1719
01:23:23,420 --> 01:23:27,470
That gives me 35% in a new root,
and again label the left branch 0

1720
01:23:27,470 --> 01:23:29,250
and the right branch a 1.

1721
01:23:29,250 --> 01:23:30,670
Now, it's not ambiguous.

1722
01:23:30,670 --> 01:23:35,180
Let's combine 35% and 20%
with a new root that's 55%.

1723
01:23:35,180 --> 01:23:39,110
Call its left branch
0, its right branch 1.

1724
01:23:39,110 --> 01:23:46,210
And now 55% and 45%, combine
those and give us a 1.

1725
01:23:46,210 --> 01:23:48,240
So why did I just do this?

1726
01:23:48,240 --> 01:23:52,690
Well now I have built up the so-called
Huffman tree for this input text

1727
01:23:52,690 --> 01:23:55,030
and Huffman proposed the following.

1728
01:23:55,030 --> 01:23:57,180
To figure out what
patterns of zeros and ones

1729
01:23:57,180 --> 01:24:00,460
to use to represent
A, B, C, D, E, simply

1730
01:24:00,460 --> 01:24:04,650
follow the paths from the
root to each of those leaves.

1731
01:24:04,650 --> 01:24:06,860
So what is the encoding for A?

1732
01:24:06,860 --> 01:24:11,160
Start at the root and then
look for A-- 0, 1, so 0,

1733
01:24:11,160 --> 01:24:14,290
1 shall be my binary
encoding for A in this world.

1734
01:24:14,290 --> 01:24:15,480
How about B?

1735
01:24:15,480 --> 01:24:21,242
0, 0, 0, 0 shall be my binary
encoding for B. How about C?

1736
01:24:21,242 --> 01:24:27,460
0, 0, 0, 1 shall be my
encoding for C. How about D?

1737
01:24:27,460 --> 01:24:28,920
0, 0, 1.

1738
01:24:28,920 --> 01:24:31,212
And beautifully, how about E?

1739
01:24:31,212 --> 01:24:33,870
1.

1740
01:24:33,870 --> 01:24:36,860
So, to summarize, what
has just happened?

1741
01:24:36,860 --> 01:24:40,300
E was the most popular letter, B and
C, were the least popular letters.

1742
01:24:40,300 --> 01:24:43,840
And if we summarize these,
you'll see that, indeed,

1743
01:24:43,840 --> 01:24:49,050
B and C got pretty long encodings,
but E got the shortest encoding.

1744
01:24:49,050 --> 01:24:51,930
And it turns out
mathematically you will now

1745
01:24:51,930 --> 01:24:56,750
have a system for encoding letters
of the alphabet that is optimal,

1746
01:24:56,750 --> 01:25:00,010
that is you will use
as few bits as possible

1747
01:25:00,010 --> 01:25:02,990
because you are biasing things
toward short representations

1748
01:25:02,990 --> 01:25:05,760
for popular letters, longer
representations for less

1749
01:25:05,760 --> 01:25:06,630
popular letters.

1750
01:25:06,630 --> 01:25:09,740
And mathematically this gives
you the most efficient encoding

1751
01:25:09,740 --> 01:25:15,130
for the original text without
losing any information.

1752
01:25:15,130 --> 01:25:18,300
In other words, now if Huffman
wanted to send a secret message

1753
01:25:18,300 --> 01:25:21,990
to someone in class or over the
internet, he and that recipient

1754
01:25:21,990 --> 01:25:24,890
simply have to agree on
this scheme in advance

1755
01:25:24,890 --> 01:25:28,470
and then use these encoding
to transmit those messages.

1756
01:25:28,470 --> 01:25:37,330
Because when someone receives 0, 1 or 0,
0, 0, 0 or 0, 0, 0, 1 from Mr. Huffman,

1757
01:25:37,330 --> 01:25:39,780
they can use that same
look-up table, if you will,

1758
01:25:39,780 --> 01:25:43,780
and say, oh, he just sent me an A
or, oh, he just sent me a B or C. So,

1759
01:25:43,780 --> 01:25:46,270
you have to know what
tree Huffman built up.

1760
01:25:46,270 --> 01:25:49,930
And, indeed, what typically
happens in actual computers is

1761
01:25:49,930 --> 01:25:53,440
when you use Huffman coding
to compress some body of text

1762
01:25:53,440 --> 01:25:58,030
like we just have here, you
store the compressed text

1763
01:25:58,030 --> 01:26:00,720
by storing your As, Bs, Cs,
Ds, and Es and other letters

1764
01:26:00,720 --> 01:26:02,780
using these new
encoding, but you somehow

1765
01:26:02,780 --> 01:26:07,230
have to embed in that file in the
compressed file the tree itself

1766
01:26:07,230 --> 01:26:10,890
or this cheat sheet of encodings.

1767
01:26:10,890 --> 01:26:14,170
So, with compression-- maybe
you're compressing a Microsoft Word

1768
01:26:14,170 --> 01:26:18,200
file, or a dot TXT file,
or any other type of file,

1769
01:26:18,200 --> 01:26:22,080
you have to store not just the
compressed text using these shorter

1770
01:26:22,080 --> 01:26:25,532
representation-- not 8-bit ASCII, but
these shorter representations-- but you

1771
01:26:25,532 --> 01:26:28,740
also somewhere, maybe at the beginning
of the file or at the end of the file,

1772
01:26:28,740 --> 01:26:31,740
somewhere where someone else can find
it, you need to store this mapping

1773
01:26:31,740 --> 01:26:36,590
or you need to store the tree
itself in some digital form.

1774
01:26:36,590 --> 01:26:40,240
And so, it's possible
by this logic that you

1775
01:26:40,240 --> 01:26:43,330
might try to compress
a really small file,

1776
01:26:43,330 --> 01:26:46,090
and that file could
actually become bigger

1777
01:26:46,090 --> 01:26:49,472
because you're storing a
tree inside the file to--

1778
01:26:49,472 --> 01:26:51,430
with which to recover
the original information.

1779
01:26:51,430 --> 01:26:53,507
Or better yet, most
algorithms or most actual

1780
01:26:53,507 --> 01:26:56,590
compression programs will realize,
wait a minute, if compressing this file

1781
01:26:56,590 --> 01:26:59,506
is actually going to make it bigger,
let's just not compress it at all

1782
01:26:59,506 --> 01:27:01,950
and leave it alone untouched.

1783
01:27:01,950 --> 01:27:07,370
So, what if you take a compressed file
and compress it again, and compress it

1784
01:27:07,370 --> 01:27:10,260
again, and compress it again?

1785
01:27:10,260 --> 01:27:13,850
A dangerous assumption to get into
is, well, I could just maybe keep

1786
01:27:13,850 --> 01:27:17,400
compressing that video file again,
and again, and again, and again,

1787
01:27:17,400 --> 01:27:20,610
and I can maybe compress my big
essay, or my big video file,

1788
01:27:20,610 --> 01:27:22,990
or big music file to just maybe one bit.

1789
01:27:22,990 --> 01:27:23,490
Right?

1790
01:27:23,490 --> 01:27:25,300
That's the logical extreme,
just keep compressing,

1791
01:27:25,300 --> 01:27:26,883
compressing, compressing, compressing.

1792
01:27:26,883 --> 01:27:29,470
But, of course, that
can't possibly make sense,

1793
01:27:29,470 --> 01:27:32,860
because if you compress some file
down to just a single bit, 0 or 1,

1794
01:27:32,860 --> 01:27:36,950
you've clearly thrown away information
and can't possibly recover it all.

1795
01:27:36,950 --> 01:27:42,050
So, at some point, too, you've hit this
lower bound on the size of the file

1796
01:27:42,050 --> 01:27:44,740
until you need to start throwing
actual information away.

1797
01:27:44,740 --> 01:27:49,290
At some point, the file just has so
much entropy, appears to be so random,

1798
01:27:49,290 --> 01:27:53,010
there really is no pattern to start
to leverage to compress it further.

1799
01:27:53,010 --> 01:27:56,960
And so, there generally is some
maximum amount of compression

1800
01:27:56,960 --> 01:27:58,797
you can apply to something.

1801
01:27:58,797 --> 01:28:00,130
So, how would we represent this?

1802
01:28:00,130 --> 01:28:01,550
Let's whip out a C struct here.

1803
01:28:01,550 --> 01:28:04,244
So, this time each of the
nodes in a Huffman tree

1804
01:28:04,244 --> 01:28:05,660
need a little something different.

1805
01:28:05,660 --> 01:28:08,350
They need, at least in the
leaves, some kind of character

1806
01:28:08,350 --> 01:28:09,310
to remember the symbol.

1807
01:28:09,310 --> 01:28:11,950
Now, technically only the leaves
need to know what symbols they are,

1808
01:28:11,950 --> 01:28:14,200
so it's a little redundant
to have this in every node,

1809
01:28:14,200 --> 01:28:17,640
but we can keep things simple and use
the same type of node for everything.

1810
01:28:17,640 --> 01:28:22,050
Float frequency, I could use an integer
and treat it exactly as a percentage,

1811
01:28:22,050 --> 01:28:26,340
or I can use a float as the nodes
were with 0.1 and 0.45 and so forth,

1812
01:28:26,340 --> 01:28:27,570
and I'll call that frequency.

1813
01:28:27,570 --> 01:28:30,028
And then each of those nodes
needs a left child potentially

1814
01:28:30,028 --> 01:28:31,320
and a right child potentially.

1815
01:28:31,320 --> 01:28:33,900
And, again, I'll call
these things a node.

1816
01:28:33,900 --> 01:28:37,270
So, again, it's getting a little more
involved this node, but it still allows

1817
01:28:37,270 --> 01:28:43,560
me to represent it ultimately in C.

1818
01:28:43,560 --> 01:28:48,070
And now, it's time to pursue lastly
the holy grail of data structures,

1819
01:28:48,070 --> 01:28:48,980
if you will.

1820
01:28:48,980 --> 01:28:53,880
Thus far, we've been solving
problems, creating new problems,

1821
01:28:53,880 --> 01:28:55,050
trying to solve those again.

1822
01:28:55,050 --> 01:28:58,272
And the problems we've been exploring
this week are things like dynamism,

1823
01:28:58,272 --> 01:29:00,730
if we want to be able to grow
or shrink our data structure.

1824
01:29:00,730 --> 01:29:02,950
Malloc and pointers
give us that flexibility

1825
01:29:02,950 --> 01:29:05,100
but might cost us a bit
more time, because we

1826
01:29:05,100 --> 01:29:07,630
have to keep things
sorted differently or we

1827
01:29:07,630 --> 01:29:09,690
have to follow all of those pointers.

1828
01:29:09,690 --> 01:29:12,580
And so, a lot of the algorithms
we've been discussing today

1829
01:29:12,580 --> 01:29:16,720
at least have-- like linear time,
searching, or inserting, or deleting

1830
01:29:16,720 --> 01:29:18,680
potentially like in a linked list.

1831
01:29:18,680 --> 01:29:20,550
Better still would be
something logarithmic

1832
01:29:20,550 --> 01:29:25,860
like a balanced binary search tree,
so still preserving that nice binary

1833
01:29:25,860 --> 01:29:27,700
aspect from week zero.

1834
01:29:27,700 --> 01:29:30,470
But the holy grail of a data
structure for its operations

1835
01:29:30,470 --> 01:29:33,910
is Big O of 1 so to
speak, constant time.

1836
01:29:33,910 --> 01:29:39,240
If you are searching, or inserting,
or deleting, and somehow changing

1837
01:29:39,240 --> 01:29:42,760
a data structure, wouldn't it be
amazing if every darn operation

1838
01:29:42,760 --> 01:29:45,120
takes just one step, or
maybe two steps, or three

1839
01:29:45,120 --> 01:29:47,940
steps but a constant number of steps?

1840
01:29:47,940 --> 01:29:49,940
Now, it might be a little
naive for us to expect

1841
01:29:49,940 --> 01:29:53,410
that we can store an arbitrary
amount of data in some fancy way

1842
01:29:53,410 --> 01:29:56,610
that we get constant time,
but maybe just maybe if we're

1843
01:29:56,610 --> 01:29:58,790
clever we can get close to that.

1844
01:29:58,790 --> 01:30:01,600
So, let's introduce a step toward that.

1845
01:30:01,600 --> 01:30:05,260
It turns out there exists in this
world things called hash tables.

1846
01:30:05,260 --> 01:30:08,010
And a hash table can be
implemented in any number of ways,

1847
01:30:08,010 --> 01:30:10,090
but you can think of it
really as just an array.

1848
01:30:10,090 --> 01:30:15,532
So, for instance, this might be a way of
representing a hash table called table,

1849
01:30:15,532 --> 01:30:18,490
whose first location is bracket zero
and whose last location is bracket

1850
01:30:18,490 --> 01:30:20,232
n minus 1 for however long this is.

1851
01:30:20,232 --> 01:30:21,440
And I just left it as blanks.

1852
01:30:21,440 --> 01:30:23,210
I don't even know what this
hash table might want to store.

1853
01:30:23,210 --> 01:30:24,840
It could be numbers, it could
be names, it could be letters,

1854
01:30:24,840 --> 01:30:26,750
it could be anything we want.

1855
01:30:26,750 --> 01:30:30,670
But hash table has this
nice theoretical property

1856
01:30:30,670 --> 01:30:33,310
that if well-designed
and thought through,

1857
01:30:33,310 --> 01:30:37,830
you can maybe just maybe get
constant look up time in it.

1858
01:30:37,830 --> 01:30:40,050
And let's do a simple
example of a hash table.

1859
01:30:40,050 --> 01:30:42,840
Hash tables are often nicely
thought of as buckets,

1860
01:30:42,840 --> 01:30:46,200
so we borrowed these from the loading
dock outside just a little moment ago,

1861
01:30:46,200 --> 01:30:51,470
and we've attached thanks to
Arturo some of these signs to them.

1862
01:30:51,470 --> 01:30:55,440
This is going to be Z, so
I'll just put this over here.

1863
01:30:55,440 --> 01:31:01,365
This is going to be C, so I'll put
this over here, and B here, and A.

1864
01:31:01,365 --> 01:31:05,390
And we thought we might get chased
away by the folks on the loading dock,

1865
01:31:05,390 --> 01:31:08,370
so we didn't bother getting D
through Y, So we'll just pretend

1866
01:31:08,370 --> 01:31:10,380
that we have 26 such buckets here.

1867
01:31:10,380 --> 01:31:13,862
And suppose that the goal
at hand is-- I don't know,

1868
01:31:13,862 --> 01:31:15,570
it's like at the end
of an exam, so we've

1869
01:31:15,570 --> 01:31:18,800
got our old blue books that a
class might use for students

1870
01:31:18,800 --> 01:31:20,470
writing essays in some class.

1871
01:31:20,470 --> 01:31:23,630
And it's time for the students
to come submit their blue books.

1872
01:31:23,630 --> 01:31:26,910
Now, we could just collect them all
and make a big mess as would generally

1873
01:31:26,910 --> 01:31:30,150
be the case, or we can be a little
more methodical to at least make

1874
01:31:30,150 --> 01:31:31,534
our jobs easier.

1875
01:31:31,534 --> 01:31:34,700
Now, at the end of the day, what's going
to be interesting about hash tables

1876
01:31:34,700 --> 01:31:36,533
is that there's going
to be this distinction

1877
01:31:36,533 --> 01:31:39,850
between actual benefits and
theoretical benefit, or lack thereof.

1878
01:31:39,850 --> 01:31:44,031
So, we'll come to that in just a
moment, but here's A, B, C, D, and Z.

1879
01:31:44,031 --> 01:31:44,780
And you know what?

1880
01:31:44,780 --> 01:31:46,770
I just am going to ask the students
in this class-- there are so

1881
01:31:46,770 --> 01:31:49,040
many people in the room
after an exam, I just

1882
01:31:49,040 --> 01:31:54,000
want them to at least make
my life 1/26 as difficult

1883
01:31:54,000 --> 01:31:57,000
by putting all the As over there,
all the Bs here, all the Cs here,

1884
01:31:57,000 --> 01:32:01,660
all the Zs here, so that I don't have
a massive mountain of As through Zs

1885
01:32:01,660 --> 01:32:03,780
that I have to sift
through individually.

1886
01:32:03,780 --> 01:32:06,000
It would just be nice if
they do the first pass

1887
01:32:06,000 --> 01:32:10,130
of bucketizing the values based on
the first letter in their last name.

1888
01:32:10,130 --> 01:32:13,610
In other words, my hash
function, my algorithm,

1889
01:32:13,610 --> 01:32:17,700
is going to be for each student
to consider his or her last name,

1890
01:32:17,700 --> 01:32:20,920
look at the first letter they're
in, and put his or her exam

1891
01:32:20,920 --> 01:32:22,300
in the appropriate bucket.

1892
01:32:22,300 --> 01:32:25,640
So, here is, for instance,
someone with the letter

1893
01:32:25,640 --> 01:32:28,270
C. I'm going to put
that blue book in here.

1894
01:32:28,270 --> 01:32:30,890
Here's someone with the letter
A. That one's going to go here.

1895
01:32:30,890 --> 01:32:31,636
Letter Z?

1896
01:32:31,636 --> 01:32:33,010
This one's going to go over here.

1897
01:32:33,010 --> 01:32:34,120
Letter B?

1898
01:32:34,120 --> 01:32:35,370
This is going to go over here.

1899
01:32:35,370 --> 01:32:42,170
C, and B, and F-- Z, I mean, and all of
[? the ?] [? letters ?] of the alphabet

1900
01:32:42,170 --> 01:32:42,950
in between.

1901
01:32:42,950 --> 01:32:46,724
So, hashing really has this
visual and conceptual equivalence

1902
01:32:46,724 --> 01:32:49,640
of putting something in this bucket,
putting something in that bucket,

1903
01:32:49,640 --> 01:32:51,723
putting something in this
other bucket, ultimately

1904
01:32:51,723 --> 01:32:53,870
bucketizing all of your elements.

1905
01:32:53,870 --> 01:32:56,080
And you can think of this,
frankly, as just an array,

1906
01:32:56,080 --> 01:32:57,800
but it's not just an
array with one spot.

1907
01:32:57,800 --> 01:33:02,840
It looks I can stack multiple
numbers or multiple blue books inside

1908
01:33:02,840 --> 01:33:03,550
of that array.

1909
01:33:03,550 --> 01:33:05,100
So, we're going to have to come
back to that, because this clearly

1910
01:33:05,100 --> 01:33:05,850
can't be an array.

1911
01:33:05,850 --> 01:33:09,050
Normally, the array would be filled
the moment you put one value in it.

1912
01:33:09,050 --> 01:33:11,980
But this hashing is
the interesting part.

1913
01:33:11,980 --> 01:33:16,850
The juicy ingredient today is if I take
into account as input what it is I'm

1914
01:33:16,850 --> 01:33:21,510
trying to store, use some piece of that
information to decide where to put it,

1915
01:33:21,510 --> 01:33:24,360
that's an algorithm, because
I can repeat that process,

1916
01:33:24,360 --> 01:33:25,630
so long as it's not random.

1917
01:33:25,630 --> 01:33:27,140
You go over here, you go over here.

1918
01:33:27,140 --> 01:33:28,180
That's amazing.

1919
01:33:28,180 --> 01:33:31,020
Wow, OK, pushing my luck.

1920
01:33:31,020 --> 01:33:33,664
OK, so I'm not just randomly
putting things here.

1921
01:33:33,664 --> 01:33:36,330
I'm actually giving some thought
as to where I'm putting things,

1922
01:33:36,330 --> 01:33:40,870
and that makes the algorithm
deterministic, repeatable, predictable

1923
01:33:40,870 --> 01:33:44,250
so that if you insert something
now, you can absolutely

1924
01:33:44,250 --> 01:33:46,620
find it if present later.

1925
01:33:46,620 --> 01:33:48,650
Unfortunately, if our
hash table does look

1926
01:33:48,650 --> 01:33:52,770
like this, just a simple array from
bracket 0 to bracket n minus 1 dot,

1927
01:33:52,770 --> 01:33:55,100
dot, dot in between,
and it's just an array

1928
01:33:55,100 --> 01:34:00,690
for integers or an array for strings or
whatever, once you put something here,

1929
01:34:00,690 --> 01:34:03,830
or here, or here, that's it.

1930
01:34:03,830 --> 01:34:06,470
There is no more room to
put another element there

1931
01:34:06,470 --> 01:34:08,410
wide as I might have drawn this table.

1932
01:34:08,410 --> 01:34:10,390
If there's an int there, that's it.

1933
01:34:10,390 --> 01:34:12,510
So, what could you do?

1934
01:34:12,510 --> 01:34:16,570
Suppose that you do have an
array structure like this,

1935
01:34:16,570 --> 01:34:20,040
and that is unacceptable.

1936
01:34:20,040 --> 01:34:27,000
You have a whole bunch of elements
here and this table looks like this,

1937
01:34:27,000 --> 01:34:30,620
and you consider this table like this.

1938
01:34:30,620 --> 01:34:33,660
And maybe it's just where you're
supposed to take attendance or put

1939
01:34:33,660 --> 01:34:34,574
people's names.

1940
01:34:34,574 --> 01:34:36,240
So, if you say, oh, Alice is here today.

1941
01:34:36,240 --> 01:34:40,465
Let me go ahead and hash on Alice's
name and put her where the As should go.

1942
01:34:40,465 --> 01:34:46,150
Oh, Zoe is here, Z-O-E, so
we'll put her down there.

1943
01:34:46,150 --> 01:34:47,980
And then who else?

1944
01:34:47,980 --> 01:34:48,750
Alex is here.

1945
01:34:48,750 --> 01:34:52,090
Dammit, Alex, no room for
you in our hash table,

1946
01:34:52,090 --> 01:34:53,470
because Alice is already there.

1947
01:34:53,470 --> 01:34:54,250
This is stupid.

1948
01:34:54,250 --> 01:34:56,720
If we have data we want to
insert into this data structure,

1949
01:34:56,720 --> 01:35:02,940
it would seem that I have 24 available
spots into which I could put Alex

1950
01:35:02,940 --> 01:35:06,520
and yet I'm just stubbornly trying
to put him where only the As belong.

1951
01:35:06,520 --> 01:35:10,370
So, why don't I, in this kind of
scenario, I need to put Alex in here.

1952
01:35:10,370 --> 01:35:11,367
I clearly have space.

1953
01:35:11,367 --> 01:35:11,950
You know what?

1954
01:35:11,950 --> 01:35:14,860
Let me just probe the array looking
for the first available spot.

1955
01:35:14,860 --> 01:35:20,290
OK, Alex, you're just going to go here,
and if someone else like Erin appears,

1956
01:35:20,290 --> 01:35:20,790
fine.

1957
01:35:20,790 --> 01:35:23,080
You just are going to go over here.

1958
01:35:23,080 --> 01:35:26,850
So, you try to put the letter
As where you want them to go,

1959
01:35:26,850 --> 01:35:28,620
but if there's already
someone there, just

1960
01:35:28,620 --> 01:35:32,690
probe deeper into the data structure
looking for the first available slot.

1961
01:35:32,690 --> 01:35:36,040
So, this is a general technique in
programming called linear probing

1962
01:35:36,040 --> 01:35:37,720
whereby you have a data structure.

1963
01:35:37,720 --> 01:35:41,540
If you hash to some location like
the letter A there's a collision,

1964
01:35:41,540 --> 01:35:44,540
something is there, you probe
further in the data structure just

1965
01:35:44,540 --> 01:35:46,540
looking for some place you can put it.

1966
01:35:46,540 --> 01:35:49,580
So, you get close to constant
time decision-making.

1967
01:35:49,580 --> 01:35:50,962
Put A here, put Z here.

1968
01:35:50,962 --> 01:35:54,170
And because this is an array, you have
random access with your square bracket

1969
01:35:54,170 --> 01:35:59,190
notation, but if you have lots of As
and not too many Zs, or Bs, or Ds,

1970
01:35:59,190 --> 01:36:04,620
it's possible this approach could
devolve back into linear time.

1971
01:36:04,620 --> 01:36:08,070
So, in the ideal we have one
A, one B, one Z, and everything

1972
01:36:08,070 --> 01:36:09,730
in between, that's constant time.

1973
01:36:09,730 --> 01:36:14,640
We have our holy grail, constant
time operations for a data structure,

1974
01:36:14,640 --> 01:36:17,750
but not if we want to support
insertion of other elements,

1975
01:36:17,750 --> 01:36:20,750
even those that hash
to the same location.

1976
01:36:20,750 --> 01:36:21,840
So, what's the fix?

1977
01:36:21,840 --> 01:36:23,800
Well, if the problem
is that we've already

1978
01:36:23,800 --> 01:36:27,360
made room-- we already have used
this space for Alice, you know what?

1979
01:36:27,360 --> 01:36:31,190
If we need to put someone else
here, why don't we just create

1980
01:36:31,190 --> 01:36:34,080
dynamically some more space?

1981
01:36:34,080 --> 01:36:35,210
We have malloc now.

1982
01:36:35,210 --> 01:36:36,870
We have dynamic memory allocation.

1983
01:36:36,870 --> 01:36:42,310
Why don't we just extend our data
structure laterally, horizontally--

1984
01:36:42,310 --> 01:36:46,170
artistically here-- so that, yes,
you try to go to that first location.

1985
01:36:46,170 --> 01:36:48,960
But if there's multiple people
that are meant to go there,

1986
01:36:48,960 --> 01:36:52,050
multiple values, go ahead
and just link them together,

1987
01:36:52,050 --> 01:36:56,450
thereby merging the idea of a hash table
and a linked list with a data structure

1988
01:36:56,450 --> 01:36:57,880
that might look like this.

1989
01:36:57,880 --> 01:37:01,539
So, this is an example, somewhat
arbitrary, of 31 days out of a month.

1990
01:37:01,539 --> 01:37:03,580
And if you actually hash
on people's birth dates,

1991
01:37:03,580 --> 01:37:07,990
as I think this author did, you
can think of your hash table

1992
01:37:07,990 --> 01:37:09,500
still as an array.

1993
01:37:09,500 --> 01:37:12,630
But that array does not store
strings, it does not store integers.

1994
01:37:12,630 --> 01:37:16,780
It only stores pointers, 31 total
in this case-- some of which

1995
01:37:16,780 --> 01:37:19,920
might be null, per the
vertical diagonal slash--

1996
01:37:19,920 --> 01:37:23,940
but those pointers in turn point
to the beginning of linked lists.

1997
01:37:23,940 --> 01:37:26,720
So, if multiple people were born
on the fourth of some month,

1998
01:37:26,720 --> 01:37:30,940
you would put J. Adams and W. Floyd
in a linked list at that location.

1999
01:37:30,940 --> 01:37:35,830
If both Aaron, and Alex, and Alice,
and other students with the names A

2000
01:37:35,830 --> 01:37:40,340
all belong at that first location
in my previous table, that's fine.

2001
01:37:40,340 --> 01:37:43,130
Just string them together
with a linked list.

2002
01:37:43,130 --> 01:37:47,995
Much like with these buckets, at the end
of the day, I'm still creating piles.

2003
01:37:47,995 --> 01:37:51,120
And at the end of the day, I still have
to go through them all, ultimately.

2004
01:37:51,120 --> 01:37:54,750
But each of these piles
is 1/26 the size of it

2005
01:37:54,750 --> 01:37:57,950
would have been if everyone just
came up at the end of the exam

2006
01:37:57,950 --> 01:38:00,180
and just piled all their
books in the same pile.

2007
01:38:00,180 --> 01:38:02,500
So, whereas, these algorithms
at the end of the day

2008
01:38:02,500 --> 01:38:05,720
are still devolving, if you
will-- or these data structures

2009
01:38:05,720 --> 01:38:08,700
are devolving, if you will,
into linear time operations,

2010
01:38:08,700 --> 01:38:11,820
in the worst case if these things
just get really long and stringy,

2011
01:38:11,820 --> 01:38:20,140
at least in actuality they might be as
good as 1/31 as long or 1/26 as tall.

2012
01:38:20,140 --> 01:38:23,610
And so, now there's this
dichotomy in this week five

2013
01:38:23,610 --> 01:38:26,410
of asymptotic running time,
the theoretical running

2014
01:38:26,410 --> 01:38:29,860
time that we've really been belaboring
and the actual running time.

2015
01:38:29,860 --> 01:38:32,350
Just because something is n
squared does not mean it's bad.

2016
01:38:32,350 --> 01:38:34,474
If there's only a few
elements, n squared is great.

2017
01:38:34,474 --> 01:38:37,310
It's going to happen super fast
if your computer is 1 gigahertz,

2018
01:38:37,310 --> 01:38:39,109
or 2 gigahertz, or faster these days.

2019
01:38:39,109 --> 01:38:40,650
N squared in and of itself isn't bad.

2020
01:38:40,650 --> 01:38:43,750
It just gets really bad
when your data gets large.

2021
01:38:43,750 --> 01:38:50,570
But in practice, even n squared divided
by 2 is actually better than n squared.

2022
01:38:50,570 --> 01:38:54,420
So, a couple weeks ago when I was
saying don't worry about the lower order

2023
01:38:54,420 --> 01:38:57,950
terms, the constant terms,
focus only on n squared

2024
01:38:57,950 --> 01:39:01,610
and not n or anything you're dividing
by, that's fine theoretically,

2025
01:39:01,610 --> 01:39:05,880
but in actuality you're going
to feel that kind of difference.

2026
01:39:05,880 --> 01:39:10,940
So, here's one last data structure
that we'll call a trie-- so trie,

2027
01:39:10,940 --> 01:39:15,330
short for retrieval somehow,
T-R-I-E, but pronounced try.

2028
01:39:15,330 --> 01:39:19,550
And this one is cool
because this now is really

2029
01:39:19,550 --> 01:39:22,520
like a weird offspring of these
data structures from today.

2030
01:39:22,520 --> 01:39:27,610
But it's a tree each of
whose nodes is in an array.

2031
01:39:27,610 --> 01:39:31,710
And a trie is really good for storing
words like words in a dictionary.

2032
01:39:31,710 --> 01:39:34,190
Indeed, one of the problem
I had for you in CS50

2033
01:39:34,190 --> 01:39:37,570
is going to be to implement a spell
checker, which effectively means build

2034
01:39:37,570 --> 01:39:39,860
a dictionary in memory,
and you'll be challenged

2035
01:39:39,860 --> 01:39:42,480
to spell check words as
fast as you can, storing

2036
01:39:42,480 --> 01:39:45,489
as many as 100,000 English words
somehow in your computer's memory

2037
01:39:45,489 --> 01:39:48,280
and answering questions of the form
is this a word, is this a word,

2038
01:39:48,280 --> 01:39:49,480
is this a word.

2039
01:39:49,480 --> 01:39:51,460
That's, after all,
what spell checking is.

2040
01:39:51,460 --> 01:39:57,020
So, a trie is kind of interesting in
that-- and this is an excerpt of an,

2041
01:39:57,020 --> 01:39:59,580
artist's rendition
there of-- the root node

2042
01:39:59,580 --> 01:40:04,690
here represents this-- is this
rectangle here, and that of course

2043
01:40:04,690 --> 01:40:05,970
looks like an array.

2044
01:40:05,970 --> 01:40:08,880
And notice what's implicit in this.

2045
01:40:08,880 --> 01:40:11,670
If this is location A
and this is location Z,

2046
01:40:11,670 --> 01:40:13,720
the author here has just
decided to only show you

2047
01:40:13,720 --> 01:40:15,940
those letters that matter
for the sake of discussion.

2048
01:40:15,940 --> 01:40:20,510
But the fact that the M
location here is not blank

2049
01:40:20,510 --> 01:40:21,790
means there's a pointer there.

2050
01:40:21,790 --> 01:40:23,039
Indeed, what are these arrays?

2051
01:40:23,039 --> 01:40:25,750
They are arrays of
pointers to other nodes.

2052
01:40:25,750 --> 01:40:30,270
So, the fact that M is not null and it
leads to this node, and notice that A

2053
01:40:30,270 --> 01:40:33,530
is not null and it leads to this node,
and then this node, and then this node.

2054
01:40:33,530 --> 01:40:35,570
And this is where the artist
is just taking some liberties.

2055
01:40:35,570 --> 01:40:38,236
This tree would be monstrously
wide, because all of these arrays

2056
01:40:38,236 --> 01:40:42,970
are so darn wide, so he or she is just
showing you the width-- or the element

2057
01:40:42,970 --> 01:40:49,910
that we care about, M, A, X, W, E, L,
L, and then some special sentinel symbol

2058
01:40:49,910 --> 01:40:51,380
delta, but it could be anything.

2059
01:40:51,380 --> 01:40:52,950
This is null, really.

2060
01:40:52,950 --> 01:40:59,060
This is how using a trie a programmer
could store the name Maxwell,

2061
01:40:59,060 --> 01:41:04,400
M-A-X-W-E-L-L, by simply leaving
little bread crumbs, if you will,

2062
01:41:04,400 --> 01:41:09,480
from one node to another such that
each of those elements in the array is

2063
01:41:09,480 --> 01:41:11,230
a pointer to another array.

2064
01:41:11,230 --> 01:41:14,280
And if you keep following these
pointers, following the bread crumbs

2065
01:41:14,280 --> 01:41:17,890
and you eventually find yourself
at this special sentinel value--

2066
01:41:17,890 --> 01:41:21,630
and actually, it wouldn't be null, it
would be like a Boolean saying true.

2067
01:41:21,630 --> 01:41:27,390
This is a word you can just by storing
a single yes or no at this location way

2068
01:41:27,390 --> 01:41:35,385
down here, implicitly reveal that
M-A-X-W-E-L was in fact a word.

2069
01:41:35,385 --> 01:41:36,260
Let's follow another.

2070
01:41:36,260 --> 01:41:47,140
So, let's say Turing,
T-U-R-I-N-G, check, Boolean true.

2071
01:41:47,140 --> 01:41:49,560
Turing is in this dictionary as well.

2072
01:41:49,560 --> 01:41:53,460
So, if there are bread crumbs that
lead to null, that word is not in here.

2073
01:41:53,460 --> 01:41:57,760
So, apparently there is no
names starting with A through L,

2074
01:41:57,760 --> 01:42:01,750
and there is no one after U through
Z or some of the letters in between,

2075
01:42:01,750 --> 01:42:04,980
because those pointers are
implicitly and pictorially null.

2076
01:42:04,980 --> 01:42:09,900
But let's consider, then, what is the
running time of inserting or looking up

2077
01:42:09,900 --> 01:42:14,120
a name and [? in a trie? ?] Thus
far, pretty much all of the data

2078
01:42:14,120 --> 01:42:17,980
structures we've talked about
have pretty slow running times,

2079
01:42:17,980 --> 01:42:19,820
linear in the worst case.

2080
01:42:19,820 --> 01:42:22,370
So, if we used an array
to store people's names

2081
01:42:22,370 --> 01:42:25,522
or we used to linked list to store
people's names, in the worst case

2082
01:42:25,522 --> 01:42:28,230
we had linear running time, unless
maybe we sort things, but even

2083
01:42:28,230 --> 01:42:29,438
then that costs us some time.

2084
01:42:29,438 --> 01:42:32,630
So, linear may be logarithmic
was the best we could do.

2085
01:42:32,630 --> 01:42:35,380
And even with a hash
table, whereby, maybe we

2086
01:42:35,380 --> 01:42:38,030
store Maxwell at the M
location in our table,

2087
01:42:38,030 --> 01:42:41,520
he might still have a link list of
a whole bunch of other M people.

2088
01:42:41,520 --> 01:42:45,510
That, again, can devolve into
something linear, a linear linked list.

2089
01:42:45,510 --> 01:42:47,640
But what about a hash table?

2090
01:42:47,640 --> 01:42:52,780
To answer the question is Maxwell in
a trie-- sorry, what about to trie?

2091
01:42:52,780 --> 01:42:56,380
To answer the question is
Maxwell in a trie, what do we do?

2092
01:42:56,380 --> 01:43:00,340
We start at the root and we follow
the pointer that represents m,

2093
01:43:00,340 --> 01:43:04,650
and then we follow the pointer there
that represents A, then X, W, E, L, L,

2094
01:43:04,650 --> 01:43:08,380
and we look for at the end of that
series of steps a true false value.

2095
01:43:08,380 --> 01:43:11,530
And if it's true, yes, Maxwell is here.

2096
01:43:11,530 --> 01:43:12,420
What about Turing?

2097
01:43:12,420 --> 01:43:14,295
Well, we start at the
pointer that represents

2098
01:43:14,295 --> 01:43:16,160
T, then U, R, I, N G, then check.

2099
01:43:16,160 --> 01:43:17,590
Oh, true.

2100
01:43:17,590 --> 01:43:18,860
Turing is in there.

2101
01:43:18,860 --> 01:43:20,080
Let's look for David.

2102
01:43:20,080 --> 01:43:21,350
No, false.

2103
01:43:21,350 --> 01:43:22,870
There's not even a pointer there.

2104
01:43:22,870 --> 01:43:24,950
David is not in this dictionary.

2105
01:43:24,950 --> 01:43:26,900
So, how many steps did that each take?

2106
01:43:26,900 --> 01:43:29,100
To tell whether Maxwell
was in the dictionary,

2107
01:43:29,100 --> 01:43:34,610
was M-A-X-W-E-L-L and then look at
the Boolean, so that was eight steps.

2108
01:43:34,610 --> 01:43:39,450
And to look up Turing was
T-U-R-I-N-G. And then that Boolean,

2109
01:43:39,450 --> 01:43:42,360
that was seven steps.

2110
01:43:42,360 --> 01:43:48,020
Those numbers have nothing to do with
how many words are already in the trie.

2111
01:43:48,020 --> 01:43:50,960
There might be-- and there's
only a couple dozen here--

2112
01:43:50,960 --> 01:43:54,440
there are a dozen or so here-- there
might be thousands of actual words

2113
01:43:54,440 --> 01:43:58,590
in this dictionary, but we're still
going to find Alan Turing by way

2114
01:43:58,590 --> 01:44:06,330
of T-U-R-I-N-G Boolean seven steps,
and M-A-X-W-E-L-L Boolean, eight steps.

2115
01:44:06,330 --> 01:44:10,540
It doesn't matter how many other
data elements are in this trie.

2116
01:44:10,540 --> 01:44:13,020
And that's what's
powerful, because if there

2117
01:44:13,020 --> 01:44:15,580
is an upper bound on the
number of letters in an English

2118
01:44:15,580 --> 01:44:17,720
word-- which is kind of true.

2119
01:44:17,720 --> 01:44:20,340
I've rarely typed words
that are longer than I don't

2120
01:44:20,340 --> 01:44:22,150
know 10 characters, 15 characters.

2121
01:44:22,150 --> 01:44:24,650
At some point there
might exist these words,

2122
01:44:24,650 --> 01:44:27,280
but no one actually says
or types these words.

2123
01:44:27,280 --> 01:44:28,910
Those are effectively constants.

2124
01:44:28,910 --> 01:44:32,006
The maximum length of a word in
English is surely some constant,

2125
01:44:32,006 --> 01:44:33,880
because there is one
word that's the longest.

2126
01:44:33,880 --> 01:44:37,060
That's a constant value,
which means inserting a name,

2127
01:44:37,060 --> 01:44:41,320
or searching for a name, or
removing a name from a trie

2128
01:44:41,320 --> 01:44:44,020
does depend on the length
of the name, but it does not

2129
01:44:44,020 --> 01:44:47,970
depend on how many pieces of data
are already in the data structure.

2130
01:44:47,970 --> 01:44:52,020
And as such, it is constant time.

2131
01:44:52,020 --> 01:44:54,320
So, now in C, we have a
whole bunch of new syntax

2132
01:44:54,320 --> 01:44:57,635
with which to represent data
structures, namely actual structs in C,

2133
01:44:57,635 --> 01:44:59,760
and we have pointers, and
we have malloc with which

2134
01:44:59,760 --> 01:45:02,750
we can build more interesting
shapes, if you will, in memory.

2135
01:45:02,750 --> 01:45:06,850
And we now have a number of abstract
data types and actual data structures

2136
01:45:06,850 --> 01:45:10,992
we can build using these ingredients
with which we can now solve problems

2137
01:45:10,992 --> 01:45:13,950
that are going to demand all the more
resources, all the more time, all

2138
01:45:13,950 --> 01:45:17,190
the more space, in which case
efficiency and good design

2139
01:45:17,190 --> 01:45:19,490
is going to be ever more important.

2140
01:45:19,490 --> 01:45:21,830
All this and more next time.

2141
01:45:21,830 --> 01:45:26,224


2142
01:45:26,224 --> 01:45:28,390
AUDIENCE: She thought she
was doing the right thing.

2143
01:45:28,390 --> 01:45:33,365


2144
01:45:33,365 --> 01:45:36,215
[AUDIO PLAYBACK]

2145
01:45:36,215 --> 01:45:38,590
-Tell me more.

2146
01:45:38,590 --> 01:45:45,290
-David was sure it had to be the
muppet, something called muppet mode,

2147
01:45:45,290 --> 01:45:48,150
but the pressure was too much.

2148
01:45:48,150 --> 01:45:49,520
-This is Mario in muppet mode.

2149
01:45:49,520 --> 01:45:50,230
Take 23.

2150
01:45:50,230 --> 01:45:55,220


2151
01:45:55,220 --> 01:45:57,670
[HONKING]

2152
01:45:57,670 --> 01:46:12,380


2153
01:46:12,380 --> 01:46:13,428
-What's happening?

2154
01:46:13,428 --> 01:46:15,730
I thought this is what
you always wanted,

2155
01:46:15,730 --> 01:46:19,250
to star in the walkthrough videos,
to have all of YouTube's eyes

2156
01:46:19,250 --> 01:46:21,750
watching you.

2157
01:46:21,750 --> 01:46:22,250
[HONKING]

2158
01:46:22,250 --> 01:46:27,990


2159
01:46:27,990 --> 01:46:29,950
-Yes, you are.

2160
01:46:29,950 --> 01:46:31,480
You have to be.

2161
01:46:31,480 --> 01:46:35,142
Now stand up straight, tuck in
your shirt, look into the camera!

2162
01:46:35,142 --> 01:46:37,380
Take it again from the top.

2163
01:46:37,380 --> 01:46:43,558
```
