/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "ass5_19CS30031_19CS10070.y" /* yacc.c:339  */

    #include "ass5_19CS30031_19CS10070_translator.h"
    extern int yylex();
    extern int lineCount;
    void yyerror(string);
    void yyinfo(string);

#line 74 "y.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "y.tab.h".  */
#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    AUTO = 258,
    BREAK = 259,
    CASE = 260,
    CHARTYPE = 261,
    CONST = 262,
    CONTINUE = 263,
    DEFAULT = 264,
    DO = 265,
    DOUBLE = 266,
    ELSE = 267,
    ENUM = 268,
    EXTERN = 269,
    FLOATTYPE = 270,
    FOR = 271,
    GOTO = 272,
    IF = 273,
    INLINE = 274,
    INTTYPE = 275,
    LONG = 276,
    REGISTER = 277,
    RESTRICT = 278,
    RETURN = 279,
    SHORT = 280,
    SIGNED = 281,
    SIZEOF = 282,
    STATIC = 283,
    STRUCT = 284,
    SWITCH = 285,
    TYPEDEF = 286,
    UNION = 287,
    UNSIGNED = 288,
    VOIDTYPE = 289,
    VOLATILE = 290,
    WHILE = 291,
    _BOOL = 292,
    _COMPLEX = 293,
    _IMAGINARY = 294,
    IDENTIFIER = 295,
    INTEGER_CONSTANT = 296,
    FLOATING_CONSTANT = 297,
    CHARACTER_CONSTANT = 298,
    STRING_LITERAL = 299,
    LEFT_SQUARE_BRACKET = 300,
    INCREMENT = 301,
    SLASH = 302,
    QUESTION_MARK = 303,
    ASSIGNMENT = 304,
    COMMA = 305,
    RIGHT_SQUARE_BRACKET = 306,
    LEFT_PARENTHESES = 307,
    LEFT_CURLY_BRACKET = 308,
    RIGHT_CURLY_BRACKET = 309,
    DOT = 310,
    ARROW = 311,
    ASTERISK = 312,
    PLUS = 313,
    MINUS = 314,
    TILDE = 315,
    EXCLAMATION = 316,
    MODULO = 317,
    LEFT_SHIFT = 318,
    RIGHT_SHIFT = 319,
    LESS_THAN = 320,
    GREATER_THAN = 321,
    LESS_EQUAL_THAN = 322,
    GREATER_EQUAL_THAN = 323,
    COLON = 324,
    SEMI_COLON = 325,
    ELLIPSIS = 326,
    ASTERISK_ASSIGNMENT = 327,
    SLASH_ASSIGNMENT = 328,
    MODULO_ASSIGNMENT = 329,
    PLUS_ASSIGNMENT = 330,
    MINUS_ASSIGNMENT = 331,
    LEFT_SHIFT_ASSIGNMENT = 332,
    HASH = 333,
    DECREMENT = 334,
    RIGHT_PARENTHESES = 335,
    BITWISE_AND = 336,
    EQUALS = 337,
    BITWISE_XOR = 338,
    BITWISE_OR = 339,
    LOGICAL_AND = 340,
    LOGICAL_OR = 341,
    RIGHT_SHIFT_ASSIGNMENT = 342,
    NOT_EQUALS = 343,
    BITWISE_AND_ASSIGNMENT = 344,
    BITWISE_OR_ASSIGNMENT = 345,
    BITWISE_XOR_ASSIGNMENT = 346,
    INVALID_TOKEN = 347,
    THEN = 348
  };
#endif
/* Tokens.  */
#define AUTO 258
#define BREAK 259
#define CASE 260
#define CHARTYPE 261
#define CONST 262
#define CONTINUE 263
#define DEFAULT 264
#define DO 265
#define DOUBLE 266
#define ELSE 267
#define ENUM 268
#define EXTERN 269
#define FLOATTYPE 270
#define FOR 271
#define GOTO 272
#define IF 273
#define INLINE 274
#define INTTYPE 275
#define LONG 276
#define REGISTER 277
#define RESTRICT 278
#define RETURN 279
#define SHORT 280
#define SIGNED 281
#define SIZEOF 282
#define STATIC 283
#define STRUCT 284
#define SWITCH 285
#define TYPEDEF 286
#define UNION 287
#define UNSIGNED 288
#define VOIDTYPE 289
#define VOLATILE 290
#define WHILE 291
#define _BOOL 292
#define _COMPLEX 293
#define _IMAGINARY 294
#define IDENTIFIER 295
#define INTEGER_CONSTANT 296
#define FLOATING_CONSTANT 297
#define CHARACTER_CONSTANT 298
#define STRING_LITERAL 299
#define LEFT_SQUARE_BRACKET 300
#define INCREMENT 301
#define SLASH 302
#define QUESTION_MARK 303
#define ASSIGNMENT 304
#define COMMA 305
#define RIGHT_SQUARE_BRACKET 306
#define LEFT_PARENTHESES 307
#define LEFT_CURLY_BRACKET 308
#define RIGHT_CURLY_BRACKET 309
#define DOT 310
#define ARROW 311
#define ASTERISK 312
#define PLUS 313
#define MINUS 314
#define TILDE 315
#define EXCLAMATION 316
#define MODULO 317
#define LEFT_SHIFT 318
#define RIGHT_SHIFT 319
#define LESS_THAN 320
#define GREATER_THAN 321
#define LESS_EQUAL_THAN 322
#define GREATER_EQUAL_THAN 323
#define COLON 324
#define SEMI_COLON 325
#define ELLIPSIS 326
#define ASTERISK_ASSIGNMENT 327
#define SLASH_ASSIGNMENT 328
#define MODULO_ASSIGNMENT 329
#define PLUS_ASSIGNMENT 330
#define MINUS_ASSIGNMENT 331
#define LEFT_SHIFT_ASSIGNMENT 332
#define HASH 333
#define DECREMENT 334
#define RIGHT_PARENTHESES 335
#define BITWISE_AND 336
#define EQUALS 337
#define BITWISE_XOR 338
#define BITWISE_OR 339
#define LOGICAL_AND 340
#define LOGICAL_OR 341
#define RIGHT_SHIFT_ASSIGNMENT 342
#define NOT_EQUALS 343
#define BITWISE_AND_ASSIGNMENT 344
#define BITWISE_OR_ASSIGNMENT 345
#define BITWISE_XOR_ASSIGNMENT 346
#define INVALID_TOKEN 347
#define THEN 348

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 9 "ass5_19CS30031_19CS10070.y" /* yacc.c:355  */

    int intVal;
    char *floatVal;
    char *charVal;
    char *stringVal;
    char *identifierVal;
    char unaryOperator;
    int instructionNumber;
    int parameterCount;
    Expression *expression;
    Statement *statement;
    Array *array;
    SymbolType *symbolType;
    Symbol *symbol;

#line 316 "y.tab.c" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 333 "y.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  48
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1064

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  94
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  75
/* YYNRULES -- Number of rules.  */
#define YYNRULES  213
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  369

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   348

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   188,   188,   195,   202,   209,   216,   223,   231,   239,
     257,   264,   266,   268,   276,   284,   286,   291,   297,   304,
     310,   319,   324,   330,   336,   358,   360,   365,   367,   369,
     371,   373,   375,   380,   385,   394,   407,   418,   429,   443,
     448,   459,   473,   478,   489,   503,   508,   522,   536,   550,
     567,   572,   588,   607,   612,   625,   630,   643,   648,   661,
     668,   677,   682,   696,   701,   715,   720,   740,   745,   762,
     764,   766,   768,   770,   772,   774,   776,   778,   780,   782,
     787,   792,   797,   804,   809,   812,   816,   818,   820,   822,
     827,   830,   834,   836,   841,   846,   856,   858,   860,   862,
     867,   872,   877,   879,   884,   886,   891,   893,   895,   897,
     899,   901,   903,   908,   910,   915,   918,   922,   924,   926,
     931,   934,   938,   940,   945,   947,   952,   954,   956,   961,
     966,   975,   982,   994,  1000,  1005,  1007,  1009,  1027,  1046,
    1048,  1050,  1052,  1054,  1056,  1070,  1072,  1089,  1092,  1110,
    1116,  1125,  1127,  1132,  1134,  1139,  1141,  1146,  1148,  1153,
    1155,  1160,  1165,  1170,  1172,  1177,  1179,  1184,  1187,  1191,
    1196,  1198,  1203,  1205,  1212,  1214,  1219,  1225,  1230,  1235,
    1243,  1245,  1247,  1252,  1263,  1272,  1278,  1285,  1290,  1300,
    1305,  1313,  1321,  1327,  1334,  1343,  1353,  1358,  1368,  1377,
    1388,  1393,  1395,  1397,  1399,  1414,  1416,  1421,  1423,  1429,
    1438,  1441,  1445,  1447
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "AUTO", "BREAK", "CASE", "CHARTYPE",
  "CONST", "CONTINUE", "DEFAULT", "DO", "DOUBLE", "ELSE", "ENUM", "EXTERN",
  "FLOATTYPE", "FOR", "GOTO", "IF", "INLINE", "INTTYPE", "LONG",
  "REGISTER", "RESTRICT", "RETURN", "SHORT", "SIGNED", "SIZEOF", "STATIC",
  "STRUCT", "SWITCH", "TYPEDEF", "UNION", "UNSIGNED", "VOIDTYPE",
  "VOLATILE", "WHILE", "_BOOL", "_COMPLEX", "_IMAGINARY", "IDENTIFIER",
  "INTEGER_CONSTANT", "FLOATING_CONSTANT", "CHARACTER_CONSTANT",
  "STRING_LITERAL", "LEFT_SQUARE_BRACKET", "INCREMENT", "SLASH",
  "QUESTION_MARK", "ASSIGNMENT", "COMMA", "RIGHT_SQUARE_BRACKET",
  "LEFT_PARENTHESES", "LEFT_CURLY_BRACKET", "RIGHT_CURLY_BRACKET", "DOT",
  "ARROW", "ASTERISK", "PLUS", "MINUS", "TILDE", "EXCLAMATION", "MODULO",
  "LEFT_SHIFT", "RIGHT_SHIFT", "LESS_THAN", "GREATER_THAN",
  "LESS_EQUAL_THAN", "GREATER_EQUAL_THAN", "COLON", "SEMI_COLON",
  "ELLIPSIS", "ASTERISK_ASSIGNMENT", "SLASH_ASSIGNMENT",
  "MODULO_ASSIGNMENT", "PLUS_ASSIGNMENT", "MINUS_ASSIGNMENT",
  "LEFT_SHIFT_ASSIGNMENT", "HASH", "DECREMENT", "RIGHT_PARENTHESES",
  "BITWISE_AND", "EQUALS", "BITWISE_XOR", "BITWISE_OR", "LOGICAL_AND",
  "LOGICAL_OR", "RIGHT_SHIFT_ASSIGNMENT", "NOT_EQUALS",
  "BITWISE_AND_ASSIGNMENT", "BITWISE_OR_ASSIGNMENT",
  "BITWISE_XOR_ASSIGNMENT", "INVALID_TOKEN", "THEN", "$accept",
  "primary_expression", "postfix_expression",
  "argument_expression_list_opt", "argument_expression_list",
  "unary_expression", "unary_operator", "cast_expression",
  "multiplicative_expression", "additive_expression", "shift_expression",
  "relational_expression", "equality_expression", "AND_expression",
  "exclusive_OR_expression", "inclusive_OR_expression", "M", "N",
  "logical_AND_expression", "logical_OR_expression",
  "conditional_expression", "assignment_expression", "assignment_operator",
  "expression", "constant_expression", "declaration",
  "init_declarator_list_opt", "declaration_specifiers",
  "declaration_specifiers_opt", "init_declarator_list", "init_declarator",
  "storage_class_specifier", "type_specifier", "specifier_qualifier_list",
  "specifier_qualifier_list_opt", "enum_specifier", "identifier_opt",
  "enumerator_list", "enumerator", "type_qualifier", "function_specifier",
  "declarator", "change_scope", "direct_declarator",
  "type_qualifier_list_opt", "pointer", "type_qualifier_list",
  "parameter_type_list", "parameter_list", "parameter_declaration",
  "identifier_list", "type_name", "initialiser", "initialiser_list",
  "designation_opt", "designation", "designator_list", "designator",
  "statement", "labeled_statement", "change_block", "compound_statement",
  "block_item_list_opt", "block_item_list", "block_item",
  "expression_statement", "expression_opt", "selection_statement",
  "iteration_statement", "jump_statement", "translation_unit",
  "external_declaration", "function_definition", "declaration_list_opt",
  "declaration_list", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   339,   340,   341,   342,   343,   344,
     345,   346,   347,   348
};
# endif

