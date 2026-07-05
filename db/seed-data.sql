--
-- PostgreSQL database dump
--


-- Dumped from database version 16.10
-- Dumped by pg_dump version 16.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: leagues; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.leagues (id, name, country, season) VALUES ('bri-liga1', 'BRI Liga 1', 'Indonesia', '2025/26');
INSERT INTO public.leagues (id, name, country, season) VALUES ('epl', 'Premier League', 'Inggris', '2025/26');
INSERT INTO public.leagues (id, name, country, season) VALUES ('laliga', 'LaLiga', 'Spanyol', '2025/26');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('persija', 'Persija Jakarta', 'PSJ', '#E4181C');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('persib', 'Persib Bandung', 'PSB', '#1E5EFF');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('bali-united', 'Bali United', 'BUFC', '#FF4E00');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('psm', 'PSM Makassar', 'PSM', '#B8121A');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('persebaya', 'Persebaya Surabaya', 'PSY', '#0B8A3E');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('arema', 'Arema FC', 'ARM', '#1D2A5E');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('madura-united', 'Madura United', 'MUFC', '#7A1F1F');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('borneo', 'Borneo FC', 'BRN', '#F7A600');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('man-city', 'Manchester City', 'MCI', '#6CABDD');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('arsenal', 'Arsenal', 'ARS', '#EF0107');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('liverpool', 'Liverpool', 'LIV', '#C8102E');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('man-utd', 'Manchester United', 'MUN', '#DA291C');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('chelsea', 'Chelsea', 'CHE', '#034694');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('tottenham', 'Tottenham Hotspur', 'TOT', '#132257');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('real-madrid', 'Real Madrid', 'RMA', '#FEBE10');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('barcelona', 'Barcelona', 'BAR', '#A50044');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('atletico', 'Atletico Madrid', 'ATM', '#CB3524');
INSERT INTO public.teams (id, name, short_name, crest_color) VALUES ('sevilla', 'Sevilla', 'SEV', '#D2001C');


--
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-live-1', 'bri-liga1', 'persija', 'persib', 1, 1, 'live', 63, '2026-07-04 22:49:58.947+00', 'Stadion Gelora Bung Karno, Jakarta');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-live-2', 'epl', 'liverpool', 'man-city', 2, 1, 'live', 71, '2026-07-04 22:49:58.947+00', 'Anfield, Liverpool');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-half-1', 'laliga', 'real-madrid', 'barcelona', 1, 0, 'halftime', 45, '2026-07-04 22:49:58.947+00', 'Santiago Bernabeu, Madrid');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-upcoming-1', 'bri-liga1', 'bali-united', 'psm', 0, 0, 'scheduled', NULL, '2026-07-05 02:49:58.947+00', 'Stadion Kapten I Wayan Dipta, Gianyar');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-upcoming-2', 'epl', 'arsenal', 'chelsea', 0, 0, 'scheduled', NULL, '2026-07-05 05:49:58.947+00', 'Emirates Stadium, London');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-upcoming-3', 'bri-liga1', 'persebaya', 'madura-united', 0, 0, 'scheduled', NULL, '2026-07-06 02:49:58.947+00', 'Stadion Gelora Bung Tomo, Surabaya');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-finished-1', 'bri-liga1', 'arema', 'borneo', 0, 2, 'finished', 90, '2026-07-03 21:49:58.947+00', 'Stadion Kanjuruhan, Malang');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-finished-2', 'laliga', 'atletico', 'sevilla', 3, 1, 'finished', 90, '2026-07-03 19:49:58.947+00', 'Civitas Metropolitano, Madrid');
INSERT INTO public.matches (id, league_id, home_team_id, away_team_id, home_score, away_score, status, minute, kickoff_at, venue) VALUES ('m-finished-3', 'epl', 'man-utd', 'tottenham', 2, 2, 'finished', 90, '2026-07-02 21:49:58.947+00', 'Old Trafford, Manchester');


