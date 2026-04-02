init = function()
    os.execute("pkill testfaust")
    os.execute("/home/we/dust/code/testfaust/testfaust &")
    os.execute("jack_connect testfaust:out_0 crone:input_1")
    os.execute("jack_connect testfaust:out_1 crone:input_2")
end

key = function(n, z)
    if n == 3 then
        if z == 1 then
            osc.send({"localhost", 5510}, "/testfaust/trig", {1.0})
        else
            osc.send({"localhost", 5510}, "/testfaust/trig", {0.0})
        end
    end
end

cleanup = function()
    os.execute("pkill testfaust")
end