#define YYPACT_NINF -299

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-299)))

#define YYTABLE_NINF -212

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    1025,  -299,  -299,  -299,  -299,    -2,  -299,  -299,  -299,  -299,
    -299,  -299,  -299,  -299,  -299,  -299,  -299,  -299,  -299,  -299,
    -299,  -299,  -299,   109,  1025,  1025,  -299,  1025,  1025,   988,
    -299,  -299,   -28,    -4,  -299,   109,   139,   -16,    80,  -299,
     947,     7,    64,  -299,  -299,  -299,  -299,  -299,  -299,  -299,
      75,   -23,  -299,    60,   139,  -299,   109,   757,  -299,   109,
    -299,  1025,   608,   117,     7,   119,   129,  -299,  -299,  -299,
    -299,  -299,   122,   828,  -299,  -299,  -299,  -299,  -299,   856,
     566,   -12,  -299,  -299,  -299,  -299,  -299,   856,  -299,  -299,
      28,    65,   884,  -299,   -21,    51,    72,   137,    23,    96,
     105,   107,   111,   -35,  -299,  -299,  -299,   146,  -299,   692,
    -299,   155,   166,   650,  -299,   531,   -33,   884,    -6,  -299,
     566,  -299,   566,  -299,  -299,   -27,   224,  -299,   224,   143,
     884,   189,   136,   757,  -299,    30,  -299,  -299,   884,  -299,
     884,   194,   198,  -299,  -299,  -299,  -299,  -299,  -299,  -299,
    -299,  -299,  -299,  -299,  -299,   884,  -299,  -299,   884,   884,
     884,   884,   884,   884,   884,   884,   884,   884,   884,   884,
     884,   884,   884,   884,  -299,  -299,   193,   280,   192,   692,
    -299,  -299,   884,  -299,   197,   200,  -299,   109,   172,   203,
    -299,   214,  -299,  -299,  -299,  -299,  -299,   175,   176,   884,
    -299,  -299,  -299,  -299,   800,   209,  -299,    27,  -299,  -299,
    -299,  -299,   100,   184,   215,  -299,  -299,  -299,  -299,  -299,
    -299,  -299,   -21,   -21,    51,    51,    72,    72,    72,    72,
     137,   137,    23,    96,   105,   884,   884,  -299,   196,   884,
     199,   201,  -299,   216,   231,   223,   884,   225,  -299,   210,
    -299,   228,  -299,  -299,  -299,  -299,   226,   227,  -299,  -299,
     212,  -299,  -299,  -299,  -299,   258,   260,  -299,  -299,  -299,
    -299,   755,  -299,   259,   259,  -299,   -12,  -299,  -299,  -299,
     757,  -299,  -299,   884,   107,   111,   884,  -299,   256,  -299,
     468,   468,   422,   257,   884,   261,   884,   276,   468,  -299,
    -299,   359,  -299,  -299,  -299,  -299,  -299,   144,  -299,  -299,
     228,   468,  -299,  -299,   884,   264,  -299,   228,  -299,   -15,
     884,  -299,   280,  -299,   115,  -299,   266,  -299,   293,   272,
    -299,   250,   468,   -13,   282,  -299,  -299,   291,   884,   884,
    -299,  -299,  -299,  -299,   884,   884,   265,   274,   468,   468,
    -299,   -11,   468,  -299,  -299,  -299,   277,  -299,   884,   334,
    -299,  -299,  -299,   268,   468,  -299,  -299,   468,  -299
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    98,   101,   126,   106,   121,    96,   105,   129,   103,
     104,    99,   127,   102,   107,    97,   108,   100,   128,   109,
     110,   111,   208,    85,    91,    91,   112,    91,    91,     0,
     205,   207,   119,     0,   133,     0,   148,     0,    84,    92,
      94,   131,     0,    90,    86,    87,    88,    89,     1,   206,
       0,     0,   151,   149,   147,    83,     0,     0,   212,    85,
     132,   210,     0,   132,   130,   124,     0,   122,   134,   150,
     152,    93,    94,     0,     2,     3,     4,     5,     6,     0,
       0,   168,    28,    29,    30,    31,    32,     0,    27,     8,
      21,    33,     0,    35,    39,    42,    45,    50,    53,    55,
      57,    61,    63,    65,    67,   162,    95,     0,   213,     0,
     138,    28,     0,     0,   159,     0,     0,     0,     0,   117,
       0,    25,     0,    22,    80,     0,   116,   161,   116,     0,
       0,     0,     0,     0,   167,     0,   170,    23,     0,    13,
      18,     0,     0,    14,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    79,    78,     0,    33,    24,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    59,    59,     0,   186,     0,     0,
     143,   137,     0,   136,    28,     0,   146,   158,     0,   153,
     155,     0,   145,    82,   125,   118,   123,     0,     0,     0,
       7,   115,   113,   114,     0,     0,   173,   168,   163,   165,
     169,   171,     0,     0,    17,    19,    11,    12,    68,    37,
      36,    38,    40,    41,    43,    44,    46,    47,    48,    49,
      51,    52,    54,    56,    58,     0,     0,    59,     0,     0,
       0,     0,    59,     0,     0,     0,   193,     0,    59,     2,
     183,   192,   189,   190,   174,   175,     0,    59,   187,   176,
       0,   177,   178,   179,   140,     0,     0,   142,   135,   157,
     144,     0,   160,    26,     0,    81,   168,    34,   172,   164,
       0,     9,    10,     0,    62,    64,     0,   203,     0,   202,
     193,   193,   193,     0,     0,     0,     0,     0,   193,   132,
     209,   193,   191,   139,   141,   154,   156,     0,   166,    20,
      60,   193,   182,    59,   193,     0,   201,    60,   204,     0,
       0,   180,   186,   188,   168,    15,     0,   181,     0,     0,
      59,     0,   193,     0,     0,    16,    59,     0,   193,   193,
      59,   196,    59,   184,     0,     0,     0,     0,   193,   193,
      66,     0,   193,    59,    60,   197,     0,   200,   193,   194,
     198,    60,    59,     0,   193,    59,   195,   193,   199
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -299,  -299,  -299,  -299,  -299,   -72,  -299,   -82,    48,    62,
      54,    58,   178,   179,   180,   120,  -129,  -298,   116,  -299,
    -112,    -7,  -299,   -78,  -119,     0,  -299,     3,   187,  -299,
     298,  -299,   -58,    17,   229,  -299,  -299,  -299,   238,    67,
    -299,   -14,   -59,   316,  -299,   307,   -38,  -299,  -299,   133,
    -299,  -106,  -127,    95,  -199,  -299,  -299,   253,  -167,  -299,
    -299,  -299,    68,  -299,    90,  -299,  -180,  -299,  -299,  -299,
    -299,   377,  -299,  -299,  -299
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    89,    90,   213,   214,    91,    92,    93,    94,    95,
      96,    97,    98,    99,   100,   101,   235,   176,   102,   103,
     104,   124,   155,   251,   194,   252,    37,    59,    44,    38,
      39,    24,    25,   127,   202,    26,    33,    66,    67,    27,
      28,    72,   107,    41,    53,    42,    54,   188,   189,   190,
     116,   129,   106,   132,   133,   134,   135,   136,   253,   254,
     299,   255,   256,   257,   258,   259,   260,   261,   262,   263,
      29,    30,    31,    60,    61
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      22,   121,   125,    23,   115,   193,   209,   123,   280,    40,
     157,   205,   326,   -60,   197,   137,   198,   191,   193,   331,
     156,    51,   126,   199,   113,  -120,   158,    43,    43,    22,
      43,    43,    23,   130,    65,   199,   159,   199,    32,   199,
      58,   160,   125,   131,   125,   156,   236,   192,   195,    50,
     105,   175,    62,   200,    55,   112,   359,    68,   156,    63,
     212,   108,   126,   363,   126,   332,   295,   342,   126,   356,
     126,   179,   130,   138,   139,   130,   219,   220,   221,   210,
     140,   279,   131,   141,   142,   131,   156,   156,   156,   156,
     156,   156,   156,   156,   156,   156,   156,   156,   156,   156,
     156,   156,   178,    52,    34,   169,   185,   143,   286,   161,
     162,   170,   315,   291,   144,    65,    35,    36,   187,   297,
     288,    70,   277,   312,   313,   280,   105,   193,   301,    52,
      56,   321,   156,   215,   329,   163,   164,   145,   146,   147,
     148,   149,   150,   201,   327,   201,     3,   128,   218,    34,
     199,   281,   151,   308,   152,   153,   154,   114,   346,   347,
     130,    35,    12,   156,   156,   341,    36,   156,   117,   335,
     131,    57,   265,   269,    18,   266,    52,   171,   361,   118,
      70,   354,   355,   119,   328,   357,   207,   128,   172,   128,
     208,   173,   275,   128,   324,   128,   174,   366,   325,   177,
     368,   339,   165,   166,   167,   168,   180,   344,   310,   222,
     223,   348,    45,   349,    46,    47,   317,   181,   319,   226,
     227,   228,   229,   204,   358,   224,   225,   230,   231,   206,
       2,     3,   350,   364,   216,     4,   367,     5,   217,     7,
     322,   237,   333,   264,     9,    10,    70,    12,   267,    13,
      14,   268,   270,   271,   272,   273,   274,    16,    17,    18,
     278,    19,    20,    21,   282,   283,   287,   351,   292,   289,
     290,   293,   156,   105,   187,   294,   309,   296,   199,   298,
     300,  -185,   302,     1,   238,   239,     2,     3,   240,   241,
     242,     4,   314,     5,     6,     7,   243,   244,   245,     8,
       9,    10,    11,    12,   246,    13,    14,    73,    15,   303,
     247,   304,   276,    16,    17,    18,   248,    19,    20,    21,
     249,    75,    76,    77,    78,   311,    79,   316,   320,   337,
     340,   318,    80,   250,   330,   336,   343,    82,    83,    84,
      85,    86,   338,   345,   353,   352,   362,   360,   365,   232,
    -193,   233,   285,   234,    71,   284,   196,   203,    64,    87,
      69,    88,     1,   238,   239,     2,     3,   240,   241,   242,
       4,   307,     5,     6,     7,   243,   244,   245,     8,     9,
      10,    11,    12,   246,    13,    14,    73,    15,   211,   247,
     334,   323,    16,    17,    18,   248,    19,    20,    21,   249,
      75,    76,    77,    78,   306,    79,    49,     0,     0,     0,
       0,    80,   250,     0,     0,     0,    82,    83,    84,    85,
      86,     0,     0,     0,     0,     1,     0,     0,     2,     3,
       0,     0,     0,     4,     0,     5,     6,     7,    87,     0,
      88,     8,     9,    10,    11,    12,     0,    13,    14,    73,
      15,     0,     0,     0,     0,    16,    17,    18,     0,    19,
      20,    21,    74,    75,    76,    77,    78,     0,    79,     0,
       0,     0,   238,   239,    80,     0,   240,   241,   242,    82,
      83,    84,    85,    86,   243,   244,   245,     0,     0,     0,
       0,     0,   246,     0,     0,    73,     0,     0,   247,     0,
       0,    87,     0,    88,   248,     0,     0,     0,   249,    75,
      76,    77,    78,     0,    79,     0,     0,     0,     0,     0,
      80,   250,     0,     0,     0,    82,    83,    84,    85,    86,
       0,     0,     0,     0,     1,     0,     0,     2,     3,     0,
       0,     0,     4,     0,     5,     6,     7,    87,     0,    88,
       8,     9,    10,    11,    12,     0,    13,    14,     0,    15,
       0,     0,     0,     0,    16,    17,    18,     0,    19,    20,
      21,     0,     2,     3,     0,     0,     0,     4,     0,     5,
       0,     7,     0,     0,     0,     0,     9,    10,     0,    12,
       0,    13,    14,    73,     0,     0,     0,     0,     0,    16,
      17,    18,     0,    19,    20,    21,    74,    75,    76,    77,
      78,   186,    79,     0,     0,     3,     0,     0,    80,     0,
       0,     0,     0,    82,    83,    84,    85,    86,     0,     0,
       0,    12,     0,     0,     0,    73,   109,     0,     0,     0,
       0,     0,     0,    18,     0,    87,     0,    88,    74,    75,
      76,    77,    78,     0,    79,     0,     0,     3,     0,   110,
      80,     0,     0,     0,     0,   111,    83,    84,    85,    86,
       0,     0,     0,    12,     0,     0,     0,    73,   182,     0,
       0,     0,     0,     0,     0,    18,     0,    87,     0,    88,
      74,    75,    76,    77,    78,     0,    79,     0,     0,     3,
       0,   183,    80,     0,     0,     0,     0,   184,    83,    84,
      85,    86,     0,     0,     0,    12,     0,     0,     0,    73,
       0,     0,     0,     0,     0,     0,     0,    18,     0,    87,
       0,    88,    74,    75,    76,    77,    78,     0,    79,     0,
       0,     0,     0,     0,    80,     0,     0,     0,     0,    82,
      83,    84,    85,    86,     0,     0,     0,     0,     1,     0,
       0,     2,     3,     0,     0,     0,     4,     0,     5,     6,
       7,    87,     0,    88,     8,     9,    10,    11,    12,     0,
      13,    14,     0,    15,    73,     0,     0,     0,    16,    17,
      18,     0,    19,    20,    21,     0,     0,    74,    75,    76,
      77,    78,     0,    79,     0,     0,     0,     0,     0,    80,
      81,     0,     0,     0,    82,    83,    84,    85,    86,     0,
       0,     0,     0,     0,     0,     0,   305,    73,     0,     0,
       0,     0,     0,     0,     0,     0,    87,     0,    88,     0,
      74,    75,    76,    77,    78,     0,    79,     0,     0,     0,
       0,     0,    80,   276,     0,    73,     0,    82,    83,    84,
      85,    86,     0,     0,     0,     0,     0,     0,    74,    75,
      76,    77,    78,     0,    79,     0,     0,     0,     0,    87,
     120,    88,     0,    73,     0,    82,    83,    84,    85,    86,
       0,     0,     0,     0,     0,     0,    74,    75,    76,    77,
      78,     0,    79,     0,     0,     0,     0,    87,   122,    88,
       0,    73,     0,    82,    83,    84,    85,    86,     0,     0,
       0,     0,     0,     0,    74,    75,    76,    77,    78,     0,
      79,     0,     0,     0,     0,    87,    80,    88,     0,     0,
       0,    82,    83,    84,    85,    86,     0,     0,     0,     0,
       1,     0,     0,     2,     3,     0,     0,     0,     4,     0,
       5,     6,     7,    87,     0,    88,     8,     9,    10,    11,
      12,     0,    13,    14,     0,    15,     0,     0,     0,     0,
      16,    17,    18,     0,    19,    20,    21,     0,    48,     0,
       0,     1,     0,     0,     2,     3,    57,     0,     0,     4,
    -211,     5,     6,     7,     0,     0,     0,     8,     9,    10,
      11,    12,     0,    13,    14,     0,    15,     0,     0,     0,
       0,    16,    17,    18,     0,    19,    20,    21,     1,     0,
       0,     2,     3,     0,     0,     0,     4,     0,     5,     6,
       7,     0,     0,     0,     8,     9,    10,    11,    12,     0,
      13,    14,     0,    15,     0,     0,     0,     0,    16,    17,
      18,     0,    19,    20,    21
};