--
-- Data for Name: match_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-1', 'm-live-1', 0, 'kickoff', 'home', '-', 'Pertandingan dimulai');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-2', 'm-live-1', 23, 'goal', 'home', 'Marko Simic', 'Gol! Marko Simic membawa Persija unggul 1-0');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-3', 'm-live-1', 38, 'yellowCard', 'away', 'David da Silva', 'Kartu kuning untuk David da Silva');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-4', 'm-live-1', 45, 'halftime', 'home', '-', 'Babak pertama berakhir 1-0');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-5', 'm-live-1', 58, 'goal', 'away', 'Ciro Alves', 'Gol! Ciro Alves menyamakan kedudukan 1-1');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-6', 'm-live-2', 0, 'kickoff', 'home', '-', 'Pertandingan dimulai');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-7', 'm-live-2', 12, 'goal', 'home', 'Mohamed Salah', 'Gol! Mohamed Salah membuka skor untuk Liverpool');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-8', 'm-live-2', 34, 'goal', 'away', 'Erling Haaland', 'Gol! Erling Haaland menyamakan kedudukan');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-9', 'm-live-2', 45, 'halftime', 'home', '-', 'Babak pertama berakhir 1-1');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-10', 'm-live-2', 66, 'goal', 'home', 'Darwin Nunez', 'Gol! Darwin Nunez membawa Liverpool unggul 2-1');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-11', 'm-live-2', 69, 'yellowCard', 'away', 'Rodri', 'Kartu kuning untuk Rodri');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-12', 'm-half-1', 0, 'kickoff', 'home', '-', 'Pertandingan dimulai');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-13', 'm-half-1', 29, 'goal', 'home', 'Kylian Mbappe', 'Gol! Kylian Mbappe membawa Real Madrid unggul');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-14', 'm-half-1', 45, 'halftime', 'home', '-', 'Babak pertama berakhir 1-0');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-15', 'm-finished-1', 0, 'kickoff', 'home', '-', 'Pertandingan dimulai');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-16', 'm-finished-1', 41, 'goal', 'away', 'Terens Puhiri', 'Gol! Terens Puhiri membawa Borneo unggul');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-17', 'm-finished-1', 45, 'halftime', 'home', '-', 'Babak pertama berakhir 0-1');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-18', 'm-finished-1', 58, 'redCard', 'home', 'Kushedya Hari Yudo', 'Kartu merah untuk Kushedya Hari Yudo');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-19', 'm-finished-1', 77, 'goal', 'away', 'Stefano Lilipaly', 'Gol! Stefano Lilipaly menggenapi skor 0-2');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-20', 'm-finished-1', 90, 'fulltime', 'home', '-', 'Pertandingan berakhir 0-2');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-21', 'm-finished-2', 0, 'kickoff', 'home', '-', 'Pertandingan dimulai');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-22', 'm-finished-2', 15, 'goal', 'home', 'Antoine Griezmann', 'Gol! Griezmann membawa Atletico unggul');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-23', 'm-finished-2', 52, 'goal', 'away', 'Youssef En-Nesyri', 'Gol! En-Nesyri menyamakan kedudukan');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-24', 'm-finished-2', 63, 'goal', 'home', 'Antoine Griezmann', 'Gol! Griezmann mencetak gol keduanya');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-25', 'm-finished-2', 85, 'goal', 'home', 'Alvaro Morata', 'Gol! Morata menutup skor 3-1');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-26', 'm-finished-2', 90, 'fulltime', 'home', '-', 'Pertandingan berakhir 3-1');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-27', 'm-finished-3', 0, 'kickoff', 'home', '-', 'Pertandingan dimulai');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-28', 'm-finished-3', 22, 'goal', 'home', 'Bruno Fernandes', 'Gol! Bruno Fernandes membuka skor');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-29', 'm-finished-3', 47, 'goal', 'away', 'Son Heung-min', 'Gol! Son Heung-min menyamakan kedudukan');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-30', 'm-finished-3', 68, 'goal', 'away', 'James Maddison', 'Gol! Maddison membawa Tottenham unggul');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-31', 'm-finished-3', 89, 'goal', 'home', 'Marcus Rashford', 'Gol! Rashford menyamakan kedudukan di menit akhir');
INSERT INTO public.match_events (id, match_id, minute, type, team, player, description) VALUES ('e-32', 'm-finished-3', 90, 'fulltime', 'home', '-', 'Pertandingan berakhir imbang 2-2');


