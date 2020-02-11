# Welcome to Sonic Pi v3.1
use_bpm 92
use_synth :piano
letsgo ="C:/Users/javen/OneDrive/Desktop/LET'S GO.wav"
intro = "C:/Users/javen/Music/introsample.wav"
woah = "C:/Users/javen/Music/woah.wav"
startnotes=[:c5,:e5,:a5,:c5,:e5,:a5,:e5,:b4,:e5,:a5,:b4,:e5,:g5,:e5]
index = 0
=begin
sample intro

sleep 85
=end
live_loop :starttnotes do
  2.times do
    play startnotes[index]
    index = index + 1
    sleep 0.5
  end
  stop
end


live_loop :top_line do
  2.times do
    play:c5
    sleep 0.5
    play:e5
    sleep 0.5
    play:a5
    sleep 0.5
    play:c5
    sleep 1
    play:e5
    sleep 0.5
    play:a5
    sleep 0.5
    play:e5
    sleep 0.5
    play:b4
    sleep 0.5
    play:e5
    sleep 0.5
    play:a5
    sleep 0.5
    play:b4
    sleep 1
    play:e5
    sleep 0.5
    play:g5
    sleep 0.5
    play:e5
    sleep 0.5
  end
  stop
end


live_loop :bottom_line do
  2.times do
    play:a2
    play:a1
    sleep 3
    play:b2
    play:b1
    sleep 1
    play:e2
    play:c1
    sleep 3
    play:e2
    play:c1
    sleep 1
  end
  stop
end
sleep 16

#measure 5--------------
live_loop:buildupTop do
  1.times do
    play:b4
    sleep 0.5
    play:e5
    sleep 0.5
    play:a5
    sleep 0.5
    play:b4
    sleep 1
    play:e5
    sleep 0.5
    play:g5
    sleep 0.5
    play:e5
    sleep 0.5
  end
  stop
end

live_loop:buildupBottom do
  1.times do
    play:e2
    play:g0
    sleep 1
    play:e2
    play:g0
    sleep 0.5
    play:e2
    play:g0
    sleep 0.5
    play:e2
    play:g0
    sleep 0.5
    play:e2
    play:g0
    sleep 0.5
    play:e2
    play:g0
    sleep 0.5
    play:e2
    play:g0
    sleep 0.5
  end
  stop
end
=begin
sample letsgo
=end
sleep 4
x = 1

#measure 6---------------------
live_loop:dingding1 do
  6.times do
    8.times do
      play:a5, amp: 2
      play:e5, amp: 2
      play:c5, amp: 2
      sleep 0.5
    end
    3.times do
      play:a5, amp: 2
      play:e5, amp: 2
      play:b4, amp: 2
      sleep 0.5
    end
    5.times do
      play:g5, amp: 2
      play:e5, amp: 2
      play:b4, amp: 2
      sleep 0.5
    end
  end
  stop
end

=begin
live_loop:woah do
  13.times do
    sample woah
    sleep 11
  end
  stop
end
=end
sleep 8
x = 2
y = 4
z = 0.1
live_loop:sampless do
  5.times do
    x.times do
      sample:drum_snare_soft, amp: z
      sleep y
      z = z + 0.05
    end
    x = x*2.0
    print x
    y = y/2.0
    print y
  end
  stop
end
sleep 40

x = 2
live_loop:fadeout do
  4.times do
    8.times do
      play:a5, amp: x
      play:e5, amp: x
      play:c5, amp: x
      sleep 0.5
    end
    3.times do
      play:a5, amp: x
      play:e5, amp: x
      play:b4, amp: x
      sleep 0.5
    end
    5.times do
      play:g5, amp: x
      play:e5, amp: x
      play:b4, amp: x
      sleep 0.5
      x = x - 0.5
    end
    stop
  end
end
