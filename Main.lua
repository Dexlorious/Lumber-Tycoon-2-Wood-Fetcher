-- Selector That Gives Option For Chat Or GUI Version --
-- the8bitdude11 --

local partsWithId = {}
local awaitRef = {}

local root = {
	ID = 0;
	Type = "ScreenGui";
	Properties = {};
	Children = {
		{
			ID = 1;
			Type = "Frame";
			Properties = {
				Position = UDim2.new(0.5,-150,0.5,-50);
				Size = UDim2.new(0,0,0,22);
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(8/51,8/51,8/51);
			};
			Children = {
				{
					ID = 2;
					Type = "Frame";
					Properties = {
						ClipsDescendants = true;
						Position = UDim2.new(0,0,1,0);
						Size = UDim2.new(0,302,0,0);
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(2/17,2/17,2/17);
					};
					Children = {
						{
							ID = 3;
							Type = "TextLabel";
							Properties = {
								FontSize = Enum.FontSize.Size14;
								TextColor3 = Color3.new(40/51,40/51,40/51);
								Text = "Please choose which version you would like to use\r";
								Size = UDim2.new(0,280,0,24);
								TextWrapped = true;
								Font = Enum.Font.SourceSans;
								BackgroundTransparency = 1;
								Position = UDim2.new(0.036423839628696,0,0,0);
								TextSize = 14;
								BackgroundColor3 = Color3.new(1,1,1);
								TextScaled = true;
								TextWrap = true;
							};
							Children = {};
						};
						{
							ID = 4;
							Type = "TextButton";
							Properties = {
								FontSize = Enum.FontSize.Size14;
								TextColor3 = Color3.new(0,0,0);
								Text = "Chat Version\r";
								TextSize = 14;
								Size = UDim2.new(0,83,0,36);
								Font = Enum.Font.SourceSans;
								BackgroundTransparency = 1;
								Position = UDim2.new(0.096026480197906,0,0.47272726893425,0);
								Name = "c";
								ZIndex = 2;
								BorderSizePixel = 0;
								BackgroundColor3 = Color3.new(1,1,1);
							};
							Children = {
								{
									ID = 5;
									Type = "ImageLabel";
									Properties = {
										ScaleType = Enum.ScaleType.Slice;
										ImageTransparency = 0.5;
										Selectable = true;
										BackgroundTransparency = 1;
										Size = UDim2.new(1,0,1,0);
										AnchorPoint = Vector2.new(0.5,0.5);
										Image = "rbxassetid://3570695787";
										Name = "r";
										Position = UDim2.new(0.5,0,0.5,0);
										SliceScale = 0.11999999731779;
										Active = true;
										BackgroundColor3 = Color3.new(1,1,1);
										SliceCenter = Rect.new(Vector2.new(100,100),Vector2.new(100,100));
									};
									Children = {};
								};
							};
						};
						{
							ID = 6;
							Type = "TextButton";
							Properties = {
								FontSize = Enum.FontSize.Size14;
								TextColor3 = Color3.new(0,0,0);
								Text = "GUI Version\r";
								TextSize = 14;
								Size = UDim2.new(0,83,0,36);
								Font = Enum.Font.SourceSans;
								BackgroundTransparency = 1;
								Position = UDim2.new(0.62913906574249,0,0.47272726893425,0);
								Name = "g";
								ZIndex = 2;
								BorderSizePixel = 0;
								BackgroundColor3 = Color3.new(1,1,1);
							};
							Children = {
								{
									ID = 7;
									Type = "ImageLabel";
									Properties = {
										ScaleType = Enum.ScaleType.Slice;
										ImageTransparency = 0.5;
										Selectable = true;
										BackgroundTransparency = 1;
										Size = UDim2.new(1,0,1,0);
										AnchorPoint = Vector2.new(0.5,0.5);
										Image = "rbxassetid://3570695787";
										Name = "r";
										Position = UDim2.new(0.5,0,0.5,0);
										SliceScale = 0.11999999731779;
										Active = true;
										BackgroundColor3 = Color3.new(1,1,1);
										SliceCenter = Rect.new(Vector2.new(100,100),Vector2.new(100,100));
									};
									Children = {};
								};
							};
						};
						{
							ID = 8;
							Type = "TextLabel";
							Properties = {
								FontSize = Enum.FontSize.Size14;
								TextColor3 = Color3.new(0,1,0);
								Text = "Recommended\r";
								Font = Enum.Font.SourceSans;
								BackgroundTransparency = 1;
								Position = UDim2.new(0.62913906574249,0,0.80000001192093,0);
								Size = UDim2.new(0,83,0,15);
								TextSize = 14;
								BackgroundColor3 = Color3.new(1,1,1);
							};
							Children = {};
						};
						{
							ID = 9;
							Type = "TextLabel";
							Properties = {
								FontSize = Enum.FontSize.Size14;
								TextColor3 = Color3.new(1,0,0);
								Text = "Original; Not Recommended\r";
								Size = UDim2.new(0,83,0,22);
								TextWrapped = true;
								Font = Enum.Font.SourceSans;
								BackgroundTransparency = 1;
								Position = UDim2.new(0.096026487648487,0,0.80000001192093,0);
								TextSize = 14;
								BackgroundColor3 = Color3.new(1,1,1);
								TextScaled = true;
								TextWrap = true;
							};
							Children = {};
						};
					};
				};
				{
					ID = 10;
					Type = "TextButton";
					Properties = {
						FontSize = Enum.FontSize.Size14;
						TextColor3 = Color3.new(1,0,0);
						Text = "X\r";
						TextWrapped = true;
						Size = UDim2.new(0,22,0,22);
						TextSize = 14;
						Font = Enum.Font.Gotham;
						BackgroundTransparency = 1;
						Position = UDim2.new(0.92715233564377,0,0,0);
						Name = "Close";
						BackgroundColor3 = Color3.new(1,1,1);
						TextScaled = true;
						TextWrap = true;
					};
					Children = {};
				};
			};
		};
	};
};

