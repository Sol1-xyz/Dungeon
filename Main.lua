spawn(function()
    local function bypassWalkSpeed()
        if getgenv().executed then
            print("Walkspeed Already Bypassed - Applying Settings Changes")
            if not getgenv().Enabled then
                return
            end
        else
            getgenv().executed = true
            print("Walkspeed Bypassed")
    
            local mt = getrawmetatable(game)
            setreadonly(mt, false)
    
            local oldindex = mt.__index
            mt.__index = newcclosure(function(self, b)
                if b == 'WalkSpeed' then
                    return 16
                end
                return oldindex(self, b)
            end)
        end
    end
    
    bypassWalkSpeed()
    end)
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v87=0;local v88;while true do if (v87==0) then v88=v2(v0(v30,16));if v19 then local v120=0;local v121;while true do if (v120==1) then return v121;end if (v120==0) then v121=v5(v88,v19);v19=nil;v120=1;end end else return v88;end break;end end end end);local function v20(v31,v32,v33) if v33 then local v89=(v31/((5 -3)^(v32-(2 -1))))%((3 -1)^(((v33-((1639 -(1523 + 114)) -1)) -(v32-(620 -(555 + 64)))) + (932 -(857 + 74)))) ;return v89-(v89%(569 -(367 + 181 + 20))) ;else local v90=(929 -(214 + 713))^(v32-(1 + 0)) ;return (((v31%(v90 + v90))>=v90) and (1 + 0)) or (877 -(282 + 595)) ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + (2 -0) ;return (v36 * (1321 -(68 + 997))) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + (1274 -(222 + 4 + 1044)) ;return (v40 * 16777216) + (v39 * (285370 -219834)) + (v38 * (373 -(32 + 85))) + v37 ;end local function v24() local v41=0 + 0 ;local v42;local v43;local v44;local v45;local v46;local v47;while true do if (v41==0) then v42=v23();v43=v23();v41=958 -(892 + 65) ;end if (v41==(7 -4)) then if (v46==((0 + 0) -0)) then if (v45==(0 -0)) then return v47 * 0 ;else v46=1;v44=350 -(87 + 263) ;end elseif (v46==(2227 -(67 + (904 -(368 + 423))))) then return ((v45==((0 -0) + 0)) and (v47 * ((2 -1)/(0 + 0)))) or (v47 * NaN) ;end return v8(v47,v46-(4065 -(3060 -(10 + 8))) ) * (v44 + (v45/((954 -((3084 -2282) + 150))^(139 -87)))) ;end if (v41==(3 -1)) then v46=v20(v43,16 + 5 ,1028 -(915 + 82) );v47=((v20(v43,32)==(443 -(416 + 26))) and  -1) or (2 -1) ;v41=(6 -4) + 1 ;end if (v41==(1 -0)) then v44=1188 -(1069 + 118) ;v45=(v20(v43,2 -1 ,43 -23 ) * (2^(6 + 26))) + v42 ;v41=3 -(1 + 0) ;end end end local function v25(v48) local v49;if  not v48 then local v91=0 -0 ;while true do if (v91==(438 -(145 + 293))) then v48=v23();if (v48==(430 -(14 + 30 + 386))) then return "";end break;end end end v49=v3(v16,v18,(v18 + v48) -1 );v18=v18 + v48 ;local v50={};for v66=1487 -(998 + 488) , #v49 do v50[v66]=v2(v1(v3(v49,v66,v66)));end return v6(v50);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v51=(function() return function(v92,v93,v94,v95,v96,v97,v98,v99) local v92=(function() return 0 -0 ;end)();local v93=(function() return;end)();local v94=(function() return;end)();while true do if (v92== #",") then if (v93== #".") then v94=(function() return v95()~=0 ;end)();elseif (v93==2) then v94=(function() return v96();end)();elseif (v93~= #"gha") then else v94=(function() return v97();end)();end v98[v99]=(function() return v94;end)();break;end if (v92==(374 -(123 + 251))) then local v112=(function() return 0;end)();local v113=(function() return;end)();while true do if (v112==0) then v113=(function() return 0;end)();while true do if (v113~=1) then else v92=(function() return  #" ";end)();break;end if (v113==(0 -0)) then v93=(function() return v95();end)();v94=(function() return nil;end)();v113=(function() return 699 -(208 + 490) ;end)();end end break;end end end end return v92,v93,v94,v95,v96,v97,v98,v99;end;end)();local v52=(function() return function(v100,v101,v102) local v103=(function() return 0 + 0 ;end)();local v104=(function() return;end)();while true do if (v103~=0) then else v104=(function() return 0;end)();while true do if (v104==(0 + 0)) then local v122=(function() return 836 -(660 + 176) ;end)();while true do if (v122==(0 + 0)) then v100[v101-#"!" ]=(function() return v102();end)();return v100,v101,v102;end end end end break;end end end;end)();local v53=(function() return {};end)();local v54=(function() return {};end)();local v55=(function() return {};end)();local v56=(function() return {v53,v54,nil,v55};end)();local v57=(function() return v23();end)();local v58=(function() return {};end)();for v68= #"[",v57 do FlatIdent_6225E,Type,Cons,v21,v24,v25,v58,v68=(function() return v51(FlatIdent_6225E,Type,Cons,v21,v24,v25,v58,v68);end)();end v56[ #"-19"]=(function() return v21();end)();for v69= #">",v23() do local v70=(function() return 0;end)();local v71=(function() return;end)();while true do if (v70==(675 -(534 + 141))) then v71=(function() return v21();end)();if (v20(v71, #"]", #"\\")~=0) then else local v116=(function() return 0;end)();local v117=(function() return;end)();local v118=(function() return;end)();local v119=(function() return;end)();while true do if (3==v116) then if (v20(v118, #"91(", #"asd")~= #",") then else v119[ #".dev"]=(function() return v58[v119[ #"0313"]];end)();end v53[v69]=(function() return v119;end)();break;end if (v116==1) then local v124=(function() return 0;end)();while true do if (v124==0) then v119=(function() return {v22(),v22(),nil,nil};end)();if (v117==(0 + 0)) then local v130=(function() return 0 + 0 ;end)();local v131=(function() return;end)();while true do if (v130~=(0 -0)) then else v131=(function() return 0;end)();while true do if (v131==(0 -0)) then v119[ #"19("]=(function() return v22();end)();v119[ #"asd1"]=(function() return v22();end)();break;end end break;end end elseif (v117== #"~") then v119[ #"19("]=(function() return v23();end)();elseif (v117==2) then v119[ #"asd"]=(function() return v23() -((5 -3)^(9 + 7)) ;end)();elseif (v117== #"xxx") then local v324=(function() return 0 + 0 ;end)();local v325=(function() return;end)();while true do if (v324==0) then v325=(function() return 396 -(115 + 281) ;end)();while true do if (v325==0) then v119[ #"-19"]=(function() return v23() -((4 -2)^(14 + 2)) ;end)();v119[ #"asd1"]=(function() return v22();end)();break;end end break;end end end v124=(function() return 2 -1 ;end)();end if (v124==(3 -2)) then v116=(function() return 869 -(550 + 317) ;end)();break;end end end if (v116~=2) then else if (v20(v118, #"!", #"[")== #"\\") then v119[2]=(function() return v58[v119[2]];end)();end if (v20(v118,2 -0 ,2 -0 )== #",") then v119[ #"-19"]=(function() return v58[v119[ #"xnx"]];end)();end v116=(function() return 3;end)();end if (v116==(0 -0)) then local v125=(function() return 285 -(134 + 151) ;end)();while true do if (v125==1) then v116=(function() return 1666 -(970 + 695) ;end)();break;end if (v125~=(0 -0)) then else v117=(function() return v20(v71,1992 -(582 + 1408) , #"xxx");end)();v118=(function() return v20(v71, #"asd1",6);end)();v125=(function() return 3 -2 ;end)();end end end end end break;end end end for v72= #"~",v23() do v54,v72,v28=(function() return v52(v54,v72,v28);end)();end return v56;end local function v29(v60,v61,v62) local v63=v60[(1 + 0) -0 ];local v64=v60[7 -5 ];local v65=v60[1827 -(1195 + 629) ];return function(...) local v73=v63;local v74=v64;local v75=v65;local v76=v27;local v77=552 -((188 -105) + 468) ;local v78= -(1 -0);local v79={};local v80={...};local v81=v12("#",...) -(781 -(162 + (1569 -(783 + 168)))) ;local v82={};local v83={};for v105=0 -0 ,v81 do if (v105>=v75) then v79[v105-v75 ]=v80[v105 + (3 -2) + 0 ];else v83[v105]=v80[v105 + 1 + 0 ];end end local v84=(v81-v75) + (1 -(0 + 0)) ;local v85;local v86;while true do local v106=0 -0 ;while true do if (v106==1) then if ((v86<=(4 + 38)) or (3543<=3418)) then if ((3574<=4397) and (v86<=(1656 -(1373 + 263)))) then if (v86<=(1009 -(451 + 549))) then if ((3135>1330) and (v86<=(6 -2))) then if ((v86<=(1 + 0)) or (3900<=3641)) then if (v86==(0 -0)) then local v133=1772 -(1733 + 39) ;local v134;local v135;local v136;while true do if ((1724==1724) and (v133==(1 -0))) then v136=v83[v134 + (1386 -(746 + (949 -(309 + 2)))) ];if ((455<=1282) and (v136>(0 + 0))) then if (v135>v83[v134 + (1 -0) ]) then v77=v85[3 -0 ];else v83[v134 + (344 -(218 + 123)) ]=v135;end elseif ((1983<=2876) and (v135<v83[v134 + (1582 -(1535 + 46)) ])) then v77=v85[3 + 0 ];else v83[v134 + (2 -1) + 2 ]=v135;end break;end if ((v133==(560 -(306 + 254))) or (1831>3428)) then v134=v85[(2531 -(1090 + 122)) -(1114 + 66 + 137) ];v135=v83[v134];v133=1 + (0 -0) ;end end else local v137=v85[1 + 1 ];local v138=v85[7 -3 ];local v139=v137 + (665 -(174 + 489)) ;local v140={v83[v137](v83[v137 + (1468 -(899 + 568)) ],v83[v139])};for v211=1 + 0 ,v138 do v83[v139 + v211 ]=v140[v211];end local v141=v140[2 -1 ];if ((4606<4876) and v141) then v83[v139]=v141;v77=v85[606 -(268 + (1453 -(628 + 490))) ];else v77=v77 + (291 -(60 + 230)) ;end end elseif (v86<=(574 -(426 + 146))) then v83[v85[8 -6 ]][v85[7 -4 ]]=v83[v85[1 + 3 ]];elseif ((v86>(1459 -(282 + 1174))) or (1442>2640)) then local v237=v85[(146 + 667) -(569 + (598 -356)) ];v83[v237]=v83[v237](v13(v83,v237 + (2 -1) ,v85[1 + 2 ]));else v83[v85[1026 -(706 + (1453 -1135)) ]]=v83[v85[1254 -(721 + 530) ]]%v83[v85[1275 -(945 + 326) ]] ;end elseif (v86<=(14 -8)) then if ((136<3668) and (v86>(5 + 0))) then local v144=v85[702 -((1045 -(431 + 343)) + 429) ];local v145=v83[v85[3 + 0 ]];v83[v144 + (1501 -(1408 + 92)) ]=v145;v83[v144]=v145[v85[527 -(423 + 100) ]];else local v149=v85[1088 -(461 + 625) ];v83[v149]=v83[v149]();end elseif (v86<=(1295 -(993 + 295))) then for v214=v85[1 + (1 -0) ],v85[1174 -(418 + 753) ] do v83[v214]=nil;end elseif ((v86>(4 + 4)) or (1784>4781)) then v83[v85[2 + 0 ]]=v29(v74[v85[1 + 2 ]],nil,v62);else v77=v85[(2 -1) + 2 ];end elseif (v86<=(4 + 10)) then if ((v86<=11) or (4922<=1147)) then if (v86==10) then local v151=529 -(321 + 85 + 123) ;local v152;local v153;local v154;local v155;while true do if (v151==(1770 -(1749 + 3 + 17))) then v78=(v154 + v152) -1 ;v155=0;v151=1 + 1 ;end if (v151==(1322 -(1249 + 73))) then v152=v85[1 + 1 ];v153,v154=v76(v83[v152](v13(v83,v152 + (1146 -(466 + 679)) ,v85[(1701 -(556 + 1139)) -3 ])));v151=2 -1 ;end if ((4585>3298) and (v151==(1902 -(106 + 1794)))) then for v363=v152,v78 do v155=v155 + 1 + 0 ;v83[v363]=v153[v155];end break;end end else v83[v85[1 + 1 ]]={};end elseif (v86<=(35 -23)) then local v157=0 -0 ;local v158;while true do if (v157==(114 -(4 + 110))) then v158=v85[(601 -(6 + 9)) -(57 + 527) ];v83[v158](v13(v83,v158 + (1428 -(41 + 254 + 1132)) ,v78));break;end end elseif (v86>(1825 -(663 + 630 + 519))) then v83[v85[105 -(17 + 86) ]]=v83[v85[172 -(28 + 141) ]][v85[4]];else local v244=0 -(0 + 0) ;local v245;while true do if ((0 + 0)==v244) then v245=v85[3 -1 ];v83[v245]=v83[v245]();break;end end end elseif (v86<=(37 -20)) then if (v86<=(35 -20)) then local v159=0 -0 ;local v160;local v161;local v162;local v163;while true do if ((2480==2480) and (v159==(167 -(122 + 44)))) then v78=(v162 + v160) -(1 -0) ;v163=0 + 0 ;v159=1 + 1 ;end if (v159==(0 + (0 -0))) then v160=v85[6 -4 ];v161,v162=v76(v83[v160](v13(v83,v160 + 1 + 0 ,v78)));v159=1859 -(477 + 196 + 1185) ;end if ((v159==(1 + (1318 -(486 + 831)))) or (1664>1698)) then for v366=v160,v78 do local v367=0 -0 ;while true do if ((65 -(30 + 35))==v367) then v163=v163 + (1 -(0 -0)) ;v83[v366]=v161[v163];break;end end end break;end end elseif (v86>(11 + (17 -12))) then local v246=v85[1259 -(1043 + 214) ];do return v13(v83,v246,v78);end elseif ((v83[v85[2]]==v85[15 -(3 + 8) ]) or (3427<2849)) then v77=v77 + 1 ;else v77=v85[1215 -(323 + 889) ];end elseif ((v86<=(48 -30)) or (960<=566)) then v83[v85[582 -(361 + 219) ]][v85[323 -(53 + 267) ]]=v83[v85[1 + 3 ]];elseif ((3616<=4429) and (v86==(432 -((47 -32) + 398)))) then v83[v85[984 -(18 + 964) ]]=v83[v85[11 -8 ]]%v85[(1266 -(668 + 595)) + 1 ] ;else v83[v85[2 + 0 ]]={};end elseif ((3988>=66) and (v86<=(881 -(20 + 747 + 83)))) then if ((v86<=25) or (2910<=1930)) then if ((v86<=(18 + 4)) or (862>4644)) then if ((1221==1221) and (v86==(147 -(116 + 10)))) then local v166=0 + 0 ;local v167;while true do if ((v166==(738 -(542 + 196))) or (45>1271)) then v167=v85[456 -(3 + 10 + 441) ];v83[v167](v83[v167 + (1 -0) ]);break;end end else v83[v85[1 + 1 ]]=v83[v85[14 -11 ]]%v85[4] ;end elseif (v86<=(1 + 22)) then v83[v85[(5 -3) + 0 ]]=v83[v85[3]];elseif (v86==(9 + 15)) then if ((3877>1530) and ((v83[v85[1 + 1 ]]==v85[10 -6 ]) or (19>452))) then v77=v77 + (2 -1) ;else v77=v85[1554 -(1126 + 425) ];end else v83[v85[407 -(118 + 287) ]]=v62[v85[11 -(298 -(23 + 267)) ]];end elseif ((v86<=(19 + 9)) or (907>3152)) then if (v86<=(1147 -(118 + 1003))) then v83[v85[2 + 0 ]]=v85[8 -5 ]~=(377 -(142 + 235)) ;elseif ((v86==(122 -95)) or (2505>4470)) then local v251=(1944 -(1129 + 815)) + 0 ;local v252;while true do if (v251==(0 + 0)) then v252=v85[979 -(553 + 424) ];v83[v252]=v83[v252](v13(v83,v252 + ((388 -(371 + 16)) -0) ,v78));break;end end else local v253=v85[2 + 0 ];local v254,v255=v76(v83[v253](v13(v83,v253 + (1751 -(1326 + 424)) + 0 ,v78)));v78=(v255 + v253) -(1 + 0) ;local v256=0 + 0 ;for v333=v253,v78 do v256=v256 + 1 + 0 ;v83[v333]=v254[v256];end end elseif ((v86<=(62 -33)) or (4798==1255)) then if v83[v85[5 -3 ]] then v77=v77 + (2 -1) ;else v77=v85[1 + 2 ];end elseif (v86==(45 -15)) then local v258=0 -(0 -0) ;local v259;while true do if (v258==(753 -(239 + 514))) then v259=v85[1 + 1 ];v83[v259](v13(v83,v259 + ((4860 -3530) -(797 + (650 -(88 + 30)))) ,v85[3 + 0 ]));break;end end else local v260=(771 -(720 + 51)) + 0 ;local v261;local v262;local v263;while true do if (v260==((0 -0) -(1776 -(421 + 1355)))) then v261=v85[(1985 -781) -(373 + 829) ];v262=v83[v261];v260=732 -(476 + 255) ;end if (v260==(87 -(84 + 2))) then v263=v83[v261 + (1132 -(369 + 761)) ];if ((v263>(0 + 0)) or (3711>4062)) then if (v262>v83[v261 + (1 -0) ]) then v77=v85[5 -2 ];else v83[v261 + (241 -(64 + 174)) ]=v262;end elseif ((v262<v83[v261 + 1 + 0 ]) or (2541>2860)) then v77=v85[3 -0 ];else v83[v261 + (1336 -(605 + 728)) ]=v262;end break;end end end elseif (v86<=(26 + 10)) then if ((v86<=33) or (2902>3629)) then if ((427<3468) and (420==420) and (v86>(368 -(144 + 95 + 97)))) then local v172=v85[(1086 -(286 + 797)) -1 ];local v173={v83[v172](v13(v83,v172 + 1 + 0 ,v78))};local v174=(0 -0) + (0 -0) ;for v216=v172,v85[2 + 2 ] do local v217=1504 -(363 + (1580 -(397 + 42))) ;while true do if (v217==(489 -(457 + 32))) then v174=v174 + (1581 -(1183 + 397)) ;v83[v216]=v173[v174];break;end end end else v83[v85[5 -3 ]]=v62[v85[3 + 0 ]];end elseif ((4190>=2804) and ((v86<=(26 + 8)) or (33>=3494))) then v83[v85[1977 -(598 + 1315 + 62) ]]= #v83[v85[2 + 1 ]];elseif ((2086==2086) and (v86==(92 -57))) then v83[v85[1935 -(565 + 1368) ]]=v29(v74[v85[11 -8 ]],nil,v62);else v83[v85[1663 -(1477 + 184) ]]=v85[(803 -(24 + 776)) -0 ];end elseif ((4148>2733) and ((v86<=(37 + (2 -0))) or (1267==4744))) then if (v86<=(1926 -(1569 + 320))) then do return;end elseif ((2428<3778) and (v86>38)) then local v267=v85[(786 -(222 + 563)) + 1 ];local v268,v269=v76(v83[v267](v83[v267 + (857 -(564 + 292)) ]));v78=(v269 + v267) -(1 -(0 -0)) ;local v270=0 -0 ;for v336=v267,v78 do local v337=605 -(316 + 289) ;while true do if ((0 -0)==v337) then v270=v270 + (305 -(244 + 60)) ;v83[v336]=v268[v270];break;end end end else v83[v85[2 + 0 ]]= #v83[v85[(345 + 134) -((231 -(23 + 167)) + 435) ]];end elseif (v86<=(1041 -(938 + 63))) then local v178=v85[2 + (1798 -(690 + 1108)) ];v83[v178]=v83[v178](v13(v83,v178 + (1126 -(936 + 189)) ,v78));elseif ((3054>=1605) and (v86>(64 -23))) then local v272=0 + 0 ;local v273;local v274;while true do if ((v272==(0 + 0)) or (2946<=1596)) then v273=v85[1615 -(1565 + 18 + 30) ];v274=v83[v85[2 + 1 ]];v272=1139 -(782 + 294 + 62) ;end if ((4433>3127) and (v272==(268 -(176 + (939 -(40 + 808)))))) then v83[v273 + (2 -1) ]=v274;v83[v273]=v274[v85[3 + 1 ]];break;end end else v83[v85[2 -0 ]]=v83[v85[3]]%v83[v85[1096 -(975 + 117) ]] ;end elseif ((4300>=2733) and (v86<=(1938 -(157 + 1718)))) then if ((1044<1519) and (v86<=(43 + 9))) then if ((4829==4829) and (v86<=(166 -119))) then if (v86<=(99 -55)) then if (v86==(146 -103)) then v83[v85[2 + 0 + 0 ]]=v83[v85[1021 -(697 + 321) ]] + v85[2 + 2 ] ;elseif (v83[v85[5 -3 ]]==v83[v85[8 -4 ]]) then v77=v77 + (2 -1) ;else v77=v85[2 + 1 ];end elseif (v86<=(84 -39)) then v83[v85[5 -3 ]]=v61[v85[6 -(11 -8) ]];elseif ((1707<=4200) and (v86>((1181 + 54) -(442 + 747)))) then local v277=v74[v85[1230 -(322 + 905) ]];local v278;local v279={};v278=v10({},{__index=function(v338,v339) local v340=611 -(602 + 9) ;local v341;while true do if ((580==580) and (v340==(1189 -(449 + 740)))) then v341=v279[v339];return v341[873 -(826 + 46) ][v341[949 -(245 + 702) ]];end end end,__newindex=function(v342,v343,v344) local v345=0 -0 ;local v346;while true do if ((1683<=4726) and ((0 + 0)==v345)) then v346=v279[v343];v346[1899 -(260 + 1638) ][v346[442 -(382 + 58) ]]=v344;break;end end end});for v347=3 -2 ,v85[4 + 0 + 0 ] do local v348=0 -0 ;local v349;while true do if (v348==(2 -1)) then if (v349[1206 -(902 + 303) ]==(49 -26)) then v279[v347-(2 -1) ]={v83,v349[1693 -(1121 + 569) ]};else v279[v347-(215 -(22 + 192)) ]={v61,v349[8 -5 ]};end v82[ #v82 + (1 -0) ]=v279;break;end if (0==v348) then v77=v77 + (766 -(468 + 297)) ;v349=v73[v77];v348=563 -(334 + 228) ;end end end v83[v85[6 -4 ]]=v29(v277,v278,v62);else local v281=(0 + 0) -(0 -0) ;local v282;local v283;local v284;while true do if (v281==(0 -0)) then v282=v85[1 + 1 ];v283=v83[v282 + (2 -0) ];v281=1 + 0 ;end if (v281==(810 -(329 + 479))) then if (v283>0) then if ((601<=999) and (v284<=v83[v282 + 1 + 0 ])) then v77=v85[239 -(141 + 95) ];v83[v282 + (6 -3) + 0 ]=v284;end elseif (v284>=v83[v282 + (2 -1) ]) then v77=v85[(1729 -(1165 + 561)) + 0 ];v83[v282 + (6 -3) ]=v284;end break;end if (v281==(740 -(396 + 343))) then v284=v83[v282] + v283 ;v83[v282]=v284;v281=1 + 1 ;end end end elseif ((4835>=3669) and (v86<=(12 + 37))) then if ((2851>1859) and (v86==(131 -83))) then v83[v85[1 + 1 + 0 ]]=v83[v85[2 + 1 ]][v85[3 + 1 ]];else v77=v85[(12 -8) -1 ];end elseif ((3848>2323) and (v86<=(30 + 20))) then v83[v85[165 -(92 + 71) ]]();elseif ((3970==3970) and (v86>(26 + 25))) then if  not v83[v85[2 -0 ]] then v77=v77 + (766 -(574 + 191)) ;else v77=v85[2 + 1 + 0 ];end else local v285=v85[4 -2 ];local v286=v85[3 + 1 ];local v287=v285 + (851 -(254 + 595)) ;local v288={v83[v285](v83[v285 + (1 -0) ],v83[v287])};for v350=1791 -(573 + 1217) ,v286 do v83[v287 + v350 ]=v288[v350];end local v289=v288[2 -1 ];if (v289 or (98==208)) then v83[v287]=v289;v77=v85[1 + 2 ];else v77=v77 + 1 + 0 ;end end elseif (v86<=(91 -34)) then if ((2006<=3914) and (v86<=((1472 -(341 + 138)) -(714 + 225)))) then if ((2836>469) and (v86>(154 -101))) then if v83[v85[2 -0 ]] then v77=v77 + 1 + 0 + 0 ;else v77=v85[1 + 2 ];end else local v186=0 -(0 -0) ;local v187;while true do if ((v186==(806 -(118 + 688))) or (2096<=540)) then v187=v85[50 -((351 -(89 + 237)) + 23) ];v83[v187](v13(v83,v187 + 1 + 0 ,v85[1889 -(927 + 959) ]));break;end end end elseif (v86<=(143 -88)) then v83[v85[6 -4 ]]=v83[v85[735 -(16 + 716) ]];elseif (v86==(107 -51)) then do return;end else local v291=0 -0 ;local v292;local v293;while true do if ((v291==(98 -((35 -24) + 86))) or (3101<=2971)) then for v410=2 -1 , #v82 do local v411=285 -(175 + 110) ;local v412;while true do if (v411==(0 -(0 -0))) then v412=v82[v410];for v445=0 -(881 -(581 + 300)) , #v412 do local v446=v412[v445];local v447=v446[1 + 0 ];local v448=v446[1798 -(503 + 1293) ];if (((v447==v83) and (v448>=v292)) or (3183<2645)) then v293[v448]=v447[v448];v446[2 -1 ]=v293;end end break;end end end break;end if (v291==(0 + 0)) then v292=v85[695 -(627 + (1286 -(855 + 365))) ];v293={};v291=1062 -(810 + 251) ;end end end elseif (v86<=(42 + 18)) then if ((3230<=3760) and (v86<=(18 + 40))) then if (v85[2 + 0 ]==v83[v85[537 -(43 + 490) ]]) then v77=v77 + ((1743 -1009) -(711 + 22)) ;else v77=v85[11 -8 ];end elseif ((3828==3828) and (v86>(155 -96))) then if (v83[v85[861 -(240 + 619) ]]==v83[v85[1 + 3 ]]) then v77=v77 + (1 -0) ;else v77=v85[1 + 2 ];end else local v295=v85[1746 -(1344 + 400) ];local v296=v83[v295 + 1 + 1 ];local v297=v83[v295] + v296 ;v83[v295]=v297;if (v296>(405 -(255 + 150))) then if (v297<=v83[v295 + 1 + 0 ]) then v77=v85[2 + 1 ];v83[v295 + (1669 -(636 + 1030)) ]=v297;end elseif (v297>=v83[v295 + (4 -3) ]) then local v415=0 -0 ;while true do if ((554==554) and (v415==(1739 -(404 + (2570 -(1030 + 205)))))) then v77=v85[1 + 2 ];v83[v295 + (409 -(183 + 223)) ]=v297;break;end end end end elseif ((v86<=61) or (2563==172)) then v83[v85[2 -0 ]]=v83[v85[2 + 1 ]] + v85[15 -11 ] ;elseif ((v86>(23 + 39)) or (2073<=671)) then v83[v85[339 -(10 + 327) ]]=v85[(1288 + 83) -(34 + 1334) ];else v83[v85[1 + 1 ]]();end elseif (v86<=(58 + 15 + 1)) then if (v86<=(1351 -(1035 + 248))) then if (v86<=(46 + 19)) then if (v86==(34 + 30)) then for v218=v85[340 -(118 + 220) ],v85[1136 -(549 + 584) ] do v83[v218]=nil;end else v61[v85[1 + 2 ]]=v83[v85[6 -4 ]];end elseif ((3305>95) and (3889>=131) and (v86<=(515 -(108 + 341)))) then v83[v85[1 + 1 ]][v85[12 -9 ]]=v85[12 -8 ];elseif (v86==(1446 -(1055 + 324))) then local v301=v85[1495 -(711 + 782) ];local v302,v303=v76(v83[v301](v13(v83,v301 + 1 + 0 ,v85[(291 -(156 + 130)) -2 ])));v78=(v303 + v301) -((1067 -597) -(270 + 199)) ;local v304=0 + 0 ;for v354=v301,v78 do v304=v304 + (1820 -((977 -397) + 1239)) ;v83[v354]=v302[v304];end else v61[v85[8 -5 ]]=v83[v85[2 + 0 ]];end elseif (v86<=(3 + 68)) then if ((v86<=(31 + 38)) or (492==4578)) then local v195=0 -0 ;local v196;while true do if ((v195==(0 + 0)) or (4112<1816)) then v196=v85[(2393 -1224) -(645 + 522) ];do return v83[v196](v13(v83,v196 + (1791 -(1010 + 780)) ,v85[3 + 0 ]));end break;end end elseif (v86==(167 -97)) then local v307=0 + 0 + 0 ;local v308;local v309;local v310;local v311;while true do if ((0 -0)==v307) then v308=v85[9 -7 ];v309,v310=v76(v83[v308](v83[v308 + (2 -(1 + 0)) ]));v307=1;end if ((2727==2727) and ((2 -1)==v307)) then v78=(v310 + v308) -(1837 -(1045 + (860 -(10 + 59)))) ;v311=0 -0 ;v307=7 -5 ;end if ((1 + 1)==v307) then for v416=v308,v78 do v311=v311 + (1087 -(686 + 400)) ;v83[v416]=v309[v311];end break;end end else v83[v85[2 -0 ]][v85[508 -(351 + (758 -604)) ]]=v85[1578 -((2444 -(671 + 492)) + 293) ];end elseif ((v86<=(338 -(28 + 190 + 48))) or (2970>=4072)) then local v197=0;local v198;while true do if (v197==(229 -(73 + 156))) then v198=v85[4 -2 ];do return v83[v198](v13(v83,v198 + (1560 -(1381 + 178)) ,v85[3 + 0 ]));end break;end end elseif ((4525>=1223) and (v86==(59 + 14))) then local v314=v85[2];do return v13(v83,v314,v78);end else v83[v85[1 + 1 ]]=v85[10 -7 ] + v83[v85[4]] ;end elseif (v86<=(144 -65)) then if (v86<=(40 + 36)) then if ((3881>814) and (v86>(545 -((1596 -(369 + 846)) + 89)))) then local v199=v85[2 + 0 ];v83[v199](v83[v199 + 1 + 0 + 0 ]);else local v200=v85[2 -0 ];local v201={v83[v200](v13(v83,v200 + (3 -2) ,v78))};local v202=513 -(203 + 310) ;for v220=v200,v85[(3942 -(1036 + 909)) -(1238 + 755) ] do v202=v202 + (1157 -(1074 + 82)) ;v83[v220]=v201[v202];end end elseif (v86<=((134 + 34) -91)) then v83[v85[1786 -(214 + 1570) ]]=v85[3 -0 ] + v83[v85[1459 -((1662 -672) + 465) ]] ;elseif ((1090<=4827) and (v86==78)) then if  not v83[v85[1 + 1 ]] then v77=v77 + (204 -(11 + 192)) + 0 ;else v77=v85[3 + 0 ];end else v83[v85[835 -(171 + 662) ]]=v85[96 -(3 + 1 + 89) ]~=((175 -(135 + 40)) -0) ;end elseif (v86<=(30 + 52)) then if ((v86<=(1806 -(1668 + 58))) or (239>1345)) then local v204=0;local v205;while true do if (((626 -(512 + 114))==v204) or (3710>=3738) or (4932<4868)) then v205=v85[5 -3 ];v83[v205]=v83[v205](v13(v83,v205 + 1 ,v85[5 -(4 -2) ]));break;end end elseif ((v86==(1534 -(28 + 1425))) or (3838<2061)) then local v317=v85[6 -(3 + 1) ];v83[v317](v13(v83,v317 + (2 -1) + 0 ,v78));else v83[v85[1 + 1 ]]=v61[v85[3 + 0 ]];end elseif ((3667<=4802) and (v86<=(279 -196))) then local v206=v74[v85[1997 -(109 + 1885) ]];local v207;local v208={};v207=v10({},{__index=function(v223,v224) local v225=0 + 0 ;local v226;while true do if ((v225==(0 + 0)) or (690>1172)) then v226=v208[v224];return v226[2 -1 ][v226[1471 -(1269 + 200) ]];end end end,__newindex=function(v227,v228,v229) local v230=v208[v228];v230[1 -0 ][v230[817 -(98 + 717) ]]=v229;end});for v232=827 -((978 -(50 + 126)) + 24) ,v85[4 -0 ] do local v233=0 + 0 ;local v234;while true do if ((1 -0)==v233) then if ((1260>=858) and (v234[1 -0 ]==(4 + 19))) then v208[v232-1 ]={v83,v234[1 + 2 ]};else v208[v232-((1414 -(1233 + 180)) + 0) ]={v61,v234[9 -6 ]};end v82[ #v82 + 1 + 0 ]=v208;break;end if ((v233==(0 + 0)) or (3911==4700)) then v77=v77 + 1 + 0 ;v234=v73[v77];v233=1 + 0 ;end end end v83[v85[2 + 0 ]]=v29(v206,v207,v62);elseif ((3000<4194) and (v86>(40 + 44))) then if ((v85[1435 -(797 + 636) ]==v83[v85[19 -15 ]]) or (1592>2599)) then v77=v77 + (1620 -(1427 + 192)) ;else v77=v85[2 + 1 ];end else local v320=v85[4 -2 ];local v321={};for v361=1 + 0 , #v82 do local v362=v82[v361];for v381=0 -0 , #v362 do local v382=v362[v381];local v383=v382[1];local v384=v382[1 + 1 ];if ((v383==v83) and (v384>=v320)) then v321[v384]=v383[v384];v382[327 -(192 + (1103 -(522 + 447))) ]=v321;end end end end v77=v77 + (1277 -(316 + 960)) ;break;end if (v106==(0 + (1421 -(107 + 1314)))) then v85=v73[v77];v86=v85[1 + 0 ];v106=1 + 0 ;end end end end;end return v29(v28(),{},v17)(...);end return v15("LOL!5C3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E73657274026Q005640030D3Q006B4E002C23AD5A6B4A102D34A403073Q0072383E6549478D026Q00554003083Q00FCD1E35DDACBE75803043Q003CB4A48E026Q00534003083Q007E3D52392B51F15203073Q009836483F58453E025Q0080514003103Q0022E0A4CC0BEBE5F906E2AEDD17EBA0CA03043Q00AE678EC5025Q00405040030C3Q00E02B218CF432F9D12C298EB003073Q009CA84E40E0D479025Q0080474003063Q00EF5D6416B60603063Q007EA7341074D9025Q0080464003083Q002417B43B011FAB2E03043Q004B6776D9026Q00444003073Q00BBFC3344FDB59803063Q00C7EB90523D98026Q00434003103Q0083FA2FD931A023D2A2DA2FD90EA730C203083Q00A7D6894AAB78CE53026Q003F4003063Q0029C05F702Q7203083Q00876CAE3E121E1793026Q00394003103Q008ECA474F37B5C957492DBECB2Q541DBE03053Q007EDBB9223D026Q00374003103Q00658925CA3FCE578D2D810EC742893AD203063Q00BE32E849A14C026Q00354003103Q0089CA31371FA3D939673CB2DB302810BE03053Q0079CAAB5C47026Q003240030E3Q0007D011B98E0E26D80CBF8417399903063Q00624AB962DAEB026Q002E4003083Q000EA4D3DBFC22A8D003053Q00934BDCA3B7026Q002A40030D3Q0074255B224C4D34101447304E5103073Q005A305035452922026Q00184003073Q00E5B245CA8ED3BF03053Q00E1A1DB36A9026Q000840030A3Q002416B4D4CD80D33F1CAD03073Q00BC5479DFB1BFED030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574034E3Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F536F6C312D78797A2F44756E67656F6E2F726566732F68656164732F6D61696E2F44756E67656F6E2E6C756103073Q0067657467656E7603043Q006B65797A03073Q00436F7265477569030E3Q0046696E6446697273744368696C6403073Q00446973636F726403073Q0044657374726F7903213Q00682Q7470733A2Q2F706173746562696E2E636F6D2F7261772F735977636757306203063Q0057696E646F7703063Q00536572766572034Q0003073Q004368612Q6E656C030A3Q004765745365727669636503073Q006B657962696E6403043Q00456E756D03073Q004B6579436F646503013Q004303083Q0063616D7066697265010003063Q00546F2Q676C6503043Q0042696E6403073Q00456E61626C656403053Q0053702Q6564026Q00304003063Q00536C6964657200D34Q000B7Q001219000100013Q00200E000100010002001219000200013Q00200E000200020003001219000300013Q00200E000300030004001219000400053Q0006340004000B000100010004083Q000B0001001219000400063Q00200E000500040007001219000600083Q00200E000600060009001219000700083Q00200E00070007000A00065300083Q000100062Q00173Q00074Q00173Q00014Q00173Q00054Q00173Q00024Q00173Q00034Q00173Q00064Q0037000900083Q001224000A000C3Q001224000B000D4Q00500009000B00020010123Q000B00092Q0037000900083Q001224000A000F3Q001224000B00104Q00500009000B00020010123Q000E00092Q0037000900083Q001224000A00123Q001224000B00134Q00500009000B00020010123Q001100092Q0037000900083Q001224000A00153Q001224000B00164Q00500009000B00020010123Q001400092Q0037000900083Q001224000A00183Q001224000B00194Q00500009000B00020010123Q001700092Q0037000900083Q001224000A001B3Q001224000B001C4Q00500009000B00020010123Q001A00092Q0037000900083Q001224000A001E3Q001224000B001F4Q00500009000B00020010123Q001D00092Q0037000900083Q001224000A00213Q001224000B00224Q00500009000B00020010123Q002000092Q0037000900083Q001224000A00243Q001224000B00254Q00500009000B00020010123Q002300092Q0037000900083Q001224000A00273Q001224000B00284Q00500009000B00020010123Q002600092Q0037000900083Q001224000A002A3Q001224000B002B4Q00500009000B00020010123Q002900092Q0037000900083Q001224000A002D3Q001224000B002E4Q00500009000B00020010123Q002C00092Q0037000900083Q001224000A00303Q001224000B00314Q00500009000B00020010123Q002F00092Q0037000900083Q001224000A00333Q001224000B00344Q00500009000B00020010123Q003200092Q0037000900083Q001224000A00363Q001224000B00374Q00500009000B00020010123Q003500092Q0037000900083Q001224000A00393Q001224000B003A4Q00500009000B00020010123Q003800092Q0037000900083Q001224000A003C3Q001224000B003D4Q00500009000B00020010123Q003B00092Q0037000900083Q001224000A003F3Q001224000B00404Q00500009000B00020010123Q003E0009001219000900413Q001219000A00423Q00202A000A000A0043001224000C00444Q000A000A000C4Q002800093Q00022Q003E000900010001001219000900454Q000500090001000200200E00090009004600200E000A3Q003E00062C000900D20001000A0004083Q00D20001001219000900423Q00200E00090009004700202A00090009004800200E000B3Q003B2Q00500009000B000200061D0009008A00013Q0004083Q008A0001001219000900423Q00200E00090009004700200E00090009004900202A00090009004A2Q0015000900020001001219000900413Q001219000A00423Q00202A000A000A0043001224000C004B4Q000A000A000C4Q002800093Q00022Q000500090001000200202A000A0009004C00200E000C3Q00382Q0050000A000C000200202A000B000A004D00200E000D3Q0035001224000E004E4Q0050000B000E000200202A000C000A004D00200E000E3Q0032001224000F004E4Q0050000C000F000200202A000D000B004F00200E000F3Q002F2Q0050000D000F000200202A000E000B004F00200E00103Q002C2Q0050000E001000022Q004F000F6Q004F00106Q004F00115Q001219001200423Q00202A00120012005000200E00143Q00292Q0050001200140002001219001300454Q0005001300010002001219001400523Q00200E00140014005300200E001400140054001012001300510014001219001300454Q000500130001000200304200130055005600202A0013000D005700200E00153Q00262Q004F00165Q00065300170001000100012Q00178Q003500130017000100202A0013000D005800200E00153Q0017001219001600454Q000500160001000200200E001600160051000223001700024Q0035001300170001001219001300454Q0005001300010002003042001300590056001219001300454Q00050013000100020030420013005A005B00202A0013000E005700200E00153Q00142Q004F00165Q00065300170003000100012Q00178Q005000130017000200202A0014000E005C00200E00163Q000B001224001700353Q001224001800293Q0012240019005B3Q000223001A00044Q00500014001A00022Q00383Q00013Q00053Q00023Q00026Q00F03F026Q00704002264Q000B00025Q001224000300014Q002200045Q001224000500013Q00042Q0003002100012Q002D00076Q0037000800024Q002D000900014Q002D000A00024Q002D000B00034Q002D000C00044Q0037000D6Q0037000E00063Q00203D000F000600012Q000A000C000F4Q0028000B3Q00022Q002D000C00034Q002D000D00044Q0037000E00014Q0022000F00014Q0003000F0006000F00104A000F0001000F2Q0022001000014Q000300100006001000104A00100001001000203D0010001000012Q000A000D00104Q000F000C6Q0028000A3Q0002002016000A000A00022Q00460009000A4Q005100073Q000100042E0003000500012Q002D000300054Q0037000400024Q0045000300044Q001100036Q00383Q00017Q000F3Q00028Q00026Q00F03F027Q0040026Q000840030A3Q00496E707574456E64656403073Q00436F2Q6E65637403043Q0067616D65030A3Q0047657453657276696365026Q004340026Q004440030B3Q004C6F63616C506C6179657203073Q0067657467656E7603083Q0063616D70666972652Q01030A3Q00496E707574426567616E013A3Q001224000100014Q0007000200093Q00261000010009000100020004083Q000900012Q0007000500054Q004F00066Q004F00076Q0007000800083Q001224000100033Q00261000010013000100040004083Q0013000100200E000A0002000500202A000A000A0006000653000C3Q000100032Q00173Q00064Q00173Q00074Q00173Q00094Q0035000A000C00010004083Q0039000100261000010026000100010004083Q00260001001219000A00073Q00202A000A000A00082Q002D000C5Q00200E000C000C00092Q0050000A000C00022Q00370002000A3Q001219000A00073Q00202A000A000A00082Q002D000C5Q00200E000C000C000A2Q0050000A000C00022Q00370003000A3Q00200E00040003000B001219000A000C4Q0005000A00010002003042000A000D000E001224000100023Q00261000010002000100030004083Q0002000100065300080001000100032Q00528Q00173Q00054Q00173Q00044Q0007000900093Q00065300090002000100022Q00173Q00054Q00173Q00043Q00200E000A0002000F00202A000A000A0006000653000C0003000100032Q00173Q00064Q00173Q00074Q00173Q00084Q0035000A000C0001001224000100043Q0004083Q000200012Q00383Q00013Q00043Q00063Q0003073Q0067657467656E7603083Q0063616D706669726503073Q004B6579436F646503073Q006B657962696E64028Q00026Q00F03F02203Q001219000200014Q000500020001000200200E00020002000200061D0002001F00013Q0004083Q001F000100200E00023Q0003001219000300014Q000500030001000200200E00030003000400062C0002001F000100030004083Q001F00012Q002D00025Q00061D0002001F00013Q0004083Q001F00012Q002D000200013Q0006340002001F000100010004083Q001F0001001224000200053Q00261000020019000100050004083Q001900012Q004F000300014Q0044000300014Q004F00036Q004400035Q001224000200063Q00261000020012000100060004083Q001200012Q002D000300024Q003E0003000100010004083Q001F00010004083Q001200012Q00383Q00017Q00083Q0003053Q00706169727303093Q00776F726B7370616365030E3Q0047657444657363656E64616E747303043Q004E616D65025Q00804640030E3Q0046696E6446697273744368696C64025Q0080474003053Q007063612Q6C001D3Q0012193Q00013Q001219000100023Q00202A0001000100032Q0046000100024Q004B5Q00020004083Q001A000100200E0005000400042Q002D00065Q00200E00060006000500062C00050019000100060004083Q0019000100202A0005000400062Q002D00075Q00200E0007000700072Q005000050007000200061D0005001900013Q0004083Q00190001001219000500083Q00065300063Q000100032Q00523Q00014Q00523Q00024Q00173Q00044Q00150005000200012Q00547Q0004083Q001C00012Q005400035Q0006333Q0006000100020004083Q000600012Q00383Q00013Q00013Q00063Q00029Q0003093Q00436861726163746572030B3Q005072696D6172795061727403063Q00434672616D6503063Q00486974626F7800153Q0012243Q00013Q000E550001000100013Q0004083Q000100012Q002D00015Q0026100001000B000100020004083Q000B00012Q002D000100013Q00200E00010001000300200E00010001000400200E0001000100052Q004400016Q002D000100013Q00200E00010001000300200E0001000100042Q002D000200023Q00200E00020002000600200E0002000200050010120001000500020004083Q001400010004083Q000100012Q00383Q00017Q00023Q00028Q0003053Q007063612Q6C00164Q002D7Q00061D3Q001500013Q0004083Q001500010012243Q00014Q0007000100013Q000E550001000500013Q0004083Q00050001001224000100013Q00261000010008000100010004083Q00080001001219000200023Q00065300033Q000100022Q00523Q00014Q00528Q00150002000200012Q0007000200024Q004400025Q0004083Q001500010004083Q000800010004083Q001500010004083Q000500012Q00383Q00013Q00013Q00033Q0003093Q00436861726163746572030B3Q005072696D6172795061727403063Q00434672616D6500064Q002D7Q00200E5Q000100200E5Q00022Q002D000100013Q0010123Q000300012Q00383Q00017Q00063Q0003073Q0067657467656E7603083Q0063616D706669726503073Q004B6579436F646503073Q006B657962696E64028Q00026Q00F03F02253Q00063400010024000100010004083Q00240001001219000200014Q000500020001000200200E00020002000200061D0002002400013Q0004083Q0024000100200E00023Q0003001219000300014Q000500030001000200200E00030003000400062C00020024000100030004083Q002400012Q002D00025Q00063400020024000100010004083Q00240001001224000200054Q0007000300033Q00261000020012000100050004083Q00120001001224000300053Q0026100003001C000100050004083Q001C00012Q004F000400014Q004400046Q004F00046Q0044000400013Q001224000300063Q00261000030015000100060004083Q001500012Q002D000400024Q003E0004000100010004083Q002400010004083Q001500010004083Q002400010004083Q001200012Q00383Q00019Q003Q00014Q00383Q00017Q000F3Q00028Q00026Q00F03F03073Q0067657467656E7603073Q00456E61626C656403043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q00436861726163746572030C3Q0057616974466F724368696C64026Q00534003093Q0057616C6B53702Q6564026Q00304003043Q0077616974026Q00554003053Q0053702Q656401303Q001224000100013Q00261000010012000100020004083Q00120001001219000200034Q000500020001000200200E0002000200040006340002002F000100010004083Q002F0001001219000200053Q00200E00020002000600200E00020002000700200E00020002000800202A0002000200092Q002D00045Q00200E00040004000A2Q00500002000400020030420002000B000C0004083Q002F0001000E5500010001000100010004083Q00010001001219000200034Q0005000200010002001012000200043Q001219000200034Q000500020001000200200E00020002000400061D0002002D00013Q0004083Q002D00010012190002000D4Q000500020001000200061D0002002D00013Q0004083Q002D0001001219000200053Q00200E00020002000600200E00020002000700200E00020002000800202A0002000200092Q002D00045Q00200E00040004000E2Q0050000200040002001219000300034Q000500030001000200200E00030003000F0010120002000B00030004083Q00170001001224000100023Q0004083Q000100012Q00383Q00017Q00023Q0003073Q0067657467656E7603053Q0053702Q656401043Q001219000100014Q0005000100010002001012000100024Q00383Q00017Q00",v9(),...);
