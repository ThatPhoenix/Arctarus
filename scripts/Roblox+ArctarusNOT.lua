wait(1)
math.randomseed(tick() % 1 * 1e6)
sky = coroutine.create(function()
   while wait(0.3) do
       s = Instance.new("Sky",game.Lighting)
       s.SkyboxBk,s.SkyboxDn,s.SkyboxFt,s.SkyboxLf,s.SkyboxRt,s.SkyboxUp = "rbxassetid://2636757556","rbxassetid://2636757556","rbxassetid://2636757556","rbxassetid://2636757556","rbxassetid://2636757556","rbxassetid://2636757556"
       s.CelestialBodiesShown = false
   end
end)


del = coroutine.create(function()
   while wait(0.3) do
       for i,v in pairs(workspace:GetChildren()) do
           if v:IsA("Model") then
               v:Destroy()
           end
       end
   end
end)



for i,v in pairs(game.Players:GetChildren()) do
   v.Character.Archivable = true
end



sound = coroutine.create(function()
   a = Instance.new("Sound",workspace)
   a.SoundId = "rbxassetid://2962358845"
   a.Name = "RAINING MEN"
   a.Volume = 58359
   a.Looped = true
   a.PlaybackSpeed = "1"
   a:Play()
   while wait(0.2) do
       rainin = workspace:FindFirstChild("RAINING MEN")
       if not rainin then
           a = Instance.new("Sound",workspace)
           a.SoundId = "rbxassetid://2962358845"
           a.Name = "RAINING MEN"
           a.Volume = 58359
           a.Looped = true
           a.PlaybackSpeed = "1"
           a:Play()
       end
   end
end)

msg = coroutine.create(function()
   while wait(0.4) do
       msg = Instance.new("Message",workspace)
       msg.Text = "Why can't we be friends? GET TOASTED BY United Exploits of Robloxia! Filtering Disabled forever! :D"
       wait(0.4)
       msg:Destroy()
   end
end)


rain = coroutine.create(function()
   while wait(10 % 1 * 1e2) do
       part = Instance.new("Part",workspace)
       part.Name = "Toad"
     
       mesh = Instance.new("SpecialMesh",part)
     
       sound = Instance.new("Sound",workspace)
     
       part.CanCollide = false
       part.Size = Vector3.new(440,530,380)
       part.Position = Vector3.new(math.random(-3000,1000),math.random(1,3000),math.random(-3000,3000))
 
      
     
       mesh.MeshType = "FileMesh"
       mesh.MeshId = "rbxassetid://502987532"
       mesh.TextureId = "rbxassetid://360048666"
   end
end)
coroutine.resume(sky)
coroutine.resume(del)
coroutine.resume(sound)
coroutine.resume(msg)
coroutine.resume(rain)