local function Scan(item, parent)
	local obj = Instance.new(item.Type)
	if (item.ID) then
		local awaiting = awaitRef[item.ID]
		if (awaiting) then
			awaiting[1][awaiting[2]] = obj
			awaitRef[item.ID] = nil
		else
			partsWithId[item.ID] = obj
		end
	end
	for p,v in pairs(item.Properties) do
		if (type(v) == "string") then
			local id = tonumber(v:match("^_R:(%w+)_$"))
			if (id) then
				if (partsWithId[id]) then
					v = partsWithId[id]
				else
					awaitRef[id] = {obj, p}
					v = nil
				end
			end
		end
		obj[p] = v
	end
	for _,c in pairs(item.Children) do
		Scan(c, obj)
	end
	obj.Parent = parent
	return obj
end

local ui = Scan(root,game:service'CoreGui')
local deb = false

local snd = Instance.new("Sound")
snd.SoundId = "rbxassetid://903267862"
snd.Parent = game:service'SoundService'

function open()
	if deb then return end
	deb = true
	ui.Frame:TweenSize(UDim2.new(0,302,0,22),"Out","Sine",0.5,true)
	wait(0.5)
	ui.Frame.ClipsDescendants = false
	ui.Frame.Frame:TweenSize(UDim2.new(0,302,0,110),"Out","Sine",0.5,true)
	wait(0.5)
	deb = false
end

function close()
	if deb then return end
	deb = true
	ui.Frame.Frame:TweenSize(UDim2.new(0,302,0,0),"Out","Sine",0.5,true)
	wait(0.5)
	ui.Frame.ClipsDescendants = true
	ui.Frame:TweenSize(UDim2.new(0,0,0,22),"Out","Sine",0.5,true)
	wait(0.5)
	snd:Destroy()
	ui:Destroy()
end

ui.Frame.Frame.c.MouseButton1Click:Connect(function()
	if deb then return end
	deb = true
	snd:Play()
	ui.Frame.Frame.c.r.ImageColor3 = Color3.new(0.5,0.5,0.5)
	wait(0.5)
	deb = false
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/the8bitdude11/Lumber-Tycoon-2-Wood-Fetcher/master/Main.lua"))()
	end)
	close()
end)

ui.Frame.Frame.g.MouseButton1Click:Connect(function()
	if deb then return end
	deb = true
	snd:Play()
	ui.Frame.Frame.g.r.ImageColor3 = Color3.new(0.5,0.5,0.5)
	wait(0.5)
	deb = false
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/the8bitdude11/Lumber-Tycoon-2-Wood-Fetcher/GUI-Version/Main.lua"))()
	end)
	close()
end)

ui.Frame.Close.MouseButton1Click:Connect(function()
	close()
end)
open()
