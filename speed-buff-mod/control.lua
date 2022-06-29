-- Function to cache the config
local function getconfig(name)
    return settings.startup['sb:speed-buff-'..name].value
    end
local config = {
    amount = getconfig'amount',
    range = getconfig'range',
    researchable = getconfig'researchable',
}

script.on_event(defines.events.on_player_changed_position,
    function(event)
        -- Get the moving player
        local player = game.get_player(event.player_index)         
    
        -- Find the nearest enemy
        local nearest_enemy = player.surface.find_nearest_enemy{
            position=player.position,
            max_distance=config.range,
        }

        -- If the player has a character attached to it
        if not player.cutscene_character then
            -- If a enemy is in range
            if nearest_enemy then
                player.character_running_speed_modifier = 0
            else
                player.character_running_speed_modifier = config.amount
            end
        end
  end
)
