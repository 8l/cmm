$debug 1
print('testando literais e strings')
-- arquivo de testes de literais e nomes grandes --

dostring("x = 'a\0a'")
assert(x == 'a\0a' and strlen(x) == 3)

-- sequencias de escapes
assert('\n\"\'\\' == [[
"'\]])

-- assume ASCII just for tests:
--assert("\09912" == 'c12')
--assert("\99ab" == 'cab')
--assert("\099" == '\99')
--assert("\099\n" == 'c\10')
--assert('\0\0\0alo' == '\0' .. '\0\0' .. 'alo')

-- grandes variaveis

var = strrep('a', 15000)
prog = format("%s = 5", var)
dostring(prog)
assert(getglobal(var) == 5)
var = nil
print('+')

-- escapes --
assert("\n\t" == [[
	]])
assert([[
 $debug]] == "\n $debug")
assert([[ [ ]] ~= [[ ] ]])
-- grandes strings --
b = "001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789"
assert(strlen(b) == 960)
prog = [[
print('+')

a1 = [["isto e' um string com v�rias 'aspas'"]]
a2 = "'aspas'"

assert(strfind(a1, a2) == 31)
p1, p2 = strfind(a1, a2)
assert(p2 == 37)
print('+')

a1 = [[temp = [[um valor qualquer]]; ]]
dostring(a1)
assert(temp == 'um valor qualquer')
-- grandes strings --
b = "001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789001234567890123456789012345678901234567891234567890123456789012345678901234567890012345678901234567890123456789012345678912345678901234567890123456789012345678900123456789012345678901234567890123456789123456789012345678901234567890123456789"
assert(strlen(b) == 960)
print('+')

a = [[00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
00123456789012345678901234567890123456789123456789012345678901234567890123456789
]]
assert(strlen(a) == 1863)
assert(strsub(a, 1, 40) == strsub(b, 1, 40))
x = 1
]]

print('+')
x = nil
dostring(prog)
assert(x)

prog = nil
a = nil
b = nil

print('OK')