static const yytype_int16 yycheck[] =
{
       0,    73,    80,     0,    63,   117,   133,    79,   207,    23,
      92,   130,   310,    48,   120,    87,   122,    50,   130,   317,
      92,    35,    80,    50,    62,    53,    47,    24,    25,    29,
      27,    28,    29,    45,    40,    50,    57,    50,    40,    50,
      40,    62,   120,    55,   122,   117,   175,    80,    54,    53,
      57,    86,    45,    80,    70,    62,   354,    80,   130,    52,
     138,    61,   120,   361,   122,    80,   246,    80,   126,    80,
     128,   109,    45,    45,    46,    45,   158,   159,   160,    49,
      52,    54,    55,    55,    56,    55,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   167,   168,   169,   170,   171,
     172,   173,   109,    36,    40,    82,   113,    79,   237,    58,
      59,    88,   292,   242,    49,    40,    52,    57,   115,   248,
     239,    54,   204,   290,   291,   324,   133,   239,   257,    62,
      50,   298,   204,   140,   314,    63,    64,    72,    73,    74,
      75,    76,    77,   126,   311,   128,     7,    80,   155,    40,
      50,    51,    87,   280,    89,    90,    91,    40,   338,   339,
      45,    52,    23,   235,   236,   332,    57,   239,    49,    54,
      55,    49,   179,   187,    35,   182,   109,    81,   358,    50,
     113,   348,   349,    54,   313,   352,    50,   120,    83,   122,
      54,    84,   199,   126,    50,   128,    85,   364,    54,    53,
     367,   330,    65,    66,    67,    68,    51,   336,   286,   161,
     162,   340,    25,   342,    27,    28,   294,    51,   296,   165,
     166,   167,   168,    80,   353,   163,   164,   169,   170,    40,
       6,     7,   344,   362,    40,    11,   365,    13,    40,    15,
     299,    48,   320,    51,    20,    21,   179,    23,    51,    25,
      26,    51,    80,    50,    40,    80,    80,    33,    34,    35,
      51,    37,    38,    39,    80,    50,    70,   345,    52,    70,
      69,    40,   344,   280,   271,    52,   283,    52,    50,    69,
      54,    54,    70,     3,     4,     5,     6,     7,     8,     9,
      10,    11,   292,    13,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,    28,    51,
      30,    51,    53,    33,    34,    35,    36,    37,    38,    39,
      40,    41,    42,    43,    44,    69,    46,    70,    52,    36,
      80,    70,    52,    53,    70,    69,    54,    57,    58,    59,
      60,    61,    70,    52,    70,    80,    12,    70,    80,   171,
      70,   172,   236,   173,    56,   235,   118,   128,    42,    79,
      53,    81,     3,     4,     5,     6,     7,     8,     9,    10,
      11,   276,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,   135,    30,
     322,   301,    33,    34,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,   271,    46,    29,    -1,    -1,    -1,
      -1,    52,    53,    -1,    -1,    -1,    57,    58,    59,    60,
      61,    -1,    -1,    -1,    -1,     3,    -1,    -1,     6,     7,
      -1,    -1,    -1,    11,    -1,    13,    14,    15,    79,    -1,
      81,    19,    20,    21,    22,    23,    -1,    25,    26,    27,
      28,    -1,    -1,    -1,    -1,    33,    34,    35,    -1,    37,
      38,    39,    40,    41,    42,    43,    44,    -1,    46,    -1,
      -1,    -1,     4,     5,    52,    -1,     8,     9,    10,    57,
      58,    59,    60,    61,    16,    17,    18,    -1,    -1,    -1,
      -1,    -1,    24,    -1,    -1,    27,    -1,    -1,    30,    -1,
      -1,    79,    -1,    81,    36,    -1,    -1,    -1,    40,    41,
      42,    43,    44,    -1,    46,    -1,    -1,    -1,    -1,    -1,
      52,    53,    -1,    -1,    -1,    57,    58,    59,    60,    61,
      -1,    -1,    -1,    -1,     3,    -1,    -1,     6,     7,    -1,
      -1,    -1,    11,    -1,    13,    14,    15,    79,    -1,    81,
      19,    20,    21,    22,    23,    -1,    25,    26,    -1,    28,
      -1,    -1,    -1,    -1,    33,    34,    35,    -1,    37,    38,
      39,    -1,     6,     7,    -1,    -1,    -1,    11,    -1,    13,
      -1,    15,    -1,    -1,    -1,    -1,    20,    21,    -1,    23,
      -1,    25,    26,    27,    -1,    -1,    -1,    -1,    -1,    33,
      34,    35,    -1,    37,    38,    39,    40,    41,    42,    43,
      44,    80,    46,    -1,    -1,     7,    -1,    -1,    52,    -1,
      -1,    -1,    -1,    57,    58,    59,    60,    61,    -1,    -1,
      -1,    23,    -1,    -1,    -1,    27,    28,    -1,    -1,    -1,
      -1,    -1,    -1,    35,    -1,    79,    -1,    81,    40,    41,
      42,    43,    44,    -1,    46,    -1,    -1,     7,    -1,    51,
      52,    -1,    -1,    -1,    -1,    57,    58,    59,    60,    61,
      -1,    -1,    -1,    23,    -1,    -1,    -1,    27,    28,    -1,
      -1,    -1,    -1,    -1,    -1,    35,    -1,    79,    -1,    81,
      40,    41,    42,    43,    44,    -1,    46,    -1,    -1,     7,
      -1,    51,    52,    -1,    -1,    -1,    -1,    57,    58,    59,
      60,    61,    -1,    -1,    -1,    23,    -1,    -1,    -1,    27,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    35,    -1,    79,
      -1,    81,    40,    41,    42,    43,    44,    -1,    46,    -1,
      -1,    -1,    -1,    -1,    52,    -1,    -1,    -1,    -1,    57,
      58,    59,    60,    61,    -1,    -1,    -1,    -1,     3,    -1,
      -1,     6,     7,    -1,    -1,    -1,    11,    -1,    13,    14,
      15,    79,    -1,    81,    19,    20,    21,    22,    23,    -1,
      25,    26,    -1,    28,    27,    -1,    -1,    -1,    33,    34,
      35,    -1,    37,    38,    39,    -1,    -1,    40,    41,    42,
      43,    44,    -1,    46,    -1,    -1,    -1,    -1,    -1,    52,
      53,    -1,    -1,    -1,    57,    58,    59,    60,    61,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    71,    27,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    79,    -1,    81,    -1,
      40,    41,    42,    43,    44,    -1,    46,    -1,    -1,    -1,
      -1,    -1,    52,    53,    -1,    27,    -1,    57,    58,    59,
      60,    61,    -1,    -1,    -1,    -1,    -1,    -1,    40,    41,
      42,    43,    44,    -1,    46,    -1,    -1,    -1,    -1,    79,
      52,    81,    -1,    27,    -1,    57,    58,    59,    60,    61,
      -1,    -1,    -1,    -1,    -1,    -1,    40,    41,    42,    43,
      44,    -1,    46,    -1,    -1,    -1,    -1,    79,    52,    81,
      -1,    27,    -1,    57,    58,    59,    60,    61,    -1,    -1,
      -1,    -1,    -1,    -1,    40,    41,    42,    43,    44,    -1,
      46,    -1,    -1,    -1,    -1,    79,    52,    81,    -1,    -1,
      -1,    57,    58,    59,    60,    61,    -1,    -1,    -1,    -1,
       3,    -1,    -1,     6,     7,    -1,    -1,    -1,    11,    -1,
      13,    14,    15,    79,    -1,    81,    19,    20,    21,    22,
      23,    -1,    25,    26,    -1,    28,    -1,    -1,    -1,    -1,
      33,    34,    35,    -1,    37,    38,    39,    -1,     0,    -1,
      -1,     3,    -1,    -1,     6,     7,    49,    -1,    -1,    11,
      53,    13,    14,    15,    -1,    -1,    -1,    19,    20,    21,
      22,    23,    -1,    25,    26,    -1,    28,    -1,    -1,    -1,
      -1,    33,    34,    35,    -1,    37,    38,    39,     3,    -1,
      -1,     6,     7,    -1,    -1,    -1,    11,    -1,    13,    14,
      15,    -1,    -1,    -1,    19,    20,    21,    22,    23,    -1,
      25,    26,    -1,    28,    -1,    -1,    -1,    -1,    33,    34,
      35,    -1,    37,    38,    39
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     6,     7,    11,    13,    14,    15,    19,    20,
      21,    22,    23,    25,    26,    28,    33,    34,    35,    37,
      38,    39,   119,   121,   125,   126,   129,   133,   134,   164,
     165,   166,    40,   130,    40,    52,    57,   120,   123,   124,
     135,   137,   139,   121,   122,   122,   122,   122,     0,   165,
      53,   135,   133,   138,   140,    70,    50,    49,   119,   121,
     167,   168,    45,    52,   137,    40,   131,   132,    80,   139,
     133,   124,   135,    27,    40,    41,    42,    43,    44,    46,
      52,    53,    57,    58,    59,    60,    61,    79,    81,    95,
      96,    99,   100,   101,   102,   103,   104,   105,   106,   107,
     108,   109,   112,   113,   114,   115,   146,   136,   119,    28,
      51,    57,   115,   140,    40,   136,   144,    49,    50,    54,
      52,    99,    52,    99,   115,   117,   126,   127,   133,   145,
      45,    55,   147,   148,   149,   150,   151,    99,    45,    46,
      52,    55,    56,    79,    49,    72,    73,    74,    75,    76,
      77,    87,    89,    90,    91,   116,    99,   101,    47,    57,
      62,    58,    59,    63,    64,    65,    66,    67,    68,    82,
      88,    81,    83,    84,    85,    86,   111,    53,   115,   140,
      51,    51,    28,    51,    57,   115,    80,   121,   141,   142,
     143,    50,    80,   114,   118,    54,   132,   145,   145,    50,
      80,   127,   128,   128,    80,   118,    40,    50,    54,   146,
      49,   151,   117,    97,    98,   115,    40,    40,   115,   101,
     101,   101,   102,   102,   103,   103,   104,   104,   104,   104,
     105,   105,   106,   107,   108,   110,   110,    48,     4,     5,
       8,     9,    10,    16,    17,    18,    24,    30,    36,    40,
      53,   117,   119,   152,   153,   155,   156,   157,   158,   159,
     160,   161,   162,   163,    51,   115,   115,    51,    51,   135,
      80,    50,    40,    80,    80,   115,    53,   101,    51,    54,
     148,    51,    80,    50,   109,   112,   110,    70,   118,    70,
      69,   110,    52,    40,    52,   160,    52,   110,    69,   154,
      54,   110,    70,    51,    51,    71,   143,   147,   146,   115,
     117,    69,   152,   152,   119,   160,    70,   117,    70,   117,
      52,   152,   136,   158,    50,    54,   111,   152,   110,   160,
      70,   111,    80,   117,   156,    54,    69,    36,    70,   110,
      80,   152,    80,    54,   110,    52,   160,   160,   110,   110,
     114,   117,    80,    70,   152,   152,    80,   152,   110,   111,
      70,   160,    12,   111,   110,    80,   152,   110,   152
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    94,    95,    95,    95,    95,    95,    95,    96,    96,
      96,    96,    96,    96,    96,    96,    96,    97,    97,    98,
      98,    99,    99,    99,    99,    99,    99,   100,   100,   100,
     100,   100,   100,   101,   101,   102,   102,   102,   102,   103,
     103,   103,   104,   104,   104,   105,   105,   105,   105,   105,
     106,   106,   106,   107,   107,   108,   108,   109,   109,   110,
     111,   112,   112,   113,   113,   114,   114,   115,   115,   116,
     116,   116,   116,   116,   116,   116,   116,   116,   116,   116,
     117,   117,   118,   119,   120,   120,   121,   121,   121,   121,
     122,   122,   123,   123,   124,   124,   125,   125,   125,   125,
     126,   126,   126,   126,   126,   126,   126,   126,   126,   126,
     126,   126,   126,   127,   127,   128,   128,   129,   129,   129,
     130,   130,   131,   131,   132,   132,   133,   133,   133,   134,
     135,   135,   136,   137,   137,   137,   137,   137,   137,   137,
     137,   137,   137,   137,   137,   137,   137,   138,   138,   139,
     139,   140,   140,   141,   141,   142,   142,   143,   143,   144,
     144,   145,   146,   146,   146,   147,   147,   148,   148,   149,
     150,   150,   151,   151,   152,   152,   152,   152,   152,   152,
     153,   153,   153,   154,   155,   156,   156,   157,   157,   158,
     158,   159,   160,   160,   161,   161,   161,   162,   162,   162,
     162,   163,   163,   163,   163,   164,   164,   165,   165,   166,
     167,   167,   168,   168
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     1,     1,     1,     3,     1,     4,
       4,     3,     3,     2,     2,     6,     7,     1,     0,     1,
       3,     1,     2,     2,     2,     2,     4,     1,     1,     1,
       1,     1,     1,     1,     4,     1,     3,     3,     3,     1,
       3,     3,     1,     3,     3,     1,     3,     3,     3,     3,
       1,     3,     3,     1,     3,     1,     3,     1,     3,     0,
       0,     1,     4,     1,     4,     1,     9,     1,     3,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     3,     1,     3,     1,     0,     2,     2,     2,     2,
       1,     0,     1,     3,     1,     3,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     2,     2,     1,     0,     5,     6,     2,
       1,     0,     1,     3,     1,     3,     1,     1,     1,     1,
       2,     1,     0,     1,     3,     5,     4,     4,     3,     6,
       5,     6,     5,     4,     5,     4,     4,     1,     0,     2,
       3,     1,     2,     1,     3,     1,     3,     2,     1,     1,
       3,     1,     1,     3,     4,     2,     4,     1,     0,     2,
       1,     2,     3,     2,     1,     1,     1,     1,     1,     1,
       3,     4,     3,     0,     5,     1,     0,     1,     3,     1,
       1,     2,     1,     0,     8,    11,     5,     7,     9,    13,
       8,     3,     2,     2,     3,     1,     2,     1,     1,     7,
       1,     0,     1,     2
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 189 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("primary_expression => IDENTIFIER");
                            (yyval.expression) = new Expression();
                            (yyval.expression)->symbol = (yyvsp[0].symbol);
                            (yyval.expression)->type = Expression::NONBOOLEAN; 
                        }
