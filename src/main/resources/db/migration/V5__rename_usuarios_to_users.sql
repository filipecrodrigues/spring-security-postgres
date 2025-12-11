DO $$
BEGIN
    -- Só renomeia se a tabela 'users' não existir
    IF NOT EXISTS (
        SELECT 1 FROM information_schema.tables WHERE table_name = 'users'
    ) THEN
        
        -- Só renomeia se a tabela 'usuarios' existir
        IF EXISTS (
            SELECT 1 FROM information_schema.tables WHERE table_name = 'usuarios'
        ) THEN
ALTER TABLE usuarios RENAME TO users;
END IF;

END IF;
END$$;