--
-- Data for Name: match_stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.match_stats (match_id, possession_home, possession_away, shots_home, shots_away, shots_on_target_home, shots_on_target_away, corners_home, corners_away, fouls_home, fouls_away, yellow_cards_home, yellow_cards_away, red_cards_home, red_cards_away, offsides_home, offsides_away) VALUES ('m-live-1', 54, 46, 9, 7, 4, 3, 5, 3, 8, 10, 2, 1, 0, 0, 1, 2);
INSERT INTO public.match_stats (match_id, possession_home, possession_away, shots_home, shots_away, shots_on_target_home, shots_on_target_away, corners_home, corners_away, fouls_home, fouls_away, yellow_cards_home, yellow_cards_away, red_cards_home, red_cards_away, offsides_home, offsides_away) VALUES ('m-live-2', 58, 42, 14, 8, 6, 4, 7, 2, 6, 9, 1, 2, 0, 0, 2, 1);
INSERT INTO public.match_stats (match_id, possession_home, possession_away, shots_home, shots_away, shots_on_target_home, shots_on_target_away, corners_home, corners_away, fouls_home, fouls_away, yellow_cards_home, yellow_cards_away, red_cards_home, red_cards_away, offsides_home, offsides_away) VALUES ('m-half-1', 61, 39, 8, 3, 3, 1, 4, 1, 4, 7, 0, 1, 0, 0, 0, 1);
INSERT INTO public.match_stats (match_id, possession_home, possession_away, shots_home, shots_away, shots_on_target_home, shots_on_target_away, corners_home, corners_away, fouls_home, fouls_away, yellow_cards_home, yellow_cards_away, red_cards_home, red_cards_away, offsides_home, offsides_away) VALUES ('m-finished-1', 44, 56, 6, 13, 2, 6, 3, 8, 11, 7, 3, 1, 1, 0, 2, 0);
INSERT INTO public.match_stats (match_id, possession_home, possession_away, shots_home, shots_away, shots_on_target_home, shots_on_target_away, corners_home, corners_away, fouls_home, fouls_away, yellow_cards_home, yellow_cards_away, red_cards_home, red_cards_away, offsides_home, offsides_away) VALUES ('m-finished-2', 55, 45, 15, 9, 8, 4, 6, 4, 9, 12, 1, 3, 0, 0, 1, 2);
INSERT INTO public.match_stats (match_id, possession_home, possession_away, shots_home, shots_away, shots_on_target_home, shots_on_target_away, corners_home, corners_away, fouls_home, fouls_away, yellow_cards_home, yellow_cards_away, red_cards_home, red_cards_away, offsides_home, offsides_away) VALUES ('m-finished-3', 49, 51, 11, 12, 5, 5, 5, 6, 10, 8, 2, 2, 0, 0, 1, 1);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.news (id, title, summary, content, category, published_at, image_color) VALUES ('n-1', 'Persib Kokoh di Puncak Klasemen BRI Liga 1', 'Persib Bandung memperkuat posisinya di puncak klasemen usai rentetan kemenangan.', 'Persib Bandung terus menunjukkan performa impresif di BRI Liga 1 musim ini. Dengan koleksi 33 poin dari 14 pertandingan, Maung Bandung kokoh di puncak klasemen. Konsistensi lini pertahanan menjadi kunci utama keberhasilan tim asuhan pelatih mereka musim ini, hanya kebobolan 10 gol sepanjang kompetisi.', 'Liga 1', '2026-07-04 19:49:58.947+00', '#1E5EFF');
INSERT INTO public.news (id, title, summary, content, category, published_at, image_color) VALUES ('n-2', 'Duel Sengit Liverpool vs Manchester City Malam Ini', 'Dua raksasa Premier League bertemu dalam laga yang berpotensi menentukan arah gelar juara.', 'Liverpool menjamu Manchester City di Anfield dalam laga yang disebut-sebut sebagai partai penentu arah persaingan gelar Premier League musim ini. Kedua tim datang dengan performa impresif dan siap tampil habis-habisan demi tiga poin penuh.', 'Premier League', '2026-07-04 15:49:58.947+00', '#C8102E');
INSERT INTO public.news (id, title, summary, content, category, published_at, image_color) VALUES ('n-3', 'El Clasico Kembali Digelar, Madrid vs Barcelona Panas', 'Rivalitas abadi Spanyol tersaji lagi dengan kedua tim sama-sama berada dalam performa terbaik.', 'Real Madrid dan Barcelona kembali bertemu dalam laga El Clasico yang selalu dinanti para penggemar sepak bola di seluruh dunia. Kedua tim sama-sama berada di papan atas klasemen LaLiga musim ini, menjadikan laga ini semakin sengit.', 'LaLiga', '2026-07-04 11:49:58.947+00', '#FEBE10');
INSERT INTO public.news (id, title, summary, content, category, published_at, image_color) VALUES ('n-4', 'Borneo FC Curi Poin Penuh di Kandang Arema', 'Gol Terens Puhiri dan Stefano Lilipaly membawa Borneo FC menang 2-0 atas Arema FC.', 'Borneo FC berhasil meraih kemenangan penting di kandang Arema FC dengan skor 2-0. Gol dari Terens Puhiri dan Stefano Lilipaly memastikan tiga poin bagi tim tamu, sementara Arema harus bermain dengan 10 pemain sejak menit ke-58 usai kartu merah.', 'Liga 1', '2026-07-04 03:49:58.947+00', '#F7A600');
INSERT INTO public.news (id, title, summary, content, category, published_at, image_color) VALUES ('n-5', 'Rashford Selamatkan Manchester United di Menit Akhir', 'Marcus Rashford mencetak gol penyeimbang dramatis menit 89 melawan Tottenham.', 'Manchester United harus puas bermain imbang 2-2 melawan Tottenham Hotspur setelah gol penyeimbang dramatis dari Marcus Rashford di menit ke-89. Hasil ini membuat MU tertahan di papan tengah klasemen Premier League.', 'Premier League', '2026-07-02 23:49:58.947+00', '#DA291C');
INSERT INTO public.news (id, title, summary, content, category, published_at, image_color) VALUES ('n-6', 'Jadwal Padat BRI Liga 1 Pekan Ini', 'Sejumlah laga besar akan tersaji dalam beberapa hari ke depan, termasuk Bali United vs PSM.', 'BRI Liga 1 memasuki pekan yang padat dengan sejumlah laga besar. Bali United akan menjamu PSM Makassar di Stadion Kapten I Wayan Dipta, sementara Persebaya Surabaya akan menghadapi Madura United dalam laga derbi Jawa Timur yang selalu berlangsung sengit.', 'Liga 1', '2026-07-04 21:49:58.947+00', '#0B8A3E');


