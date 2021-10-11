class Tournament
  def self.generate(teams)
    teams.push(nil) if teams.size.odd?
    rounds = teams.size - 1
    matches = teams.size / 2
    rounds.times.map do |round|
      ms = matches.times.map do |match|
        [teams[match], teams.reverse[match]]
      end
      teams = [teams[0]] + teams[1..-1].rotate(-1)
      ms
    end
  end
end
