		local plr = game:GetService("Players").LocalPlayer
        local char = plr.Character
		local nowpos = nil
		local hrp = nil
		local ultraval = workspace.FallenPartsDestroyHeight * 6
        ultraval = -15e15
		wait()
		workspace.FallenPartsDestroyHeight = 0/0


		hrp = plr.Character.HumanoidRootPart

		local dumbass = Instance.new('Part',workspace)
		dumbass.CanCollide = false
		dumbass.Anchored = true
		dumbass.Size = Vector3.new(1,1,1)
		dumbass.Transparency = 1

		dumbass.Position = char.Head.Position
		dumbass.Name = 'shitcam'

		game:GetService("RunService").Heartbeat:connect(function()
			char = workspace[plr.Name]
		end)

		wait()
		while wait() do
			workspace.CurrentCamera.CameraSubject = dumbass

			if  char and char:FindFirstChild('HumanoidRootPart') then
				nowpos = char:WaitForChild('HumanoidRootPart').CFrame
				dumbass.CFrame = nowpos + Vector3.new(0,2,0)
				char:WaitForChild('HumanoidRootPart').CFrame = nowpos + Vector3.new(ultraval,ultraval,ultraval)
				game:GetService("RunService").RenderStepped:Wait()
				char:WaitForChild('HumanoidRootPart').CFrame = nowpos
			end

		end
