const graphData =  {
  // Market Overview
  'MOV1': {
    'graphType': 'column',
    'title': 'eSports market size worldwide from 2020 to 2025',
    'subtitle': '(in billion U.S. dollars)',
    'data': [
      {'x': '2020', 'y': 0.97},
      {'x': '2021', 'y': 1.28},
      {'x': '2025*', 'y': 2.89},
    ],
    'yMin': 0.0,
    'yMax': 3.0,
    'yInterval': 0.5
  },
  'MOV2': {
    'graphType': 'column',
    'title': 'eSports market revenue worldwide from 2019 to 2024',
    'subtitle': '(in  million U.S. dollars)',
    'data': [
      { 'x': '2019', 'y': 957.5 },
      { 'x': '2020', 'y': 947.1 },
      { 'x': '2021', 'y': 1084.1 },
      { 'x': '2024*', 'y': 1617.7 }
    ],
    'yMin': 0.0,
    'yMax': 2000.0,
    'yInterval': 250.0
  },
  'MOV3': {
    'graphType': 'column',
    'title': 'eSports market revenue worldwide in 2021, by region',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'China', 'y': 360.1 },
      { 'x': 'United States', 'y': 243 },
      { 'x': 'Western Europe', 'y': 205.8}
    ],
    'yMin': 0.0,
    'yMax': 400.0,
    'yInterval': 50.0
  },
  'MOV4': {
    'graphType': 'bar',
    'title': 'eSports market revenue worldwide in 2021, by segment',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'Streaming', 'y': 25.1 },
      { 'x': 'Digital', 'y': 32.3 },
      { 'x': 'Merchandise & tickets', 'y': 66.6 },
      { 'x': 'Publisher fees', 'y': 126.6 },
      { 'x': 'Media Rights', 'y': 192.6 },
      { 'x': 'Sponsorships', 'y': 641 },
    ],
    'yMin': 0.0,
    'yMax': 800.0,
    'yInterval': 100.0
  },
  'MOV5':  {
    'graphType': 'bar',
    'title': 'Share of eSports market worldwide in 2021, by company',
    'data': [
      { 'x': 'Riot Games Inc.', 'y': 1.4},
      { 'x': 'Take-Two Interactive', 'y': 1.87 },
      { 'x': 'Cloud9', 'y': 1.96 },
      { 'x': 'Team SoloMid(TSM)', 'y': 2.1},
      { 'x': 'Nintendo', 'y': 2.82 },
      { 'x': 'Electronic Arts Inc.', 'y': 3.78 },
      { 'x': 'Valve Corporation', 'y': 8.03 },
      { 'x': 'Tencent', 'y': 11.04 },
      { 'x': 'Modern Times Group MTG AB', 'y': 14.15 },
      { 'x': 'Activision Blizzard Inc.', 'y': 21.85 },
    ],
    'yMin': 0.0,
    'yMax': 25.0,
    'yInterval': 2.5,
    'yLabel': '{value}%'
  },
  'MOV6': {
    'graphType': 'column',
    'title': 'eSports audience size worldwide from 2019 to 2024',
    'subtitle': '(in millions)',
    'data': [
      { 'x': '2019', 'y': 397.8 },
      { 'x': '2020', 'y': 435.9 },
      { 'x': '2021', 'y': 474 },
      { 'x': '2024*', 'y': 577.2 }
    ],
    'yMin': 0.0,
    'yMax': 700.0,
    'yInterval': 100.0
  },
  'MOV7': {
    'graphType': 'stacked',
    'title': 'eSports audience size worldwide from 2019 to 2024, by type of viewers',
    'subtitle': '(in millions)',
    'legends': [
      'eSports enthusiasts',
      'Occasional viewers'
    ],
    'data': [
      [
        { 'x': '2019', 'y': 197 },
        { 'x': '2020', 'y': 215.4 },
        { 'x': '2021', 'y': 234 },
        { 'x': '2024*', 'y': 285.7}
      ],
      [
        { 'x': '2019', 'y': 200.8 },
        { 'x': '2020', 'y': 220.5 },
        { 'x': '2021', 'y': 240 },
        { 'x': '2024*', 'y': 291.6 }
      ]
    ],
    'yMin': 0.0,
    'yMax': 700.0,
    'yInterval': 100.0
  },

  // Tournaments & Games
  'T&G1': {
    'graphType': 'bar',
    'title': 'Leading eSports tournaments worldwide as of January 2022, ranked by overall prize pool',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'Honor of Kings World Champion Cup 2021', 'y': 7.73 },
      { 'x': 'The International 2014', 'y': 10.93 },
      { 'x': 'Fortnite World Cup Finals 2019 - Duo', 'y': 15.1 },
      { 'x': 'Fortnite World Cup Finals 2019 - Solo', 'y': 15.29 },
      { 'x': 'The International 2015', 'y': 18.43 },
      { 'x': 'The International 2016', 'y': 20.77 },
      { 'x': 'The International 2017', 'y': 24.69 },
      { 'x': 'The International 2018', 'y': 25.53 },
      { 'x': 'The International 2019', 'y': 34.33 },
      { 'x': 'The International 2021', 'y': 40.02 },
    ],
    'yMin': 0.0,
    'yMax': 45.0,
    'yInterval': 5.0,
  },
  'T&G2': {
    'graphType': 'bar',
    'title': 'Most watched eSports tournaments worldwide as of May 2021',
    'subtitle': '(in millions)',
    'data': [
      { 'x': 'Fortnite World Cup 2019 Finals', 'y': 2.33 },
      { 'x': 'Free Fire Continental Series 2020 Asia', 'y': 2.57 },
      { 'x': 'M2 World Championship', 'y': 3.08 },
      { 'x': 'PUBG Mobile Global Championship Season 0', 'y': 3.8 },
      { 'x': 'League of Legends 2020 World Championship', 'y': 3.88 },
      { 'x': 'League of Legends 2019 World Championship', 'y': 3.99 },
      { 'x': 'Free Fire World Series 2021 Singapore', 'y': 5.41 },
    ],
    'yMin': 0.0,
    'yMax': 6.0,
    'yInterval': 1.0,
  },
  'T&G3': {
    'graphType': 'bar',
    'title': 'Leading eSports games worldwide in 2021, by cumulative tournament prize pool',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'Call of Duty: Warzone', 'y': 6.12 },
      { 'x': 'Rainbow Six Siege', 'y': 6.22 },
      { 'x': 'Valorant', 'y': 6.44 },
      { 'x': 'League of Legends', 'y': 7.68 },
      { 'x': 'Fortnite', 'y': 9.47 },
      { 'x': 'Arena of Valor', 'y': 13.34 },
      { 'x': 'PlayerUnknown\'s Battlegrounds', 'y': 16.03 },
      { 'x': 'PlayerUnknown\'s Battlegrounds mobile', 'y': 17.16 },
      { 'x': 'Counter-Strike: Global Offensive', 'y': 21.17 },
      { 'x': 'DOTA 2', 'y': 47.73 }
    ],
    'yMin': 0.0,
    'yMax': 60.0,
    'yInterval': 10.0,
  },
  'T&G4': {
    'graphType': 'multiColumn',
    'title': 'Number of viewers Counter Strike: Global Offensive Intel Extreme Masters worldwide in 2020 and 2021',
    'subtitle': '(in 1,000s)',
    'legends': [
      'Peak viewers',
      'Average viewers'
    ],
    'data': [
      [
        { 'x': '2020', 'y': 1002.13 },
        { 'x': '2021', 'y': 596.59 },
      ],
      [
        { 'x': '2020', 'y': 273.06 },
        { 'x': '2021', 'y': 224.13 },
      ]
    ],
    'yMin': 0.0,
    'yMax': 1250.0,
    'yInterval': 250.0,
  },
  // Teams & Players
  'T&P1': {
    'graphType': 'bar',
    'title': 'Leading professional eSports teams worldwide as of November 2021, by total prize money won',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'Vici Gaming (China)', 'y': 15.02 },
      { 'x': 'Paris Saint-Germain Esports (France)', 'y': 15.59 },
      { 'x': 'Natus Vincere (Ukraine)', 'y': 15.62 },
      { 'x': 'Team Secret (Europe)', 'y': 15.96 },
      { 'x': 'Fnatic (United Kingdom)', 'y': 17.3 },
      { 'x': 'Virtus.pro (Russia)', 'y': 17.75 },
      { 'x': 'Team Spirit (Russia)', 'y': 19.84 },
      { 'x': 'Evil Geniuses (United States)', 'y': 25.52 },
      { 'x': 'OG (Europe)', 'y': 35.63 },
      { 'x': 'Team Liquid (Europe)', 'y': 37.82 },
    ],
    'yMin': 0.0,
    'yMax': 50.0,
    'yInterval': 10.0,
  },
  'T&P2': {
    'graphType': 'bar',
    'title': 'Leading eSports teams worldwide in 2021, by earnings',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'Team Liquid', 'y': 2.2 },
      { 'x': 'Nova eSports', 'y': 2.32 },
      { 'x': 'Gambit Esports', 'y': 2.34 },
      { 'x': 'Invictus', 'y': 2.85 },
      { 'x': 'Virtus.pro', 'y': 2.87 },
      { 'x': 'Qiao Gu Reapers', 'y': 3.43 },
      { 'x': 'Team Secret', 'y': 3.98 },
      { 'x': 'Natus Vincere', 'y': 5.33 },
      { 'x': 'Paris Saint-Germain Esports', 'y': 5.88 },
      { 'x': 'Team Spirit', 'y': 18.79 },
    ],
    'yMin': 0.0,
    'yMax': 25.0,
    'yInterval': 5.0,
  },
  'T&P3': {
    'graphType': 'bar',
    'title': 'Leading eSports players worldwide in 2021, by earnings',
    'subtitle': '(in 1,000 U.S. dollars)',
    'data': [
      { 'x': 'NothingToSay (Cheng, Jin Xiang)', 'y': 1118.78 },
      { 'x': 'XinQ (Zhao, Zixing)', 'y': 1158.68 },
      { 'x': 'Faith_bian (Zhang Ruida)', 'y': 1158.68 },
      { 'x': 'y` (Zhang Yiping)', 'y': 1158.68 },
      { 'x': 'Ame (Wang, Chunyu)', 'y': 1158.68 },
      { 'x': 'Yatoro (Ilya Mulyarchuk)', 'y': 3695.57 },
      { 'x': 'Collapse (Magomed Khalilov)', 'y': 3695.57 },
      { 'x': 'TORONTOTOKYO (Alexander Khertek)', 'y': 3695.57 },
      { 'x': 'Miposhka (Yaroslav Naidenov)', 'y': 3695.57 },
      { 'x': 'Mira (Miroslaw Kolpakov)', 'y': 3669.65 }
    ],
    'yMin': 0.0,
    'yMax': 4500.0,
    'yInterval': 500.0,
  },
  'T&P4': {
    'graphType': 'bar',
    'title': 'Leading eSports players worldwide as of February 2022, by overall earnings',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'GH (Mauroun Merhej)', 'y': 4.22 },
      { 'x': 'Matumbaman (Lasse Urpalainen)', 'y': 4.52 },
      { 'x': 'MinD_ContRoL (Ivan Ivanov)', 'y': 4.61 },
      { 'x': 'Miracle- (Amer Al-Barkawi)', 'y': 4.82 },
      { 'x': 'KuroKy (Kuro Takhasomi)', 'y': 5.22 },
      { 'x': 'Topson (Topias Taavitsainen)', 'y': 5.69 },
      { 'x': 'Ceb (Sébastien Debs)', 'y': 5.77 },
      { 'x': 'ana (Anathan Pham)', 'y': 6 },
      { 'x': 'JerAx (Jesse Vainikka)', 'y': 6.48 },
      { 'x': 'N0tail (Johan Sundstein)', 'y': 7.18 },
    ],
    'yMin': 0.0,
    'yMax': 8.0,
    'yInterval': 1.0,
  },
  'T&P5': {
    'graphType': 'bar',
    'title': 'Leading Counter-Strike: Global Offensive (CS:GO) eSports players worldwide as of February 2022, by overall earnings ',
    'subtitle': '(in million U.S. dollars)',
    'data': [
      { 'x': 'TACO (Epitácio de Melo)', 'y': 1.09 },
      { 'x': 'FalleN (Gabriel Toledo)', 'y': 1.14 },
      { 'x': 'Stewie2k (Jakey Yip)', 'y': 1.18 },
      { 'x': 'electronic (Denis Sharipov)', 'y': 1.38 },
      { 'x': 's1mple (Alexander Kostylev)', 'y': 1.52 },
      { 'x': 'Magisk (Emil Reif)', 'y': 1.54 },
      { 'x': 'gla1ve (Lukas Rossander)', 'y': 1.78 },
      { 'x': 'dev1ce (Nicolai Reedtz)', 'y': 1.92 },
      { 'x': 'Xyp9x (Andreas Højsleth)', 'y': 1.93 },
      { 'x': 'dupreeh (Peter Rasmussen)', 'y': 1.94 },
    ],
    'yMin': 0.0,
    'yMax': 2.25,
    'yInterval': 0.25,
  },
  // Fans
  'FANS1': {
    'graphType': 'stacked',
    'title': 'Level of interest in eSports in the United States as of September 2021, by gender',
    'legends': [
      'Avid fan',
      'Casual fan',
      'Not a fan'
    ],
    'data': [
      [
        { 'x': 'Male', 'y': 15 },
        { 'x': 'Female', 'y': 3 },
      ],
      [
        { 'x': 'Male', 'y': 26 },
        { 'x': 'Female', 'y': 12 },
      ],
      [
        { 'x': 'Male', 'y': 59 },
        { 'x': 'Female', 'y': 85 },
      ]
    ],
    'yMin': 0.0,
    'yMax': 125.0,
    'yInterval': 25.0,
    'yLabel': '{value}%'
  }
};