#line 1861 "y.tab.c" /* yacc.c:1646  */
    break;

  case 3:
#line 196 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("primary_expression => INTEGER_CONSTANT"); 
                            (yyval.expression) = new Expression();
                            (yyval.expression)->symbol = gentemp(SymbolType::INT, toString((yyvsp[0].intVal)));
                            emit("=", (yyval.expression)->symbol->name, (yyvsp[0].intVal));
                        }
#line 1872 "y.tab.c" /* yacc.c:1646  */
    break;

  case 4:
#line 203 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("primary_expression => FLOATING_CONSTANT"); 
                            (yyval.expression) = new Expression();
                            (yyval.expression)->symbol = gentemp(SymbolType::FLOAT, (yyvsp[0].floatVal));
                            emit("=", (yyval.expression)->symbol->name, (yyvsp[0].floatVal));
                        }
#line 1883 "y.tab.c" /* yacc.c:1646  */
    break;

  case 5:
#line 210 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("primary_expression => CHARACTER_CONSTANT"); 
                            (yyval.expression) = new Expression();
                            (yyval.expression)->symbol = gentemp(SymbolType::CHAR, (yyvsp[0].charVal));
                            emit("=", (yyval.expression)->symbol->name, (yyvsp[0].charVal));
                        }
#line 1894 "y.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 217 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("primary_expression => STRING_LITERAL"); 
                            (yyval.expression) = new Expression();
		                    (yyval.expression)->symbol = gentemp(SymbolType::POINTER, (yyvsp[0].stringVal));
		                    (yyval.expression)->symbol->type->arrayType = new SymbolType(SymbolType::CHAR);
                        }
#line 1905 "y.tab.c" /* yacc.c:1646  */
    break;

  case 7:
#line 224 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("primary_expression => ( expression )"); 
                            (yyval.expression) = (yyvsp[-1].expression);
                        }
#line 1914 "y.tab.c" /* yacc.c:1646  */
    break;

  case 8:
#line 232 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("postfix_expression => primary_expression"); 
                            (yyval.array) = new Array();
                            (yyval.array)->symbol = (yyvsp[0].expression)->symbol;
                            (yyval.array)->temp = (yyvsp[0].expression)->symbol;
                            (yyval.array)->subArrayType = (yyvsp[0].expression)->symbol->type;
                        }
#line 1926 "y.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 240 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("postfix_expression => postfix_expression [ expression ]"); 
                            (yyval.array) = new Array();
                            (yyval.array)->symbol = (yyvsp[-3].array)->symbol;
                            (yyval.array)->subArrayType = (yyvsp[-3].array)->subArrayType->arrayType;
                            (yyval.array)->temp = gentemp(SymbolType::INT);

                            if((yyvsp[-3].array)->type == Array::ARRAY) {
                                Symbol *sym = gentemp(SymbolType::INT);
                                emit("*", sym->name, (yyvsp[-1].expression)->symbol->name, toString((yyval.array)->subArrayType->getSize()));
                                emit("+", (yyval.array)->temp->name, (yyvsp[-3].array)->temp->name, sym->name);
                            } else {
                                emit("*", (yyval.array)->temp->name, (yyvsp[-1].expression)->symbol->name, toString((yyval.array)->subArrayType->getSize()));
                            }

                            (yyval.array)->type = Array::ARRAY;
                        }
#line 1948 "y.tab.c" /* yacc.c:1646  */
    break;

  case 10:
#line 258 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("postfix_expression => postfix_expression ( argument_expression_list_opt )"); 
                            (yyval.array) = new Array();
                            (yyval.array)->symbol = gentemp((yyvsp[-3].array)->symbol->type->type);
                            emit("call", (yyval.array)->symbol->name, (yyvsp[-3].array)->symbol->name, toString((yyvsp[-1].parameterCount)));
                        }
#line 1959 "y.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 265 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("postfix_expression => postfix_expression . IDENTIFIER"); }
#line 1965 "y.tab.c" /* yacc.c:1646  */
    break;

  case 12:
#line 267 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("postfix_expression => postfix_expression -> IDENTIFIER"); }
#line 1971 "y.tab.c" /* yacc.c:1646  */
    break;

  case 13:
#line 269 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("postfix_expression => postfix_expression ++");
                            (yyval.array) = new Array();
                            (yyval.array)->symbol = gentemp((yyvsp[-1].array)->symbol->type->type);
                            emit("=", (yyval.array)->symbol->name, (yyvsp[-1].array)->symbol->name);
                            emit("+", (yyvsp[-1].array)->symbol->name, (yyvsp[-1].array)->symbol->name, toString(1)); 
                        }
#line 1983 "y.tab.c" /* yacc.c:1646  */
    break;

  case 14:
#line 277 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("postfix_expression => postfix_expression --"); 
                            (yyval.array) = new Array();
                            (yyval.array)->symbol = gentemp((yyvsp[-1].array)->symbol->type->type);
                            emit("=", (yyval.array)->symbol->name, (yyvsp[-1].array)->symbol->name);
                            emit("-", (yyvsp[-1].array)->symbol->name, (yyvsp[-1].array)->symbol->name, toString(1));
                        }
#line 1995 "y.tab.c" /* yacc.c:1646  */
    break;

  case 15:
#line 285 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("postfix_expression => ( type_name ) { initialiser_list }"); }
#line 2001 "y.tab.c" /* yacc.c:1646  */
    break;

  case 16:
#line 287 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("postfix_expression => ( type_name ) { initialiser_list , }"); }
#line 2007 "y.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 292 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                        yyinfo("argument_expression_list_opt => argument_expression_list"); 
                                        (yyval.parameterCount) = (yyvsp[0].parameterCount);
                                    }