--
-- Data for Name: standings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-persib', 'bri-liga1', 'persib', 1, 14, 10, 3, 1, 28, 10, 33);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-bali-united', 'bri-liga1', 'bali-united', 2, 14, 9, 3, 2, 25, 13, 30);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-persija', 'bri-liga1', 'persija', 3, 14, 8, 4, 2, 24, 14, 28);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-psm', 'bri-liga1', 'psm', 4, 14, 7, 4, 3, 22, 16, 25);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-borneo', 'bri-liga1', 'borneo', 5, 14, 6, 5, 3, 20, 15, 23);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-persebaya', 'bri-liga1', 'persebaya', 6, 14, 5, 4, 5, 18, 18, 19);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-madura-united', 'bri-liga1', 'madura-united', 7, 14, 4, 4, 6, 15, 19, 16);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('bri-liga1-arema', 'bri-liga1', 'arema', 8, 14, 2, 3, 9, 12, 27, 9);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('epl-liverpool', 'epl', 'liverpool', 1, 15, 11, 3, 1, 32, 12, 36);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('epl-arsenal', 'epl', 'arsenal', 2, 15, 10, 4, 1, 29, 11, 34);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('epl-man-city', 'epl', 'man-city', 3, 15, 9, 4, 2, 30, 16, 31);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('epl-chelsea', 'epl', 'chelsea', 4, 15, 8, 4, 3, 26, 18, 28);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('epl-tottenham', 'epl', 'tottenham', 5, 15, 7, 3, 5, 24, 20, 24);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('epl-man-utd', 'epl', 'man-utd', 6, 15, 5, 5, 5, 19, 21, 20);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('laliga-real-madrid', 'laliga', 'real-madrid', 1, 15, 12, 2, 1, 33, 10, 38);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('laliga-barcelona', 'laliga', 'barcelona', 2, 15, 11, 2, 2, 36, 15, 35);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('laliga-atletico', 'laliga', 'atletico', 3, 15, 9, 4, 2, 27, 14, 31);
INSERT INTO public.standings (id, league_id, team_id, rank, played, won, drawn, lost, goals_for, goals_against, points) VALUES ('laliga-sevilla', 'laliga', 'sevilla', 4, 15, 6, 5, 4, 20, 19, 23);


--
-- PostgreSQL database dump complete
--


