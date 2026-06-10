BEGIN;

INSERT INTO Pedido
VALUES (21,'2026-06-10',45.90,'Em andamento',1,1);

INSERT INTO Pagamento
VALUES (21,'Pix',45.90,'2026-06-10','Pago',21);

COMMIT;


BEGIN;

INSERT INTO Pedido
VALUES (22,'2026-06-10',80.00,'Em andamento',2,2);

ROLLBACK;


BEGIN;

UPDATE Pedido
SET status = 'Entregue'
WHERE id_pedido = 3;

COMMIT;


BEGIN;

UPDATE Pedido
SET status = 'Cancelado'
WHERE id_pedido = 4;

COMMIT;
