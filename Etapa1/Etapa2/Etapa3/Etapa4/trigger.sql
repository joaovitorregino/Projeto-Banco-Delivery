CREATE OR REPLACE FUNCTION atualizar_status_pedido()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.status_pagamento = 'Pago' THEN
        UPDATE Pedido
        SET status = 'Em andamento'
        WHERE id_pedido = NEW.id_pedido;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_pagamento_confirmado
AFTER INSERT ON Pagamento
FOR EACH ROW
EXECUTE FUNCTION atualizar_status_pedido();