#line 2016 "y.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 297 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                        yyinfo("argument_expression_list_opt => epsilon");
                                        (yyval.parameterCount) = 0;
                                    }
#line 2025 "y.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 305 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                    yyinfo("argument_expression_list => assignment_expression"); 
                                    emit("param", (yyvsp[0].expression)->symbol->name);
                                    (yyval.parameterCount) = 1;
                                }
#line 2035 "y.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 311 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                    yyinfo("argument_expression_list => argument_expression_list , assignment_expression");
                                    emit("param", (yyvsp[0].expression)->symbol->name);
                                    (yyval.parameterCount) = (yyvsp[-2].parameterCount) + 1; 
                                }
#line 2045 "y.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 320 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("unary_expression => postfix_expression"); 
                            (yyval.array) = (yyvsp[0].array);
                        }
#line 2054 "y.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 325 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("unary_expression => ++ unary_expression"); 
                            (yyval.array) = (yyvsp[0].array);
                            emit("+", (yyvsp[0].array)->symbol->name, (yyvsp[0].array)->symbol->name, toString(1));
                        }
#line 2064 "y.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 331 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("unary_expression => -- unary_expression"); 
                            (yyval.array) = (yyvsp[0].array);
                            emit("-", (yyvsp[0].array)->symbol->name, (yyvsp[0].array)->symbol->name, toString(1));
                        }
#line 2074 "y.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 337 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("unary_expression => unary_operator cast_expression");
                            if((yyvsp[-1].unaryOperator) == '&') {
                                (yyval.array) = new Array();
                                (yyval.array)->symbol = gentemp(SymbolType::POINTER);
                                (yyval.array)->symbol->type->arrayType = (yyvsp[0].array)->symbol->type;
                                emit("=&", (yyval.array)->symbol->name, (yyvsp[0].array)->symbol->name);
                            } else if((yyvsp[-1].unaryOperator) == '*') {
                                (yyval.array) = new Array();
                                (yyval.array)->symbol = (yyvsp[0].array)->symbol;
                                (yyval.array)->temp = gentemp((yyvsp[0].array)->symbol->type->arrayType->type);
                                (yyval.array)->type = Array::POINTER;
                                emit("=*", (yyval.array)->temp->name, (yyvsp[0].array)->symbol->name);
                            } else if((yyvsp[-1].unaryOperator) == '+') {
                                (yyval.array) = (yyvsp[0].array);
                            } else { // for -, ~ and !
                                (yyval.array) = new Array();
                                (yyval.array)->symbol = gentemp((yyvsp[0].array)->symbol->type->type);
                                emit(toString((yyvsp[-1].unaryOperator)), (yyval.array)->symbol->name, (yyvsp[0].array)->symbol->name);
                            }
                        }
#line 2100 "y.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 359 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_expression => sizeof unary_expression"); }
#line 2106 "y.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 361 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_expression => sizeof ( type_name )"); }
#line 2112 "y.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 366 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_operator => &"); (yyval.unaryOperator) = '&'; }
#line 2118 "y.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 368 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_operator => *"); (yyval.unaryOperator) = '*'; }
#line 2124 "y.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 370 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_operator => +"); (yyval.unaryOperator) = '+'; }
#line 2130 "y.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 372 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_operator => -"); (yyval.unaryOperator) = '-'; }
#line 2136 "y.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 374 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_operator => ~"); (yyval.unaryOperator) = '~'; }
#line 2142 "y.tab.c" /* yacc.c:1646  */
    break;

  case 32:
#line 376 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("unary_operator => !"); (yyval.unaryOperator) = '!'; }
#line 2148 "y.tab.c" /* yacc.c:1646  */
    break;

  case 33:
#line 381 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("cast_expression => unary_expression"); 
                        (yyval.array) = (yyvsp[0].array);
                    }
#line 2157 "y.tab.c" /* yacc.c:1646  */
    break;

  case 34:
#line 386 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("cast_expression => ( type_name ) cast_expression"); 
                        (yyval.array) = new Array();
                        (yyval.array)->symbol = (yyvsp[0].array)->symbol->convert(currentType);
                    }
#line 2167 "y.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 395 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                    yyinfo("multiplicative_expression => cast_expression"); 
                                    (yyval.expression) = new Expression();
                                    if((yyvsp[0].array)->type == Array::ARRAY) {
                                        (yyval.expression)->symbol = gentemp((yyvsp[0].array)->temp->type->type);
                                        emit("=[]", (yyval.expression)->symbol->name, (yyvsp[0].array)->symbol->name, (yyvsp[0].array)->temp->name);
                                    } else if((yyvsp[0].array)->type == Array::POINTER) {
                                        (yyval.expression)->symbol = (yyvsp[0].array)->temp;
                                    } else {
                                        (yyval.expression)->symbol = (yyvsp[0].array)->symbol;
                                    }
                                }
#line 2184 "y.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 408 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                    yyinfo("multiplicative_expression => multiplicative_expression * cast_expression"); 
                                    if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].array)->symbol)) {
                                        (yyval.expression) = new Expression();
                                        (yyval.expression)->symbol = gentemp((yyvsp[-2].expression)->symbol->type->type);
                                        emit("*", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].array)->symbol->name);
                                    } else {
                                        yyerror("Type error.");
                                    }
                                }
#line 2199 "y.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 419 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                    yyinfo("multiplicative_expression => multiplicative_expression / cast_expression");
                                    if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].array)->symbol)) {
                                        (yyval.expression) = new Expression();
                                        (yyval.expression)->symbol = gentemp((yyvsp[-2].expression)->symbol->type->type);
                                        emit("/", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].array)->symbol->name);
                                    } else {
                                        yyerror("Type error.");
                                    }
                                }
#line 2214 "y.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 430 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                    yyinfo("multiplicative_expression => multiplicative_expression % cast_expression"); 
                                    if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].array)->symbol)) {
                                        (yyval.expression) = new Expression();
                                        (yyval.expression)->symbol = gentemp((yyvsp[-2].expression)->symbol->type->type);
                                        emit("%", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].array)->symbol->name);
                                    } else {
                                        yyerror("Type error.");
                                    }
                                }
#line 2229 "y.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 444 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("additive_expression => multiplicative_expression"); 
                            (yyval.expression) = (yyvsp[0].expression);
                        }
