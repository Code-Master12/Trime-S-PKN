local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v16,v17) local v18={};for v21=1, #v16 do v6(v18,v0(v4(v1(v2(v16,v21,v21 + 1 )),v1(v2(v17,1 + (v21% #v17) ,1 + (v21% #v17) + 1 )))%256 ));end return v5(v18);end local v8=game:GetService(v7("\227\198\203\41\239\184\198\10\212\199\232\49\233\169\198\25\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\16\217\43\215\232\38\223\13\208\245","\156\67\173\74\165"));local v10;local v11=false;local v12={};local function v13() for v22,v23 in ipairs(v8:GetDescendants()) do if (v23:IsA(v7("\6\178\68\25\168\35\99\34\178\71\2","\38\84\215\41\118\220\70")) and (v23.Name==v7("\127\24\18\30\255\73\19\48\57\247\92\26\39\22","\158\48\118\66\114"))) then local v24=0 -0 ;while true do if (v24==(859 -(814 + 45))) then local v25=0 -0 ;while true do if (v25==(1 + 0)) then v24=1;break;end if (v25==(0 + 0)) then v10=v23;print(v7("\132\42\32\58\114\188\254\185\15\25\58\127\160\255\235\22\21\59\124\177\254\235\1\6\51\125\177\187\141\43\5\56\119","\155\203\68\112\86\19\197"));v25=886 -(261 + 624) ;end end end if (v24==(1 -0)) then v10.OnClientEvent:Connect(function(v26,v27) if v11 then local v28=1080 -(1020 + 60) ;local v29;local v30;while true do if (v28==(1424 -(630 + 793))) then v30=(v26 and v26.Name) or v7("\134\116\112","\35\200\29\28\72\115\20\154") ;v9:SetCore(v7("\42\186\223\219\163\35\32\16\185\216\220\140\56\61\22\177","\84\121\223\177\191\237\76"),{[v7("\143\95\221\172\63","\161\219\54\169\192\90\48\80")]=v7("\125\80\9\40\76\2\77\22","\69\41\34\96"),[v7("\136\198\207\30","\75\220\163\183\106\98")]="Player killed!\nKiller: "   .. v29   .. "\nKilled: "   .. v30 });break;end if (v28==(0 -0)) then print(v7("\105\211\6\240\65\97\224\234\109\212\58\240\69\124\165\221\80\216\56\232\0\76\247\241\65\218\51\238\69\124","\152\38\189\86\156\32\24\133"));v29=(v27 and v27.Name) or v7("\210\94\171","\38\156\55\199") ;v28=4 -3 ;end end end end);break;end end end end end v12.disablePKN=function(v19) v11=false;end;v12.togglePKN=function(v20) v11= not v11;if v11 then v9:SetCore(v7("\49\191\133\51\247\13\174\130\49\208\1\187\159\62\214\12","\185\98\218\235\87"),{[v7("\255\53\51\234\219","\202\171\92\71\134\190")]=v7("\29\211\37\133\44\129\97\187","\232\73\161\76"),[v7("\143\220\90\73","\126\219\185\34\61")]=v7("\60\194\95\107\123\101\179\204\5\194\82\50\80\120\231\238\10\199\93\115\106\126\252\233\76\235\80\115\124\123\246\227\77","\135\108\174\62\18\30\23\147")});else v9:SetCore(v7("\133\236\36\207\54\161\39\206\176\224\41\202\12\167\60\201","\167\214\137\74\171\120\206\83"),{[v7("\191\249\38\81\253","\199\235\144\82\61\152")]=v7("\51\4\176\38\2\86\244\24","\75\103\118\217"),[v7("\243\81\104\0","\126\167\52\16\116\217")]=v7("\248\34\33\153\177\11\188\227\39\44\140\244\55\243\220\39\38\137\183\24\232\193\33\46\192\144\16\239\201\44\44\133\176\88","\156\168\78\64\224\212\121")});end end;v13();return v12;
