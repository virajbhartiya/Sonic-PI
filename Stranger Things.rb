use_bpm 84

in_thread do
  live_loop :pedal1 do
    with_fx :lpf, cutoff: 70 do
      use_synth :saw
      use_synth_defaults release: 0.8
      play_pattern_timed [:c3, :e3, :g3, :b3, :c4, :b3, :g3, :e3], [0.25]
    end
  end
end

in_thread do
  live_loop :pedal2 do
    with_fx :lpf, cutoff: 50 do
      use_synth :prophet
      use_synth_defaults release: 1.2
      play_pattern_timed [:c3, :e3, :g3, :b3, :c4, :b3, :g3, :e3], [0.25]
    end
  end
end