#line 2238 "y.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 449 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("additive_expression => additive_expression + multiplicative_expression"); 
                            if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                (yyval.expression) = new Expression();
                                (yyval.expression)->symbol = gentemp((yyvsp[-2].expression)->symbol->type->type);
                                emit("+", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
#line 2253 "y.tab.c" /* yacc.c:1646  */
    break;

  case 41:
#line 460 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("additive_expression => additive_expression - multiplicative_expression"); 
                            if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                (yyval.expression) = new Expression();
                                (yyval.expression)->symbol = gentemp((yyvsp[-2].expression)->symbol->type->type);
                                emit("-", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
#line 2268 "y.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 474 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("shift_expression => additive_expression");
                            (yyval.expression) = (yyvsp[0].expression);
                        }
#line 2277 "y.tab.c" /* yacc.c:1646  */
    break;

  case 43:
#line 479 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("shift_expression => shift_expression << additive_expression"); 
                            if((yyvsp[0].expression)->symbol->type->type == SymbolType::INT) {
                                (yyval.expression) = new Expression();
                                (yyval.expression)->symbol = gentemp(SymbolType::INT);
                                emit("<<", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
#line 2292 "y.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 490 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("shift_expression => shift_expression >> additive_expression"); 
                            if((yyvsp[0].expression)->symbol->type->type == SymbolType::INT) {
                                (yyval.expression) = new Expression();
                                (yyval.expression)->symbol = gentemp(SymbolType::INT);
                                emit(">>", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
#line 2307 "y.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 504 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("relational_expression => shift_expression"); 
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2316 "y.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 509 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("relational_expression => relational_expression < shift_expression"); 
                                if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                    (yyval.expression) = new Expression();
                                    (yyval.expression)->type = Expression::BOOLEAN;
                                    (yyval.expression)->trueList = makeList(nextInstruction());
			                        (yyval.expression)->falseList = makeList(nextInstruction() + 1);
                                    emit("<", "", (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
#line 2334 "y.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 523 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("relational_expression => relational_expression > shift_expression"); 
                                if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                    (yyval.expression) = new Expression();
                                    (yyval.expression)->type = Expression::BOOLEAN;
                                    (yyval.expression)->trueList = makeList(nextInstruction());
			                        (yyval.expression)->falseList = makeList(nextInstruction() + 1);
                                    emit(">", "", (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
#line 2352 "y.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 537 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("relational_expression => relational_expression <= shift_expression"); 
                                if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                    (yyval.expression) = new Expression();
                                    (yyval.expression)->type = Expression::BOOLEAN;
                                    (yyval.expression)->trueList = makeList(nextInstruction());
			                        (yyval.expression)->falseList = makeList(nextInstruction() + 1);
                                    emit("<=", "", (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
#line 2370 "y.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 551 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("relational_expression => relational_expression >= shift_expression"); 
                                if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                    (yyval.expression) = new Expression();
                                    (yyval.expression)->type = Expression::BOOLEAN;
                                    (yyval.expression)->trueList = makeList(nextInstruction());
			                        (yyval.expression)->falseList = makeList(nextInstruction() + 1);
                                    emit(">=", "", (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
#line 2388 "y.tab.c" /* yacc.c:1646  */
    break;

  case 50:
#line 568 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("equality_expression => relational_expression"); 
                            (yyval.expression) = (yyvsp[0].expression);
                        }
#line 2397 "y.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 573 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("equality_expression => equality_expression == relational_expression"); 
                            if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                (yyvsp[-2].expression)->toInt();
                                (yyvsp[0].expression)->toInt();
                                (yyval.expression) = new Expression();
                                (yyval.expression)->type = Expression::BOOLEAN;
                                (yyval.expression)->trueList = makeList(nextInstruction());
			                    (yyval.expression)->falseList = makeList(nextInstruction() + 1);
                                emit("==", "", (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                emit("goto", "");
                            } else {
                                yyerror("Type error.");
                            }
                        }
#line 2417 "y.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 589 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("equality_expression => equality_expression != relational_expression"); 
                            if(typeCheck((yyvsp[-2].expression)->symbol, (yyvsp[0].expression)->symbol)) {
                                (yyvsp[-2].expression)->toInt();
                                (yyvsp[0].expression)->toInt();
                                (yyval.expression) = new Expression();
                                (yyval.expression)->type = Expression::BOOLEAN;
                                (yyval.expression)->trueList = makeList(nextInstruction());
			                    (yyval.expression)->falseList = makeList(nextInstruction() + 1);
                                emit("!=", "", (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                emit("goto", "");
                            } else {
                                yyerror("Type error.");
                            }
                        }
#line 2437 "y.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 608 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("AND_expression => equality_expression"); 
                        (yyval.expression) = (yyvsp[0].expression);
                    }
#line 2446 "y.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 613 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("AND_expression => AND_expression & equality_expression"); 
                        (yyvsp[-2].expression)->toInt();
                        (yyvsp[0].expression)->toInt();
                        (yyval.expression) = new Expression();
                        (yyval.expression)->type = Expression::NONBOOLEAN;
                        (yyval.expression)->symbol = gentemp(SymbolType::INT);
                        emit("&", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                    }
#line 2460 "y.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 626 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("exclusive_OR_expression => AND_expression"); 
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2469 "y.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 631 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("exclusive_OR_expression => exclusive_OR_expression ^ AND_expression"); 
                                (yyvsp[-2].expression)->toInt();
                                (yyvsp[0].expression)->toInt();
                                (yyval.expression) = new Expression();
                                (yyval.expression)->type = Expression::NONBOOLEAN;
                                (yyval.expression)->symbol = gentemp(SymbolType::INT);
                                emit("^", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                            }
#line 2483 "y.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 644 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("inclusive_OR_expression => exclusive_OR_expression"); 
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2492 "y.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 649 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("inclusive_OR_expression => inclusive_OR_expression | exclusive_OR_expression"); 
                                (yyvsp[-2].expression)->toInt();
                                (yyvsp[0].expression)->toInt();
                                (yyval.expression) = new Expression();
                                (yyval.expression)->type = Expression::NONBOOLEAN;
                                (yyval.expression)->symbol = gentemp(SymbolType::INT);
                                emit("|", (yyval.expression)->symbol->name, (yyvsp[-2].expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                            }
#line 2506 "y.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 661 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    {
            yyinfo("M => epsilon");
            (yyval.instructionNumber) = nextInstruction();
        }
#line 2515 "y.tab.c" /* yacc.c:1646  */
    break;

  case 60:
#line 668 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    {
            yyinfo("N => epsilon");
            (yyval.statement) = new Statement();
            (yyval.statement)->nextList = makeList(nextInstruction());
            emit("goto", "");
        }
#line 2526 "y.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 678 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("logical_AND_expression => inclusive_OR_expression"); 
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2535 "y.tab.c" /* yacc.c:1646  */
    break;

  case 62:
#line 683 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("logical_AND_expression => logical_AND_expression && inclusive_OR_expression");
                                (yyvsp[-3].expression)->toBool();
                                (yyvsp[0].expression)->toBool();
                                (yyval.expression) = new Expression();
                                (yyval.expression)->type = Expression::BOOLEAN;
                                backpatch((yyvsp[-3].expression)->trueList, (yyvsp[-1].instructionNumber));
                                (yyval.expression)->trueList = (yyvsp[0].expression)->trueList;
                                (yyval.expression)->falseList = merge((yyvsp[-3].expression)->falseList, (yyvsp[0].expression)->falseList);
                            }
#line 2550 "y.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 697 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("logical_OR_expression => logical_AND_expression"); 
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2559 "y.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 702 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("logical_OR_expression => logical_OR_expression || logical_AND_expression"); 
                                (yyvsp[-3].expression)->toBool();
                                (yyvsp[0].expression)->toBool();
                                (yyval.expression) = new Expression();
                                (yyval.expression)->type = Expression::BOOLEAN;
                                backpatch((yyvsp[-3].expression)->falseList, (yyvsp[-1].instructionNumber));
                                (yyval.expression)->trueList = merge((yyvsp[-3].expression)->trueList, (yyvsp[0].expression)->trueList);
                                (yyval.expression)->falseList = (yyvsp[0].expression)->falseList;
                            }
#line 2574 "y.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 716 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("conditional_expression => logical_OR_expression"); 
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2583 "y.tab.c" /* yacc.c:1646  */
    break;

  case 66:
#line 721 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("conditional_expression => logical_OR_expression ? expression : conditional_expression"); 
                                (yyval.expression)->symbol = gentemp((yyvsp[-4].expression)->symbol->type->type);
                                emit("=", (yyval.expression)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                list<int> l = makeList(nextInstruction());
                                emit("goto", "");
                                backpatch((yyvsp[-3].statement)->nextList, nextInstruction());
                                emit("=", (yyval.expression)->symbol->name, (yyvsp[-4].expression)->symbol->name);
                                l = merge(l, makeList(nextInstruction()));
                                emit("goto", "");
                                backpatch((yyvsp[-7].statement)->nextList, nextInstruction());
                                (yyvsp[-8].expression)->toBool();
                                backpatch((yyvsp[-8].expression)->trueList, (yyvsp[-5].instructionNumber));
                                backpatch((yyvsp[-8].expression)->falseList, (yyvsp[-1].instructionNumber));
                                backpatch(l, nextInstruction());
                            }
#line 2604 "y.tab.c" /* yacc.c:1646  */
    break;

  case 67:
#line 741 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("assignment_expression => conditional_expression"); 
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2613 "y.tab.c" /* yacc.c:1646  */
    break;

  case 68:
#line 746 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("assignment_expression => unary_expression assignment_operator assignment_expression"); 
                                if((yyvsp[-2].array)->type == Array::ARRAY) {
                                    (yyvsp[0].expression)->symbol = (yyvsp[0].expression)->symbol->convert((yyvsp[-2].array)->subArrayType->type);
                                    emit("[]=", (yyvsp[-2].array)->symbol->name, (yyvsp[-2].array)->temp->name, (yyvsp[0].expression)->symbol->name);
                                } else if((yyvsp[-2].array)->type == Array::POINTER) {
                                    emit("*=", (yyvsp[-2].array)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                } else {
                                    (yyvsp[0].expression)->symbol = (yyvsp[0].expression)->symbol->convert((yyvsp[-2].array)->symbol->type->type);
			                        emit("=", (yyvsp[-2].array)->symbol->name, (yyvsp[0].expression)->symbol->name);
                                }
                                (yyval.expression) = (yyvsp[0].expression);
                            }
#line 2631 "y.tab.c" /* yacc.c:1646  */
    break;

  case 69:
#line 763 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => ="); }
#line 2637 "y.tab.c" /* yacc.c:1646  */
    break;

  case 70:
#line 765 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => *="); }
#line 2643 "y.tab.c" /* yacc.c:1646  */
    break;

  case 71:
#line 767 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => /="); }
#line 2649 "y.tab.c" /* yacc.c:1646  */
    break;

  case 72:
#line 769 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => %="); }
#line 2655 "y.tab.c" /* yacc.c:1646  */
    break;

  case 73:
#line 771 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => += "); }
#line 2661 "y.tab.c" /* yacc.c:1646  */
    break;

  case 74:
#line 773 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => -= "); }
#line 2667 "y.tab.c" /* yacc.c:1646  */
    break;

  case 75:
#line 775 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => <<="); }
#line 2673 "y.tab.c" /* yacc.c:1646  */
    break;

  case 76:
#line 777 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => >>="); }
#line 2679 "y.tab.c" /* yacc.c:1646  */
    break;

  case 77:
#line 779 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => &="); }
#line 2685 "y.tab.c" /* yacc.c:1646  */
    break;

  case 78:
#line 781 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => ^="); }
#line 2691 "y.tab.c" /* yacc.c:1646  */
    break;

  case 79:
#line 783 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("assignment_operator => |="); }
#line 2697 "y.tab.c" /* yacc.c:1646  */
    break;

  case 80:
#line 788 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("expression => assignment_expression"); 
                    (yyval.expression) = (yyvsp[0].expression);
                }
#line 2706 "y.tab.c" /* yacc.c:1646  */
    break;

  case 81:
#line 793 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("expression => expression , assignment_expression"); }
#line 2712 "y.tab.c" /* yacc.c:1646  */
    break;

  case 82:
#line 798 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("constant_expression => conditional_expression"); }
#line 2718 "y.tab.c" /* yacc.c:1646  */
    break;

  case 83:
#line 805 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration => declaration_specifiers init_declarator_list_opt ;"); }
#line 2724 "y.tab.c" /* yacc.c:1646  */
    break;

  case 84:
#line 810 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("init_declarator_list_opt => init_declarator_list"); }
#line 2730 "y.tab.c" /* yacc.c:1646  */
    break;

  case 85:
#line 812 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("init_declarator_list_opt => epsilon"); }
#line 2736 "y.tab.c" /* yacc.c:1646  */
    break;

  case 86:
#line 817 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_specifiers => storage_class_specifier declaration_specifiers_opt"); }
#line 2742 "y.tab.c" /* yacc.c:1646  */
    break;

  case 87:
#line 819 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_specifiers => type_specifier declaration_specifiers_opt"); }
#line 2748 "y.tab.c" /* yacc.c:1646  */
    break;

  case 88:
#line 821 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_specifiers => type_qualifier declaration_specifiers_opt"); }
#line 2754 "y.tab.c" /* yacc.c:1646  */
    break;

  case 89:
#line 823 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_specifiers => function_specifier declaration_specifiers_opt"); }
#line 2760 "y.tab.c" /* yacc.c:1646  */
    break;

  case 90:
#line 828 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_specifiers_opt => declaration_specifiers"); }
#line 2766 "y.tab.c" /* yacc.c:1646  */
    break;

  case 91:
#line 830 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_specifiers_opt => epsilon "); }
#line 2772 "y.tab.c" /* yacc.c:1646  */
    break;

  case 92:
#line 835 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("init_declarator_list => init_declarator"); }
#line 2778 "y.tab.c" /* yacc.c:1646  */
    break;

  case 93:
#line 837 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("init_declarator_list => init_declarator_list , init_declarator"); }
#line 2784 "y.tab.c" /* yacc.c:1646  */
    break;

  case 94:
#line 842 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("init_declarator => declarator"); 
                        (yyval.symbol) = (yyvsp[0].symbol);
                    }
#line 2793 "y.tab.c" /* yacc.c:1646  */
    break;

  case 95:
#line 847 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("init_declarator => declarator = initialiser"); 
                        if((yyvsp[0].symbol)->initialValue != "") 
                            (yyvsp[-2].symbol)->initialValue = (yyvsp[0].symbol)->initialValue;
		                emit("=", (yyvsp[-2].symbol)->name, (yyvsp[0].symbol)->name);
                    }
#line 2804 "y.tab.c" /* yacc.c:1646  */
    break;

  case 96:
#line 857 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("storage_class_specifier => extern"); }
#line 2810 "y.tab.c" /* yacc.c:1646  */
    break;

  case 97:
#line 859 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("storage_class_specifier => static"); }
#line 2816 "y.tab.c" /* yacc.c:1646  */
    break;

  case 98:
#line 861 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("storage_class_specifier => auto"); }
#line 2822 "y.tab.c" /* yacc.c:1646  */
    break;

  case 99:
#line 863 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("storage_class_specifier => register"); }
#line 2828 "y.tab.c" /* yacc.c:1646  */
    break;

  case 100:
#line 868 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("type_specifier => void");
                        currentType = SymbolType::VOID;
                    }
#line 2837 "y.tab.c" /* yacc.c:1646  */
    break;

  case 101:
#line 873 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("type_specifier => char"); 
                        currentType = SymbolType::CHAR;
                    }
#line 2846 "y.tab.c" /* yacc.c:1646  */
    break;

  case 102:
#line 878 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => short"); }
#line 2852 "y.tab.c" /* yacc.c:1646  */
    break;

  case 103:
#line 880 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("type_specifier => int"); 
                        currentType = SymbolType::INT;
                    }
#line 2861 "y.tab.c" /* yacc.c:1646  */
    break;

  case 104:
#line 885 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => long"); }
#line 2867 "y.tab.c" /* yacc.c:1646  */
    break;

  case 105:
#line 887 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("type_specifier => float"); 
                        currentType = SymbolType::FLOAT;
                    }
#line 2876 "y.tab.c" /* yacc.c:1646  */
    break;

  case 106:
#line 892 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => double"); }
#line 2882 "y.tab.c" /* yacc.c:1646  */
    break;

  case 107:
#line 894 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => signed"); }
#line 2888 "y.tab.c" /* yacc.c:1646  */
    break;

  case 108:
#line 896 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => unsigned"); }
#line 2894 "y.tab.c" /* yacc.c:1646  */
    break;

  case 109:
#line 898 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => _Bool"); }
#line 2900 "y.tab.c" /* yacc.c:1646  */
    break;

  case 110:
#line 900 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => _Complex"); }
#line 2906 "y.tab.c" /* yacc.c:1646  */
    break;

  case 111:
#line 902 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => _Imaginary"); }
#line 2912 "y.tab.c" /* yacc.c:1646  */
    break;

  case 112:
#line 904 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_specifier => enum_specifier"); }
#line 2918 "y.tab.c" /* yacc.c:1646  */
    break;

  case 113:
#line 909 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("specifier_qualifier_list => type_specifier specifier_qualifier_list_opt"); }
#line 2924 "y.tab.c" /* yacc.c:1646  */
    break;

  case 114:
#line 911 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("specifier_qualifier_list => type_qualifier specifier_qualifier_list_opt"); }
#line 2930 "y.tab.c" /* yacc.c:1646  */
    break;

  case 115:
#line 916 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("specifier_qualifier_list_opt => specifier_qualifier_list"); }
#line 2936 "y.tab.c" /* yacc.c:1646  */
    break;

  case 116:
#line 918 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("specifier_qualifier_list_opt => epsilon"); }
#line 2942 "y.tab.c" /* yacc.c:1646  */
    break;

  case 117:
#line 923 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("enum_specifier => enum identifier_opt { enumerator_list }"); }
#line 2948 "y.tab.c" /* yacc.c:1646  */
    break;

  case 118:
#line 925 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("enum_specifier => enum identifier_opt { enumerator_list , }"); }
#line 2954 "y.tab.c" /* yacc.c:1646  */
    break;

  case 119:
#line 927 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("enum_specifier => enum IDENTIFIER"); }
#line 2960 "y.tab.c" /* yacc.c:1646  */
    break;

  case 120:
#line 932 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("identifier_opt => IDENTIFIER"); }
#line 2966 "y.tab.c" /* yacc.c:1646  */
    break;

  case 121:
#line 934 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("identifier_opt => epsilon"); }
#line 2972 "y.tab.c" /* yacc.c:1646  */
    break;

  case 122:
#line 939 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("enumerator_list => enumerator"); }
#line 2978 "y.tab.c" /* yacc.c:1646  */
    break;

  case 123:
#line 941 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("enumerator_list => enumerator_list , enumerator"); }
#line 2984 "y.tab.c" /* yacc.c:1646  */
    break;

  case 124:
#line 946 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("enumerator => ENUMERATION_CONSTANT"); }
#line 2990 "y.tab.c" /* yacc.c:1646  */
    break;

  case 125:
#line 948 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("enumerator => ENUMERATION_CONSTANT = constant_expression"); }
#line 2996 "y.tab.c" /* yacc.c:1646  */
    break;

  case 126:
#line 953 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_qualifier => const"); }
#line 3002 "y.tab.c" /* yacc.c:1646  */
    break;

  case 127:
#line 955 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_qualifier => restrict"); }
#line 3008 "y.tab.c" /* yacc.c:1646  */
    break;

  case 128:
#line 957 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_qualifier => volatile"); }
#line 3014 "y.tab.c" /* yacc.c:1646  */
    break;

  case 129:
#line 962 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("function_specifier => inline"); }
#line 3020 "y.tab.c" /* yacc.c:1646  */
    break;

  case 130:
#line 967 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("declarator => pointer direct_declarator"); 
                    SymbolType *it = (yyvsp[-1].symbolType);
                    while(it->arrayType != NULL) 
                        it = it->arrayType;
                    it->arrayType = (yyvsp[0].symbol)->type;
                    (yyval.symbol) = (yyvsp[0].symbol)->update((yyvsp[-1].symbolType));
                }
#line 3033 "y.tab.c" /* yacc.c:1646  */
    break;

  case 131:
#line 976 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("declarator => direct_declarator"); 
                }
