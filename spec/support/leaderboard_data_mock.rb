# frozen_string_literal: true

class LeaderboardDataMock
  MOCK = { 'members' =>
            { '12341' =>
               { 'last_star_ts' => '1575309957',
                 'completion_day_level' =>
                  { '1' =>
                     { '1' => { 'get_star_ts' => '1575309397' },
                       '2' => { 'get_star_ts' => '1575309957' } } },
                 'local_score' => 8,
                 'global_score' => 0,
                 'stars' => 2,
                 'name' => 'Alpha',
                 'id' => '12341' },
              '12342' =>
               { 'stars' => 12,
                 'global_score' => 0,
                 'local_score' => 58,
                 'completion_day_level' =>
                  { '2' =>
                     { '2' => { 'get_star_ts' => '1575311299' },
                       '1' => { 'get_star_ts' => '1575307795' } },
                    '1' =>
                     { '1' => { 'get_star_ts' => '1575322668' },
                       '2' => { 'get_star_ts' => '1575325586' } },
                    '4' =>
                     { '2' => { 'get_star_ts' => '1575470267' },
                       '1' => { 'get_star_ts' => '1575469466' } },
                    '3' => { '1' => { 'get_star_ts' => '1575434988' } },
                    '8' =>
                     { '2' => { 'get_star_ts' => '1575895215' },
                       '1' => { 'get_star_ts' => '1575858996' } },
                    '14' => { '1' => { 'get_star_ts' => '1576428819' } },
                    '5' =>
                     { '1' => { 'get_star_ts' => '1575913865' },
                       '2' => { 'get_star_ts' => '1575915323' } } },
                 'last_star_ts' => '1576428819',
                 'id' => '12342',
                 'name' => 'Beta' },
              '12343' =>
               { 'last_star_ts' => '1576342221',
                 'completion_day_level' =>
                  { '7' => { '1' => { 'get_star_ts' => '1575828563' } },
                    '1' =>
                     { '2' => { 'get_star_ts' => '1575307643' },
                       '1' => { 'get_star_ts' => '1575306962' } },
                    '4' =>
                     { '2' => { 'get_star_ts' => '1575481164' },
                       '1' => { 'get_star_ts' => '1575480550' } },
                    '5' =>
                     { '2' => { 'get_star_ts' => '1575579726' },
                       '1' => { 'get_star_ts' => '1575571096' } },
                    '11' =>
                     { '2' => { 'get_star_ts' => '1576160767' },
                       '1' => { 'get_star_ts' => '1576122806' } },
                    '2' =>
                     { '2' => { 'get_star_ts' => '1575313418' },
                       '1' => { 'get_star_ts' => '1575309347' } },
                    '12' =>
                     { '2' => { 'get_star_ts' => '1576259408' },
                       '1' => { 'get_star_ts' => '1576184501' } },
                    '10' =>
                     { '1' => { 'get_star_ts' => '1576001047' },
                       '2' => { 'get_star_ts' => '1576015249' } },
                    '13' =>
                     { '1' => { 'get_star_ts' => '1576272150' },
                       '2' => { 'get_star_ts' => '1576342221' } },
                    '6' =>
                     { '2' => { 'get_star_ts' => '1575688543' },
                       '1' => { 'get_star_ts' => '1575664032' } },
                    '9' =>
                     { '2' => { 'get_star_ts' => '1576086940' },
                       '1' => { 'get_star_ts' => '1576086439' } },
                    '8' =>
                     { '2' => { 'get_star_ts' => '1575913328' },
                       '1' => { 'get_star_ts' => '1575909939' } },
                    '3' =>
                     { '1' => { 'get_star_ts' => '1575383650' },
                       '2' => { 'get_star_ts' => '1575392711' } } },
                 'local_score' => 132,
                 'stars' => 25,
                 'global_score' => 0,
                 'name' => 'Charlie',
                 'id' => '12343' },
              '12344' =>
               { 'stars' => 8,
                 'global_score' => 0,
                 'local_score' => 24,
                 'last_star_ts' => '1575638983',
                 'completion_day_level' =>
                  { '4' =>
                     { '2' => { 'get_star_ts' => '1575555284' },
                       '1' => { 'get_star_ts' => '1575496610' } },
                    '5' =>
                     { '2' => { 'get_star_ts' => '1575638983' },
                       '1' => { 'get_star_ts' => '1575636239' } },
                    '2' =>
                     { '2' => { 'get_star_ts' => '1575339818' },
                       '1' => { 'get_star_ts' => '1575319464' } },
                    '1' =>
                     { '1' => { 'get_star_ts' => '1575340582' },
                       '2' => { 'get_star_ts' => '1575341659' } } },
                 'id' => '12344',
                 'name' => 'Delta' },
              '12340' =>
               { 'local_score' => 101,
                 'stars' => 19,
                 'global_score' => 0,
                 'completion_day_level' =>
                  { '8' =>
                     { '2' => { 'get_star_ts' => '1575916037' },
                       '1' => { 'get_star_ts' => '1575913533' } },
                    '3' =>
                     { '2' => { 'get_star_ts' => '1575393072' },
                       '1' => { 'get_star_ts' => '1575389844' } },
                    '6' =>
                     { '2' => { 'get_star_ts' => '1575663210' },
                       '1' => { 'get_star_ts' => '1575652277' } },
                    '12' =>
                     { '1' => { 'get_star_ts' => '1576174223' },
                       '2' => { 'get_star_ts' => '1576257494' } },
                    '10' =>
                     { '2' => { 'get_star_ts' => '1576108069' },
                       '1' => { 'get_star_ts' => '1576021450' } },
                    '2' =>
                     { '1' => { 'get_star_ts' => '1575308974' },
                       '2' => { 'get_star_ts' => '1575315792' } },
                    '5' =>
                     { '1' => { 'get_star_ts' => '1575567845' },
                       '2' => { 'get_star_ts' => '1575571317' } },
                    '4' =>
                     { '2' => { 'get_star_ts' => '1575472858' },
                       '1' => { 'get_star_ts' => '1575471429' } },
                    '1' =>
                     { '1' => { 'get_star_ts' => '1575299289' },
                       '2' => { 'get_star_ts' => '1575307451' } },
                    '7' => { '1' => { 'get_star_ts' => '1575771065' } } },
                 'last_star_ts' => '1576257494',
                 'id' => '12340',
                 'name' => 'Foxtrot' },
              '12345' =>
               { 'last_star_ts' => 0,
                 'completion_day_level' => {},
                 'stars' => 0,
                 'global_score' => 0,
                 'local_score' => 0,
                 'name' => 'Golf',
                 'id' => '12345' } },
           'owner_id' => '12340',
           'event' => '2019' }.to_json
end
