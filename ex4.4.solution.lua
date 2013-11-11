-- initial state is room1
current_state = 'room1'

while current_state ~= 'room4' do
    move = io.read()

    if current_state == 'room1' then
        if move == "south" then current_state = 'room3'
            elseif move == "east" then current_state = 'room2'
        else
            print("invalid move")
        end
    elseif current_state == 'room2' then
        if move == "south" then current_state = 'room4'
        elseif move == "west" then current_state = 'room1'
        else
            print("invalid move")
        end
    elseif current_state == 'room3' then
        if move == "north" then current_state = 'room1'
        elseif move == "east" then current_state = 'room4'
        else
            print("invalid move")
        end
    end
end

print("Congratulations, you won!")