#line 3041 "y.tab.c" /* yacc.c:1646  */
    break;

  case 132:
#line 982 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    {
                        if(currentSymbol->nestedTable == NULL) {
                            changeTable(new SymbolTable(""));
                        }
                        else {
                            changeTable(currentSymbol->nestedTable);
                            emit("label", currentTable->name);
                        }
                    }
#line 3055 "y.tab.c" /* yacc.c:1646  */
    break;

  case 133:
#line 995 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("direct_declarator => IDENTIFIER"); 
                            (yyval.symbol) = (yyvsp[0].symbol)->update(new SymbolType(currentType));
                            currentSymbol = (yyval.symbol);
                        }
#line 3065 "y.tab.c" /* yacc.c:1646  */
    break;

  case 134:
#line 1001 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("direct_declarator => ( declarator )"); 
                            (yyval.symbol) = (yyvsp[-1].symbol);
                        }
#line 3074 "y.tab.c" /* yacc.c:1646  */
    break;

  case 135:
#line 1006 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator [ type_qualifier_list assignment_expression ]"); }
#line 3080 "y.tab.c" /* yacc.c:1646  */
    break;

  case 136:
#line 1008 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator [ type_qualifier_list ]"); }
#line 3086 "y.tab.c" /* yacc.c:1646  */
    break;

  case 137:
#line 1010 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("direct_declarator => direct_declarator [ assignment_expression ]"); 
                            SymbolType *it1 = (yyvsp[-3].symbol)->type, *it2 = NULL;
                            while(it1->type == SymbolType::ARRAY) { // go to the base level of a nested type
                                it2 = it1;
                                it1 = it1->arrayType;
                            }
                            if(it2 != NULL) { // nested array case
                                // another level of nesting with base as it1 and width the value of assignment_expression
                                it2->arrayType =  new SymbolType(SymbolType::ARRAY, it1, atoi((yyvsp[-1].expression)->symbol->initialValue.c_str()));	
                                (yyval.symbol) = (yyvsp[-3].symbol)->update((yyvsp[-3].symbol)->type);
                            }
                            else { // fresh array
                                // create a new array with base as type of direct_declarator and width the value of assignment_expression
                                (yyval.symbol) = (yyvsp[-3].symbol)->update(new SymbolType(SymbolType::ARRAY, (yyvsp[-3].symbol)->type, atoi((yyvsp[-1].expression)->symbol->initialValue.c_str())));
                            }
                        }
#line 3108 "y.tab.c" /* yacc.c:1646  */
    break;

  case 138:
#line 1028 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("direct_declarator => direct_declarator [ ]"); 
                            // same as the previous rule, just we dont know the size so put it as 0
                            SymbolType *it1 = (yyvsp[-2].symbol)->type, *it2 = NULL;
                            while(it1->type == SymbolType::ARRAY) { // go to the base level of a nested type
                                it2 = it1;
                                it1 = it1->arrayType;
                            }
                            if(it2 != NULL) { // nested array case
                                // another level of nesting with base as it1 and width the value of assignment_expression
                                it2->arrayType =  new SymbolType(SymbolType::ARRAY, it1, 0);	
                                (yyval.symbol) = (yyvsp[-2].symbol)->update((yyvsp[-2].symbol)->type);
                            }
                            else { // fresh array
                                // create a new array with base as type of direct_declarator and width the value of assignment_expression
                                (yyval.symbol) = (yyvsp[-2].symbol)->update(new SymbolType(SymbolType::ARRAY, (yyvsp[-2].symbol)->type, 0));
                            }
                        }
#line 3131 "y.tab.c" /* yacc.c:1646  */
    break;

  case 139:
#line 1047 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator [ static type_qualifier_list assignment_expression ]"); }
#line 3137 "y.tab.c" /* yacc.c:1646  */
    break;

  case 140:
#line 1049 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator [ assignment_expression ]"); }
#line 3143 "y.tab.c" /* yacc.c:1646  */
    break;

  case 141:
#line 1051 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator [ type_qualifier_list static assignment_expression ]"); }
#line 3149 "y.tab.c" /* yacc.c:1646  */
    break;

  case 142:
#line 1053 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator [ type_qualifier_list * ]"); }
#line 3155 "y.tab.c" /* yacc.c:1646  */
    break;

  case 143:
#line 1055 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator [ * ]"); }
#line 3161 "y.tab.c" /* yacc.c:1646  */
    break;

  case 144:
#line 1057 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("direct_declarator => direct_declarator ( parameter_type_list )"); 
                            // function declaration
                            currentTable->name = (yyvsp[-4].symbol)->name;
                            if((yyvsp[-4].symbol)->type->type != SymbolType::VOID) {
                                // set type of return value
                                currentTable->lookup("return")->update((yyvsp[-4].symbol)->type);
                            }
                            (yyvsp[-4].symbol)->nestedTable = currentTable;
                            currentTable->parent = globalTable;
                            changeTable(globalTable);
                            currentSymbol = (yyval.symbol);
                        }
#line 3179 "y.tab.c" /* yacc.c:1646  */
    break;

  case 145:
#line 1071 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("direct_declarator => direct_declarator ( identifier_list )"); }
#line 3185 "y.tab.c" /* yacc.c:1646  */
    break;

  case 146:
#line 1073 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("direct_declarator => direct_declarator ( )"); 
                            // same as the previous rule
                            currentTable->name = (yyvsp[-3].symbol)->name;
                            if((yyvsp[-3].symbol)->type->type != SymbolType::VOID) {
                                // set type of return value
                                currentTable->lookup("return")->update((yyvsp[-3].symbol)->type);
                            }
                            (yyvsp[-3].symbol)->nestedTable = currentTable;
                            currentTable->parent = globalTable;
                            changeTable(globalTable);
                            currentSymbol = (yyval.symbol);
                        }
#line 3203 "y.tab.c" /* yacc.c:1646  */
    break;

  case 147:
#line 1090 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_qualifier_list_opt => type_qualifier_list"); }
#line 3209 "y.tab.c" /* yacc.c:1646  */
    break;

  case 148:
#line 1092 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_qualifier_list_opt => epsilon"); }
#line 3215 "y.tab.c" /* yacc.c:1646  */
    break;

  case 149:
#line 1111 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                yyinfo("pointer => * type_qualifier_list_opt"); 
                // fresh pointer
                (yyval.symbolType) = new SymbolType(SymbolType::POINTER);
            }
#line 3225 "y.tab.c" /* yacc.c:1646  */
    break;

  case 150:
#line 1117 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                yyinfo("pointer => * type_qualifier_list_opt pointer"); 
                // nested pointer
                (yyval.symbolType) = new SymbolType(SymbolType::POINTER, (yyvsp[0].symbolType));
            }
#line 3235 "y.tab.c" /* yacc.c:1646  */
    break;

  case 151:
#line 1126 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_qualifier_list => type_qualifier"); }
#line 3241 "y.tab.c" /* yacc.c:1646  */
    break;

  case 152:
#line 1128 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_qualifier_list => type_qualifier_list type_qualifier"); }
#line 3247 "y.tab.c" /* yacc.c:1646  */
    break;

  case 153:
#line 1133 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("parameter_type_list => parameter_list"); }
#line 3253 "y.tab.c" /* yacc.c:1646  */
    break;

  case 154:
#line 1135 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("parameter_type_list => parameter_list , ..."); }
#line 3259 "y.tab.c" /* yacc.c:1646  */
    break;

  case 155:
#line 1140 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("parameter_list => parameter_declaration"); }
#line 3265 "y.tab.c" /* yacc.c:1646  */
    break;

  case 156:
#line 1142 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("parameter_list => parameter_list , parameter_declaration"); }
#line 3271 "y.tab.c" /* yacc.c:1646  */
    break;

  case 157:
#line 1147 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("parameter_declaration => declaration_specifiers declarator"); }
#line 3277 "y.tab.c" /* yacc.c:1646  */
    break;

  case 158:
#line 1149 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("parameter_declaration => declaration_specifiers"); }
#line 3283 "y.tab.c" /* yacc.c:1646  */
    break;

  case 159:
#line 1154 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("identifier_list => IDENTIFIER"); }
#line 3289 "y.tab.c" /* yacc.c:1646  */
    break;

  case 160:
#line 1156 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("identifier_list => identifier_list , IDENTIFIER"); }
#line 3295 "y.tab.c" /* yacc.c:1646  */
    break;

  case 161:
#line 1161 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("type_name => specifier_qualifier_list"); }
#line 3301 "y.tab.c" /* yacc.c:1646  */
    break;

  case 162:
#line 1166 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("initialiser => assignment_expression"); 
                    (yyval.symbol) = (yyvsp[0].expression)->symbol;
                }
#line 3310 "y.tab.c" /* yacc.c:1646  */
    break;

  case 163:
#line 1171 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("initialiser => { initialiser_list }"); }
#line 3316 "y.tab.c" /* yacc.c:1646  */
    break;

  case 164:
#line 1173 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("initialiser => { initialiser_list , }"); }
#line 3322 "y.tab.c" /* yacc.c:1646  */
    break;

  case 165:
#line 1178 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("initialiser_list => designation_opt initialiser"); }
#line 3328 "y.tab.c" /* yacc.c:1646  */
    break;

  case 166:
