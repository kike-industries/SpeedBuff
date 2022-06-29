data:extend{
    -- Setting to specify the amount of speed that should be buffed
    {
        name = 'sb:speed-buff-amount',
        type = 'double-setting',
        setting_type = 'startup',
        default_value = 0.5,
        minimum_value = -1,
        maximum_value = 3,
        order = 'a',
    },

    -- Setting to specify the range in which the speed should be normalized
    {
        name = 'sb:speed-buff-range',
        type = 'int-setting',
        setting_type = 'startup',
        default_value = 100,
        minimum_value = 0,
        maximum_value = 1000,
        order = 'b',
    },

    -- Setting to specify whether the speed buff needs to be researched
    {
        name = 'sb:speed-buff-researchable',
        type = 'bool-setting',
        setting_type = 'startup',
        default_value = true,
        order = 'c',
    },
}