-- DB切り替え
\c db_pipopa

-- テーブル作成
CREATE TABLE  pipopaschema.serverdata (
    id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    text_notification VARCHAR(18),
    voice_notification VARCHAR(18),
    user_ignore VARCHAR(18)[]
);

-- 権限追加
GRANT ALL PRIVILEGES ON pipopaschema.serverdata TO nop;

-- サンプルレコード作成
INSERT INTO pipopaschema.serverdata VALUES(NULL, '989114617177452615', '988045582797004824');