#line 1180 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("initialiser_list => initialiser_list , designation_opt initialiser"); }
#line 3334 "y.tab.c" /* yacc.c:1646  */
    break;

  case 167:
#line 1185 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("designation_opt => designation"); }
#line 3340 "y.tab.c" /* yacc.c:1646  */
    break;

  case 168:
#line 1187 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("designation_opt => epsilon"); }
#line 3346 "y.tab.c" /* yacc.c:1646  */
    break;

  case 169:
#line 1192 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("designation => designator_list ="); }
#line 3352 "y.tab.c" /* yacc.c:1646  */
    break;

  case 170:
#line 1197 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("designator_list => designator"); }
#line 3358 "y.tab.c" /* yacc.c:1646  */
    break;

  case 171:
#line 1199 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("designator_list => designator_list designator"); }
#line 3364 "y.tab.c" /* yacc.c:1646  */
    break;

  case 172:
#line 1204 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("designator => [ constant_expression ]"); }
#line 3370 "y.tab.c" /* yacc.c:1646  */
    break;

  case 173:
#line 1206 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("designator => . IDENTIFIER"); }
#line 3376 "y.tab.c" /* yacc.c:1646  */
    break;

  case 174:
#line 1213 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("statement => labeled_statement"); }
#line 3382 "y.tab.c" /* yacc.c:1646  */
    break;

  case 175:
#line 1215 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("statement => compound_statement");
                    (yyval.statement) = (yyvsp[0].statement); 
                }
#line 3391 "y.tab.c" /* yacc.c:1646  */
    break;

  case 176:
#line 1220 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("statement => expression_statement"); 
                    (yyval.statement) = new Statement();
                    (yyval.statement)->nextList = (yyvsp[0].expression)->nextList;
                }
#line 3401 "y.tab.c" /* yacc.c:1646  */
    break;

  case 177:
#line 1226 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("statement => selection_statement"); 
                    (yyval.statement) = (yyvsp[0].statement);
                }
#line 3410 "y.tab.c" /* yacc.c:1646  */
    break;

  case 178:
#line 1231 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("statement => iteration_statement"); 
                    (yyval.statement) = (yyvsp[0].statement);
                }
#line 3419 "y.tab.c" /* yacc.c:1646  */
    break;

  case 179:
#line 1236 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("statement => jump_statement"); 
                    (yyval.statement) = (yyvsp[0].statement);
                }
#line 3428 "y.tab.c" /* yacc.c:1646  */
    break;

  case 180:
#line 1244 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("labeled_statement => IDENTIFIER : statement"); }
#line 3434 "y.tab.c" /* yacc.c:1646  */
    break;

  case 181:
#line 1246 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("labeled_statement => case constant_expression : statement"); }
#line 3440 "y.tab.c" /* yacc.c:1646  */
    break;

  case 182:
#line 1248 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("labeled_statement => default : statement"); }
#line 3446 "y.tab.c" /* yacc.c:1646  */
    break;

  case 183:
#line 1252 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    {
                        string name = currentTable->name + "_" + toString(tableCount);
                        tableCount++;
                        Symbol *s = currentTable->lookup(name); // create new entry in symbol table
                        s->nestedTable = new SymbolTable(name, currentTable);
                        s->type = new SymbolType(SymbolType::BLOCK);
                        currentSymbol = s;
                    }
#line 3459 "y.tab.c" /* yacc.c:1646  */
    break;

  case 184:
#line 1264 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("compound_statement => { block_item_list_opt }"); 
                            (yyval.statement) = (yyvsp[-1].statement);
                            changeTable(currentTable->parent);
                        }
#line 3469 "y.tab.c" /* yacc.c:1646  */
    break;

  case 185:
#line 1273 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("block_item_list_opt => block_item_list"); 
                            (yyval.statement) = (yyvsp[0].statement);
                        }
#line 3478 "y.tab.c" /* yacc.c:1646  */
    break;

  case 186:
#line 1278 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("block_item_list_opt => epsilon"); 
                            (yyval.statement) = new Statement();
                        }
#line 3487 "y.tab.c" /* yacc.c:1646  */
    break;

  case 187:
#line 1286 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    {
                        yyinfo("block_item_list => block_item"); 
                        (yyval.statement) = (yyvsp[0].statement);
                    }
#line 3496 "y.tab.c" /* yacc.c:1646  */
    break;

  case 188:
#line 1291 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("block_item_list => block_item_list block_item"); 
                        (yyval.statement) = (yyvsp[0].statement);
                        // after completion of block_item_list(1) we move to block_item(3)
                        backpatch((yyvsp[-2].statement)->nextList,(yyvsp[-1].instructionNumber));
                    }
#line 3507 "y.tab.c" /* yacc.c:1646  */
    break;

  case 189:
#line 1301 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("block_item => declaration"); 
                    (yyval.statement) = new Statement();
                }
#line 3516 "y.tab.c" /* yacc.c:1646  */
    break;

  case 190:
#line 1306 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                    yyinfo("block_item => statement"); 
                    (yyval.statement) = (yyvsp[0].statement);
                }
#line 3525 "y.tab.c" /* yacc.c:1646  */
    break;

  case 191:
#line 1314 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                                yyinfo("expression_statement => expression_opt ;"); 
                                (yyval.expression) = (yyvsp[-1].expression);
                            }
#line 3534 "y.tab.c" /* yacc.c:1646  */
    break;

  case 192:
#line 1322 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("expression_opt => expression"); 
                        (yyval.expression) = (yyvsp[0].expression);
                    }
#line 3543 "y.tab.c" /* yacc.c:1646  */
    break;

  case 193:
#line 1327 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("expression_opt => epsilon"); 
                        (yyval.expression) = new Expression();
                    }
#line 3552 "y.tab.c" /* yacc.c:1646  */
    break;

  case 194:
#line 1335 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("selection_statement => if ( expression ) statement"); 
                            (yyval.statement) = new Statement();
                            (yyvsp[-5].expression)->toBool();
                            backpatch((yyvsp[-4].statement)->nextList, nextInstruction());
                            backpatch((yyvsp[-5].expression)->trueList, (yyvsp[-2].instructionNumber));
                            (yyval.statement)->nextList = merge((yyvsp[0].statement)->nextList, merge((yyvsp[-5].expression)->falseList, (yyvsp[-1].statement)->nextList));
                        }
#line 3565 "y.tab.c" /* yacc.c:1646  */
    break;

  case 195:
#line 1344 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("selection_statement => if ( expression ) statement else statement"); 
                            (yyval.statement) = new Statement();
                            (yyvsp[-8].expression)->toBool();
                            backpatch((yyvsp[-7].statement)->nextList, nextInstruction());
                            backpatch((yyvsp[-8].expression)->trueList, (yyvsp[-5].instructionNumber));
                            backpatch((yyvsp[-8].expression)->falseList, (yyvsp[-1].instructionNumber));
                            (yyval.statement)->nextList = merge((yyvsp[0].statement)->nextList, merge((yyvsp[-4].statement)->nextList, (yyvsp[-3].statement)->nextList));
                        }
#line 3579 "y.tab.c" /* yacc.c:1646  */
    break;

  case 196:
#line 1354 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("selection_statement => switch ( expression ) statement"); }
#line 3585 "y.tab.c" /* yacc.c:1646  */
    break;

  case 197:
#line 1359 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("iteration_statement => while ( expression ) statement"); 
                            (yyval.statement) = new Statement();
                            (yyvsp[-3].expression)->toBool();
                            backpatch((yyvsp[0].statement)->nextList, (yyvsp[-5].instructionNumber));
                            backpatch((yyvsp[-3].expression)->trueList, (yyvsp[-1].instructionNumber));
                            (yyval.statement)->nextList = (yyvsp[-3].expression)->falseList;
                            emit("goto", toString((yyvsp[-5].instructionNumber)));
                        }
#line 3599 "y.tab.c" /* yacc.c:1646  */
    break;

  case 198:
#line 1369 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("iteration_statement => do statement while ( expression ) ;"); 
                            (yyval.statement) = new Statement();
                            (yyvsp[-2].expression)->toBool();
                            backpatch((yyvsp[-2].expression)->trueList, (yyvsp[-7].instructionNumber));
                            backpatch((yyvsp[-6].statement)->nextList, (yyvsp[-5].instructionNumber));
                            (yyval.statement)->nextList = (yyvsp[-2].expression)->falseList;
                        }
#line 3612 "y.tab.c" /* yacc.c:1646  */
    break;

  case 199:
#line 1378 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("iteration_statement => for ( expression_opt ; expression_opt ; expression_opt ) statement"); 
                            (yyval.statement) = new Statement();
                            (yyvsp[-7].expression)->toBool();
                            backpatch((yyvsp[-7].expression)->trueList, (yyvsp[-1].instructionNumber));
                            backpatch((yyvsp[-3].statement)->nextList, (yyvsp[-8].instructionNumber));
                            backpatch((yyvsp[0].statement)->nextList, (yyvsp[-5].instructionNumber));
                            emit("goto", toString((yyvsp[-5].instructionNumber)));
                            (yyval.statement)->nextList = (yyvsp[-7].expression)->falseList;
                        }
#line 3627 "y.tab.c" /* yacc.c:1646  */
    break;

  case 200:
#line 1389 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("iteration_statement => for ( declaration expression_opt ; expression_opt ) statement"); }
#line 3633 "y.tab.c" /* yacc.c:1646  */
    break;

  case 201:
#line 1394 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("jump_statement => goto IDENTIFIER ;"); }
#line 3639 "y.tab.c" /* yacc.c:1646  */
    break;

  case 202:
#line 1396 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("jump_statement => continue ;"); }
#line 3645 "y.tab.c" /* yacc.c:1646  */
    break;

  case 203:
#line 1398 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("jump_statement => break ;"); }
#line 3651 "y.tab.c" /* yacc.c:1646  */
    break;

  case 204:
#line 1400 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                        yyinfo("jump_statement => return expression_opt ;"); 
                        (yyval.statement) = new Statement();
                        if((yyvsp[-1].expression)->symbol != NULL) {
                            emit("return", (yyvsp[-1].expression)->symbol->name);
                        } else {
                            emit("return", "");
                        }
                    }
#line 3665 "y.tab.c" /* yacc.c:1646  */
    break;

  case 205:
#line 1415 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("translation_unit => external_declaration"); }
#line 3671 "y.tab.c" /* yacc.c:1646  */
    break;

  case 206:
#line 1417 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("translation_unit => translation_unit external_declaration"); }
#line 3677 "y.tab.c" /* yacc.c:1646  */
    break;

  case 207:
#line 1422 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("external_declaration => function_definition"); }
#line 3683 "y.tab.c" /* yacc.c:1646  */
    break;

  case 208:
#line 1424 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("external_declaration => declaration"); }
#line 3689 "y.tab.c" /* yacc.c:1646  */
    break;

  case 209:
#line 1430 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { 
                            yyinfo("function_definition => declaration_specifiers declarator declaration_list_opt compound_statement"); 
                            tableCount = 0;
                            changeTable(globalTable);
                        }
#line 3699 "y.tab.c" /* yacc.c:1646  */
    break;

  case 210:
#line 1439 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_list_opt => declaration_list"); }
#line 3705 "y.tab.c" /* yacc.c:1646  */
    break;

  case 211:
#line 1441 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_list_opt => epsilon"); }
#line 3711 "y.tab.c" /* yacc.c:1646  */
    break;

  case 212:
#line 1446 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_list => declaration"); }
#line 3717 "y.tab.c" /* yacc.c:1646  */
    break;

  case 213:
#line 1448 "ass5_19CS30031_19CS10070.y" /* yacc.c:1646  */
    { yyinfo("declaration_list => declaration_list declaration"); }
#line 3723 "y.tab.c" /* yacc.c:1646  */
    break;


#line 3727 "y.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 1451 "ass5_19CS30031_19CS10070.y" /* yacc.c:1906  */


void yyerror(string s) {
    printf("ERROR [Line %d] : %s\n", lineCount, s.c_str());
}

void yyinfo(string s) {
    printf("INFO [Line %d] : %s\n", lineCount, s.c_str());
}
