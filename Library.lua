local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}
end return a.cache[b].c end}do function a.a()local b,c,d='8.0',cloneref or
function(b)return b end,{Theme={Syntax={Text=Color3.fromRGB(204,204,204),
Background=Color3.fromRGB(20,20,20),Selection=Color3.fromRGB(255,255,255),
SelectionBack=Color3.fromRGB(102,161,255),Operator=Color3.fromRGB(204,204,204),
Number=Color3.fromRGB(255,198,0),String=Color3.fromRGB(172,240,148),Comment=
Color3.fromRGB(102,102,102),Keyword=Color3.fromRGB(248,109,124),BuiltIn=Color3.
fromRGB(132,214,247),LocalMethod=Color3.fromRGB(253,251,172),LocalProperty=
Color3.fromRGB(97,161,241),Nil=Color3.fromRGB(255,198,0),Bool=Color3.fromRGB(255
,198,0),Function=Color3.fromRGB(248,109,124),Local=Color3.fromRGB(248,109,124),
Self=Color3.fromRGB(248,109,124),FunctionName=Color3.fromRGB(253,251,172),
Bracket=Color3.fromRGB(204,204,204)}}}local e,f=setmetatable({},{__index=
function(e,f)local g=game:GetService(f)return c(g)end}),{StartAndEnd={Enum.
UserInputType.MouseButton1,Enum.UserInputType.Touch},Movement={Enum.
UserInputType.MouseMovement,Enum.UserInputType.Touch}}local g,h,i,j=e.Players,e.
UserInputService,e.RunService,e.TweenService local k=c(g.LocalPlayer)local l,m,n
,o=c(k:GetMouse()),function(l,m)for n,o in next,m do l[n]=o end return l end,
function(l,m)local n=l.UserInputType return table.find(f[m],n)end,function(...)
return c(Instance.new(...))end local p,q,r=function(p,q)local r=o(p)for s,t in
next,q do r[s]=t end return r end,{},o'Frame'q.CheckMouseInGui=function(s)if s==
nil then return false end local t,u=s.AbsolutePosition,s.AbsoluteSize return l.X
>=t.X and l.X<t.X+u.X and l.Y>=t.Y and l.Y<t.Y+u.Y end q.Signal=(function()local
s,t={},function(s)local t=table.find(s.Signal.Connections,s)if t then table.
remove(s.Signal.Connections,t)end end s.Connect=function(u,v)if type(v)~=
'function'then error'Attempt to connect a non-function'end local w={Signal=u,
Func=v,Disconnect=t}u.Connections[#u.Connections+1]=w return w end s.Fire=
function(u,...)for v,w in next,u.Connections do xpcall(coroutine.wrap(w.Func),
function(x)warn(x..'\n'..debug.traceback())end,...)end end local u={__index=s,
__tostring=function(u)return'Signal: '..tostring(#u.Connections)..' Connections'
end}local v=function()local v={}v.Connections={}return setmetatable(v,u)end
return{new=v}end)()q.CreateArrow=function(s,t,u)local v,w=t,p('Frame',{
BackgroundTransparency=1,Name='Arrow',Size=UDim2.new(0,s,0,s)})if u=='up'then
for x=1,t do p('Frame',{BackgroundColor3=Color3.new(0.8627450980392157,
0.8627450980392157,0.8627450980392157),BorderSizePixel=0,Position=UDim2.new(0,
math.floor(s/2)-(x-1),0,math.floor(s/2)+x-math.floor(v/2)-1),Size=UDim2.new(0,x+
(x-1),0,1),Parent=w})end return w elseif u=='down'then for x=1,t do p('Frame',{
BackgroundColor3=Color3.new(0.8627450980392157,0.8627450980392157,
0.8627450980392157),BorderSizePixel=0,Position=UDim2.new(0,math.floor(s/2)-(x-1)
,0,math.floor(s/2)-x+math.floor(v/2)+1),Size=UDim2.new(0,x+(x-1),0,1),Parent=w})
end return w elseif u=='left'then for x=1,t do p('Frame',{BackgroundColor3=
Color3.new(0.8627450980392157,0.8627450980392157,0.8627450980392157),
BorderSizePixel=0,Position=UDim2.new(0,math.floor(s/2)+x-math.floor(v/2)-1,0,
math.floor(s/2)-(x-1)),Size=UDim2.new(0,1,0,x+(x-1)),Parent=w})end return w
elseif u=='right'then for x=1,t do p('Frame',{BackgroundColor3=Color3.new(
0.8627450980392157,0.8627450980392157,0.8627450980392157),BorderSizePixel=0,
Position=UDim2.new(0,math.floor(s/2)-x+math.floor(v/2)+1,0,math.floor(s/2)-(x-1)
),Size=UDim2.new(0,1,0,x+(x-1)),Parent=w})end return w end error''end q.FastWait
=(function(s)task.wait(s)end)q.ScrollBar=(function()local s,t,u,v={},q.
CheckMouseInGui,q.CreateArrow,function(s)local t,u,v,w=s.TotalSpace,s.
VisibleSpace,s.GuiElems.ScrollThumb,s.GuiElems.ScrollThumbFrame if not(s:
CanScrollUp()or s:CanScrollDown())then v.Visible=false else v.Visible=true end
if s.Horizontal then v.Size=UDim2.new(u/t,0,1,0)if v.AbsoluteSize.X<10 then v.
Size=UDim2.new(0,10,1,0)end local x,y=w.AbsoluteSize.X,v.AbsoluteSize.X v.
Position=UDim2.new(s:GetScrollPercent()*(x-y)/x,0,0,0)else v.Size=UDim2.new(1,0,
u/t,0)if v.AbsoluteSize.Y<10 then v.Size=UDim2.new(1,0,0,10)end local x,y=w.
AbsoluteSize.Y,v.AbsoluteSize.Y v.Position=UDim2.new(0,0,s:GetScrollPercent()*(x
-y)/x,0)end end local w=function(w)local x,y,z=(p('Frame',{Style=0,Active=true,
AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.35294118523598,
0.35294118523598,0.35294118523598),BackgroundTransparency=0,BorderColor3=Color3.
new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,
ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-10,0,0),Rotation=0,
Selectable=false,Size=UDim2.new(0,10,1,0),SizeConstraint=0,Visible=true,ZIndex=1
,Name='ScrollBar'}))if w.Horizontal then x.Size=UDim2.new(1,0,0,10)y=p(
'ImageButton',{Parent=x,Name='Left',Size=UDim2.new(0,10,0,10),
BackgroundTransparency=1,BorderSizePixel=0,AutoButtonColor=false})u(10,4,'left')
.Parent=y z=p('ImageButton',{Parent=x,Name='Right',Position=UDim2.new(1,-10,0,0)
,Size=UDim2.new(0,10,0,10),BackgroundTransparency=1,BorderSizePixel=0,
AutoButtonColor=false})u(10,4,'right').Parent=z else x.Size=UDim2.new(0,10,1,0)y
=p('ImageButton',{Parent=x,Name='Up',Size=UDim2.new(0,10,0,10),
BackgroundTransparency=1,BorderSizePixel=0,AutoButtonColor=false})u(10,4,'up').
Parent=y z=p('ImageButton',{Parent=x,Name='Down',Position=UDim2.new(0,0,1,-10),
Size=UDim2.new(0,10,0,10),BackgroundTransparency=1,BorderSizePixel=0,
AutoButtonColor=false})u(10,4,'down').Parent=z end local A=p('Frame',{
BackgroundTransparency=1,Parent=x})if w.Horizontal then A.Position=UDim2.new(0,
10,0,0)A.Size=UDim2.new(1,-20,1,0)else A.Position=UDim2.new(0,0,0,10)A.Size=
UDim2.new(1,0,1,-20)end local B,C,D,E,F=p('Frame',{BackgroundColor3=Color3.new(
0.47058823529411764,0.47058823529411764,0.47058823529411764),BorderSizePixel=0,
Parent=A}),p('Frame',{BackgroundTransparency=1,Name='Markers',Size=UDim2.new(1,0
,1,0),Parent=A}),false,false,false y.InputBegan:Connect(function(G)if n(G,
'Movement')and not D and w:CanScrollUp()then y.BackgroundTransparency=0.8 end if
not n(G,'StartAndEnd')or not w:CanScrollUp()then return end D=true y.
BackgroundTransparency=0.5 if w:CanScrollUp()then w:ScrollUp()w.Scrolled:Fire()
end local H,I=(tick())I=h.InputEnded:Connect(function(J)if not n(J,'StartAndEnd'
)then return end I:Disconnect()if t(y)and w:CanScrollUp()then y.
BackgroundTransparency=0.8 else y.BackgroundTransparency=1 end D=false end)while
D do if tick()-H>=0.3 and w:CanScrollUp()then w:ScrollUp()w.Scrolled:Fire()end
task.wait()end end)y.InputEnded:Connect(function(G)if n(G,'Movement')and not D then y
.BackgroundTransparency=1 end end)z.InputBegan:Connect(function(G)if n(G,
'Movement')and not D and w:CanScrollDown()then z.BackgroundTransparency=0.8 end
if not n(G,'StartAndEnd')or not w:CanScrollDown()then return end D=true z.
BackgroundTransparency=0.5 if w:CanScrollDown()then w:ScrollDown()w.Scrolled:
Fire()end local H,I=(tick())I=h.InputEnded:Connect(function(J)if not n(J,
'StartAndEnd')then return end I:Disconnect()if t(z)and w:CanScrollDown()then z.
BackgroundTransparency=0.8 else z.BackgroundTransparency=1 end D=false end)while
D do if tick()-H>=0.3 and w:CanScrollDown()then w:ScrollDown()w.Scrolled:Fire()
end task.wait()end end)z.InputEnded:Connect(function(G)if n(G,'Movement')and not D
then z.BackgroundTransparency=1 end end)B.InputBegan:Connect(function(G)if n(G,
'Movement')and not E then B.BackgroundTransparency=0.2 B.BackgroundColor3=w.
ThumbSelectColor end if not n(G,'StartAndEnd')then return end local H,I=w.
Horizontal and'X'or'Y'D=false F=false E=true B.BackgroundTransparency=0 local J,
K,L=(l[H]-B.AbsolutePosition[H])K=h.InputEnded:Connect(function(M)if not n(M,
'StartAndEnd')then return end K:Disconnect()if L then L:Disconnect()end if t(B)
then B.BackgroundTransparency=0.2 else B.BackgroundTransparency=0 B.
BackgroundColor3=w.ThumbColor end E=false end)w:Update()L=h.InputChanged:
Connect(function(M)if n(M,'Movement')and E and K.Connected then local N,O=A.
AbsoluteSize[H]-B.AbsoluteSize[H],l[H]-A.AbsolutePosition[H]-J if O>N then O=N
elseif O<0 then O=0 end if I~=O then I=O w:ScrollTo(math.floor(0.5+O/N*(w.
TotalSpace-w.VisibleSpace)))end task.wait()end end)end)B.InputEnded:Connect(function(
G)if n(G,'Movement')and not E then B.BackgroundTransparency=0 B.BackgroundColor3
=w.ThumbColor end end)A.InputBegan:Connect(function(G)if not n(G,'StartAndEnd')
or t(B)then return end local H,I=w.Horizontal and'X'or'Y',0 if l[H]>=B.
AbsolutePosition[H]+B.AbsoluteSize[H]then I=1 end local J=function()local J=w.
VisibleSpace-1 if I==0 and l[H]<B.AbsolutePosition[H]then w:ScrollTo(w.Index-J)
elseif I==1 and l[H]>=B.AbsolutePosition[H]+B.AbsoluteSize[H]then w:ScrollTo(w.
Index+J)end end E=false F=true J()local K,L=(tick())L=h.InputEnded:Connect(
function(M)if not n(M,'StartAndEnd')then return end L:Disconnect()F=false end)
while F do if tick()-K>=0.3 and t(A)then J()end task.wait()end end)x.
MouseWheelForward:Connect(function()w:ScrollTo(w.Index-w.WheelIncrement)end)x.
MouseWheelBackward:Connect(function()w:ScrollTo(w.Index+w.WheelIncrement)end)w.
GuiElems.ScrollThumb=B w.GuiElems.ScrollThumbFrame=A w.GuiElems.Button1=y w.
GuiElems.Button2=z w.GuiElems.MarkerFrame=C return x end s.Update=function(x,y)
local z,A,B,C=x.TotalSpace,x.VisibleSpace,x.GuiElems.Button1,x.GuiElems.Button2
x.Index=math.clamp(x.Index,0,math.max(0,z-A))if x.LastTotalSpace~=x.TotalSpace
then x.LastTotalSpace=x.TotalSpace x:UpdateMarkers()end if x:CanScrollUp()then
for D,E in pairs(B.Arrow:GetChildren())do E.BackgroundTransparency=0 end else B.
BackgroundTransparency=1 for D,E in pairs(B.Arrow:GetChildren())do E.
BackgroundTransparency=0.5 end end if x:CanScrollDown()then for D,E in pairs(C.
Arrow:GetChildren())do E.BackgroundTransparency=0 end else C.
BackgroundTransparency=1 for D,E in pairs(C.Arrow:GetChildren())do E.
BackgroundTransparency=0.5 end end v(x)end s.UpdateMarkers=function(x)local y=x.
GuiElems.MarkerFrame y:ClearAllChildren()for z,A in pairs(x.Markers)do if z<x.
TotalSpace then p('Frame',{BackgroundTransparency=0,BackgroundColor3=A,
BorderSizePixel=0,Position=x.Horizontal and UDim2.new(z/x.TotalSpace,0,1,-6)or
UDim2.new(1,-6,z/x.TotalSpace,0),Size=x.Horizontal and UDim2.new(0,1,0,6)or
UDim2.new(0,6,0,1),Name='Marker'..tostring(z),Parent=y})end end end s.AddMarker=
function(x,y,z)x.Markers[y]=z or Color3.new(0,0,0)end s.ScrollTo=function(x,y,z)
x.Index=y x:Update()if not z then x.Scrolled:Fire()end end s.ScrollUp=function(x
)x.Index=x.Index-x.Increment x:Update()end s.ScrollDown=function(x)x.Index=x.
Index+x.Increment x:Update()end s.CanScrollUp=function(x)return x.Index>0 end s.
CanScrollDown=function(x)return x.Index+x.VisibleSpace<x.TotalSpace end s.
GetScrollPercent=function(x)return x.Index/(x.TotalSpace-x.VisibleSpace)end s.
SetScrollPercent=function(x,y)x.Index=math.floor(y*(x.TotalSpace-x.VisibleSpace)
)x:Update()end s.Texture=function(x,y)x.ThumbColor=y.ThumbColor or Color3.new(0,
0,0)x.ThumbSelectColor=y.ThumbSelectColor or Color3.new(0,0,0)x.GuiElems.
ScrollThumb.BackgroundColor3=y.ThumbColor or Color3.new(0,0,0)x.Gui.
BackgroundColor3=y.FrameColor or Color3.new(0,0,0)x.GuiElems.Button1.
BackgroundColor3=y.ButtonColor or Color3.new(0,0,0)x.GuiElems.Button2.
BackgroundColor3=y.ButtonColor or Color3.new(0,0,0)for z,A in pairs(x.GuiElems.
Button1.Arrow:GetChildren())do A.BackgroundColor3=y.ArrowColor or Color3.new(0,0
,0)end for z,A in pairs(x.GuiElems.Button2.Arrow:GetChildren())do A.
BackgroundColor3=y.ArrowColor or Color3.new(0,0,0)end end s.SetScrollFrame=
function(x,y)if x.ScrollUpEvent then x.ScrollUpEvent:Disconnect()x.ScrollUpEvent
=nil end if x.ScrollDownEvent then x.ScrollDownEvent:Disconnect()x.
ScrollDownEvent=nil end x.ScrollUpEvent=y.MouseWheelForward:Connect(function()x:
ScrollTo(x.Index-x.WheelIncrement)end)x.ScrollDownEvent=y.MouseWheelBackward:
Connect(function()x:ScrollTo(x.Index+x.WheelIncrement)end)end local x={}x.
__index=s local y=function(y)local z=setmetatable({Index=0,VisibleSpace=0,
TotalSpace=0,Increment=1,WheelIncrement=1,Markers={},GuiElems={},Horizontal=y,
LastTotalSpace=0,Scrolled=q.Signal.new()},x)z.Gui=w(z)z:Texture{ThumbColor=
Color3.fromRGB(60,60,60),ThumbSelectColor=Color3.fromRGB(75,75,75),ArrowColor=
Color3.new(1,1,1),FrameColor=Color3.fromRGB(40,40,40),ButtonColor=Color3.
fromRGB(75,75,75)}return z end return{new=y}end)()q.CodeFrame=(function()local s
,t,u,v,w,x,y,z={},{[1]='String',[2]='String',[3]='String',[4]='Comment',[5]=
'Operator',[6]='Number',[7]='Keyword',[8]='BuiltIn',[9]='LocalMethod',[10]=
'LocalProperty',[11]='Nil',[12]='Bool',[13]='Function',[14]='Local',[15]='Self',
[16]='FunctionName',[17]='Bracket'},{['nil']=11,['true']=12,['false']=12,[
'function']=13,['local']=14,self=15},{['and']=true,['break']=true,['do']=true,[
'else']=true,['elseif']=true,['end']=true,['false']=true,['for']=true,[
'function']=true,['if']=true,['in']=true,['local']=true,['nil']=true,['not']=
true,['or']=true,['repeat']=true,['return']=true,['then']=true,['true']=true,[
'until']=true,['while']=true,plugin=true},{delay=true,elapsedTime=true,require=
true,spawn=true,tick=true,time=true,typeof=true,UserSettings=true,wait=true,warn
=true,game=true,shared=true,script=true,workspace=true,assert=true,
collectgarbage=true,error=true,getfenv=true,getmetatable=true,ipairs=true,
loadstring=true,newproxy=true,next=true,pairs=true,pcall=true,print=true,
rawequal=true,rawget=true,rawset=true,select=true,setfenv=true,setmetatable=true
,tonumber=true,tostring=true,type=true,unpack=true,xpcall=true,_G=true,_VERSION=
true,coroutine=true,debug=true,math=true,os=true,string=true,table=true,bit32=
true,utf8=true,Axes=true,BrickColor=true,CFrame=true,Color3=true,ColorSequence=
true,ColorSequenceKeypoint=true,DockWidgetPluginGuiInfo=true,Enum=true,Faces=
true,Instance=true,NumberRange=true,NumberSequence=true,NumberSequenceKeypoint=
true,PathWaypoint=true,PhysicalProperties=true,Random=true,Ray=true,Rect=true,
Region3=true,Region3int16=true,TweenInfo=true,UDim=true,UDim2=true,Vector2=true,
Vector2int16=true,Vector3=true,Vector3int16=true,Drawing=true,syn=true,crypt=
true,cache=true,bit=true,readfile=true,writefile=true,isfile=true,appendfile=
true,listfiles=true,loadfile=true,isfolder=true,makefolder=true,delfolder=true,
delfile=true,setclipboard=true,setfflag=true,getnamecallmethod=true,isluau=true,
setnonreplicatedproperty=true,getspecialinfo=true,saveinstance=true,
rconsoleprint=true,rconsoleinfo=true,rconsolewarn=true,rconsoleerr=true,
rconsoleclear=true,rconsolename=true,rconsoleinput=true,rconsoleinputasync=true,
printconsole=true,checkcaller=true,islclosure=true,iscclosure=true,dumpstring=
true,decompile=true,hookfunction=true,newcclosure=true,isrbxactive=true,keypress
=true,keyrelease=true,mouse1click=true,mouse1press=true,mouse1release=true,
mouse2click=true,mouse2press=true,mouse2release=true,mousescroll=true,
mousemoveabs=true,mousemoverel=true,getrawmetatable=true,setrawmetatable=true,
setreadonly=true,isreadonly=true,getsenv=true,getcallingscript=true,getgenv=true
,getrenv=true,getreg=true,getgc=true,getinstances=true,getnilinstances=true,
getscripts=true,getloadedmodules=true,getconnections=true,firesignal=true,
fireclickdetector=true,firetouchinterest=true,fireproximityprompt=true},false,{[
"'"]='&apos;',['"']='&quot;',['<']='&lt;',['>']='&gt;',['&']='&amp;'},'\u{cd}'
local A,B,C,D,E,F=(' %s%s '):format(z,z),{[('[^%s] %s'):format(z,z)]=0,[(' %s%s'
):format(z,z)]=-1,[('%s%s '):format(z,z)]=2,[('%s [^%s]'):format(z,z)]=1},{},
function()local A,B,C=getfenv(),type,tostring for D,E in next,w do local F=A[D]
if B(F)=='table'then local G={}for H,I in next,F do G[H]=true end w[D]=G end end
local D,E={},Enum:GetEnums()for F=1,#E do D[C(E[F])]=true end w.Enum=D x=true
end,function(A)local B=A.GuiElems.EditBox B.Focused:Connect(function()A:
ConnectEditBoxEvent()A.Editing=true end)B.FocusLost:Connect(function()A:
DisconnectEditBoxEvent()A.Editing=false end)B:GetPropertyChangedSignal'Text':
Connect(function()local C=B.Text if#C==0 or A.EditBoxCopying then return end C=C
:gsub('\t','    ')B.Text=''A:AppendText(C)end)end,function(A)local B,C=A.
GuiElems.LinesFrame,A.Lines B.InputBegan:Connect(function(D)if n(D,'StartAndEnd'
)then local E,F,G,H=math.ceil(A.FontSize/2),A.FontSize,l.X-B.AbsolutePosition.X,
l.Y-B.AbsolutePosition.Y local I,J,K,L,M,N,O=math.round(G/E)+A.ViewX,math.floor(
H/F)+A.ViewY,0,0 J=math.min(#C-1,J)local P=C[J+1]or''I=math.min(#P,I+A:
TabAdjust(I,J))A.SelectionRange={{-1,-1},{-1,-1}}A:MoveCursor(I,J)A.FloatCursorX
=I local Q=function()local Q,R=l.X-B.AbsolutePosition.X,l.Y-B.AbsolutePosition.Y
local S,T=math.max(0,math.round(Q/E)+A.ViewX),math.max(0,math.floor(R/F)+A.ViewY
)T=math.min(#C-1,T)local U=C[T+1]or''S=math.min(#U,S+A:TabAdjust(S,T))if T<J or(
T==J and S<I)then A.SelectionRange={{S,T},{I,J}}else A.SelectionRange={{I,J},{S,
T}}end A:MoveCursor(S,T)A.FloatCursorX=S A:Refresh()end M=h.InputEnded:Connect(
function(R)if n(R,'StartAndEnd')then M:Disconnect()N:Disconnect()O:Disconnect()A
:SetCopyableSelection()end end)N=h.InputChanged:Connect(function(R)if n(R,
'Movement')then local S,T,U,V=l.Y-B.AbsolutePosition.Y,l.Y-B.AbsolutePosition.Y-
B.AbsoluteSize.Y,l.X-B.AbsolutePosition.X,l.X-B.AbsolutePosition.X-B.
AbsoluteSize.X K=0 L=0 if T>0 then K=math.floor(T*0.05)+1 elseif S<0 then K=math
.ceil(S*0.05)-1 end if V>0 then L=math.floor(V*0.05)+1 elseif U<0 then L=math.
ceil(U*0.05)-1 end Q()end end)O=i.RenderStepped:Connect(function()if K~=0 or L~=
0 then A:ScrollDelta(L,K)Q()end end)A:Refresh()end end)end function s.
MakeEditorFrame(G)local H=o'TextButton'H.BackgroundTransparency=1 H.
TextTransparency=1 H.BackgroundColor3=Color3.fromRGB(40,40,40)H.BorderSizePixel=
0 H.Size=UDim2.fromOffset(100,100)H.Visible=true local I,J={},o'Frame'J.Name=
'Lines'J.BackgroundTransparency=1 J.Size=UDim2.new(1,0,1,0)J.ClipsDescendants=
true J.Parent=H local K=o'TextLabel'K.Name='LineNumbers'K.BackgroundTransparency
=1 K.FontFace=G.FontFace K.TextXAlignment=Enum.TextXAlignment.Right K.
TextYAlignment=Enum.TextYAlignment.Top K.ClipsDescendants=true K.RichText=true K
.Parent=H r.Name='Cursor'r.BackgroundColor3=Color3.fromRGB(220,220,220)r.
BorderSizePixel=0 r.Parent=H local L=o'TextBox'L.Name='EditBox'L.MultiLine=true
L.Visible=false L.Parent=H L.TextSize=G.FontSize L.FontFace=G.FontFace C.Invis=j
:Create(r,TweenInfo.new(0,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{
BackgroundTransparency=1})C.Vis=j:Create(r,TweenInfo.new(0,Enum.EasingStyle.
Quart,Enum.EasingDirection.Out),{BackgroundTransparency=0})local M=o'Frame'M.
BackgroundColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945)M
.BorderSizePixel=0 M.Name='ScrollCorner'M.Position=UDim2.new(1,-10,1,-10)M.Size=
UDim2.new(0,10,0,10)M.Visible=false I.ScrollCorner=M I.LinesFrame=J I.
LineNumbersLabel=K I.Cursor=r I.EditBox=L I.ScrollCorner.Parent=H J.InputBegan:
Connect(function(N)if n(N,'StartAndEnd')then G:SetEditing(true,N)end end)G.Frame
=H G.Gui=H G.GuiElems=I E(G)F(G)return H end s.GetSelectionText=function(G)if
not G:IsValidRange()then return''end local H=G.SelectionRange local I,J,K,L=H[1]
[1],H[1][2],H[2][1],H[2][2]local M,N=L-J,G.Lines if not N[J+1]or not N[L+1]then
return''end if M==0 then return G:ConvertText(N[J+1]:sub(I+1,K),false)end local
O,P=N[J+1]:sub(I+1),N[L+1]:sub(1,K)local Q=O..'\n'for R=J+1,L-1 do Q=Q..N[R+1]..
'\n'end Q=Q..P return G:ConvertText(Q,false)end s.SetCopyableSelection=function(
G)local H,I=G:GetSelectionText(),G.GuiElems.EditBox G.EditBoxCopying=true I.Text
=H I.SelectionStart=1 I.CursorPosition=#I.Text+1 G.EditBoxCopying=false end s.
ConnectEditBoxEvent=function(G)if G.EditBoxEvent then G.EditBoxEvent:Disconnect(
)end G.EditBoxEvent=h.InputBegan:Connect(function(H)if H.UserInputType~=Enum.
UserInputType.Keyboard then return end local I,J,K=Enum.KeyCode,H.KeyCode,
function(I,J)local K,L K=h.InputEnded:Connect(function(M)if M.KeyCode~=I then
return end K:Disconnect()L=true end)J()q.FastWait(0.5)while not L do J()q.
FastWait(0.03)end end if J==I.Down then K(I.Down,function()G.CursorX=G.
FloatCursorX G.CursorY=G.CursorY+1 G:UpdateCursor()G:JumpToCursor()end)elseif J
==I.Up then K(I.Up,function()G.CursorX=G.FloatCursorX G.CursorY=G.CursorY-1 G:
UpdateCursor()G:JumpToCursor()end)elseif J==I.Left then K(I.Left,function()local
L=G.Lines[G.CursorY+1]or''G.CursorX=G.CursorX-1-(L:sub(G.CursorX-3,G.CursorX)==A
and 3 or 0)if G.CursorX<0 then G.CursorY=G.CursorY-1 local M=G.Lines[G.CursorY+1
]or''G.CursorX=#M end G.FloatCursorX=G.CursorX G:UpdateCursor()G:JumpToCursor()
end)elseif J==I.Right then K(I.Right,function()local L=G.Lines[G.CursorY+1]or''G
.CursorX=G.CursorX+1+(L:sub(G.CursorX+1,G.CursorX+4)==A and 3 or 0)if G.CursorX>
#L then G.CursorY=G.CursorY+1 G.CursorX=0 end G.FloatCursorX=G.CursorX G:
UpdateCursor()G:JumpToCursor()end)elseif J==I.Backspace then K(I.Backspace,
function()local L,M if G:IsValidRange()then L=G.SelectionRange[1]M=G.
SelectionRange[2]else M={G.CursorX,G.CursorY}end if not L then local N=G.Lines[G
.CursorY+1]or''G.CursorX=G.CursorX-1-(N:sub(G.CursorX-3,G.CursorX)==A and 3 or 0
)if G.CursorX<0 then G.CursorY=G.CursorY-1 local O=G.Lines[G.CursorY+1]or''G.
CursorX=#O end G.FloatCursorX=G.CursorX G:UpdateCursor()L=L or{G.CursorX,G.
CursorY}end G:DeleteRange({L,M},false,true)G:ResetSelection(true)G:JumpToCursor(
)end)elseif J==I.Delete then K(I.Delete,function()local L,M if G:IsValidRange()
then L=G.SelectionRange[1]M=G.SelectionRange[2]else L={G.CursorX,G.CursorY}end
if not M then local N=G.Lines[G.CursorY+1]or''local O,P=G.CursorX+1+(N:sub(G.
CursorX+1,G.CursorX+4)==A and 3 or 0),G.CursorY if O>#N then P=P+1 O=0 end G:
UpdateCursor()M=M or{O,P}end G:DeleteRange({L,M},false,true)G:ResetSelection(
true)G:JumpToCursor()end)elseif h:IsKeyDown(Enum.KeyCode.LeftControl)then if J==
I.A then G.SelectionRange={{0,0},{#G.Lines[#G.Lines],#G.Lines-1}}G:
SetCopyableSelection()G:Refresh()end end end)end s.DisconnectEditBoxEvent=
function(G)if G.EditBoxEvent then G.EditBoxEvent:Disconnect()r.
BackgroundTransparency=1 s.CursorAnim(G,false)end end s.ResetSelection=function(
G,H)G.SelectionRange={{-1,-1},{-1,-1}}if not H then G:Refresh()end end s.
IsValidRange=function(G,H)local I=H or G.SelectionRange local J,K,L,M=I[1][1],I[
1][2],I[2][1],I[2][2]if J==-1 or(J==L and K==M)then return false end return true
end s.DeleteRange=function(G,H,I,J)H=H or G.SelectionRange if not G:
IsValidRange(H)then return end local K,L,M,N,O=G.Lines,H[1][1],H[1][2],H[2][1],H
[2][2]local P=O-M if not K[M+1]or not K[O+1]then return end local Q,R=K[M+1]:
sub(1,L),K[O+1]:sub(N+1)K[M+1]=Q..R local S=table.remove for T=1,P do S(K,M+2)
end if H==G.SelectionRange then G.SelectionRange={{-1,-1},{-1,-1}}end if J then
G.CursorX=L G.CursorY=M G:UpdateCursor()end if not I then G:ProcessTextChange()
end end s.AppendText=function(G,H)G:DeleteRange(nil,true,true)local I,J,K=G.
Lines,G.CursorX,G.CursorY local L=I[K+1]local M,N=L:sub(1,J),L:sub(J+1)H=H:gsub(
'\r\n','\n')H=G:ConvertText(H,true)local O,P=H:split'\n',table.insert for Q=1,#O
do local R=K+Q if Q>1 then P(I,R,'')end local S,T,U=O[Q],(Q==1 and M or''),(Q==#
O and N or'')I[R]=T..S..U end if#O>1 then J=0 end G:ProcessTextChange()G.CursorX
=J+#O[#O]G.CursorY=K+#O-1 G:UpdateCursor()end s.ScrollDelta=function(G,H,I)G.
ScrollV:ScrollTo(G.ScrollV.Index+I)G.ScrollH:ScrollTo(G.ScrollH.Index+H)end s.
TabAdjust=function(G,H,I)local J=G.Lines local K=J[I+1]H=H+1 if K then local L,M
,N=K:sub(H-1,H-1),K:sub(H,H),K:sub(H+1,H+1)local O=(#L>0 and L or' ')..(#M>0 and
M or' ')..(#N>0 and N or' ')for P,Q in pairs(B)do if O:find(P)then return Q end
end end return 0 end s.SetEditing=function(G,H,I)if I then G:UpdateCursor(I)end
if H then if G.Editable then G.GuiElems.EditBox.Text=''G.GuiElems.EditBox:
CaptureFocus()end else G.GuiElems.EditBox:ReleaseFocus()end end s.CursorAnim=
function(G,H)local I,J=G.GuiElems.Cursor,tick()G.LastAnimTime=J if not H then
return end C.Invis:Cancel()C.Vis:Cancel()I.BackgroundTransparency=0 coroutine.
wrap(function()while G.Editable do q.FastWait(0.5)if G.LastAnimTime~=J then
return end C.Invis:Play()q.FastWait(0.5)if G.LastAnimTime~=J then return end C.
Vis:Play()end end)()end s.MoveCursor=function(G,H,I)G.CursorX=H G.CursorY=I G:
UpdateCursor()G:JumpToCursor()end s.JumpToCursor=function(G)G:Refresh()end s.
UpdateCursor=function(G,H)local I,J=G.GuiElems.LinesFrame,G.GuiElems.Cursor
local K,L=math.max(0,I.AbsoluteSize.X),math.max(0,I.AbsoluteSize.Y)local M,N,O,P
,Q,R=math.ceil(L/G.FontSize),math.ceil(K/math.ceil(G.FontSize/2)),G.ViewX,G.
ViewY,tostring(#G.Lines),math.ceil(G.FontSize/2)local S=#Q*R+4*R if H then local
T=G.GuiElems.LinesFrame local U,V,W,X,Y,Z=T.AbsolutePosition.X,T.
AbsolutePosition.Y,H.Position.X,H.Position.Y,math.ceil(G.FontSize/2),G.FontSize
G.CursorX=G.ViewX+math.round((W-U)/Y)G.CursorY=G.ViewY+math.floor((X-V)/Z)end
local T,U=G.CursorX,G.CursorY local V=G.Lines[U+1]or''if T>#V then T=#V elseif T
<0 then T=0 end if U>=#G.Lines then U=math.max(0,#G.Lines-1)elseif U<0 then U=0
end T=T+G:TabAdjust(T,U)G.CursorX=T G.CursorY=U local W=(T>=O)and(U>=P)and(T<=O+
N)and(U<=P+M)if W then local X,Y=(T-O),(U-P)J.Position=UDim2.new(0,S+X*math.
ceil(G.FontSize/2)-1,0,Y*G.FontSize)J.Size=UDim2.new(0,1,0,G.FontSize+2)J.
Visible=true G:CursorAnim(true)else J.Visible=false end end s.MapNewLines=
function(G)local H,I,J,K,L={},1,G.Text,string.find,1 local M=K(J,'\n',L,true)
while M do H[I]=M I=I+1 L=M+1 M=K(J,'\n',L,true)end G.NewLines=H end s.
PreHighlight=function(G)local H=G.Text:gsub('\\\\','  ')local I,J,K,L,M,N=#H,{},
{},{},string.find,string.sub G.ColoredLines={}local O=function(O,P,Q,R)local S,T
=#J+1,1 local U,V,W=M(O,P,T,R)while U do J[S]=U K[U]=Q if W then L[U]=W end S=S+
1 T=V+1 U,V,W=M(O,P,T,R)end end O(H,'"',1,true)O(H,"'",2,true)O(H,'%[(=*)%[',3)
O(H,'--',4,true)table.sort(J)local P,Q,R,S,T=G.NewLines,0,0,0,{}for U=1,#J do
local V=J[U]if V<=S then continue end local W,X=V,K[V]if X==1 then W=M(H,'"',V+1
,true)while W and N(H,W-1,W-1)=='\\'do W=M(H,'"',W+1,true)end if not W then W=I
end elseif X==2 then W=M(H,"'",V+1,true)while W and N(H,W-1,W-1)=='\\'do W=M(H,
"'",W+1,true)end if not W then W=I end elseif X==3 then _,W=M(H,']'..L[V]..']',V
+1,true)if not W then W=I end elseif X==4 then local Y=K[V+2]if Y==3 then _,W=M(
H,']'..L[V+2]..']',V+1,true)if not W then W=I end else W=M(H,'\n',V+1,true)or I
end end while V>R do Q=Q+1 R=P[Q]or I+1 end while true do local Y=T[Q]if not Y
then Y={}T[Q]=Y end Y[V]={X,W}if W>R then Q=Q+1 R=P[Q]or I+1 else break end end
S=W end G.PreHighlights=T end s.HighlightLine=function(G,H)local I=G.
ColoredLines[H]if I then return I end local J,K,L,M,N,O,P,Q,R,S,T,U,V=string.sub
,string.find,string.match,{},G.PreHighlights[H]or{},G.Lines[H]or'',0,0,false,0,G
.NewLines[H-1]or 0,{}for W,X in next,N do local Y=W-T if Y<1 then Q=X[1]P=X[2]-T
else U[Y]={X[1],X[2]-T}end end for W=1,#O do if W<=P then M[W]=Q continue end
local X=U[W]if X then Q=X[1]P=X[2]M[W]=Q R=false V=nil S=0 else local Y=J(O,W,W)
if K(Y,'[%a_]')then local Z=L(O,'[%a%d_]+',W)local _=(v[Z]and 7)or(w[Z]and 8)P=W
+#Z-1 if _~=7 then if R then local aa=V and w[V]_=(aa and type(aa)=='table'and
aa[Z]and 8)or 10 end if _~=8 then local aa,ab,ac=K(O,'^%s*([%({"\'])',P+1)if aa
then _=(S>0 and ac=='('and 16)or 9 S=0 end end else _=u[Z]or _ S=(Z=='function'
and 1 or 0)end V=Z R=false if S>0 then S=1 end if _ then Q=_ M[W]=Q else Q=nil
end elseif K(Y,'%p')then local aa=(Y=='.')local ab=aa and K(J(O,W+1,W+1),'%d')M[
W]=(ab and 6 or 5)if not ab then local ac=aa and L(O,'%.%.?%.?',W)if ac and#ac>1
then Q=5 P=W+#ac-1 R=false V=nil S=0 else if aa then if R then V=nil else R=true
end else R=false V=nil end S=((aa or Y==':')and S==1 and 2)or 0 end end elseif
K(Y,'%d')then local aa,ab=K(O,'%x+',W)local ac=J(O,ab,ab+1)if(ac=='e+'or ac==
'e-')and K(J(O,ab+2,ab+2),'%d')then ab=ab+1 end Q=6 P=ab M[W]=6 R=false V=nil S=
0 else M[W]=Q local aa,ab=K(O,'%s+',W)if ab then P=ab end end end end G.
ColoredLines[H]=M return M end s.Refresh=function(aa)local ab=aa.Frame.Lines
local ac,G=math.max(0,ab.AbsoluteSize.X),math.max(0,ab.AbsoluteSize.Y)local H,I,
J,K,L,M,N=math.ceil(G/aa.FontSize),math.ceil(ac/math.ceil(aa.FontSize/2)),string
.gsub,string.sub,aa.ViewX,aa.ViewY,''for O=1,H do local P=aa.LineFrames[O]if not
P then P=o'Frame'P.Name='Line'P.Position=UDim2.new(0,0,0,(O-1)*aa.FontSize)P.
Size=UDim2.new(1,0,0,aa.FontSize)P.BorderSizePixel=0 P.BackgroundTransparency=1
local Q=o'Frame'Q.Name='SelectionHighlight'Q.BorderSizePixel=0 Q.
BackgroundColor3=d.Theme.Syntax.SelectionBack Q.Parent=P Q.
BackgroundTransparency=0.7 local R=o'TextLabel'R.Name='Label'R.
BackgroundTransparency=1 R.FontFace=aa.FontFace R.TextSize=aa.FontSize R.Size=
UDim2.new(1,0,0,aa.FontSize)R.RichText=true R.TextXAlignment=Enum.TextXAlignment
.Left R.TextColor3=aa.Colors.Text R.ZIndex=2 R.Parent=P P.Parent=ab aa.
LineFrames[O]=P end local Q=M+O local R,S,T,U,V=aa.Lines[Q]or'','',aa:
HighlightLine(Q),L+1,aa.RichTemplates local W,X,Y=V.Text,V.Selection,T[U]local Z
,_=V[t[Y] ]or W,aa.SelectionRange local ad,ae,af=_[1],_[2],Q-1 if af>=ad[2]and
af<=ae[2]then local ag,ah=math.ceil(aa.FontSize/2),(af==ad[2]and ad[1]or 0)-L
local ai=(af==ae[2]and ae[1]-ah-L or I+L)P.SelectionHighlight.Position=UDim2.
new(0,ah*ag,0,0)P.SelectionHighlight.Size=UDim2.new(0,ai*ag,1,0)P.
SelectionHighlight.Visible=true else P.SelectionHighlight.Visible=false end for
ag=2,I do local ah=L+ag local ai=T[ah]if ai~=Y then local aj=V[t[ai] ]or W if aj
~=Z then local ak=J(K(R,U,ah-1),'[\'"<>&]',y)S=S..(Z~=W and(Z..ak..'</font>')or
ak)U=ah Z=aj end Y=ai end end local ag=J(K(R,U,L+I),'[\'"<>&]',y)if#ag>0 then S=
S..(Z~=W and(Z..ag..'</font>')or ag)end if aa.Lines[Q]then N=N..(Q-1==aa.CursorY
and('<b>'..Q..'</b>\n')or Q..'\n')end P.Label.Text=S end for ad=H+1,#aa.
LineFrames do aa.LineFrames[ad]:Destroy()aa.LineFrames[ad]=nil end aa.Frame.
LineNumbers.Text=N aa:UpdateCursor()end s.UpdateView=function(aa,al)al=(al or 0)+
1 local ab,ac=tostring(#aa.Lines),math.ceil(aa.FontSize/2)local ad,ae=#ab*ac+4*
ac,aa.Frame.Lines local af,ag=ae.AbsoluteSize.X,ae.AbsoluteSize.Y local ah,ai,aj
,ak=math.ceil(ag/aa.FontSize),aa.MaxTextCols*ac,aa.ScrollV,aa.ScrollH aj.
VisibleSpace=ah aj.TotalSpace=#aa.Lines+1 ak.VisibleSpace=math.ceil(af/ac)ak.
TotalSpace=aa.MaxTextCols+1 aj.Gui.Visible=#aa.Lines+1>ah ak.Gui.Visible=ai>af
local G=aa.FrameOffsets aa.FrameOffsets=Vector2.new(aj.Gui.Visible and-10 or 0,
ak.Gui.Visible and-10 or 0)if G~=aa.FrameOffsets and al<3 then aa:UpdateView(al)
else aj:ScrollTo(aa.ViewY,true)ak:ScrollTo(aa.ViewX,true)if aj.Gui.Visible and
ak.Gui.Visible then aj.Gui.Size=UDim2.new(0,10,1,-10)ak.Gui.Size=UDim2.new(1,-10
,0,10)aa.GuiElems.ScrollCorner.Visible=true else aj.Gui.Size=UDim2.new(0,10,1,0)
ak.Gui.Size=UDim2.new(1,0,0,10)aa.GuiElems.ScrollCorner.Visible=false end aa.
ViewY=aj.Index aa.ViewX=ak.Index aa.Frame.Lines.Position=UDim2.new(0,ad,0,0)aa.
Frame.Lines.Size=UDim2.new(1,-ad+G.X,1,G.Y)aa.Frame.LineNumbers.Position=UDim2.
new(0,ac,0,0)aa.Frame.LineNumbers.Size=UDim2.new(0,#ab*ac,1,G.Y)aa.Frame.
LineNumbers.TextSize=aa.FontSize end end s.ProcessTextChange=function(aa)local
ab,ac=0,aa.Lines for ad=1,#ac do local ae=#ac[ad]if ae>ab then ab=ae end end aa.
MaxTextCols=ab aa:UpdateView()aa.Text=table.concat(aa.Lines,'\n')aa:MapNewLines(
)aa:PreHighlight()aa:Refresh()end s.ConvertText=function(aa,ab,ac)if ac then
local ad=ab:gsub('\t','    ')return ad:gsub('\t',(' %s%s '):format(z,z))else
return ab:gsub((' %s%s '):format(z,z),'\t')end end s.GetText=function(aa)local
ab=table.concat(aa.Lines,'\n')return aa:ConvertText(ab,false)end s.SetText=
function(aa,ab)ab=aa:ConvertText(ab,true)local ac=aa.Lines table.clear(ac)local
ad=1 for ae in ab:gmatch'([^\n\r]*)[\n\r]?'do ac[ad]=ae ad=ad+1 end aa:
ProcessTextChange()end s.ClearText=function(aa)local ab,ac=aa:ConvertText('',
true),aa.Lines table.clear(ac)local ad=1 for ae in ab:gmatch'([^\n\r]*)[\n\r]?'
do ac[ad]=ae ad=ad+1 end aa:ProcessTextChange()end s.CompileText=function(aa)
local ab=pcall(function()local ab=table.concat(aa.Lines,'\n')local ac=aa:
ConvertText(ab,false)loadstring(ac)()end)return ab end s.ReturnErrors=function(
aa)local ab,ac=pcall(function()local ab=table.concat(aa.Lines,'\n')local ac=aa:
ConvertText(ab,false)loadstring(ac)()end)return not ab and ac or nil end s.
GetVersion=function(aa)return b end s.MakeRichTemplates=function(aa)local ab,ac=
math.floor,{}for ad,ae in pairs(aa.Colors)do ac[ad]=('<font color="rgb(%s,%s,%s)">'
):format(ab(ae.r*255),ab(ae.g*255),ab(ae.b*255))end aa.RichTemplates=ac end s.
ApplyTheme=function(aa)local ab=d.Theme.Syntax aa.Colors=ab aa.Frame.LineNumbers
.TextColor3=ab.Text aa.Frame.BackgroundColor3=ab.Background end local aa={
__index=s}local ab=function(ab)ab=ab or{}if not x then D()end local ac,ad=q.
ScrollBar.new(),q.ScrollBar.new(true)ad.Gui.Position=UDim2.new(0,0,1,-10)local
ae={FontFace=Font.fromEnum(Enum.Font.Code),FontSize=14,ViewX=0,ViewY=0,Colors=d.
Theme.Syntax,ColoredLines={},Lines={''},LineFrames={},Editable=true,Editing=
false,CursorX=0,CursorY=0,FloatCursorX=0,Text='',PreHighlights={},SelectionRange
={{-1,-1},{-1,-1}},NewLines={},FrameOffsets=Vector2.new(0,0),MaxTextCols=0,
ScrollV=ac,ScrollH=ad}local af=m(ae,ab)local ag=setmetatable(af,aa)s.
SetTextMultiplier=(function(ah)ag.FontSize=ah end)s.GetTextMultiplier=(function(
)return ag.FontSize end)ac.WheelIncrement=3 ad.Increment=2 ad.WheelIncrement=7
ac.Scrolled:Connect(function()ag.ViewY=ac.Index ag:Refresh()end)ad.Scrolled:
Connect(function()ag.ViewX=ad.Index ag:Refresh()end)ag:MakeEditorFrame(ag)ag:
MakeRichTemplates()ag:ApplyTheme()ac:SetScrollFrame(ag.Frame.Lines)ac.Gui.Parent
=ag.Frame ad.Gui.Parent=ag.Frame ag:UpdateView()ag:SetText(af.Text)ag.Frame:
GetPropertyChangedSignal'AbsoluteSize':Connect(function()ag:UpdateView()ag:
Refresh()end)return ag end return{new=ab}end)()return q end function a.b()local
aa,ab,ac={Services={},OnInitConnections={}},get_hidden_gui or gethui,cloneref or
function(...)return...end local ad=aa.Services setmetatable(ad,{__index=function
(ae,af)local ag=game:GetService(af)return ac(ag)end})local ae,af=(ad.CoreGui)
function aa:AddOnInit(ag)local ah=self.OnInitConnections table.insert(ah,ag)end
function aa:NewReference(ag)return ac(ag)end function aa:CallOnInitConnections(
ag,...)local ah=self.OnInitConnections af=ag for ai,aj in next,ah do aj(af,...)
end end function aa:SetProperties(ag,ah)for ai,aj in next,ah do pcall(function()
ag[ai]=aj end)end end function aa:NewClass(ag,ah)ah=ah or{}ag.__index=ag return
setmetatable(ah,ag)end function aa:CheckConfig(ag,ah,ai,aj)if not ag then return
end for ak,b in next,ah do if ag[ak]~=nil then continue end if aj then if table.
find(aj,ak)then continue end end if ai then b=b()end ag[ak]=b end return ag end
function aa:ResolveUIParent()local ag,ah=af.PlayerGui,af.Debug local ai,aj={[1]=
function()local ai=ab()if ai.Parent==ae then return end return ai end,[2]=
function()return ae end,[3]=function()return ag end},af:CreateInstance'ScreenGui'
for ak,b in next,ai do local c,d=pcall(b)if not c or not d then continue end
local e=pcall(function()aj.Parent=d end)if not e then continue end if ah then af
:Warn(`Step: {ak} was chosen as the parent!: {d}`)end aj:Destroy()return d end
aj:Destroy()af:Warn'The ReGui container does not have a parent defined'return nil
end function aa:GetChildOfClass(ag,ah)local ai=ag:FindFirstChildOfClass(ah)if
not ai then ai=af:CreateInstance(ah,ag)end return ai end function aa:
CheckAssetUrl(ag)if tonumber(ag)then return`rbxassetid://{ag}`end return ag end
function aa:SetPadding(ag,ah)if not ag then return end self:SetProperties(ag,{
PaddingBottom=ah,PaddingLeft=ah,PaddingRight=ah,PaddingTop=ah})end return aa end
function a.c()local aa,ab=a.load'b',{DefaultTweenInfo=TweenInfo.new(0.08)}local
ac=aa.Services local ad=ac.TweenService function ab:Tween(ae)local af,ag,ah=self
.DefaultTweenInfo,ae.Object,ae.NoAnimation local ai,aj,ak,b=ae.Tweeninfo or af,
ae.EndProperties,ae.StartProperties,ae.Completed if ak then aa:SetProperties(ag,
ak)end if ah then aa:SetProperties(ag,aj)if b then b()end return end local c for
d,e in next,aj do local f={[d]=e}local g,h=pcall(function()return ad:Create(ag,
ai,f)end)if not g then aa:SetProperties(ag,f)continue end if not c then c=h end
h:Play()end if b then if c then c.Completed:Connect(b)else b()end end return c
end function ab:Animate(ae)local af,ag,ah,ai,aj=ae.NoAnimation,ae.Objects,ae.
Tweeninfo,(ae.Completed)for ak,b in next,ag do local c=self:Tween{NoAnimation=af
,Object=ak,Tweeninfo=ah,EndProperties=b}if not aj then aj=c end end if ai and aj
then aj.Completed:Connect(ai)elseif ai then ai()end return aj end function ab:
HeaderCollapseToggle(ae)aa:CheckConfig(ae,{Rotations={Open=90,Closed=0}})local
af,ag,ah,ai,aj=ae.Toggle,ae.NoAnimation,ae.Rotations,ae.Collapsed,ae.Tweeninfo
local ak=ai and ah.Closed or ah.Open self:Tween{Tweeninfo=aj,NoAnimation=ag,
Object=af,EndProperties={Rotation=ak}}end function ab:HeaderCollapse(ae)local af
,ag,ah,ai,aj,ak,b,c,d,e,f=ae.Tweeninfo,ae.Collapsed,ae.ClosedSize,ae.OpenSize,ae
.Toggle,ae.Resize,ae.Hide,ae.NoAnimation,ae.NoAutomaticSize,ae.IconRotations,ae.
Completed if not d then ak.AutomaticSize=Enum.AutomaticSize.None end if not ag
then b.Visible=true end self:HeaderCollapseToggle{Tweeninfo=af,Collapsed=ag,
NoAnimation=c,Toggle=aj,Rotations=e}local g=self:Tween{Tweeninfo=af,NoAnimation=
c,Object=ak,StartProperties={Size=ag and ai or ah},EndProperties={Size=ag and ah
or ai},Completed=function()b.Visible=not ag if f then f()end if ag then return
end if d then return end ak.Size=UDim2.fromScale(1,0)ak.AutomaticSize=Enum.
AutomaticSize.Y end}return g end return ab end function a.d()local aa={}aa.
__index=aa local ab=a.load'b'function aa:Fire(...)local ac=self:GetConnections()
if#ac<=0 then return end for ad,ae in next,ac do ae(...)end end function aa:
GetConnections()local ac=self.Connections return ac end function aa:Connect(ac)
local ad=self:GetConnections()table.insert(ad,ac)end function aa:
DisconnectConnections()local ac=self:GetConnections()table.clear(ac)end function
aa:NewSignal()return ab:NewClass(aa,{Connections={}})end return aa end function
a.e()return function(aa)local ab=aa:Window{Title='Configuration saving',Size=
UDim2.fromOffset(300,200)}local ac,ad=(ab:Row())ac:Button{Text='Dump Ini',
Callback=function()print(aa:DumpIni(true))end}ac:Button{Text='Save Ini',Callback
=function()ad=aa:DumpIni(true)end}ac:Button{Text='Load Ini',Callback=function()
if not ad then warn'No save data!'return end aa:LoadIni(ad,true)end}ab:Separator
()ab:SliderInt{IniFlag='MySlider',Value=5,Minimum=1,Maximum=32}ab:Checkbox{
IniFlag='MyCheckbox',Value=true}ab:InputText{IniFlag='MyInput',Value=
'Hello world!'}ab:Keybind{IniFlag='MyKeybind',Label=
'Keybind (w/ Q & Left-Click blacklist)',KeyBlacklist={Enum.UserInputType.
MouseButton1,Enum.KeyCode.Q}}local ae=aa:TabsWindow{Title='Tabs window!',Visible
=false,Size=UDim2.fromOffset(300,200)}for af,ag in{'Avocado','Broccoli',
'Cucumber'}do local ah=ae:CreateTab{Name=ag}ah:Label{Text=`This is the {ag} tab!`
}end local af=aa.Elements:Label{Parent=aa.Container.Windows,Visible=false,
UiPadding=UDim.new(0,8),CornerRadius=UDim.new(0,2),Position=UDim2.fromOffset(10,
10),Size=UDim2.fromOffset(250,50),Border=true,BorderThickness=1,BorderColor=aa.
Accent.Gray,BackgroundTransparency=0.4,BackgroundColor3=aa.Accent.Black}game:
GetService'RunService'.RenderStepped:Connect(function(ag)if not af.Visible then
return end local ah,ai,aj=math.round(1/ag),DateTime.now():FormatLocalTime(
'dddd h:mm:ss A','en-us'),`ReGui {aa:GetVersion()}\n`aj..=`FPS: {ah}\n`aj..=`The time is {
ai}`af.Text=aj end)local ag=aa:Window{Title='Dear ReGui Demo',Size=UDim2.new(0,
400,0,300),NoScroll=true}:Center()local ah=ag:MenuBar()local ai=ah:MenuItem{Text
='Menu'}ai:Selectable{Text='New'}ai:Selectable{Text='Open'}ai:Selectable{Text=
'Save'}ai:Selectable{Text='Save as'}ai:Selectable{Text='Exit',Callback=function(
)ag:Close()end}local aj=ah:MenuItem{Text='Examples'}aj:Selectable{Text=
'Print hello world',Callback=function()print'Hello world!'end}aj:Selectable{Text
='Tabs window',Callback=function()ae:ToggleVisibility()end}aj:Selectable{Text=
'Configuration saving',Callback=function()ab:ToggleVisibility()end}aj:Selectable
{Text='Watermark',Callback=function()af.Visible=not af.Visible end}ag:Label{Text
=`Dear ReGui says hello! ({aa:GetVersion()})`}local ak=ag:ScrollingCanvas{Fill=
true,UiPadding=UDim.new(0,0)}local b=ak:CollapsingHeader{Title='Help'}b:
Separator{Text='ABOUT THIS DEMO:'}b:BulletText{Rows={
[[Sections below are demonstrating many aspects of the library.]]}}b:Separator{
Text='PROGRAMMER GUIDE:'}b:BulletText{Rows={
[[See example FAQ, examples, and documentation at https://depso.gitbook.io/regui]]
}}b:Indent():BulletText{Rows={'See example applications in the /demo folder.'}}
local c=ak:CollapsingHeader{Title='Configuration'}local d=c:TreeNode{Title=
'Backend Flags'}d:Checkbox{Label='ReGui:IsMobileDevice',Disabled=true,Value=aa:
IsMobileDevice()}d:Checkbox{Label='ReGui:IsConsoleDevice',Disabled=true,Value=aa
:IsConsoleDevice()}local e=c:TreeNode{Title='Style'}e:Combo{Selected='DarkTheme'
,Label='Colors',Items=aa.ThemeConfigs,Callback=function(f,g)ag:SetTheme(g)end}
local f,g=ak:CollapsingHeader{Title='Window options'}:Table{MaxColumns=3}:
NextRow(),{NoResize=false,NoTitleBar=false,NoClose=false,NoCollapse=false,
OpenOnDoubleClick=true,NoBringToFrontOnFocus=false,NoMove=false,NoSelect=false,
NoScrollBar=false,NoBackground=false}for h,i in pairs(g)do local j=f:NextColumn(
)j:Checkbox{Value=i,Label=h,Callback=function(k,l)ag:UpdateConfig{[h]=l}end}end
local h,i,m=ak:CollapsingHeader{Title='Widgets'},{'Basic','Tooltips',
'Tree Nodes','Collapsing Headers','Bullets','Text','Images','Videos','Combo',
'Tabs','Plot widgets','Multi-component Widgets','Progress Bars','Picker Widgets'
,'Code editor','Console','List layout','Indent','Viewport','Keybinds','Input',
'Text Input'},{Basic=function(h)h:Separator{Text='General'}local i=h:Row()local
j=i:Label{Text='Thanks for clicking me!',Visible=false,LayoutOrder=2}i:Button{
Callback=function()j.Visible=not j.Visible end}h:Checkbox()local k=h:Row()k:
Radiobox{Label='radio a'}k:Radiobox{Label='radio b'}k:Radiobox{Label='radio c'}
local l=h:Row()for m=1,7 do local n=m/7 l:Button{Text='Click',BackgroundColor3=
Color3.fromHSV(n,0.6,0.6)}end local m=h:Button{Text='Tooltip'}aa:SetItemTooltip(
m,function(n)n:Label{Text='I am a tooltip'}end)h:Separator{Text='Inputs'}h:
InputText{Value='Hello world!'}h:InputText{Placeholder='Enter text here',Label=
'Input text (w/ hint)',Value=''}h:InputInt{Value=50}h:InputInt{Label=
'Input Int (w/ limit)',Value=5,Maximum=10,Minimum=1}h:Separator{Text='Drags'}h:
DragInt()h:DragInt{Maximum=100,Minimum=0,Label='Drag Int 0..100',Format='%d%%'}h
:DragFloat{Maximum=1,Minimum=0,Value=0.5}h:Separator{Text='Sliders'}h:SliderInt{
Format='%.d/%s',Value=5,Minimum=1,Maximum=32,ReadOnly=false}:SetValue(8)h:
SliderInt{Label='Slider Int (w/ snap)',Value=1,Minimum=1,Maximum=8,Type='Snap'}h
:SliderFloat{Label='Slider Float',Minimum=0,Maximum=1,Format='Ratio = %.3f'}h:
SliderFloat{Label='Slider Angle',Minimum=-360,Maximum=360,Format='%.f deg'}h:
SliderEnum{Items={'Fire','Earth','Air','Water'},Value=2}h:SliderEnum{Items={
'Fire','Earth','Air','Water'},Value=2,Disabled=true,Label='Disabled Enum'}h:
SliderProgress{Label='Progress Slider',Value=8,Minimum=1,Maximum=32}h:Separator{
Text='Selectors/Pickers'}h:InputColor3{Value=aa.Accent.Light,Label='Color 1'}h:
SliderColor3{Value=aa.Accent.Light,Label='Color 2'}h:InputCFrame{Value=CFrame.
new(1,1,1),Minimum=CFrame.new(0,0,0),Maximum=CFrame.new(200,100,50),Label=
'CFrame 1'}h:SliderCFrame{Value=CFrame.new(1,1,1),Minimum=CFrame.new(0,0,0),
Maximum=CFrame.new(200,100,50),Label='CFrame 2'}h:Combo{Selected=1,Items={'AAAA'
,'BBBB','CCCC','DDDD','EEEE','FFFF','GGGG','HHHH','IIIIIII','JJJJ','KKKKKKK'}}
end,Tooltips=function(h)h:Separator{Text='General'}local i=h:Button{Text='Basic'
,Size=UDim2.fromScale(1,0)}aa:SetItemTooltip(i,function(j)n:Label{Text=
'I am a tooltip'}end)local j=h:Button{Text='Fancy',Size=UDim2.fromScale(1,0)}aa:
SetItemTooltip(j,function(k)k:Label{Text='I am a fancy tooltip'}k:Image{Image=
18395893036}local l=k:Label()while task.wait(0.1)do if not l.Parent then break
end l.Text=`Sin(time) = {math.sin(tick())}`end end)local k=h:Button{Text=
'Double tooltip',Size=UDim2.fromScale(1,0)}for l=1,3 do aa:SetItemTooltip(k,
function(m)m:Label{Text=`I am tooltip {l}`}end)end end,Videos=function(h)local i
=h:VideoPlayer{Video=5608327482,Looped=true,Ratio=1.7777777777777777,
RatioAspectType=Enum.AspectType.FitWithinMaxSize,RatioAxis=Enum.DominantAxis.
Width,Size=UDim2.fromScale(1,1)}i:Play()local k=h:Row{Expanded=true}k:Button{
Text='Pause',Callback=function()i:Pause()end}k:Button{Text='Play',Callback=
function()i:Play()end}local l=k:SliderInt{Format='%.f',Value=0,Minimum=0,Maximum
=math.max(1,i.TimeLength),Callback=function(l,m)i.TimePosition=m end}game:
GetService'RunService'.RenderStepped:Connect(function(m)if i.IsLoaded and i.
Playing then l.Maximum=math.max(1,i.TimeLength)l:SetValue(i.TimePosition)end end
)end,['Tree Nodes']=function(h)for i=1,5 do local k=h:TreeNode{Title=`Child {i}`
,Collapsed=i~=1}local l=k:Row()l:Label{Text='Blah blah'}l:SmallButton{Text=
'Button'}end h:TreeNode{Title=`With icon & NoArrow`,NoArrow=true,Icon=aa.Icons.
Image}end,['Collapsing Headers']=function(h)local i h:Checkbox{Value=true,Label=
'Show 2nd header',Callback=function(k,l)if i then i:SetVisible(l)end end}h:
Checkbox{Value=true,Label='2nd has arrow',Callback=function(k,l)if i then i:
SetArrowVisible(l)end end}local k=h:CollapsingHeader{Title='Header'}for l=1,5 do
k:Label{Text=`Some content {l}`}end i=h:CollapsingHeader{Title='Second Header'}
for l=1,5 do i:Label{Text=`More content {l}`}end end,Bullets=function(h)h:
BulletText{Rows={'Bullet point 1','Bullet point 2\nOn multiple lines'}}h:
TreeNode():BulletText{Rows={'Another bullet point'}}h:Bullet():Label{Text=
'Bullet point 3 (two calls)'}h:Bullet():SmallButton()end,Text=function(h)local i
=h:TreeNode{Title='Colorful Text'}i:Label{TextColor3=Color3.fromRGB(255,0,255),
Text='Pink',NoTheme=true}i:Label{TextColor3=Color3.fromRGB(255,255,0),Text=
'Yellow',NoTheme=true}i:Label{TextColor3=Color3.fromRGB(59,59,59),Text=
'Disabled',NoTheme=true}local k=h:TreeNode{Title='Word Wrapping'}k:Label{Text=
[[This text should automatically wrap on the edge of the window. The current implementation for text wrapping follows simple rules suitable for English and possibly other languages.]]
,TextWrapped=true}local l k:SliderInt{Label='Wrap width',Value=400,Minimum=20,
Maximum=600,Callback=function(m,n)if not l then return end l.Size=UDim2.
fromOffset(n,0)end}k:Label{Text='Test paragraph:'}l=k:Label{Text=
[[The lazy dog is a good dog. This paragraph should fit. Testing a 1 character word. The quick brown fox jumps over the lazy dog.]]
,TextWrapped=true,Border=true,BorderColor=Color3.fromRGB(255,255,0),
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.fromOffset(400,0)}end,Images=
function(h)h:Label{TextWrapped=true,Text=
[[Below we are displaying the icons (which are the ones builtin to ReGui in this demo). Hover the texture for a zoomed view!]]
}h:Label{TextWrapped=true,Text=`There is a total of {aa:GetDictSize(aa.Icons)} icons in this demo!`
}local i,k,l=(h:List{Border=true})aa:SetItemTooltip(i,function(m)k=m:Label()l=m:
Image{Size=UDim2.fromOffset(50,50)}end)for m,n in aa.Icons do local o=i:Image{
Image=n,Size=UDim2.fromOffset(30,30)}aa:DetectHover(o,{MouseEnter=true,OnInput=
function()if k and l then k.Text=m l.Image=n end end})end end,Tabs=function(h)
local i=h:TreeNode{Title='Basic'}local k,l=i:TabSelector(),{'Avocado','Broccoli'
,'Cucumber'}for m,n in next,l do k:CreateTab{Name=n}:Label{Text=`This is the {n} tab!\nblah blah blah blah blah`
}end local m=h:TreeNode{Title='Advanced & Close Button'}local n,o=m:TabSelector(
),{'Artichoke','Beetroot','Celery','Daikon'}for p,q in next,o do local r=n:
CreateTab{Name=q,Closeable=true}r:Label{Text=`This is the {q} tab!\nblah blah blah blah blah`
}end m:Button{Text='Add tab',Callback=function()n:CreateTab{Closeable=true}:
Label{Text='I am an odd tab.'}end}end,['Plot widgets']=function(h)local i=h:
PlotHistogram{Points={0.6,0.1,1,0.5,0.92,0.1,0.2}}h:Button{Text=
'Generate new graph',Callback=function()local m={}for n=1,math.random(5,10)do
table.insert(m,math.random(1,10))end i:PlotGraph(m)end}end,[
'Multi-component Widgets']=function(h)h:Separator{Text='2-wide'}h:InputInt2{
Value={10,50},Minimum={0,0},Maximum={20,100},Callback=function(i,m)print('1:',m[
1],'2:',m[2])end}h:SliderInt2()h:SliderFloat2()h:DragInt2()h:DragFloat2()h:
Separator{Text='3-wide'}h:InputInt3()h:SliderInt3()h:SliderFloat3()h:DragInt3()h
:DragFloat3()h:Separator{Text='4-wide'}h:InputInt4()h:SliderInt4()h:
SliderFloat4()h:DragInt4()h:DragFloat4()end,['Progress Bars']=function(h)local i
=h:ProgressBar{Label='Loading...',Value=80}task.spawn(function()local m=0 while
task.wait(0.1)do m+=1 i:SetPercentage(m%100)end end)end,['Picker Widgets']=
function(h)h:Separator{Text='Color pickers'}h:DragColor3{Value=aa.Accent.Light}h
:SliderColor3{Value=aa.Accent.Red}h:InputColor3{Value=aa.Accent.Green}h:
Separator{Text='CFrame pickers'}h:DragCFrame{Value=CFrame.new(1,1,1),Minimum=
CFrame.new(0,0,0),Maximum=CFrame.new(200,100,50)}h:SliderCFrame()h:InputCFrame()
end,['Code editor']=function(h)h:CodeEditor{Text=
'print("Hello from ReGui\'s editor!")',Editable=true}end,Console=function(h)
local i=h:TreeNode{Title='Basic'}local m,n=i:Console{ReadOnly=true,AutoScroll=
true,MaxLines=50},h:TreeNode{Title='Advanced & RichText'}local o,p=n:Console{
ReadOnly=true,AutoScroll=true,RichText=true,MaxLines=50},h:TreeNode{Title=
'Editor'}p:Console{Value="print('Hello world!')",LineNumbers=true}task.spawn(
function()while task.wait(0.5)do local q=DateTime.now():FormatLocalTime(
'h:mm:ss A','en-us')o:AppendText(`<font color="rgb(240, 40, 10)">[Random]</font>`
,math.random())m:AppendText(`[{q}] Hello world!`)end end)end,Combo=function(h)h:
Combo{WidthFitPreview=true,Label='WidthFitPreview',Selected=1,Items={
'AAAAAAAAAAAA','BBBBBBBB','CCCCC','DDD'}}h:Separator{Text='One-liner variants'}h
:Combo{Label='Combo 1 (array)',Selected=1,Items={'AAAA','BBBB','CCCC','DDDD',
'EEEE','FFFF','GGGG','HHHH','IIIIIII','JJJJ','KKKKKKK'}}h:Combo{Label=
'Combo 1 (dict)',Selected='AAA',Items={AAA='Apple',BBB='Banana',CCC='Orange'},
Callback=print}h:Combo{Label='Combo 2 (function)',Selected=1,GetItems=function()
return{'aaa','bbb','ccc'}end}end,Indent=function(h)h:Label{Text=
'This is not indented'}local i=h:Indent{Offset=30}i:Label{Text=
'This is indented by 30 pixels'}local m=i:Indent{Offset=30}m:Label{Text=
'This is indented by 30 more pixels'}end,Viewport=function(h)local i=aa:
InsertPrefab'R15 Rig'local m=h:Viewport{Size=UDim2.new(1,0,0,200),Clone=true,
Model=i}local n=m.Model n:PivotTo(CFrame.new(0,-2.5,-5))local o=game:GetService
'RunService'o.RenderStepped:Connect(function(p)local q=CFrame.Angles(0,math.rad(
30*p),0)local r=n:GetPivot()*q n:PivotTo(r)end)end,['List layout']=function(h)
local i=h:List()for m=1,10 do i:Button{Text=`Resize the window! {m}`}end end,
Keybinds=function(h)local i=h:Checkbox{Value=true}h:Keybind{Label=
'Toggle checkbox',IgnoreGameProcessed=false,OnKeybindSet=function(m,n)warn(
'[OnKeybindSet] .Value ->',n)end,Callback=function(m,n)print(n)i:Toggle()end}h:
Keybind{Label='Keybind (w/ Q & Left-Click blacklist)',KeyBlacklist={Enum.
UserInputType.MouseButton1,Enum.KeyCode.Q}}h:Keybind{Label=
'Toggle UI visibility',Value=Enum.KeyCode.E,Callback=function()ag:
ToggleVisibility()end}end,Input=function(h)h:InputText{Label='One Line Text'}h:
InputTextMultiline{Label='Multiline Text'}h:InputInt{Label='Input int'}end,[
'Text Input']=function(h)local i=h:TreeNode{Title='Multiline'}i:
InputTextMultiline{Size=UDim2.new(1,0,0,117),Value=
'/*The Pentium FOOF bug, shorthand for FO OF C7 C8,\r\n    the hexadecimal encoding of one offending instruction,\r\n    more formally, the invalid operand with locked CMPXCHG8B\r\n    instruction bug, is a design flaw in the majority of\r\n    Intel Pentium, Pentium MMX, and Pentium OverDrive\r\n    processors (all in the P5 microarchitecture).#\r\n    */'
}end}for n,o in i do local p,q=h:TreeNode{Title=o},m[o]if q then task.spawn(q,p)
end end local n=ak:CollapsingHeader{Title='Popups & child windows'}local o=n:
TreeNode{Title='Popups'}local p=o:Row()local q=p:Label{Text='<None>',LayoutOrder
=2}p:Button{Text='Select..',Callback=function(r)local s,t={'Bream','Haddock',
'Mackerel','Pollock','Tilefish'},o:PopupCanvas{RelativeTo=r,MaxSizeX=200}t:
Separator{Text='Aquarium'}for u,v in s do t:Selectable{Text=v,Callback=function(
w)q.Text=v t:ClosePopup()end}end end}local r=n:TreeNode{Title='Child windows'}
local s=r:Window{Size=UDim2.fromOffset(300,200),NoMove=true,NoClose=true,
NoCollapse=true,NoResize=true}s:Label{Text='Hello, world!'}s:Button{Text='Save'}
s:InputText{Label='string'}s:SliderFloat{Label='float',Minimum=0,Maximum=1}local
t=n:TreeNode{Title='Modals'}t:Label{Text=
[[Modal windows are like popups but the user cannot close them by clicking outside.]]
,TextWrapped=true}t:Button{Text='Delete..',Callback=function()local u=t:
PopupModal{Title='Delete?'}u:Label{Text=
[[All those beautiful files will be deleted.
This operation cannot be undone!]],
TextWrapped=true}u:Separator()u:Checkbox{Value=false,Label=
"Don't ask me next time"}local v=u:Row{Expanded=true}v:Button{Text='Okay',
Callback=function()u:ClosePopup()end}v:Button{Text='Cancel',Callback=function()u
:ClosePopup()end}end}t:Button{Text='Stacked modals..',Callback=function()local u
=t:PopupModal{Title='Stacked 1'}u:Label{Text=`Hello from Stacked The First\nUsing Theme["ModalWindowDimBg"] behind it.`
,TextWrapped=true}u:Combo{Items={'aaaa','bbbb','cccc','dddd','eeee'}}u:
DragColor3{Value=Color3.fromRGB(102,178,0)}u:Button{Text='Add another modal..',
Callback=function()local v=t:PopupModal{Title='Stacked 2'}v:Label{Text=
'Hello from Stacked The Second!',TextWrapped=true}v:DragColor3{Value=Color3.
fromRGB(102,178,0)}v:Button{Text='Close',Callback=function()v:ClosePopup()end}
end}u:Button{Text='Close',Callback=function()u:ClosePopup()end}end}local u=ak:
CollapsingHeader{Title='Tables & Columns'}local v=u:TreeNode{Title='Basic'}local
w=v:Table()for x=1,3 do local y=w:Row()for z=1,3 do local A=y:Column()for B=1,4
do A:Label{Text=`Row {B} Column {z}`}end end end local x=u:TreeNode{Title=
'Borders, background'}local y=x:Table{RowBackground=true,Border=true,MaxColumns=
3}for z=1,5 do local A=y:NextRow()for B=1,3 do local C=A:NextColumn()C:Label{
Text=`Hello {B},{z}`}end end local z=u:TreeNode{Title='With headers'}local A,B=z
:Table{Border=true,RowBackground=true,MaxColumns=3},{'One','Two','Three'}for C=1
,7 do if C==1 then p=A:HeaderRow()else p=A:Row()end for D,E in B do if C==1 then
local F=p:Column()F:Label{Text=E}continue end local F=p:NextColumn()F:Label{Text
=`Hello {D},{C}`}end end end end function a.f()return{Dot=
'rbxasset://textures/whiteCircle.png',Arrow=
'rbxasset://textures/ui/AvatarContextMenu_Arrow.png',Close=
'rbxasset://textures/loading/cancelButton.png',Checkmark=
'rbxasset://textures/ui/Lobby/Buttons/nine_slice_button.png',Cat=
'rbxassetid://16211812161',Script='rbxassetid://11570895459',Settings=
'rbxassetid://9743465390',Info='rbxassetid://18754976792',Move=
'rbxassetid://6710235139',Roblox='rbxassetid://7414445494',Warning=
'rbxassetid://11745872910',Audio='rbxassetid://302250236',Shop=
'rbxassetid://6473525198',CharacterDance='rbxassetid://11932783331',Pants=
'rbxassetid://10098755331',Home='rbxassetid://4034483344',Robux=
'rbxassetid://5986143282',Badge='rbxassetid://16170504068',SpawnLocation=
'rbxassetid://6400507398',Sword='rbxassetid://7485051715',Clover=
'rbxassetid://11999300014',Star='rbxassetid://3057073083',Code=
'rbxassetid://11348555035',Paw='rbxassetid://13001190533',Shield=
'rbxassetid://7461510428',Shield2='rbxassetid://7169354142',File=
'rbxassetid://7276823330',Book='rbxassetid://16061686835',Location=
'rbxassetid://13549782519',Puzzle='rbxassetid://8898417863',Discord=
'rbxassetid://84828491431270',Premium='rbxassetid://6487178625',Friend=
'rbxassetid://10885655986',User='rbxassetid://18854794412',Duplicate=
'rbxassetid://11833749507',ChatBox='rbxassetid://15839118471',ChatBox2=
'rbxassetid://15839116089',Devices='rbxassetid://4458812712',Weight=
'rbxassetid://9855685269',Image='rbxassetid://123311808092347',Profile=
'rbxassetid://13585614795',Admin='rbxassetid://11656483170',PaintBrush=
'rbxassetid://12111879608',Speed='rbxassetid://12641434961',NoConnection=
'rbxassetid://9795340967',Connection='rbxassetid://119759670842477',Globe=
'rbxassetid://18870359747',Box='rbxassetid://140217940575618',Crown=
'rbxassetid://18826490498',Control='rbxassetid://18979524646',Send=
'rbxassetid://18940312887',FastForward='rbxassetid://112963221295680',Pause=
'rbxassetid://109949100737970',Reload='rbxassetid://11570018242',Joystick=
'rbxassetid://18749336354',Controller='rbxassetid://11894535915',Lock=
'rbxassetid://17783082088',Calculator='rbxassetid://85861816563977',Sun=
'rbxassetid://13492317832',Moon='rbxassetid://8498174594',Prohibited=
'rbxassetid://5248916036',Flag='rbxassetid://251346532',Website=
'rbxassetid://98455290625865',Telegram='rbxassetid://115860270107061',MusicNote=
'rbxassetid://18187351229',Music='rbxassetid://253830398',Headphones=
'rbxassetid://1311321471',Phone='rbxassetid://8411963035',Smartphone=
'rbxassetid://14040313879',Desktop='rbxassetid://3120635703',Desktop2=
'rbxassetid://4728059490',Laptop='rbxassetid://4728059725',Server=
'rbxassetid://9692125126',Wedge='rbxassetid://9086583059',Drill=
'rbxassetid://11959189471',Character='rbxassetid://13285102351'}end function a.g
()return{Light=Color3.fromRGB(50,150,250),Dark=Color3.fromRGB(30,66,115),
ExtraDark=Color3.fromRGB(28,39,53),White=Color3.fromRGB(240,240,240),Gray=Color3
.fromRGB(172,171,175),Black=Color3.fromRGB(15,19,24),Yellow=Color3.fromRGB(230,
180,0),Orange=Color3.fromRGB(230,150,0),Green=Color3.fromRGB(130,188,91),Red=
Color3.fromRGB(255,69,69),ImGui={Light=Color3.fromRGB(66,150,250),Dark=Color3.
fromRGB(41,74,122),Black=Color3.fromRGB(15,15,15),Gray=Color3.fromRGB(36,36,36)}
}end function a.h()local aa,ab=a.load'g',{}ab.DarkTheme={Values={
AnimationTweenInfo=TweenInfo.new(0.08),TextFont=Font.fromEnum(Enum.Font.
RobotoMono),TextSize=14,Text=aa.White,TextDisabled=aa.Gray,ErrorText=aa.Red,
FrameBg=aa.Dark,FrameBgTransparency=0.4,FrameBgActive=aa.Light,
FrameBgTransparencyActive=0.4,FrameRounding=UDim.new(0,0),SliderGrab=aa.Light,
ButtonsBg=aa.Light,CollapsingHeaderBg=aa.Light,CollapsingHeaderText=aa.White,
CheckMark=aa.Light,ResizeGrab=aa.Light,HeaderBg=aa.Gray,HeaderBgTransparency=0.7
,HistogramBar=aa.Yellow,ProgressBar=aa.Yellow,RegionBg=aa.Dark,
RegionBgTransparency=0.1,Separator=aa.Gray,SeparatorTransparency=0.5,
ConsoleLineNumbers=aa.White,LabelPaddingTop=UDim.new(0,0),LabelPaddingBottom=
UDim.new(0,0),MenuBar=aa.ExtraDark,MenuBarTransparency=0.1,PopupCanvas=aa.Black,
TabTextPaddingTop=UDim.new(0,3),TabTextPaddingBottom=UDim.new(0,8),TabText=aa.
Gray,TabBg=aa.Dark,TabTextActive=aa.White,TabBgActive=aa.Light,TabsBarBg=Color3.
fromRGB(36,36,36),TabsBarBgTransparency=1,TabPagePadding=UDim.new(0,8),
ModalWindowDimBg=Color3.fromRGB(230,230,230),ModalWindowDimTweenInfo=TweenInfo.
new(0.2),WindowBg=aa.Black,WindowBgTransparency=0.05,Border=aa.Gray,
BorderTransparency=0.8,BorderTransparencyActive=0.5,Title=aa.White,TitleAlign=
Enum.TextXAlignment.Left,TitleBarBg=aa.Black,TitleBarTransparency=0,TitleActive=
aa.White,TitleBarBgActive=aa.Dark,TitleBarTransparencyActive=0.05,
TitleBarBgCollapsed=Color3.fromRGB(0,0,0),TitleBarTransparencyCollapsed=0.6}}ab.
LightTheme={BaseTheme=ab.DarkTheme,Values={Text=aa.Black,TextFont=Font.fromEnum(
Enum.Font.Ubuntu),TextSize=14,FrameBg=aa.Gray,FrameBgTransparency=0.4,
FrameBgActive=aa.Light,FrameBgTransparencyActive=0.6,SliderGrab=aa.Light,
ButtonsBg=aa.Light,CollapsingHeaderText=aa.Black,Separator=aa.Black,
ConsoleLineNumbers=aa.Yellow,MenuBar=Color3.fromRGB(219,219,219),PopupCanvas=aa.
White,TabText=aa.Black,TabTextActive=aa.Black,WindowBg=aa.White,Border=aa.Gray,
ResizeGrab=aa.Gray,Title=aa.Black,TitleAlign=Enum.TextXAlignment.Center,
TitleBarBg=aa.Gray,TitleActive=aa.Black,TitleBarBgActive=Color3.fromRGB(186,186,
186),TitleBarBgCollapsed=aa.Gray}}ab.ImGui={BaseTheme=ab.DarkTheme,Values={
AnimationTweenInfo=TweenInfo.new(0),Text=Color3.fromRGB(255,255,255),FrameBg=aa.
ImGui.Dark,FrameBgTransparency=0.4,FrameBgActive=aa.ImGui.Light,
FrameBgTransparencyActive=0.5,FrameRounding=UDim.new(0,0),ButtonsBg=aa.ImGui.
Light,CollapsingHeaderBg=aa.ImGui.Light,CollapsingHeaderText=aa.White,CheckMark=
aa.ImGui.Light,ResizeGrab=aa.ImGui.Light,MenuBar=aa.ImGui.Gray,
MenuBarTransparency=0,PopupCanvas=aa.ImGui.Black,TabText=aa.Gray,TabBg=aa.ImGui.
Dark,TabTextActive=aa.White,TabBgActive=aa.ImGui.Light,WindowBg=aa.ImGui.Black,
WindowBgTransparency=0.05,Border=aa.Gray,BorderTransparency=0.7,
BorderTransparencyActive=0.4,Title=aa.White,TitleBarBg=aa.ImGui.Black,
TitleBarTransparency=0,TitleBarBgActive=aa.ImGui.Dark,TitleBarTransparencyActive
=0}}return ab end function a.i()local aa,ab=(a.load'b')aa:AddOnInit(function(ad)
ab=ad end)return{{Properties={'Center'},Callback=function(ad,ae,af)local ag=ae.
Position aa:SetProperties(ae,{Position=UDim2.new(af:find'X'and 0.5 or ag.X.Scale
,ag.X.Offset,af:find'Y'and 0.5 or ag.Y.Scale,ag.Y.Offset),AnchorPoint=Vector2.
new(af:find'X'and 0.5 or 0,af:find'Y'and 0.5 or 0)})end},{Properties={
'ElementStyle'},Callback=function(ad,ae,af)ab:ApplyStyle(ae,af)end},{Properties=
{'ColorTag'},Callback=function(ad,ae,af)local ag,ah=ad.Class,ad.WindowClass
local aj=ag.NoAutoTheme if not ah then return end if aj then return end ab:
UpdateColors{Object=ae,Tag=af,NoAnimation=true,Theme=ah.Theme}end},{Properties={
'Animation'},Callback=function(ad,ae,af)local ag=ad.Class.NoAnimation if ag then
return end ab:SetAnimation(ae,af)end},{Properties={'Image'},Callback=function(ad
,ae,af)local ag=ad.WindowClass ae.Image=aa:CheckAssetUrl(af)ab:DynamicImageTag(
ae,af,ag)end},{Properties={'Icon','IconSize','IconRotation','IconPadding'},
Callback=function(ad,ae,af)local ag=ae:FindFirstChild('Icon',true)if not ag then
ab:Warn('No icon for',ae)return end local ah=ad.Class aa:CheckConfig(ah,{Icon=''
,IconSize=UDim2.fromScale(1,1),IconRotation=0,IconPadding=UDim2.new(0,2)})local
aj=ag.Parent:FindFirstChild'UIPadding'aa:SetPadding(aj,ah.IconPadding)local ak=
ah.Icon ak=aa:CheckAssetUrl(ak)local b=ad.WindowClass ab:DynamicImageTag(ag,ak,b
)aa:SetProperties(ag,{Visible=ag~='',Image=aa:CheckAssetUrl(ak),Size=ah.IconSize
,Rotation=ah.IconRotation})end},{Properties={'BorderThickness','Border',
'BorderColor'},Callback=function(ad,ae,af)local ag=ad.Class local ah=ag.Border==
true aa:CheckConfig(ag,{BorderTransparency=ad:GetThemeKey
'BorderTransparencyActive',BorderColor=ad:GetThemeKey'Border',BorderThickness=1,
BorderStrokeMode=Enum.ApplyStrokeMode.Border})local aj=aa:GetChildOfClass(ae,
'UIStroke')aa:SetProperties(aj,{Transparency=ag.BorderTransparency,Thickness=ag.
BorderThickness,Color=ag.BorderColor,ApplyStrokeMode=ag.BorderStrokeMode,Enabled
=ah})end},{Properties={'Ratio'},Callback=function(ad,ae,af)local ag=ad.Class aa:
CheckConfig(ag,{Ratio=1.3333333333333333,RatioAxis=Enum.DominantAxis.Height,
RatioAspectType=Enum.AspectType.ScaleWithParentSize})local ah,aj,ak,b=ag.Ratio,
ag.RatioAxis,ag.RatioAspectType,aa:GetChildOfClass(ae,'UIAspectRatioConstraint')
aa:SetProperties(b,{DominantAxis=aj,AspectType=ak,AspectRatio=ah})end},{
Properties={'FlexMode'},Callback=function(ad,ae,af)local ag=aa:GetChildOfClass(
ae,'UIFlexItem')ag.FlexMode=af end},{Properties={'CornerRadius'},Callback=
function(ad,ae,af)local ag=aa:GetChildOfClass(ae,'UICorner')ag.CornerRadius=af
end},{Properties={'Fill'},Callback=function(ad,ae,af)if af~=true then return end
local ag=ad.Class aa:CheckConfig(ag,{Size=UDim2.fromScale(1,1),UIFlexMode=Enum.
UIFlexMode.Fill,AutomaticSize=Enum.AutomaticSize.None})local ah=aa:
GetChildOfClass(ae,'UIFlexItem')ah.FlexMode=ag.UIFlexMode ae.Size=ag.Size ae.
AutomaticSize=ag.AutomaticSize end},{Properties={'Label'},Callback=function(ad,
ae,af)local ag,ah=ad.Class,ae:FindFirstChild'Label'if not ah then return end ah.
Text=tostring(af)function ag:SetLabel(aj)ah.Text=aj return self end end},{
Properties={'NoGradient'},WindowProperties={'NoGradients'},Callback=function(ad,
ae,af)local ag=ae:FindFirstChildOfClass'UIGradient'if not ag then return end ag.
Enabled=af end},{Properties={'UiPadding','PaddingBottom','PaddingTop',
'PaddingRight','PaddingTop'},Callback=function(ad,ae,af)af=af or 0 if typeof(af)
=='number'then af=UDim.new(0,af)end local ag=ad.Class local ah=ag.UiPadding if
ah then aa:CheckConfig(ag,{PaddingBottom=af,PaddingLeft=af,PaddingRight=af,
PaddingTop=af})end local aj=aa:GetChildOfClass(ae,'UIPadding')aa:SetProperties(
aj,{PaddingBottom=ag.PaddingBottom,PaddingLeft=ag.PaddingLeft,PaddingRight=ag.
PaddingRight,PaddingTop=ag.PaddingTop})end},{Properties={'Callback'},Callback=
function(ad,ae)local af=ad.Class function af:SetCallback(ag)self.Callback=ag
return self end function af:FireCallback(ag)self.Callback(ae)return self end end
},{Properties={'Value'},Callback=function(ad,ae)local af=ad.Class aa:
CheckConfig(af,{GetValue=function(ag)return af.Value end})end}}end function a.j(
)local aa={}aa.Coloring={MenuBar={BackgroundColor3='MenuBar',
BackgroundTransparency='MenuBarTransparency'},FrameRounding={CornerRadius=
'FrameRounding'},PopupCanvas={BackgroundColor3='PopupCanvas'},ModalWindowDim={
BackgroundColor3='ModalWindowDimBg'},Selectable='Button',MenuButton='Button',
Separator={BackgroundColor3='Separator',BackgroundTransparency=
'SeparatorTransparency'},Region={BackgroundColor3='RegionBg',
BackgroundTransparency='RegionBgTransparency'},Label={TextColor3='Text',FontFace
='TextFont',TextSize='TextSize'},ImageFollowsText={ImageColor3='Text'},
ConsoleLineNumbers={TextColor3='ConsoleLineNumbers',FontFace='TextFont',TextSize
='TextSize'},ConsoleText='Label',LabelDisabled={TextColor3='TextDisabled',
FontFace='TextFont',TextSize='TextSize'},Plot={BackgroundColor3='HistogramBar'},
Header={BackgroundColor3='HeaderBg',BackgroundTransparency=
'HeaderBgTransparency'},WindowTitle={TextXAlignment='TitleAlign',FontFace=
'TextFont',TextSize='TextSize'},TitleBar={BackgroundColor3='TitleBarBgActive'},
Window={BackgroundColor3='WindowBg',BackgroundTransparency=
'WindowBgTransparency'},TitleBarBgCollapsed={BackgroundColor3=
'TitleBarBgCollapsed',BackgroundTransparency='TitleBarTransparencyCollapsed'},
TitleBarBgActive={BackgroundColor3='TitleBarBgActive',BackgroundTransparency=
'TitleBarTransparencyActive'},TitleBarBg={BackgroundColor3='TitleBarBg',
BackgroundTransparency='TitleBarTransparency'},TabsBar={BackgroundColor3=
'TabsBarBg',BackgroundTransparency='TabsBarBgTransparency'},Border={Color=
'Border',Transparency='BorderTransparency'},ResizeGrab={TextColor3='ResizeGrab'}
,BorderActive={Transparency='BorderTransparencyActive'},Frame={BackgroundColor3=
'FrameBg',BackgroundTransparency='FrameBgTransparency',TextColor3='Text',
FontFace='TextFont',TextSize='TextSize'},FrameActive={BackgroundColor3=
'FrameBgActive',BackgroundTransparency='FrameBgTransparencyActive'},SliderGrab={
BackgroundColor3='SliderGrab'},Button={BackgroundColor3='ButtonsBg',TextColor3=
'Text',FontFace='TextFont',TextSize='TextSize'},CollapsingHeader={FontFace=
'TextFont',TextSize='TextSize',TextColor3='CollapsingHeaderText',
BackgroundColor3='CollapsingHeaderBg'},Checkbox={BackgroundColor3='FrameBg'},
CheckMark={ImageColor3='CheckMark',BackgroundColor3='CheckMark'},RadioButton={
BackgroundColor3='ButtonsBg',TextColor3='Text',FontFace='TextFont',TextSize=
'TextSize'}}aa.Styles={RadioButton={Animation='RadioButtons',CornerRadius=UDim.
new(1,0)},Button={Animation='Buttons'},CollapsingHeader={Animation='Buttons'},
TreeNode={Animation='TransparentButtons'},TransparentButton={Animation=
'TransparentButtons'}}aa.Animations={Invisible={Connections={MouseEnter={Visible
=true},MouseLeave={Visible=false}},Init='MouseLeave'},Buttons={Connections={
MouseEnter={BackgroundTransparency=0.3},MouseLeave={BackgroundTransparency=0.7}}
,Init='MouseLeave'},TextButtons={Connections={MouseEnter={TextTransparency=0.3},
MouseLeave={TextTransparency=0.7}},Init='MouseLeave'},TransparentButtons={
Connections={MouseEnter={BackgroundTransparency=0.3},MouseLeave={
BackgroundTransparency=1}},Init='MouseLeave'},RadioButtons={Connections={
MouseEnter={BackgroundTransparency=0.5},MouseLeave={BackgroundTransparency=1}},
Init='MouseLeave'},Inputs={Connections={MouseEnter={BackgroundTransparency=0},
MouseLeave={BackgroundTransparency=0.5}},Init='MouseLeave'},Plots={Connections={
MouseEnter={BackgroundTransparency=0.3},MouseLeave={BackgroundTransparency=0}},
Init='MouseLeave'},Border={Connections={Selected={Transparency=0,Thickness=1},
Deselected={Transparency=0.7,Thickness=1}},Init='Selected'}}return aa end end
local aa,ab,ad,ae,af={Version='1.4.7',Author='Depso',License='MIT',Repository=
'https://github.com/myethg/Dear-ReGui/',Debug=false,PrefabsId=71968920594655,
DefaultTitle='ReGui',ContainerName='ReGui',DoubleClickThreshold=0.3,
TooltipOffset=15,IniToSave={'Value'},ClassIgnored={'Visible','Text'},Container=
nil,Prefabs=nil,FocusedWindow=nil,HasTouchScreen=false,Services=nil,Elements={},
_FlagCache={},_ErrorCache={},Windows={},ActiveTooltips={},IniSettings={},
AnimationConnections={}},a.load'a',a.load'b',a.load'c',a.load'd'aa.DemoWindow=a.
load'e'aa.Services=ad.Services aa.Animation=ae aa.Icons=a.load'f'aa.Accent=a.
load'g'aa.ThemeConfigs=a.load'h'aa.ElementFlags=a.load'i'local ag=a.load'j'aa.
ElementColors=ag.Coloring aa.Animations=ag.Animations aa.Styles=ag.Styles ad:
CallOnInitConnections(aa)aa.DynamicImages={[aa.Icons.Arrow]='ImageFollowsText',[
aa.Icons.Close]='ImageFollowsText',[aa.Icons.Dot]='ImageFollowsText'}local ah=aa
.Services local aj,ak,b,c,d=ah.HttpService,ah.Players,ah.UserInputService,ah.
RunService,ah.InsertService local e=ad:NewReference(ak.LocalPlayer)aa.PlayerGui=
ad:NewReference(e:WaitForChild'PlayerGui')aa.Mouse=ad:NewReference(e:GetMouse())
local f=function()end function GetAndRemove(g,h)local i=h[g]if i then h[g]=nil
end return i end function MoveTableItem(g,h,i)local m=table.find(g,h)if not m
then return end local n=table.remove(g,m)table.insert(g,i,n)end function Merge(g
,h)for i,m in next,h do g[i]=m end end function Copy(g,h)local i=table.clone(g)
if h then Merge(i,h)end return i end function aa:Warn(...)warn('[ReGui]::',...)
end function aa:Error(...)local g=aa:Concat({...},' ')local h=`\n[ReGui]:: {g}`
coroutine.wrap(error)(h)end function aa:IsDoubleClick(g)local h=self.
DoubleClickThreshold return g<h end function aa:StyleContainers()local g=self.
Container local h,i=g.Overlays,g.Windows self:SetProperties(i,{OnTopOfCoreBlur=
true})self:SetProperties(h,{OnTopOfCoreBlur=true})end function aa:Init(g)g=g or{
}if self.Initialised then return end Merge(self,g)Merge(self,{Initialised=true,
HasGamepad=self:IsConsoleDevice(),HasTouchScreen=self:IsMobileDevice()})self:
CheckConfig(self,{ContainerParent=function()return ad:ResolveUIParent()end,
Prefabs=function()return self:LoadPrefabs()end},true)self:CheckConfig(self,{
Container=function()return self:InsertPrefab('Container',{Parent=self.
ContainerParent,Name=self.ContainerName})end},true)local h,i,m=self.Container,
self.TooltipOffset,self.ActiveTooltips local n,o=h.Overlays,0 self:
StyleContainers()self.TooltipsContainer=self.Elements:Overlay{Parent=n}b.
InputBegan:Connect(function(p)if not self:IsMouseEvent(p,true)then return end
local q=tick()local r=q-o local s=self:IsDoubleClick(r)o=s and 0 or q self:
UpdateWindowFocuses()end)local p=function()local p,q=self.TooltipsContainer,#m>0
p.Visible=q if not q then return end local r,s=aa:GetMouseLocation()local t=n.
AbsolutePosition p.Position=UDim2.fromOffset(r-t.X+i,s-t.Y+i)end c.RenderStepped
:Connect(p)end function aa:CheckImportState()if self.Initialised then return end
local g=self.PrefabsId local h=ad:CheckAssetUrl(g)local i,m=pcall(function()if
game.GetObjects then local n=game:GetObjects(h)if n and n[1]then return ad:
NewReference(n[1])end end return ad:NewReference(d:LoadLocalAsset(h))end)self:
Init{Prefabs=i and m or nil}end function aa:GetVersion()return self.Version end
function aa:IsMobileDevice()return b.TouchEnabled end function aa:
IsConsoleDevice()return b.GamepadEnabled end function aa:GetScreenSize()return
workspace.CurrentCamera.ViewportSize end function aa:LoadPrefabs()local g,h=self
.PlayerGui,'ReGui-Prefabs'if typeof(script)=='Instance'then local i=script:
FindFirstChild(h)or script:WaitForChild(h,0.5)if i then return i end end if g
then local m=g:FindFirstChild(h)or g:WaitForChild(h,0.5)if m then return m end
end return nil end function aa:CheckConfig(g,h,i,m)return ad:CheckConfig(g,h,i,m
)end function aa:CreateInstance(g,h,i)local m=Instance.new(g,h)if i then local n
=i.UsePropertiesList if not n then self:SetProperties(m,i)else self:ApplyFlags{
Object=m,Class=i}end end return m end function aa:ConnectMouseEvent(g,h)local i,
m,n,o,p=h.Callback,h.DoubleClick,h.OnlyMouseHovering,0 if n then p=self:
DetectHover(n)end g.Activated:Connect(function(...)local q=tick()local r=q-o if
p and not p.Hovering then return end if m then if not aa:IsDoubleClick(r)then o=
q return end o=0 end i(...)end)end function aa:GetAnimation(g)return g and self.
Animation or TweenInfo.new(0)end function aa:DynamicImageTag(g,h,i)local m=self.
DynamicImages local n=m[h]if not n then return end if not i then return end i:
TagElements{[g]=n}end function aa:GetDictSize(g)local h=0 for i,m in g do h+=1
end return h end function aa:RemoveAnimations(g)local h=self:GetAnimationData(g)
local i=h.Connections for m,n in next,i do n:Disconnect()end end function aa:
GetAnimationData(g)local h=self.AnimationConnections local i=h[g]if i then
return i end local m={Connections={}}h[g]=m return m end function aa:
AddAnimationSignal(g,h)local i=self:GetAnimationData(g)local m=i.Connections
table.insert(m,h)end function aa:SetAnimationsEnabled(g)self.NoAnimations=not g
end function aa:SetAnimation(g,h,i)i=i or g local m,n,o=self.Animations,self.
HasTouchScreen,h if typeof(h)~='table'then o=m[h]end assert(o,`No animation data for Class {
h}!`)self:RemoveAnimations(i)local p,q,r,s,t=o.Init,o.Connections,o.Tweeninfo,o.
NoAnimation,self:GetAnimationData(g)local u,v,x,y,z,A=t.State,true,{},{}function
y:Reset(B)if not z then return end z(B)end function y:FireSignal(B,C)x[B](C)end
function y:Refresh(B)if not A then return end x[A](B)end function y:SetEnabled(B
)v=B end for B,C in next,q do local D,E=function(D)D=D==true A=B local E=self.
NoAnimations if E then return end if not v then return end t.State=B ae:Tween{
NoAnimation=D or s,Object=g,Tweeninfo=r,EndProperties=C}end,i[B]if not n then
local F=E:Connect(D)self:AddAnimationSignal(i,F)end x[B]=D if B==p then z=D end
end if u then y:FireSignal(u)else y:Reset(true)end return y end function aa:
ConnectDrag(g,h)self:CheckConfig(h,{DragStart=f,DragEnd=f,DragMovement=f,
OnDragStateChange=f})local i,m,n,o,p,q=h.DragStart,h.DragEnd,h.DragMovement,h.
OnDragStateChange,{StartAndEnd={Enum.UserInputType.MouseButton1,Enum.
UserInputType.Touch},Movement={Enum.UserInputType.MouseMovement,Enum.
UserInputType.Touch}},false local r,s,t=function(r,s)local t=r.UserInputType
return table.find(p[s],t)end,function(r)local s=r.Position return Vector2.new(s.
X,s.Y)end,function(r)self._DraggingDisabled=r q=r o(r)end local u=function(u)
local v,x,y=u.IsDragging,u.InputType,u.Callback return function(z)if u.
DraggingRequired~=q then return end if u.CheckDraggingDisabled and self.
_DraggingDisabled then return end if not r(z,x)then return end if u.UpdateState
then t(v)end local A=s(z)y(A)end end g.InputBegan:Connect(u{
CheckDraggingDisabled=true,DraggingRequired=false,UpdateState=true,IsDragging=
true,InputType='StartAndEnd',Callback=i})b.InputEnded:Connect(u{DraggingRequired
=true,UpdateState=true,IsDragging=false,InputType='StartAndEnd',Callback=m})b.
InputChanged:Connect(u{DraggingRequired=true,InputType='Movement',Callback=n})
end function aa:MakeDraggable(g)local h,i,m,n,o,p=g.Move,g.Grab,g.
OnDragStateChange,{}function n:SetEnabled(q)local r=g.StateChanged self.Enabled=
q if r then r(self)end end function n:CanDrag(q)return self.Enabled end local q,
r,s,t,u=function(q)if not n:CanDrag()then return end local r=g.DragBegin p=q r(p
)end,function(q)if not n:CanDrag()then return end local r,s=q-p,g.OnUpdate s(r)
end,function(q)o=h.Position end,function(q)local r=UDim2.new(o.X.Scale,o.X.
Offset+q.X,o.Y.Scale,o.Y.Offset+q.Y)g:SetPosition(r)end,function(q,r)ae:Tween{
Object=h,EndProperties={Position=r}}end self:CheckConfig(g,{Enabled=true,
OnUpdate=t,SetPosition=u,DragBegin=s})self:ConnectDrag(i,{DragStart=q,
DragMovement=r,OnDragStateChange=m})local v=g.Enabled n:SetEnabled(v)return n
end function aa:MakeResizable(g)aa:CheckConfig(g,{MinimumSize=Vector2.new(160,90
),MaximumSize=Vector2.new(math.huge,math.huge)})local h,i,m,n,o=g.MaximumSize,g.
MinimumSize,g.Resize,(g.OnUpdate)local p=aa:InsertPrefab('ResizeGrab',{Parent=m}
)local q,r,s=function(q)p.Visible=q.Enabled end,function(q)local r=o+q local s=
UDim2.fromOffset(math.clamp(r.X,i.X,h.X),math.clamp(r.Y,i.Y,h.Y))if n then n(s)
return end ae:Tween{Object=m,EndProperties={Size=s}}end,function(q)o=m.
AbsoluteSize end local t=self:MakeDraggable{Grab=p,OnUpdate=r,DragBegin=s,
StateChanged=q}t.Grab=p return t end function aa:IsMouseEvent(g,h)local i=g.
UserInputType.Name if h and i:find'Movement'then return end return i:find'Touch'
or i:find'Mouse'end function aa:DetectHover(g,h)local i=h or{}i.Hovering=false
local m,n,o,p,q,r=i.OnInput,i.OnHoverChange,i.Anykey,i.MouseMove,i.MouseEnter,i.
MouseOnly local s=function(s,t,u)if s and r then if not aa:IsMouseEvent(s,true)
then return end end if t~=nil then local v=i.Hovering i.Hovering=t if t~=v and n
then n(t)end end if not q and u then return end if m then local v=i.Hovering m(v
,s)return end end local t={g.MouseEnter:Connect(function()s(nil,true,true)end),g
.MouseLeave:Connect(function()s(nil,false,true)end)}if o or r then table.insert(
t,b.InputBegan:Connect(function(u)s(u)end))end if p then local u=g.MouseMoved:
Connect(function()s()end)table.insert(t,u)end function i:Disconnect()for u,v in
next,t do v:Disconnect()end end return i end function aa:StackWindows()local g,h
=self.Windows,20 for i,m in next,g do local n,o=m.WindowFrame,UDim2.fromOffset(h
*i,h*i)m:Center()n.Position+=o end end function aa:GetElementFlags(g)local h=
self._FlagCache return h[g]end function aa:UpdateColors(g)local h,i,m,n,o,p,q=g.
Object,g.Tag,g.NoAnimation,g.TagsList,g.Theme,g.Tweeninfo,self.ElementColors
local r,s,t=self:GetElementFlags(h),self.Debug,q[i]if typeof(t)=='string'then t=
q[t]end if typeof(i)=='table'then t=i elseif n then n[h]=i end if not t then
return end local u={}for v,x in next,t do local y=self:GetThemeKey(o,x)if r and
r[v]then continue end if not y then if s then self:Warn(`Color: '{x}' does not exist!`
)end continue end u[v]=y end ae:Tween{Tweeninfo=p,Object=h,NoAnimation=m,
EndProperties=u}end function aa:MultiUpdateColors(g)local h=g.Objects for i,m in
next,h do self:UpdateColors{TagsList=g.TagsList,Theme=g.Theme,NoAnimation=not g.
Animate,Tweeninfo=g.Tweeninfo,Object=i,Tag=m}end end function aa:ApplyStyle(g,h)
local i=self.Styles local m=i[h]if not m then return end self:ApplyFlags{Object=
g,Class=m}end function aa:ClassIgnores(g)local h=self.ClassIgnored local i=table
.find(h,g)return i and true or false end function aa:MergeMetatables(g,h)local i
,m=self.Debug,{}m.__index=function(n,o)local p,q=self:ClassIgnores(o),g[o]if q~=
nil and not p then return q end local r,s=pcall(function()local r=h[o]return
self:PatchSelf(h,r)end)return r and s or nil end m.__newindex=function(n,o,p)
local q,r=self:ClassIgnores(o),typeof(p)=='function'local s=g[o]~=nil or r if s
and not q then g[o]=p return end xpcall(function()h[o]=p end,function(t)if i
then self:Warn(`Newindex Error: {h}.{o} = {p}\n{t}`)end g[o]=p end)end return
setmetatable({},m)end function aa:Concat(g,h)local i=''for m,n in next,g do i..=
tostring(n)..(m~=#g and h or'')end return i end function aa:GetValueFromAliases(
g,h)for i,m in g do local n=h[m]if n~=nil then return n end end return nil end
function aa:RecursiveCall(g,h)for i,m in next,g:GetDescendants()do h(m)end end
function aa:ApplyFlags(g)local h,i,m,n=self.ElementFlags,g.Object,g.Class,g.
WindowClass function g:GetThemeKey(o)if n then return n:GetThemeKey(o)else
return aa:GetThemeKey(nil,o)end end self:SetProperties(i,m)for o,p in next,h do
local q,r,s,t=p.Properties,p.Callback,p.Recursive,p.WindowProperties local u=
self:GetValueFromAliases(q,m)if n and t and u==nil then u=self:
GetValueFromAliases(t,n)end if u==nil then continue end r(g,i,u)if s then self:
RecursiveCall(i,function(v)r(g,v,u)end)end end end function aa:SetProperties(g,h
)return ad:SetProperties(g,h)end function aa:InsertPrefab(g,h)local i=self.
Prefabs assert(i,'[ReGui]: Prefabs are not loaded!')local m=i:FindFirstChild
'Prefabs'or i local o=m:FindFirstChild(g)or m:WaitForChild(g,2)assert(o,
`[ReGui]: Prefab '{g}' not found!`)local n=ad:NewReference(o:Clone())if h then
local p=h.UsePropertiesList if not p then self:SetProperties(n,h)else self:
ApplyFlags{Object=n,Class=h}end end return n end function aa:GetContentSize(g,h)
local i,m,n,o=g:FindFirstChildOfClass'UIListLayout',g:FindFirstChildOfClass
'UIPadding',(g:FindFirstChildOfClass'UIStroke')if i and not h then o=i.
AbsoluteContentSize else o=g.AbsoluteSize end if m then local p,q,r,s=m.
PaddingTop.Offset,m.PaddingBottom.Offset,m.PaddingLeft.Offset,m.PaddingRight.
Offset o+=Vector2.new(r+s,p+q)end if n then local p=n.Thickness o+=Vector2.new(p
/2,p/2)end return o end function aa:PatchSelf(g,h,...)if typeof(h)~='function'
then return h,...end return function(i,...)return h(g,...)end end function aa:
MakeCanvas(g)local h,i,m,n,o,p,q=self.Elements,self.Debug,g.Element,g.
WindowClass,g.Class,g.OnChildChange,af:NewSignal()if p then q:Connect(p)end if
not n and i then self:Warn(`No WindowClass for {m}`)self:Warn(g)end local r=ad:
NewClass(h,{Class=o,RawObject=m,WindowClass=n or false,OnChildChange=q,Elements=
{}})local s={__index=function(s,t)local u=r[t]if u~=nil then return self:
PatchSelf(r,u)end local v=o[t]if v~=nil then return self:PatchSelf(o,v)end local
x=m[t]return self:PatchSelf(m,x)end,__newindex=function(s,t,u)local v=o[t]~=nil
if v then o[t]=u else m[t]=u end end}return setmetatable({},s)end function aa:
GetIniData(g)local h,i=self.IniToSave,{}for m,n in next,h do i[n]=g[n]end return
i end function aa:DumpIni(g)local h,i=self.IniSettings,{}for m,n in next,h do i[
m]=self:GetIniData(n)end if g then return aj:JSONEncode(i)end return i end
function aa:LoadIniIntoElement(g,h)local i={Value=function(i)g:SetValue(i)end}
for m,n in next,h do local o=i[m]if o then o(n)continue end g[m]=n end end
function aa:LoadIni(g,h)local i=self.IniSettings assert(g,
'No Ini configuration was passed')if h then g=aj:JSONDecode(g)end for m,n in
next,g do local o=i[m]self:LoadIniIntoElement(o,n)end end function aa:AddIniFlag
(g,h)local i=self.IniSettings i[g]=h end function aa:OnElementCreate(g)local h,i
,m,n,o=self._FlagCache,g.Flags,g.Object,g.Canvas,g.Class local p,q,r,s,t,u=n.
WindowClass,i.NoAutoTag,i.NoAutoFlags,i.ColorTag,i.NoStyle,i.IniFlag h[m]=i if u
then self:AddIniFlag(u,o)end if t then return end if not q and p then p:
TagElements{[m]=s}end if p then p:LoadStylesIntoElement(g)end if not r then self
:ApplyFlags{Object=m,Class=i,WindowClass=p}end end function aa:VisualError(g,h,i
)if self._InVisualError or not self.Initialised or not self.Prefabs or not g.
Error then self:Warn('Class:',i)return end self._InVisualError=true pcall(
function()g:Error{Parent=h,Text=i}end)self._InVisualError=false end function aa:
WrapGeneration(g,h)local i,m,n=self._ErrorCache,h.Base,h.IgnoreDefaults return
function(o,p,...)p=p or{}self:CheckConfig(p,m)local q=p.CloneTable if q then p=
table.clone(p)end local r,s,t=o.RawObject,o.Elements,o.OnChildChange self:
CheckConfig(p,{Parent=r,Name=p.ColorTag},nil,n)if o==self then o=self.Elements
end local u,v,x=pcall(g,o,p,...)if u==false then local y=r or g if i[y]then
return end i[y]=v self:VisualError(o,r,v)self:Error('Class:',v)self:Error(debug.
traceback())return end if x==nil then x=v end if t then t:Fire(v)end if x then
if s then table.insert(s,x)end self:OnElementCreate{Object=x,Flags=p,Class=v,
Canvas=o}end return v,x end end function aa:DefineElement(g,h)local i,m,n=self.
Elements,self.ThemeConfigs,self.ElementColors local o,p,q,r,s,t=m.DarkTheme,h.
Base,h.Create,h.Export,h.ThemeTags,h.ColorData self:CheckConfig(p,{ColorTag=g,
ElementStyle=g})if s then Merge(o,s)end if t then Merge(n,t)end local u=self:
WrapGeneration(q,h)if r then self[g]=u end i[g]=u return u end function aa:
DefineGlobalFlag(g)local h=self.ElementFlags table.insert(h,g)end function aa:
DefineTheme(g,h)local i=self.ThemeConfigs self:CheckConfig(h,{BaseTheme=i.
DarkTheme})local m=GetAndRemove('BaseTheme',h)local n={BaseTheme=m,Values=h}i[g]
=n return n end function aa:GetMouseLocation()local g=self.Mouse return g.X,g.Y
end function aa:SetWindowFocusesEnabled(g)self.WindowFocusesEnabled=g end
function aa:UpdateWindowFocuses()local g,h=self.Windows,self.
WindowFocusesEnabled if not h then return end for i,m in g do local n=m.
HoverConnection if not n then continue end local o=n.Hovering if o then self:
SetFocusedWindow(m)return end end self:SetFocusedWindow(nil)end function aa:
WindowCanFocus(g)if g.NoSelect then return false end if g.Collapsed then return
false end if g._SelectDisabled then return false end return true end function aa
:GetFocusedWindow()return self.FocusedWindow end function aa:BringWindowToFront(
g)local h,i=self.Windows,g.NoBringToFrontOnFocus if i then return end
MoveTableItem(h,g,1)end function aa:SetFocusedWindow(g)local h,i=self:
GetFocusedWindow(),self.Windows if h==g then return end self.FocusedWindow=g if
g then local m=self:WindowCanFocus(g)if not m then return end self:
BringWindowToFront(g)end local m=#i for n,o in i do local p,q=self:
WindowCanFocus(o),o.WindowFrame if not p then continue end m-=1 if m then q.
ZIndex=m end local r=o==g o:SetFocused(r,m)end end function aa:SetItemTooltip(g,
h)local i,m,n=self.Elements,self.TooltipsContainer,self.ActiveTooltips local o,p
=m:Canvas{Visible=false,UiPadding=UDim.new()}task.spawn(h,o)aa:DetectHover(g,{
MouseMove=true,MouseEnter=true,OnHoverChange=function(q)if q then table.insert(n
,o)return end local r=table.find(n,o)table.remove(n,r)end,OnInput=function(q,r)p
.Visible=q end})end function aa:CheckFlags(g,h)for i,m in next,g do local n=h[i]
if not n then continue end m(n)end end function aa:GetThemeKey(g,h)local i=self.
ThemeConfigs if typeof(g)=='string'then g=i[g]end local m=i.DarkTheme g=g or m
local n,o=g.BaseTheme,g.Values local p=o[h]if p then return p end if n then
return self:GetThemeKey(n,h)end return end function aa:SelectionGroup(g)local h,
i,m=false,function(h,i)for m,n in next,g do if typeof(n)=='Instance'then
continue end if n==i then continue end h(n)end end local n=function(n)if h then
return end h=true local o=m m=n:GetValue()if not o then o=m end i(function(p)p:
SetValue(o)end,n)h=false end i(function(o)o.Callback=n end)end local g=aa.
Elements g.__index=g function g:GetObject()return self.RawObject end function g:
ApplyFlags(h,i)local m=self.WindowClass aa:ApplyFlags{WindowClass=m,Object=h,
Class=i}end function g:Remove()local h,i,m=self.OnChildChange,self:GetObject(),
self.Class local n=m.Remove if n then return n(m)end if h then h:Fire(m or self)
end if m then table.clear(m)end i:Destroy()table.clear(self)end function g:
GetChildElements()local h=self.Elements return h end function g:
ClearChildElements()local h=self:GetChildElements()for i,m in next,h do m:
Destroy()end end function g:TagElements(h)local i,m=self.WindowClass,aa.Debug if
not i then if m then aa:Warn('No WindowClass for TagElements:',h)end return end
i:TagElements(h)end function g:GetThemeKey(h)local i=self.WindowClass if i then
return i:GetThemeKey(h)end return aa:GetThemeKey(nil,h)end function g:
SetColorTags(h,i)local m=self.WindowClass if not m then return end local n,o=m.
TagsList,m.Theme aa:MultiUpdateColors{Animate=i,Theme=o,TagsList=n,Objects=h}end
function g:SetElementFocused(h,i)local m,n,o,p=self.WindowClass,aa.
HasTouchScreen,i.Focused,i.Animation aa:SetAnimationsEnabled(not o)if not o and
p then p:Refresh()end if not m then return end if not n then return end local q=
m.ContentCanvas q.Interactable=not o end aa:DefineElement('Dropdown',{Base={
ColorTag='PopupCanvas',Disabled=false,AutoClose=true,OnSelected=f},Create=
function(h,i)i.Parent=aa.Container.Overlays local m,n,o,p,q=i.Selected,i.Items,i
.OnSelected,h:PopupCanvas(i)local r,s,t=aa:MergeMetatables(i,p),{},function(r)o(
r)end function i:ClearEntries()for u,v in s do v:Remove()end end function i:
SetItems(u,v)local x=u[1]self:ClearEntries()for y,z in u do local A,B=x and z or
y,y==v or z==v local C=p:Selectable{Text=tostring(A),Selected=B,ZIndex=6,
Callback=function()return t(A)end}table.insert(s,C)end end if n then i:SetItems(
n,m)end return r,q end})aa:DefineElement('OverlayScroll',{Base={ElementClass=
'OverlayScroll',Spacing=UDim.new(0,4)},Create=function(h,i)local m,n,o=h.
WindowClass,i.ElementClass,i.Spacing local p=aa:InsertPrefab(n,i)local q,r=p:
FindFirstChild'ContentFrame'or p,p:FindFirstChild('UIListLayout',true)r.Padding=
o local s=aa:MergeMetatables(h,i)local t=aa:MakeCanvas{Element=q,WindowClass=m,
Class=s}function i:GetCanvasSize()return q.AbsoluteCanvasSize end return t,p end
})aa:DefineElement('Overlay',{Base={ElementClass='Overlay'},Create=g.
OverlayScroll})aa:DefineElement('Image',{Base={Image='',Callback=f},Create=
function(h,i)local m=aa:InsertPrefab('Image',i)m.Activated:Connect(function(...)
local n=i.Callback return n(m,...)end)return m end})aa:DefineElement(
'VideoPlayer',{Base={Video='',Callback=f},Create=function(h,i)local m=i.Video i.
Video=ad:CheckAssetUrl(m)local n=aa:InsertPrefab('VideoPlayer',i)return n end})
aa:DefineElement('Button',{Base={Text='Button',DoubleClick=false,Callback=f},
Create=function(h,i)local m=aa:InsertPrefab('Button',i)local n,o=aa:
MergeMetatables(i,m),i.DoubleClick function i:SetDisabled(p)self.Disabled=p end
aa:ConnectMouseEvent(m,{DoubleClick=o,Callback=function(...)if i.Disabled then
return end local p=i.Callback return p(n,...)end})return n,m end})aa:
DefineElement('Selectable',{Base={Text='Selectable',Callback=f,Selected=false,
Disabled=false,Size=UDim2.fromScale(1,0),AutomaticSize=Enum.AutomaticSize.Y,
TextXAlignment=Enum.TextXAlignment.Left,AnimationTags={Selected='Buttons',
Unselected='TransparentButtons'}},Create=function(h,i)local m,n,o,p=h.Class.
AfterClick,i.Selected,i.Disabled,aa:InsertPrefab('Button',i)local q=aa:
MergeMetatables(i,p)p.Activated:Connect(function(...)local r=i.Callback r(p,...)
if m then m(p,...)end end)function i:SetSelected(r)local s=self.AnimationTags
local t=r and s.Selected or s.Unselected self.Selected=r aa:SetAnimation(p,t)
return self end function i:SetDisabled(r)self.Disabled=r p.Interactable=not r
return self end i:SetSelected(n)i:SetDisabled(o)return q,p end})aa:
DefineElement('ImageButton',{Base={ElementStyle='Button',Callback=f},Create=g.
Image})aa:DefineElement('SmallButton',{Base={Text='Button',PaddingTop=UDim.new()
,PaddingBottom=UDim.new(),PaddingLeft=UDim.new(0,2),PaddingRight=UDim.new(0,2),
ColorTag='Button',ElementStyle='Button',Callback=f},Create=g.Button})aa:
DefineElement('Keybind',{Base={Label='Keybind',ColorTag='Frame',Value=nil,
DeleteKey=Enum.KeyCode.Backspace,IgnoreGameProcessed=true,Enabled=true,Disabled=
false,Callback=f,OnKeybindSet=f,OnBlacklistedKeybindSet=f,KeyBlacklist={},
UiPadding=UDim.new(),AutomaticSize=Enum.AutomaticSize.None,Size=UDim2.new(0.3,0,
0,19)},Create=function(h,i)local m,n,o,p,q=i.Value,i.Label,i.Disabled,i.
KeyBlacklist,aa:InsertPrefab('Button',i)local r,s,t,u=aa:MergeMetatables(i,q),h:
Label{Parent=q,Text=n,Position=UDim2.new(1,4,0.5),AnchorPoint=Vector2.new(0,0.5)
},function(r,...)return r(q,...)end,function(r)return table.find(p,r)end
function i:SetDisabled(v)self.Disabled=v q.Interactable=not v h:SetColorTags({[s
]=v and'LabelDisabled'or'Label'},true)return self end function i:SetValue(v)
local x,y=self.OnKeybindSet,self.DeleteKey if v==y then v=nil end self.Value=v q
.Text=v and v.Name or'Not set't(x,v)return self end function i:WaitForNewKey()
self._WaitingForNewKey=true q.Text='...'q.Interactable=false end local v=
function(v)local x,y=v.KeyCode,v.UserInputType if y~=Enum.UserInputType.Keyboard
then return y end return x end local x=function(x)local y,z,A=i.
OnBlacklistedKeybindSet,i.Value,v(x)if not b.WindowFocused then
