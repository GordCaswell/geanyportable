# For complete documentation of this file, please see Geany's main documentation
[styling]
# foreground;background;bold;italic
default=default
comment=comment
commentline=comment
commentdoc=commentdoc
number=number
word=word
word2=word2
string=string
character=string
uuid=0x404080
preprocessor=preprocessor
operator=operator
identifier=default
stringeol=stringeol
# @"verbatim"
verbatim=0x101030
# (/regex/)
regex=0x105090
commentlinedoc=commentdoc,bold
commentdockeyword=commentdoc,bold,italic
commentdockeyworderror=commentdoc
globalclass=type
# whether arguments of preprocessor commands should be styled (only first argument is used)
# 1 to enable, 0 to disable
styling_within_preprocessor=1;0;false;false

[keywords]
# all items must be in one line
primary=if else switch case default for while do discard return break continue true false struct void bool int uint float vec2 vec3 vec4 ivec2 ivec3 ivec4 bvec2 bvec3 bvec4 uvec2 uvec3 uvec4 mat2 mat3 mat4 mat2x2 mat2x3 mat2x4 mat3x2 mat3x3 mat3x4 mat4x2 mat4x3 mat4x4 sampler1D sampler2D sampler3D samplerCube sampler1DShadow sampler2DShadow sampler1DArray sampler2DArray sampler1DArrayShadow sampler2DArrayShadow isampler1D isampler2D isampler3D isamplerCube isampler1DArray isampler2DArray usampler1D usampler2D usampler3D usamplerCube usampler1DArray usampler2DArray const invariant centroid in out inout attribute uniform varying smooth flat noperspective highp mediump lowp
secondary=
# these are some doxygen keywords (incomplete)
docComment=attention author brief bug class code date def enum example exception file fn namespace note param remarks return returns see since struct throw todo typedef var version warning union

[lexer_properties]
styling.within.preprocessor=1
preprocessor.symbol.$(file.patterns.cpp)=#
preprocessor.start.$(file.patterns.cpp)=if ifdef ifndef
preprocessor.middle.$(file.patterns.cpp)=else elif
preprocessor.end.$(file.patterns.cpp)=endif

[settings]
lexer_filetype=C

# default extension used when saving files
#extension=glsl

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# if only single comment char is supported like # in this file, leave comment_close blank
comment_open=//
comment_close=
# this is an alternative way, so multiline comments are used
#comment_open=/*
#comment_close=*/

# set to false if a comment character/string should start at column 0 of a line, true uses any
# indentation of the line, e.g. setting to true causes the following on pressing CTRL+d
	#command_example();
# setting to false would generate this
#	command_example();
# This setting works only for single line comments
comment_use_indent=true

# context action command (please see Geany's main documentation for details)
context_action_cmd=

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
#compiler=
#linker=
#run_cmd=


