local MillyBlox = {}
getgenv().collision = {cam, workspace.Ray_Ignore, workspace.Debris}
local function b(c, d, e)
    local f, g = math.max(c, d, e), math.min(c, d, e)
    local h, i, j
    j = f
    local k = f - g
    if f == 0 then
        i = 0
    else
        i = k / f
    end
    if f == g then
        h = 0
    else
        if f == c then
            h = (d - e) / k
            if d < e then
                h = h + 6
            end
        elseif f == d then
            h = (e - c) / k + 2
        elseif f == e then
            h = (c - d) / k + 4
        end
        h = h / 6
    end
    return h, i, j
end
getgenv().color = function(l)
    return Color3.fromRGB(l.R * 255, l.G * 255, l.Right * 255)
end
getgenv().tocolor = function(l)
    return b(l.R, l.G, l.B)
end
getgenv().fromcolor = function(l)
    return {R = l.R, G = l.G, B = l.B}
end

function MillyBlox:Tween(...)
    game:GetService("TweenService"):Create(...):Play()
end
local function YROTATION(cframe) 
	local Decoration, Divider, z = cframe:ToOrientation() 
	return CFrame.new(cframe.Position) * CFrame.Angles(0,Divider,0) 
end 
function MillyBlox:New()
    local Library = {}
    local MillionBloxGUI = Instance.new("ScreenGui")
    local Main = Instance.new("ImageLabel")
    local TabButtons = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Tabs = Instance.new("Frame")
    local Example = Instance.new("Folder")
    local TabButtonExample = Instance.new("TextButton")
    local Aimbot = Instance.new("TextLabel")
    local v = Instance.new("Frame")
    local innerTabExample = Instance.new("TextButton")
    innerTabExample.Modal = true
    local Decoration = Instance.new("Frame")
    local Divider = Instance.new("Frame")
    local z = Instance.new("Frame")
    local Left = Instance.new("ScrollingFrame")
    local Right = Instance.new("ScrollingFrame")
    local TabExample = Instance.new("Frame")
    local D = Instance.new("Frame")
    local E = Instance.new("UIListLayout")
    local F = Instance.new("Frame")
    F.Name = "Fix"
    F.Parent = TabExample
    F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    F.BackgroundTransparency = 1.000
    F.Position = UDim2.new(0, 0, 0, 1)
    F.Size = UDim2.new(0, 456, 0, 328)
    MillionBloxGUI.DisplayOrder = 1000
    MillionBloxGUI.ResetOnSpawn = false
    MillionBloxGUI.ZIndexBehavior = Enum.ZIndexBehavior.Global
    getgenv().uiopen = true
    game:GetService("UserInputService").InputBegan:Connect(
        function(G)
            if G.KeyCode == Enum.KeyCode.Insert then
                MillionBloxGUI.Enabled = not MillionBloxGUI.Enabled
                getgenv().uiopen = MillionBloxGUI.Enabled
            end
        end
    )
    local H = Instance.new("ImageLabel")
    H.Name = "cursor"
    H.Parent = MillionBloxGUI
    H.BackgroundTransparency = 1
    H.Size = UDim2.new(0, 17, 0, 17)
    H.Image = "rbxassetid://518398610"
    H.ZIndex = 1000
    H.ImageColor3 = Color3.fromRGB(255, 0, 255)
    function zigzag(I)
        return math.acos(math.cos(I * math.pi)) / math.pi
    end
    counter = 0
    local J = Instance.new("ScreenGui")
    function Library:Watermark(K)
        J.Enabled = K
    end
    Library.Keylist = {}
    function Library.Keylist:SetVisible(j)
        Library.Keylist.Frame.Enabled = j
    end
    function Library.Keylist:Add(Side)
        local M = Library.Keylist.Frame.Loader.List
        if not M:FindFirstChild(Side) then
            local N = Library.Keylist.Frame.Example:Clone()
            N.Name = Side
            N.KeyText.Text = Side
            N.Visible = true
            N.Parent = M
        end
    end
    function Library.Keylist:Remove(Side)
        local M = Library.Keylist.Frame.Loader.List
        if M:FindFirstChild(Side) then
            M:FindFirstChild(Side):Destroy()
        end
    end
    do
        local O = Instance.new("ScreenGui")
        Library.Keylist.Frame = O
        local P = Instance.new("Frame")
        local Q = Instance.new("UIGradient")
        local Decoration = Instance.new("Frame")
        local v = Instance.new("Frame")
        local z = Instance.new("Frame")
        local D = Instance.new("Frame")
        local R = Instance.new("UIGradient")
        local S = Instance.new("TextLabel")
        local T = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local U = Instance.new("Frame")
        local Aimbot = Instance.new("TextLabel")
        local V = Instance.new("TextLabel")
        O.Name = "keybind"
        O.Parent = game.CoreGui
        O.Enabled = false
        P.Name = "Loader"
        P.Parent = O
        P.Active = true
        P.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        P.BorderColor3 = Color3.fromRGB(0, 0, 0)
        P.Position = UDim2.new(0.5, -125, 0.5, -81)
        P.Size = UDim2.new(0, 153, 0, 29)
        local W = game:GetService("UserInputService")
        local X = P
        local Y
        local Z
        local _
        local a0
        local function a1(a2)
            local a3 = a2.Position - _
            X.Position = UDim2.new(a0.X.Scale, a0.X.Offset + a3.X, a0.Y.Scale, a0.Y.Offset + a3.Y)
        end
        X.InputBegan:Connect(
            function(a2)
                if a2.UserInputType == Enum.UserInputType.MouseButton1 or a2.UserInputType == Enum.UserInputType.Touch then
                    Y = true
                    _ = a2.Position
                    a0 = X.Position
                    a2.Changed:Connect(
                        function()
                            if a2.UserInputState == Enum.UserInputState.End then
                                Y = false
                            end
                        end
                    )
                end
            end
        )
        X.InputChanged:Connect(
            function(a2)
                if a2.UserInputType == Enum.UserInputType.MouseMovement or a2.UserInputType == Enum.UserInputType.Touch then
                    Z = a2
                end
            end
        )
        W.InputChanged:Connect(
            function(a2)
                if a2 == Z and Y then
                    a1(a2)
                end
            end
        )
        Q.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        Q.Rotation = 90
        Q.Parent = P
        Decoration.Name = "Decoration"
        Decoration.Parent = P
        Decoration.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
        Decoration.BorderSizePixel = 0
        Decoration.Position = UDim2.new(0, -1, 0, -1)
        Decoration.Size = UDim2.new(1, 2, 0, 1)
        v.Parent = P
        v.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        v.BorderSizePixel = 0
        v.Position = UDim2.new(0, 2, 0, 4)
        v.Size = UDim2.new(1, -4, 1, -7)
        z.Parent = v
        z.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        z.BorderSizePixel = 0
        z.Position = UDim2.new(0, 1, 0, 1)
        z.Size = UDim2.new(1, -2, 1, -2)
        D.Parent = z
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BorderSizePixel = 0
        D.Position = UDim2.new(0, 1, 0, 1)
        D.Size = UDim2.new(1, -2, 1, -2)
        R.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        R.Rotation = 90
        R.Parent = D
        S.Name = "Title"
        S.Parent = v
        S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        S.BackgroundTransparency = 1.000
        S.Position = UDim2.new(0, 0, 0, 5)
        S.Size = UDim2.new(1, 0, 0, 12)
        S.Font = Enum.Font.Code
        S.Text = "Keybinds"
        S.TextColor3 = Color3.fromRGB(255, 255, 255)
        S.TextSize = 14.000
        S.TextStrokeTransparency = 0.000
        T.Name = "List"
        T.Parent = P
        T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        T.BackgroundTransparency = 1.000
        T.Position = UDim2.new(-0.00531914877, 0, 1.06896555, 0)
        T.Size = UDim2.new(1, 0, 5, 0)
        UIListLayout.Parent = T
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        U.Name = "Example"
        U.Parent = O
        U.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        U.BackgroundTransparency = 1.000
        U.Size = UDim2.new(1, 0, 0, 15)
        U.Visible = false
        Aimbot.Parent = U
        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Aimbot.BackgroundTransparency = 1.000
        Aimbot.Position = UDim2.new(0.00531921396, 0, 0, 0)
        Aimbot.Size = UDim2.new(0.707446814, 0, 1, 0)
        Aimbot.Font = Enum.Font.SourceSans
        Aimbot.Text = "Third Person"
        Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
        Aimbot.TextSize = 14.000
        Aimbot.TextStrokeTransparency = 0.000
        Aimbot.TextXAlignment = Enum.TextXAlignment.Left
        Aimbot.Name = "KeyText"
        V.Parent = U
        V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        V.BackgroundTransparency = 1.000
        V.Position = UDim2.new(0.382978737, 0, 0, 0)
        V.Size = UDim2.new(0.622340441, 0, 1, 0)
        V.Font = Enum.Font.SourceSans
        V.Text = "(on)"
        V.TextColor3 = Color3.fromRGB(255, 255, 255)
        V.TextSize = 14.000
        V.TextStrokeTransparency = 0.000
        V.TextXAlignment = Enum.TextXAlignment.Right
    end
    do
        local P = Instance.new("Frame")
        local Q = Instance.new("UIGradient")
        local Decoration = Instance.new("Frame")
        local v = Instance.new("Frame")
        local z = Instance.new("Frame")
        local D = Instance.new("Frame")
        local R = Instance.new("UIGradient")
        local S = Instance.new("TextLabel")
        J.Name = "Watermark"
        P.Name = "Loader"
        P.Parent = J
        P.Active = true
        P.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        P.BorderColor3 = Color3.fromRGB(0, 0, 0)
        P.Position = UDim2.new(1, -6, 0, -29)
        P.Size = UDim2.new(0, 203, 0, 25)
        Q.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        Q.Rotation = 90
        Q.Parent = P
        Decoration.Name = "Decoration"
        Decoration.Parent = P
        Decoration.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
        Decoration.BorderSizePixel = 0
        Decoration.Position = UDim2.new(0, -1, 0, -1)
        Decoration.Size = UDim2.new(1, 2, 0, 1)
        v.Parent = P
        v.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        v.BorderSizePixel = 0
        v.Position = UDim2.new(0, 2, 0, 4)
        v.Size = UDim2.new(1, -4, 1, -7)
        z.Parent = v
        z.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        z.BorderSizePixel = 0
        z.Position = UDim2.new(0, 1, 0, 1)
        z.Size = UDim2.new(1, -2, 1, -2)
        D.Parent = z
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BorderSizePixel = 0
        D.Position = UDim2.new(0, 1, 0, 1)
        D.Size = UDim2.new(1, -2, 1, -2)
        R.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        R.Rotation = 90
        R.Parent = D
        S.Name = "Title"
        S.Parent = v
        S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        S.BackgroundTransparency = 1.000
        S.Position = UDim2.new(0, 0, 0, 3)
        S.Size = UDim2.new(1, 0, 0, 12)
        S.Font = Enum.Font.Code
        S.Text = "Merciful | FPS: 60 | BUILD: PRIVATE"
        S.TextColor3 = Color3.fromRGB(255, 255, 255)
        S.TextSize = 14.000
        S.TextStrokeTransparency = 0.000
        game:GetService("RunService").RenderStepped:Connect(
            function(a4)
                local a5 = math.ceil(1 / a4)
                local a6 =
                    game:GetService("TextService"):GetTextSize(
                    "Merciful | FPS:" .. a5 .. " | BUILD: PRIVATE",
                    14,
                    Enum.Font.Code,
                    Vector2.new(700, S.AbsoluteSize.Y)
                ).X
                P.Size = UDim2.new(0, -a6 - 12, 0, 25)
                S.Text = "Merciful | FPS:" .. a5 .. " | BUILD: PRIVATE"
            end
        )
        J.Parent = game.CoreGui
    end
    Main.Name = "Main"
    Main.Parent = MillionBloxGUI
    Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Main.BackgroundTransparency = 1.000
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.Position = UDim2.new(0.5, -305, 0.5, -200)
    Main.Size = UDim2.new(0, 610, 0, 400)
    Main.Image = "rbxassetid://6115686715"
    Main.Active = true
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    game:GetService("RunService").RenderStepped:connect(
        function()
            H.Visible = MillionBloxGUI.Enabled
            H.Position = UDim2.new(0, Mouse.X - 3, 0, Mouse.Y + 1)
        end
    )
    local W = game:GetService("UserInputService")
    local X = Main
    local Y
    local Z
    local _
    local a0
    local function a1(a2)
        local a3 = a2.Position - _
        X.Position = UDim2.new(a0.X.Scale, a0.X.Offset + a3.X, a0.Y.Scale, a0.Y.Offset + a3.Y)
    end
    X.InputBegan:Connect(
        function(a2)
            if a2.UserInputType == Enum.UserInputType.MouseButton1 or a2.UserInputType == Enum.UserInputType.Touch then
                Y = true
                _ = a2.Position
                a0 = X.Position
                a2.Changed:Connect(
                    function()
                        if a2.UserInputState == Enum.UserInputState.End then
                            Y = false
                        end
                    end
                )
            end
        end
    )
    X.InputChanged:Connect(
        function(a2)
            if a2.UserInputType == Enum.UserInputType.MouseMovement or a2.UserInputType == Enum.UserInputType.Touch then
                Z = a2
            end
        end
    )
    W.InputChanged:Connect(
        function(a2)
            if a2 == Z and Y then
                a1(a2)
            end
        end
    )
    TabButtons.Name = "TabButtons"
    TabButtons.Parent = Main
    TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabButtons.BackgroundTransparency = 1.000
    TabButtons.Position = UDim2.new(0, 13, 0, 115)
    TabButtons.Size = UDim2.new(0, 123, 0, 250)
    UIListLayout.Parent = TabButtons
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 3)
    Tabs.Name = "Tabs"
    Tabs.Parent = Main
    Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tabs.BackgroundTransparency = 1.000
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0, 139, 0, 35)
    Tabs.Size = UDim2.new(0, 456, 0, 350)
    Example.Name = "Examples"
    Example.Parent = MillionBloxGUI
    TabButtonExample.Name = "TabButtonExample"
    TabButtonExample.Parent = Example
    TabButtonExample.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    TabButtonExample.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabButtonExample.Size = UDim2.new(1, 0, 0, 30)
    TabButtonExample.Visible = false
    TabButtonExample.AutoButtonColor = false
    TabButtonExample.Font = Enum.Font.SourceSans
    TabButtonExample.Text = ""
    TabButtonExample.TextColor3 = Color3.fromRGB(0, 0, 0)
    TabButtonExample.TextSize = 14.000
    Aimbot.Parent = TabButtonExample
    Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Aimbot.BackgroundTransparency = 1.000
    Aimbot.Position = UDim2.new(0.088902168, 0, 0.0934814438, 0)
    Aimbot.Size = UDim2.new(0.887102187, 0, 0.813037097, 0)
    Aimbot.Font = Enum.Font.Code
    Aimbot.Text = "Aimbot"
    Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
    Aimbot.TextSize = 14.000
    Aimbot.TextStrokeTransparency = 0.000
    Aimbot.TextXAlignment = Enum.TextXAlignment.Left
    v.Parent = TabButtonExample
    v.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
    v.BorderSizePixel = 0
    v.Position = UDim2.new(0, 1, 0, 0)
    v.Size = UDim2.new(0, 2, 1, 0)
    innerTabExample.Name = "InnerTabExample"
    innerTabExample.Parent = Example
    innerTabExample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    innerTabExample.BackgroundTransparency = 1.000
    innerTabExample.BorderColor3 = Color3.fromRGB(0, 0, 0)
    innerTabExample.Size = UDim2.new(1, 0, 1, 0)
    innerTabExample.Visible = false
    innerTabExample.AutoButtonColor = false
    innerTabExample.Font = Enum.Font.SourceSans
    innerTabExample.Text = "Main"
    innerTabExample.TextColor3 = Color3.fromRGB(255, 255, 255)
    innerTabExample.TextSize = 14.000
    innerTabExample.TextStrokeTransparency = 0.000
    Decoration.Name = "Decoration"
    Decoration.Parent = innerTabExample
    Decoration.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
    Decoration.BorderSizePixel = 0
    Decoration.Position = UDim2.new(0, 1, 1, -1)
    Decoration.Size = UDim2.new(1, 0, 0, 1)
    Divider.Name = "Divider"
    Divider.Parent = innerTabExample
    Divider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Divider.BorderSizePixel = 0
    Divider.Position = UDim2.new(1, 0, 0, 0)
    Divider.Size = UDim2.new(0, 1, 1, 0)
    z.Parent = innerTabExample
    z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    z.BackgroundTransparency = 1.000
    z.BorderSizePixel = 0
    z.Position = UDim2.new(0, -1, 0, 20)
    z.Size = UDim2.new(0, 456, 0, 328)
    Left.Name = "Left"
    Left.Parent = z
    Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Left.BackgroundTransparency = 1.000
    Left.Position = UDim2.new(0, 5, 0, 11)
    Left.Size = UDim2.new(0, 220, 0, 317)
    Right.Name = "Right"
    Right.Parent = z
    Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Right.BackgroundTransparency = 1.000
    Right.Position = UDim2.new(0, 232, 0, 11)
    Right.Size = UDim2.new(0, 220, 0, 317)
    TabExample.Name = "TabExample"
    TabExample.Parent = Example
    TabExample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabExample.BackgroundTransparency = 1.000
    TabExample.BorderSizePixel = 0
    TabExample.Size = UDim2.new(0, 456, 0, 350)
    TabExample.Visible = false
    D.Parent = TabExample
    D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    D.BackgroundTransparency = 1.000
    D.Size = UDim2.new(1, 0, 0, 21)
    E.Parent = D
    E.FillDirection = Enum.FillDirection.Horizontal
    E.HorizontalAlignment = Enum.HorizontalAlignment.Center
    E.SortOrder = Enum.SortOrder.LayoutOrder
    E.VerticalAlignment = Enum.VerticalAlignment.Center
    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = Left
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 9)
    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = Right
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 9)
    local aa = true
    local ab
    function Library:Tab(Side)
        local Menu = {}
        local TabButton = TabButtonExample:Clone()
        local Tab1 = TabExample:Clone()
        Tab1.Frame.ClipsDescendants = true
        Tab1.Name = Side
        TabButton.Visible = true
        TabButton.Name = Side
        TabButton.TextLabel.Text = Side
        if aa then
            Tab1.Visible = true
            aa = false
            ab = Side
        else
            TabButton.Frame.BackgroundTransparency = 1
            TabButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        end
        TabButton.MouseButton1Down:Connect(
            function()
                ab = Side
                Tab1.Visible = true
                MillyBlox:Tween(
                    TabButton.Frame,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0}
                )
                MillyBlox:Tween(
                    TabButton,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
                )
                for af, Toglcolor in pairs(TabButtons:GetChildren()) do
                    if Toglcolor:IsA("TextButton") and Toglcolor.Name ~= ab then
                        MillyBlox:Tween(
                            Toglcolor.Frame,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        )
                        MillyBlox:Tween(
                            Toglcolor,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)}
                        )
                    end
                end
                for af, Toglcolor in pairs(Tabs:GetChildren()) do
                    if Toglcolor:IsA("Frame") and Toglcolor.Name ~= ab then
                        Toglcolor.Visible = false
                    end
                end
            end
        )
        local ah = true
        local ai = 0
        local aj
        function Menu:Tab(Side)
            local ak = {}
            ai = ai + 1
            local al = innerTabExample:Clone()
            al.Text = Side
            al.Name = Side
            al.Visible = true
            if ah then
                ah = false
                aj = Side
            else
                al.Decoration.BackgroundTransparency = 1
                al.Frame.Visible = false
            end
            al.Frame.Name = Side
            al.MouseButton1Down:Connect(
                function()
                    aj = Side
                    Tab1.Fix[Side].Visible = true
                    MillyBlox:Tween(
                        al.Decoration,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    )
                    for af, Toglcolor in pairs(Tab1.Frame:GetChildren()) do
                        if Toglcolor:IsA("TextButton") and Toglcolor.Name ~= Side then
                            MillyBlox:Tween(
                                Toglcolor.Decoration,
                                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundTransparency = 1}
                            )
                            Tab1.Fix[Toglcolor.Name].Visible = false
                        end
                    end
                end
            )
            al[Side].Parent = Tab1.Fix
            al.Parent = Tab1.Frame
            for af, Toglcolor in pairs(Tab1.Frame:GetChildren()) do
                if Toglcolor:IsA("TextButton") then
                    Toglcolor.Size = UDim2.new(1 / ai, 0, 1, 0)
                end
            end
            function ak:Section(Side, am)
                local an = {}
                local Section = Instance.new("Frame")
                local v = Instance.new("Frame")
                local z = Instance.new("Frame")
                local UIListLayout = Instance.new("UIListLayout")
                local ap = Instance.new("UIPadding")
                local Aimbot = Instance.new("TextLabel")
                Section.Name = "Section"
                Section.Parent = Tab1.Fix[al.Text][am]
                Section.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
                Section.BorderSizePixel = 0
                Section.Size = UDim2.new(1, 0, 0, 18)
                Section.Visible = true
                v.Parent = Section
                v.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v.BorderSizePixel = 0
                v.Position = UDim2.new(0, 1, 0, 1)
                v.Size = UDim2.new(1, -2, 1, -2)
                z.Parent = v
                z.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                z.BorderSizePixel = 0
                z.Position = UDim2.new(0, 1, 0, 1)
                z.Size = UDim2.new(1, -2, 1, -2)
                UIListLayout.Parent = z
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 2)
                UIListLayout.HorizontalAlignment = "Center"
                ap.Parent = z
                ap.PaddingTop = UDim.new(0, 10)
                Aimbot.Parent = v
                Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Aimbot.BackgroundTransparency = 1.000
                Aimbot.Position = UDim2.new(0, 17, 0, -5)
                Aimbot.Size = UDim2.new(0.786400557, 0, 0, 7)
                Aimbot.Font = Enum.Font.Code
                Aimbot.Text = Side
                Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
                Aimbot.TextSize = 13.000
                Aimbot.TextStrokeTransparency = 0.000
                Aimbot.TextXAlignment = Enum.TextXAlignment.Left
                function an:Cheat(aq, ar, as, at)
                    local au = {}
                    as = as or function()
                        end
                    at = at or {}
                    if aq == "Toggle" then
                        au.value = {Toggle = at.default or false}
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 16)
                        local av = Instance.new("TextButton")
                        av.Modal = true
                        local v = Instance.new("Frame")
                        local Aimbot = Instance.new("TextLabel")
                        av.Name = "Toggle"
                        av.Parent = z
                        av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        av.BackgroundTransparency = 1.000
                        av.Size = UDim2.new(1, 0, 0, 14)
                        av.Font = Enum.Font.SourceSans
                        av.Text = ""
                        av.TextColor3 = Color3.fromRGB(0, 0, 0)
                        av.TextSize = 14.000
                        v.Parent = av
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        Aimbot.Parent = av
                        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Aimbot.BackgroundTransparency = 1.000
                        Aimbot.Position = UDim2.new(0.126635522, 0, 0, -1)
                        Aimbot.Size = UDim2.new(0.873364508, 0, 1, -4)
                        Aimbot.Font = Enum.Font.SourceSans
                        Aimbot.Text = ar
                        Aimbot.TextColor3 = Color3.fromRGB(200, 200, 200)
                        Aimbot.TextSize = 14
                        Aimbot.TextStrokeTransparency = 1
                        Aimbot.TextXAlignment = Enum.TextXAlignment.Left
                        if at.default then
                            v.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                            Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
                        end
                        function au:SetValue(aw)
                            au.value = aw
                            if au.value.Toggle then
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            as(au.value)
                        end
                        av.MouseButton1Down:Connect(
                            function()
                                au.value.Toggle = not au.value.Toggle
                                au:SetValue(au.value)
                            end
                        )
                    elseif aq == "ToggleColor" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 16)
                        local av = Instance.new("TextButton")
                        local v = Instance.new("Frame")
                        local Aimbot = Instance.new("TextLabel")
                        av.Name = "Toggle"
                        av.Parent = z
                        av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        av.BackgroundTransparency = 1.000
                        av.Size = UDim2.new(1, 0, 0, 14)
                        av.Font = Enum.Font.SourceSans
                        av.Text = ""
                        av.Modal = true
                        av.TextColor3 = Color3.fromRGB(0, 0, 0)
                        av.TextSize = 14.000
                        v.Parent = av
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        Aimbot.Parent = av
                        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Aimbot.BackgroundTransparency = 1.000
                        Aimbot.Position = UDim2.new(0.126635522, 0, 0, -1)
                        Aimbot.Size = UDim2.new(0.873364508, 0, 1, -4)
                        Aimbot.Font = Enum.Font.SourceSans
                        Aimbot.Text = ar
                        Aimbot.TextColor3 = Color3.fromRGB(200, 200, 200)
                        Aimbot.TextSize = 14
                        Aimbot.TextStrokeTransparency = 1
                        Aimbot.TextXAlignment = Enum.TextXAlignment.Left
                        au.value = {Toggle = false, Color = {R = 255, G = 255, Right = 255}}
                        local j = 1
                        local ax, ay = 1, 1
                        local az = Instance.new("TextButton")
                        function au:SetValue(aA)
                            au.value = aA
                            if aA.Toggle then
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            ax, ay, j = color(au.value.Color):ToHSV()
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            j = math.clamp(j, 0, 1)
                            az.Frame.J.Frame.Position = UDim2.new(1 - ax, 0, 1 - ay, 0)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            az.Frame.ImageButton.Frame.Position = UDim2.new(0, 0, 0, j)
                            az.Frame.J.ImageColor3 = Color3.fromHSV(0, 0, j)
                            aA.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(aA)
                        end
                        local v = Instance.new("Frame")
                        local aB = Instance.new("ImageButton")
                        local z = Instance.new("Frame")
                        local aC = Instance.new("ImageButton")
                        local D = Instance.new("Frame")
                        az.Name = "ColorPicker"
                        az.Parent = av
                        az.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        az.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        az.Position = UDim2.new(0, 187, 0, 0)
                        az.Size = UDim2.new(0, 19, 0, 9)
                        az.AutoButtonColor = false
                        az.Font = Enum.Font.SourceSans
                        az.Text = ""
                        az.TextColor3 = Color3.fromRGB(0, 0, 0)
                        az.TextSize = 14.000
                        v.Parent = az
                        v.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
                        v.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        v.Position = UDim2.new(0, 21, 0, 4)
                        v.Size = UDim2.new(0, 178, 0, 165)
                        v.Visible = false
                        v.ZIndex = 3
                        aB.Parent = v
                        aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aB.BorderColor3 = Color3.fromRGB(10, 10, 10)
                        aB.Position = UDim2.new(0, 5, 0, 5)
                        aB.Size = UDim2.new(0, 152, 0, 152)
                        aB.Image = "rbxassetid://698052001"
                        aB.Name = "J"
                        aB.ZIndex = 3
                        z.Parent = aB
                        z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        z.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        z.Size = UDim2.new(0, 1, 0, 1)
                        z.ZIndex = 3
                        aC.Parent = v
                        aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aC.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aC.Position = UDim2.new(0, 160, 0, 5)
                        aC.Size = UDim2.new(0, 13, 0, 152)
                        aC.Image = "rbxassetid://3641079629"
                        aC.ZIndex = 3
                        D.Parent = aC
                        D.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        D.Position = UDim2.new(0, 0, 0, 0)
                        D.Size = UDim2.new(0, 13, 0, 3)
                        D.ZIndex = 3
                        if at.default ~= nil then
                            au:SetValue(at.default)
                        end
                        av.MouseButton1Down:Connect(
                            function()
                                au.value.Toggle = not au.value.Toggle
                                au:SetValue(au.value)
                            end
                        )
                        az.MouseButton1Down:Connect(
                            function()
                                v.Visible = not v.Visible
                            end
                        )
                        local aD = false
                        local aE = false
                        az.MouseEnter:Connect(
                            function()
                                aD = true
                            end
                        )
                        az.MouseLeave:Connect(
                            function()
                                aD = false
                            end
                        )
                        v.MouseEnter:Connect(
                            function()
                                aE = true
                            end
                        )
                        v.MouseLeave:Connect(
                            function()
                                aE = false
                            end
                        )
                        local LocalPlayer = game.Players.LocalPlayer
                        local Mouse = LocalPlayer:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not aD and not aE and not Y then
                                        v.Visible = false
                                    end
                                end
                            end
                        )
                        local function aG()
                            local aH =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X,
                                0,
                                152
                            )
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y,
                                0,
                                152
                            )
                            z.Position = UDim2.new(0, aH, 0, aI)
                            ax =
                                (aB.AbsoluteSize.X -
                                (game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X)) /
                                150
                            ay =
                                (aB.AbsoluteSize.Y -
                                (game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y)) /
                                150
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(au.value)
                        end
                        aB.MouseButton1Down:Connect(
                            function()
                                aG()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aG()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aG()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                        local function aJ()
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aC.AbsolutePosition.Y,
                                0,
                                148
                            )
                            D.Position = UDim2.new(0, 0, 0, aI)
                            j = 1 - aI / 152
                            aB.ImageColor3 = Color3.fromHSV(0, 0, j)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(au.value)
                        end
                        aC.MouseButton1Down:Connect(
                            function()
                                aJ()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aJ()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aJ()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    elseif aq == "ColorTransp" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 16)
                        local av = Instance.new("TextButton")
                        local v = Instance.new("Frame")
                        local Aimbot = Instance.new("TextLabel")
                        av.Name = "Toggle"
                        av.Parent = z
                        av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        av.BackgroundTransparency = 1.000
                        av.Size = UDim2.new(1, 0, 0, 14)
                        av.Font = Enum.Font.SourceSans
                        av.Text = ""
                        av.TextColor3 = Color3.fromRGB(0, 0, 0)
                        av.TextSize = 14.000
                        av.Modal = true
                        v.Parent = av
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        Aimbot.Parent = av
                        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Aimbot.BackgroundTransparency = 1.000
                        Aimbot.Position = UDim2.new(0.126635522, 0, 0, -1)
                        Aimbot.Size = UDim2.new(0.873364508, 0, 1, -4)
                        Aimbot.Font = Enum.Font.SourceSans
                        Aimbot.Text = ar
                        Aimbot.TextColor3 = Color3.fromRGB(200, 200, 200)
                        Aimbot.TextSize = 14
                        Aimbot.TextStrokeTransparency = 1
                        Aimbot.TextXAlignment = Enum.TextXAlignment.Left
                        au.value = {Toggle = false, Color = {R = 255, G = 255, Right = 255}, Transparency = 0}
                        local j = 1
                        local ax, ay = 1, 1
                        local aK = 0
                        local az = Instance.new("TextButton")
                        function au:SetValue(aA)
                            au.value = aA
                            if aA.Toggle then
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            ax, ay, j = color(au.value.Color):ToHSV()
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            j = math.clamp(j, 0, 1)
                            az.Frame.J.Frame.Position = UDim2.new(1 - ax, 0, 1 - ay, 0)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            az.Frame.ImageButton.Frame.Position = UDim2.new(0, 0, 0, j)
                            az.Frame.J.ImageColor3 = Color3.fromHSV(0, 0, j)
                            az.Frame.tspy.tspycolor.tspypos.Position = UDim2.new(au.value.Transparency, 0, 0, 0)
                            az.Frame.tspy.tspycolor.ImageColor3 = Color3.fromHSV(ax, ay, j)
                            aA.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(aA)
                        end
                        local v = Instance.new("Frame")
                        local aB = Instance.new("ImageButton")
                        local z = Instance.new("Frame")
                        local aC = Instance.new("ImageButton")
                        local D = Instance.new("Frame")
                        az.Name = "ColorPicker"
                        az.Parent = av
                        az.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        az.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        az.Position = UDim2.new(0, 187, 0, 0)
                        az.Size = UDim2.new(0, 19, 0, 9)
                        az.AutoButtonColor = false
                        az.Font = Enum.Font.SourceSans
                        az.Text = ""
                        az.TextColor3 = Color3.fromRGB(0, 0, 0)
                        az.TextSize = 14.000
                        v.Parent = az
                        v.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
                        v.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        v.Position = UDim2.new(0, 21, 0, 4)
                        v.Size = UDim2.new(0, 178, 0, 177)
                        v.Visible = false
                        v.ZIndex = 3
                        aB.Parent = v
                        aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aB.BorderColor3 = Color3.fromRGB(10, 10, 10)
                        aB.Position = UDim2.new(0, 5, 0, 5)
                        aB.Size = UDim2.new(0, 152, 0, 152)
                        aB.Image = "rbxassetid://698052001"
                        aB.Name = "J"
                        aB.ZIndex = 3
                        z.Parent = aB
                        z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        z.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        z.Size = UDim2.new(0, 1, 0, 1)
                        z.ZIndex = 3
                        aC.Parent = v
                        aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aC.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aC.Position = UDim2.new(0, 160, 0, 5)
                        aC.Size = UDim2.new(0, 13, 0, 152)
                        aC.Image = "rbxassetid://3641079629"
                        aC.ZIndex = 3
                        D.Parent = aC
                        D.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        D.Position = UDim2.new(0, 0, 0, 0)
                        D.Size = UDim2.new(0, 13, 0, 3)
                        D.ZIndex = 3
                        local aL = Instance.new("ImageButton")
                        local aM = Instance.new("ImageLabel")
                        local aN = Instance.new("Frame")
                        aL.Name = "tspy"
                        aL.Parent = v
                        aL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aL.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aL.Position = UDim2.new(0, 5, 0, 160)
                        aL.Size = UDim2.new(0, 168, 0, 12)
                        aL.Image = "rbxassetid://3887014957"
                        aL.ScaleType = Enum.ScaleType.Tile
                        aL.TileSize = UDim2.new(0, 8, 0, 8)
                        aL.ZIndex = 3
                        aM.Name = "tspycolor"
                        aM.Parent = aL
                        aM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aM.BackgroundTransparency = 1.000
                        aM.BorderSizePixel = 0
                        aM.Size = UDim2.new(1, 0, 1, 0)
                        aM.Image = "rbxassetid://3887017050"
                        aM.ZIndex = 3
                        aN.Name = "tspypos"
                        aN.Parent = aM
                        aN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aN.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aN.Size = UDim2.new(0, 4, 0, 12)
                        aN.ZIndex = 3
                        if at.default ~= nil then
                            au:SetValue(at.default)
                        end
                        av.MouseButton1Down:Connect(
                            function()
                                au.value["Toggle"] = not au.value["Toggle"]
                                au:SetValue(au.value)
                            end
                        )
                        az.MouseButton1Down:Connect(
                            function()
                                v.Visible = not v.Visible
                            end
                        )
                        local aD = false
                        local aE = false
                        az.MouseEnter:Connect(
                            function()
                                aD = true
                            end
                        )
                        az.MouseLeave:Connect(
                            function()
                                aD = false
                            end
                        )
                        v.MouseEnter:Connect(
                            function()
                                aE = true
                            end
                        )
                        v.MouseLeave:Connect(
                            function()
                                aE = false
                            end
                        )
                        local LocalPlayer = game.Players.LocalPlayer
                        local Mouse = LocalPlayer:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not aD and not aE and not Y then
                                        v.Visible = false
                                    end
                                end
                            end
                        )
                        local function aG()
                            local aH =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X,
                                0,
                                152
                            )
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y,
                                0,
                                152
                            )
                            z.Position = UDim2.new(0, aH, 0, aI)
                            ax =
                                (aB.AbsoluteSize.X -
                                (game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X)) /
                                150
                            ay =
                                (aB.AbsoluteSize.Y -
                                (game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y)) /
                                150
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            aM.ImageColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(au.value)
                        end
                        aB.MouseButton1Down:Connect(
                            function()
                                aG()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aG()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aG()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                        local function aO()
                            local aH =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().X - aL.AbsolutePosition.X,
                                0,
                                164
                            )
                            aN.Position = UDim2.new(0, aH, 0, 0)
                            aK = aH / 168
                            au.value.Transparency = aK
                            as(au.value)
                        end
                        aL.MouseButton1Down:Connect(
                            function()
                                aO()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aO()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aO()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                        local function aJ()
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aC.AbsolutePosition.Y,
                                0,
                                148
                            )
                            D.Position = UDim2.new(0, 0, 0, aI)
                            j = 1 - aI / 152
                            aB.ImageColor3 = Color3.fromHSV(0, 0, j)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            aM.ImageColor3 = Color3.fromHSV(ax, ay, j)
                            as(au.value)
                        end
                        aC.MouseButton1Down:Connect(
                            function()
                                aJ()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aJ()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aJ()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    elseif aq == "Label" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 12)
                        local aP = Instance.new("TextLabel")
                        aP.Name = "Label"
                        aP.Parent = z
                        aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aP.BackgroundTransparency = 1.000
                        aP.Position = UDim2.new(0.126635522, 0, 0.0740740746, 0)
                        aP.Size = UDim2.new(0, 160, 0, 10)
                        aP.Font = Enum.Font.SourceSans
                        aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                        aP.TextSize = 14.000
                        aP.TextStrokeTransparency = 1
                        aP.TextXAlignment = Enum.TextXAlignment.Left
                        aP.TextYAlignment = Enum.TextYAlignment.Bottom
                        aP.Text = ar
                        function au:SetValue(aw)
                        end
                    elseif aq == "Slider" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 28)
                        local g, f, aQ = at.min or 0, at.max or 100, at.default or 50
                        local aR = Instance.new("Frame")
                        local aP = Instance.new("TextLabel")
                        local aS = Instance.new("TextLabel")
                        local aT = Instance.new("TextButton")
                        local aU = Instance.new("Frame")
                        aR.Name = "Slider"
                        aR.Parent = z
                        aR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aR.BackgroundTransparency = 1.000
                        aR.Position = UDim2.new(0, 0, 0, 0)
                        aR.Size = UDim2.new(1, 0, 0, 26)
                        aP.Name = "Label"
                        aP.Parent = aR
                        aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aP.BackgroundTransparency = 1.000
                        aP.Position = UDim2.new(0, 28, 0, -2)
                        aP.Size = UDim2.new(0, 81, 0, 11)
                        aP.Font = Enum.Font.SourceSans
                        aP.Text = ar
                        aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                        aP.TextSize = 14.000
                        aP.TextXAlignment = Enum.TextXAlignment.Left
                        aS.Name = "Value"
                        aS.Parent = aR
                        aS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aS.BackgroundTransparency = 1.000
                        aS.Position = UDim2.new(0, 119, 0, -2)
                        aS.Size = UDim2.new(0, 66, 0, 11)
                        aS.Font = Enum.Font.SourceSans
                        aS.Text = aQ
                        aS.TextColor3 = Color3.fromRGB(220, 220, 220)
                        aS.TextSize = 14.000
                        aS.TextXAlignment = Enum.TextXAlignment.Right
                        aT.Parent = aR
                        aT.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        aT.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        aT.Position = UDim2.new(0, 24, 0, 12)
                        aT.Size = UDim2.new(0, 162, 0, 8)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Modal = true
                        aT.TextSize = 14.000
                        aU.Name = "Amount"
                        aU.Parent = aT
                        aU.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                        aU.BorderSizePixel = 0
                        aU.Size = UDim2.new(1, 0, 1, 0)
                        au.value = {Slider = aQ}
                        function au:SetValue(aw)
                            au.value = aw
                            local X
                            if g > 0 then
                                X = (au.value.Slider - g) / (f - g)
                            else
                                X = (au.value.Slider - g) / (f - g)
                            end
                            aS.Text = au.value.Slider
                            aU.Size = UDim2.new(X, 0, 1, 0)
                            as(aw)
                        end
                        au.value = {Slider = aQ}
                        au:SetValue(au.value)
                        local aV = game.Players.LocalPlayer:GetMouse()
                        local aW = game:GetService("UserInputService")
                        local aX
                        aT.MouseButton1Down:Connect(
                            function()
                                MillyBlox:Tween(
                                    aP,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                )
                                MillyBlox:Tween(
                                    aS,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                )
                                aU.Size = UDim2.new(0, math.clamp(aV.X - aU.AbsolutePosition.X, 0, 162), 0, 8)
                                aX =
                                    math.floor((tonumber(f) - tonumber(g)) / 162 * aU.AbsoluteSize.X + tonumber(g)) or 0
                                aS.Text = aX
                                au.value.Slider = aX
                                as(au.value)
                                moveconnection =
                                    aV.Move:Connect(
                                    function()
                                        aU.Size = UDim2.new(0, math.clamp(aV.X - aU.AbsolutePosition.X, 0, 162), 0, 8)
                                        aX =
                                            math.floor(
                                            (tonumber(f) - tonumber(g)) / 162 * aU.AbsoluteSize.X + tonumber(g)
                                        )
                                        aS.Text = aX
                                        au.value.Slider = aX
                                        as(au.value)
                                    end
                                )
                                releaseconnection =
                                    aW.InputEnded:Connect(
                                    function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            MillyBlox:Tween(
                                                aP,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                            )
                                            MillyBlox:Tween(
                                                aS,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                            )
                                            aU.Size =
                                                UDim2.new(0, math.clamp(aV.X - aU.AbsolutePosition.X, 0, 162), 0, 8)
                                            aX =
                                                math.floor(
                                                (tonumber(f) - tonumber(g)) / 162 * aU.AbsoluteSize.X + tonumber(g)
                                            )
                                            as(au.value)
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    elseif aq == "ToggleKey" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 16)
                        au.value = {
                            Toggle = at.default ~= nil and at.default.Toggle or false,
                            Key = at.default ~= nil and at.default.Key or nil,
                            Type = at.default ~= nil and at.default.Type or "Always"
                        }
                        au.value.Active = "Always" and true or false
                        local aY = Instance.new("TextButton")
                        at.listname = at.listname or ar
                        aY.Name = "Cheat"
                        aY.Parent = z
                        aY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aY.BackgroundTransparency = 1.000
                        aY.Size = UDim2.new(1, 0, 0, 14)
                        aY.Font = Enum.Font.SourceSans
                        aY.Text = ""
                        aY.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aY.TextSize = 14.000
                        local v = Instance.new("Frame")
                        local Aimbot = Instance.new("TextLabel")
                        local aZ = Instance.new("TextButton")
                        local z = Instance.new("Frame")
                        local UIListLayout = Instance.new("UIListLayout")
                        local a_ = Instance.new("TextButton")
                        local b0 = Instance.new("TextButton")
                        local b1 = Instance.new("TextButton")
                        v.Parent = aY
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        Aimbot.Parent = aY
                        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Aimbot.BackgroundTransparency = 1.000
                        Aimbot.Position = UDim2.new(0.126635522, 0, 0, -1)
                        Aimbot.Size = UDim2.new(0.873364508, 0, 1, -4)
                        Aimbot.Font = Enum.Font.SourceSans
                        Aimbot.Text = ar
                        Aimbot.TextColor3 = Color3.fromRGB(200, 200, 200)
                        Aimbot.TextSize = 14.000
                        Aimbot.TextXAlignment = Enum.TextXAlignment.Left
                        aZ.Name = "Keybind"
                        aZ.Parent = aY
                        aZ.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
                        aZ.BackgroundTransparency = 1.000
                        aZ.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aZ.Position = UDim2.new(0, 160, 0, -3)
                        aZ.Size = UDim2.new(-0.00462962966, 47, 1, 0)
                        aZ.Font = Enum.Font.SourceSans
                        aZ.Text = "[None]"
                        aZ.TextColor3 = Color3.fromRGB(204, 204, 204)
                        aZ.TextSize = 13.000
                        aZ.TextStrokeTransparency = 0.000
                        aZ.TextXAlignment = Enum.TextXAlignment.Right
                        aZ.TextYAlignment = Enum.TextYAlignment.Top
                        z.Parent = aZ
                        z.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
                        z.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        z.Position = UDim2.new(0, 0, 0.195637301, 0)
                        z.Size = UDim2.new(0, 46, 0, 56)
                        z.Visible = false
                        z.ZIndex = 2
                        UIListLayout.Parent = z
                        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        a_.Name = "always"
                        a_.Parent = z
                        a_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        a_.BackgroundTransparency = 1.000
                        a_.BorderSizePixel = 0
                        a_.Size = UDim2.new(1, 0, 0, 18)
                        a_.ZIndex = 2
                        a_.Font = Enum.Font.SourceSansBold
                        a_.Text = "Always"
                        a_.TextColor3 = Color3.fromRGB(255, 0, 245)
                        a_.TextSize = 14.000
                        b0.Name = "hold"
                        b0.Parent = z
                        b0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b0.BackgroundTransparency = 1.000
                        b0.BorderSizePixel = 0
                        b0.Size = UDim2.new(1, 0, 0, 18)
                        b0.ZIndex = 2
                        b0.Font = Enum.Font.SourceSans
                        b0.Text = "Hold"
                        b0.TextColor3 = Color3.fromRGB(200, 200, 200)
                        b0.TextSize = 14.000
                        b1.Name = "toggle"
                        b1.Parent = z
                        b1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b1.BackgroundTransparency = 1.000
                        b1.BorderSizePixel = 0
                        b1.Size = UDim2.new(1, 0, 0, 18)
                        b1.ZIndex = 2
                        b1.Font = Enum.Font.SourceSans
                        b1.Text = "Toggle"
                        b1.TextColor3 = Color3.fromRGB(200, 200, 200)
                        b1.TextSize = 14.000
                        for af, b2 in pairs(z:GetChildren()) do
                            if b2:IsA("TextButton") then
                                b2.MouseButton1Down:Connect(
                                    function()
                                        au.value.Type = b2.Text
                                        z.Visible = false
                                        a_.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        b0.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        b1.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        a_.Font = Enum.Font.SourceSans
                                        b0.Font = Enum.Font.SourceSans
                                        b1.Font = Enum.Font.SourceSans
                                        b2.Font = Enum.Font.SourceSansBold
                                        MillyBlox:Tween(
                                            b2,
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                        )
                                        au.value.Active = au.value.Type == "Always" and true or false
                                        as(au.value)
                                    end
                                )
                                b2.MouseEnter:Connect(
                                    function()
                                        if au.value.Type ~= b2.Text then
                                            b2.Font = Enum.Font.SourceSansBold
                                            MillyBlox:Tween(
                                                b2,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                            )
                                        end
                                    end
                                )
                                b2.MouseLeave:Connect(
                                    function()
                                        if au.value.Type ~= b2.Text then
                                            b2.Font = Enum.Font.SourceSans
                                            MillyBlox:Tween(
                                                b2,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                            )
                                        end
                                    end
                                )
                            end
                        end
                        local b3 = false
                        local b4 = false
                        z.MouseEnter:Connect(
                            function()
                                b3 = true
                            end
                        )
                        z.MouseLeave:Connect(
                            function()
                                b3 = false
                            end
                        )
                        aZ.MouseEnter:Connect(
                            function()
                                b4 = true
                            end
                        )
                        aZ.MouseLeave:Connect(
                            function()
                                b4 = false
                            end
                        )
                        local b5 = false
                        aZ.MouseButton1Down:Connect(
                            function()
                                if not b5 then
                                    wait()
                                    b5 = true
                                    aZ.Text = "[...]"
                                end
                            end
                        )
                        local LocalPlayer = game.Players.LocalPlayer
                        local Mouse = LocalPlayer:GetMouse()
                        game:GetService("RunService").Heartbeat:Connect(
                            function()
                                if au.value.Key ~= nil and au.value.Type ~= "Always" then
                                    if au.value.Type == "Hold" then
                                        if string.find(au.value.Key, "Mouse") == nil then
                                            au.value.Active =
                                                game:GetService("UserInputService"):IsKeyDown(
                                                Enum.KeyCode[au.value.Key]
                                            )
                                        else
                                            au.value.Active =
                                                game:GetService("UserInputService"):IsMouseButtonPressed(
                                                Enum.UserInputType[au.value.Key]
                                            )
                                        end
                                    end
                                else
                                    au.value.Active = true
                                end
                                if
                                    au.value.Active and au.value.Toggle and au.value.Type ~= "Always" and
                                        au.value.Key ~= nil
                                 then
                                    Library.Keylist:Add(at.listname)
                                else
                                    Library.Keylist:Remove(at.listname)
                                end
                            end
                        )
                        function au:SetValue(aA)
                            au.value = aA
                            if aA.Toggle then
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                MillyBlox:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            a_.TextColor3 = Color3.fromRGB(200, 200, 200)
                            b0.TextColor3 = Color3.fromRGB(200, 200, 200)
                            b1.TextColor3 = Color3.fromRGB(200, 200, 200)
                            a_.Font = Enum.Font.SourceSans
                            b0.Font = Enum.Font.SourceSans
                            b1.Font = Enum.Font.SourceSans
                            if au.value.Type == "Always" then
                                a_.TextColor3 = Color3.fromRGB(255, 0, 245)
                                a_.Font = Enum.Font.SourceSansBold
                            elseif au.value.Type == "Hold" then
                                b0.TextColor3 = Color3.fromRGB(255, 0, 245)
                                b0.Font = Enum.Font.SourceSansBold
                            elseif au.value.Type == "Toggle" then
                                b1.TextColor3 = Color3.fromRGB(255, 0, 245)
                                b1.Font = Enum.Font.SourceSansBold
                            end
                            au.value.Active = au.value.Type == "Always" and true or false
                            if au.value.Key ~= nil then
                                aZ.Text = "[" .. au.value.Key .. "]"
                            else
                                aZ.Text = "[None]"
                            end
                            as(au.value)
                        end
                        if at.default ~= nil then
                            au:SetValue(at.default)
                        end
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2 and not b5
                                 then
                                    if z.Visible == true and not b3 and not b4 and not Y then
                                        z.Visible = false
                                    end
                                end
                                if b5 then
                                    b5 = false
                                    aZ.Text =
                                        a2.KeyCode.Name ~= "Unknown" and "[" .. a2.KeyCode.Name .. "]" or
                                        "[" .. a2.UserInputType.Name .. "]"
                                    au.value.Key =
                                        a2.KeyCode.Name ~= "Unknown" and a2.KeyCode.Name or a2.UserInputType.Name
                                    if a2.KeyCode.Name == "Backspace" then
                                        aZ.Text = "[None]"
                                        au.value.Key = nil
                                    end
                                end
                                if au.value.Key ~= nil and au.value.Type ~= "Always" then
                                    if au.value.Type == "Toggle" then
                                        if
                                            string.find(au.value.Key, "Mouse") and au.value.Key == a2.UserInputType.Name or
                                                au.value.Key == a2.KeyCode.Name
                                         then
                                            au.value.Active = not au.value.Active
                                        end
                                    end
                                end
                            end
                        )
                        aZ.MouseButton2Down:Connect(
                            function()
                                if not b5 then
                                    z.Visible = not z.Visible
                                end
                            end
                        )
                        aY.MouseButton1Down:Connect(
                            function()
                                au.value["Toggle"] = not au.value["Toggle"]
                                au:SetValue(au.value)
                            end
                        )
                    elseif aq == "Button" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 22)
                        local b6 = Instance.new("Frame")
                        local aT = Instance.new("TextButton")
                        local Q = Instance.new("UIGradient")
                        local Aimbot = Instance.new("TextLabel")
                        b6.Name = "Button"
                        b6.Parent = z
                        b6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b6.BackgroundTransparency = 1.000
                        b6.Size = UDim2.new(1, 0, 0, 22)
                        aT.Parent = b6
                        aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aT.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Position = UDim2.new(0, 24, 0, 0)
                        aT.Size = UDim2.new(0, 162, 0, 18)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.TextSize = 14.000
                        Q.Color =
                            ColorSequence.new {
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 33, 33)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 26, 26))
                        }
                        Q.Rotation = 90
                        Q.Parent = aT
                        Aimbot.Parent = aT
                        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Aimbot.BackgroundTransparency = 1.000
                        Aimbot.Size = UDim2.new(1, 0, 1, 0)
                        Aimbot.Font = Enum.Font.SourceSans
                        Aimbot.Text = ar
                        Aimbot.TextColor3 = Color3.fromRGB(220, 220, 220)
                        Aimbot.TextSize = 14.000
                        aT.MouseEnter:Connect(
                            function()
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                Aimbot.Font = Enum.Font.SourceSansBold
                            end
                        )
                        aT.MouseLeave:Connect(
                            function()
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                )
                                Aimbot.Font = Enum.Font.SourceSans
                            end
                        )
                        aT.MouseButton1Down:Connect(
                            function()
                                Aimbot.TextColor3 = Color3.fromRGB(220, 220, 220)
                                MillyBlox:Tween(
                                    Aimbot,
                                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                as()
                            end
                        )
                    elseif aq == "Dropdown" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 37)
                        local b7 = Instance.new("Frame")
                        do
                            local aP = Instance.new("TextLabel")
                            aP.Name = "Bable"
                            aP.Parent = b7
                            aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aP.BackgroundTransparency = 1.000
                            aP.Position = UDim2.new(0.126635522, 0, 0.0740740746, -2)
                            aP.Size = UDim2.new(0, 160, 0, 10)
                            aP.Font = Enum.Font.SourceSans
                            aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                            aP.TextSize = 14.000
                            aP.TextStrokeTransparency = 1
                            aP.TextXAlignment = Enum.TextXAlignment.Left
                            aP.TextYAlignment = Enum.TextYAlignment.Bottom
                            aP.Text = ar
                        end
                        local aT = Instance.new("TextButton")
                        local Q = Instance.new("UIGradient")
                        local Aimbot = Instance.new("TextLabel")
                        local b8 = Instance.new("ImageLabel")
                        local b9 = Instance.new("Frame")
                        local UIListLayout = Instance.new("UIListLayout")
                        local ap = Instance.new("UIPadding")
                        b7.Name = "Dropdown"
                        b7.Parent = z
                        b7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b7.BackgroundTransparency = 1.000
                        b7.Size = UDim2.new(1, 0, 0, 35)
                        aT.Parent = b7
                        aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aT.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Position = UDim2.new(0, 24, 0, 13)
                        aT.Size = UDim2.new(0, 162, 0, 18)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.TextSize = 14.000
                        Q.Color =
                            ColorSequence.new {
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 33, 33)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 26, 26))
                        }
                        Q.Rotation = 90
                        Q.Parent = aT
                        Aimbot.Parent = aT
                        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Aimbot.BackgroundTransparency = 1.000
                        Aimbot.Position = UDim2.new(0, 4, 0, -1)
                        Aimbot.Size = UDim2.new(1, -4, 1, 0)
                        Aimbot.Font = Enum.Font.SourceSans
                        Aimbot.Text = "none ok"
                        Aimbot.TextColor3 = Color3.fromRGB(220, 220, 220)
                        Aimbot.TextSize = 14.000
                        Aimbot.TextXAlignment = Enum.TextXAlignment.Left
                        b8.Parent = aT
                        b8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b8.BackgroundTransparency = 1.000
                        b8.Position = UDim2.new(0, 150, 0, 6)
                        b8.Size = UDim2.new(0, 5, 0, 4)
                        b8.Image = "rbxassetid://6119286865"
                        b9.Name = "Drop"
                        b9.Parent = b7
                        b9.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                        b9.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        b9.Position = UDim2.new(0, 24, 0, 32)
                        b9.Size = UDim2.new(0, 162, 0, 4)
                        b9.Visible = false
                        b9.ZIndex = 2
                        UIListLayout.Parent = b9
                        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        ap.Parent = b9
                        ap.PaddingTop = UDim.new(0, 1)
                        b7.TextButton.MouseButton1Down:Connect(
                            function()
                                if b9.Visible then
                                    b9.Visible = not b9.Visible
                                    MillyBlox:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                    MillyBlox:Tween(
                                        Aimbot,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                else
                                    b9.Visible = not b9.Visible
                                    MillyBlox:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                    MillyBlox:Tween(
                                        Aimbot,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                end
                            end
                        )
                        local ba = false
                        local bb = false
                        local LocalPlayer = game.Players.LocalPlayer
                        local Mouse = LocalPlayer:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not ba and b9.Visible == true and not bb and not Y then
                                        b9.Visible = false
                                        MillyBlox:Tween(
                                            b7:FindFirstChild("Bable"),
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                        MillyBlox:Tween(
                                            Aimbot,
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                    end
                                end
                            end
                        )
                        b9.MouseEnter:Connect(
                            function()
                                ba = true
                            end
                        )
                        b9.MouseLeave:Connect(
                            function()
                                ba = false
                            end
                        )
                        b7.MouseEnter:Connect(
                            function()
                                bb = true
                            end
                        )
                        b7.MouseLeave:Connect(
                            function()
                                bb = false
                            end
                        )
                        local aa = true
                        au.value = {Dropdown = at.options[1]}
                        function au:SetValue(aX)
                            au.value = aX
                            Aimbot.Text = aX.Dropdown
                            as(au.value)
                        end
                        for bc, j in ipairs(at.options) do
                            b9.Size = b9.Size + UDim2.new(0, 0, 0, 16)
                            local aT = Instance.new("TextButton")
                            local bd = Instance.new("TextLabel")
                            aT.Parent = b9
                            aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aT.BackgroundTransparency = 1.000
                            aT.BorderSizePixel = 0
                            aT.Size = UDim2.new(1, 0, 0, 16)
                            aT.Font = Enum.Font.SourceSans
                            aT.Text = ""
                            aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                            aT.TextSize = 15
                            aT.TextXAlignment = Enum.TextXAlignment.Left
                            aT.ZIndex = 2
                            bd.Parent = aT
                            bd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            bd.BackgroundTransparency = 1.000
                            bd.Position = UDim2.new(0, 6, 0, 0)
                            bd.Size = UDim2.new(1, -9, 1, 0)
                            bd.Font = Enum.Font.SourceSans
                            bd.Text = j
                            bd.TextColor3 = Color3.fromRGB(200, 200, 200)
                            bd.TextSize = 14.000
                            bd.TextXAlignment = Enum.TextXAlignment.Left
                            bd.ZIndex = 2
                            if aa then
                                aa = false
                                au.value.Dropdown = j
                                Aimbot.Text = j
                            end
                            aT.MouseEnter:Connect(
                                function()
                                    bd.Font = Enum.Font.SourceSansBold
                                    MillyBlox:Tween(
                                        bd,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                    )
                                end
                            )
                            aT.MouseLeave:Connect(
                                function()
                                    bd.Font = Enum.Font.SourceSans
                                    MillyBlox:Tween(
                                        bd,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                    )
                                end
                            )
                            aT.MouseButton1Down:Connect(
                                function()
                                    au.value.Dropdown = j
                                    Aimbot.Text = j
                                    as(au.value)
                                    b9.Visible = false
                                    MillyBlox:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                    MillyBlox:Tween(
                                        Aimbot,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                end
                            )
                        end
                    elseif aq == "Jumbobox" then
                        Section.Size = Section.Size + UDim2.new(0, 0, 0, 37)
                        local b7 = Instance.new("Frame")
                        do
                            local aP = Instance.new("TextLabel")
                            aP.Name = "Bable"
                            aP.Parent = b7
                            aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aP.BackgroundTransparency = 1.000
                            aP.Position = UDim2.new(0.126635522, 0, 0.0740740746, -2)
                            aP.Size = UDim2.new(0, 160, 0, 10)
                            aP.Font = Enum.Font.SourceSans
                            aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                            aP.TextSize = 14.000
                            aP.TextStrokeTransparency = 1
                            aP.TextXAlignment = Enum.TextXAlignment.Left
                            aP.TextYAlignment = Enum.TextYAlignment.Bottom
                            aP.Text = ar
                        end
                        local aT = Instance.new("TextButton")
                        local Q = Instance.new("UIGradient")
                        local Aimbot = Instance.new("TextLabel")
                        local b8 = Instance.new("ImageLabel")
                        local b9 = Instance.new("Frame")
                        local UIListLayout = Instance.new("UIListLayout")
                        local ap = Instance.new("UIPadding")
                        b7.Name = "Dropdown"
                        b7.Parent = z
                        b7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b7.BackgroundTransparency = 1.000
                        b7.Size = UDim2.new(1, 0, 0, 35)
                        aT.Parent = b7
                        aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aT.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Position = UDim2.new(0, 24, 0, 13)
                        aT.Size = UDim2.new(0, 162, 0, 18)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.TextSize = 14.000
                        Q.Color =
                            ColorSequence.new {
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 33, 33)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 26, 26))
                        }
                        Q.Rotation = 90
                        Q.Parent = aT
                        Aimbot.Parent = aT
                        Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Aimbot.BackgroundTransparency = 1.000
                        Aimbot.Position = UDim2.new(0, 4, 0, -1)
                        Aimbot.Size = UDim2.new(1, -4, 1, 0)
                        Aimbot.Font = Enum.Font.SourceSans
                        Aimbot.Text = "0 Selected"
                        Aimbot.TextColor3 = Color3.fromRGB(220, 220, 220)
                        Aimbot.TextSize = 14.000
                        Aimbot.TextXAlignment = Enum.TextXAlignment.Left
                        b8.Parent = aT
                        b8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b8.BackgroundTransparency = 1.000
                        b8.Position = UDim2.new(0, 150, 0, 6)
                        b8.Size = UDim2.new(0, 5, 0, 4)
                        b8.Image = "rbxassetid://6119286865"
                        b9.Name = "Drop"
                        b9.Parent = b7
                        b9.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                        b9.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        b9.Position = UDim2.new(0, 24, 0, 32)
                        b9.Size = UDim2.new(0, 162, 0, 4)
                        b9.Visible = false
                        b9.ZIndex = 2
                        UIListLayout.Parent = b9
                        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        ap.Parent = b9
                        ap.PaddingTop = UDim.new(0, 1)
                        b7.TextButton.MouseButton1Down:Connect(
                            function()
                                if b9.Visible then
                                    b9.Visible = not b9.Visible
                                    MillyBlox:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                    MillyBlox:Tween(
                                        Aimbot,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                else
                                    b9.Visible = not b9.Visible
                                    MillyBlox:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                    MillyBlox:Tween(
                                        Aimbot,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                end
                            end
                        )
                        local ba = false
                        local bb = false
                        local LocalPlayer = game.Players.LocalPlayer
                        local Mouse = LocalPlayer:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not ba and b9.Visible == true and not bb and not Y then
                                        b9.Visible = false
                                        MillyBlox:Tween(
                                            b7:FindFirstChild("Bable"),
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                        MillyBlox:Tween(
                                            Aimbot,
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                    end
                                end
                            end
                        )
                        b9.MouseEnter:Connect(
                            function()
                                ba = true
                            end
                        )
                        b9.MouseLeave:Connect(
                            function()
                                ba = false
                            end
                        )
                        b7.MouseEnter:Connect(
                            function()
                                bb = true
                            end
                        )
                        b7.MouseLeave:Connect(
                            function()
                                bb = false
                            end
                        )
                        local aa = true
                        au.value = {Jumbobox = {}}
                        function au:SetValue(aX)
                            au.value = aX
                            Aimbot.Text = #au.value.Jumbobox .. " Selected"
                            for af, Toglcolor in pairs(b9:GetChildren()) do
                                if Toglcolor:IsA("TextButton") then
                                    Toglcolor.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
                                    Toglcolor.TextLabel.Font = Enum.Font.SourceSans
                                    if table.find(au.value.Jumbobox, Toglcolor.TextLabel.Text) then
                                        Toglcolor.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 245)
                                        Toglcolor.TextLabel.Font = Enum.Font.SourceSansBold
                                    end
                                end
                            end
                            as(au.value)
                        end
                        for bc, j in ipairs(at.options) do
                            b9.Size = b9.Size + UDim2.new(0, 0, 0, 16)
                            local aT = Instance.new("TextButton")
                            local bd = Instance.new("TextLabel")
                            aT.Parent = b9
                            aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aT.BackgroundTransparency = 1.000
                            aT.BorderSizePixel = 0
                            aT.Size = UDim2.new(1, 0, 0, 16)
                            aT.Font = Enum.Font.SourceSans
                            aT.Text = ""
                            aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                            aT.TextSize = 15
                            aT.TextXAlignment = Enum.TextXAlignment.Left
                            aT.ZIndex = 2
                            aT.Name = j
                            bd.Parent = aT
                            bd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            bd.BackgroundTransparency = 1.000
                            bd.Position = UDim2.new(0, 6, 0, 0)
                            bd.Size = UDim2.new(1, -9, 1, 0)
                            bd.Font = Enum.Font.SourceSans
                            bd.Text = j
                            bd.TextColor3 = Color3.fromRGB(200, 200, 200)
                            bd.TextSize = 14.000
                            bd.TextXAlignment = Enum.TextXAlignment.Left
                            bd.ZIndex = 2
                            aT.MouseEnter:Connect(
                                function()
                                    bd.Font = Enum.Font.SourceSansBold
                                end
                            )
                            aT.MouseLeave:Connect(
                                function()
                                    if not table.find(au.value.Jumbobox, j) then
                                        bd.Font = Enum.Font.SourceSans
                                    end
                                end
                            )
                            aT.MouseButton1Down:Connect(
                                function()
                                    if table.find(au.value.Jumbobox, j) then
                                        bd.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        for bc, X in pairs(au.value.Jumbobox) do
                                            if X == j then
                                                table.remove(au.value.Jumbobox, bc)
                                            end
                                        end
                                        Aimbot.Text = #au.value.Jumbobox .. " Selected"
                                        bd.Font = Enum.Font.SourceSans
                                    else
                                        table.insert(au.value.Jumbobox, j)
                                        bd.TextColor3 = Color3.fromRGB(255, 0, 245)
                                        bd.Font = Enum.Font.SourceSansBold
                                        Aimbot.Text = #au.value.Jumbobox .. " Selected"
                                    end
                                end
                            )
                        end
                    end
                    return au
                end
                return an
            end
            return ak
        end
        Tab1.Parent = Tabs
        TabButton.Parent = TabButtons
        return Menu
    end
    MillionBloxGUI.Parent = game.CoreGui
    return Library
end
	return millyblox
