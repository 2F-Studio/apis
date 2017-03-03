/*
Local administration application
 */
INSERT INTO resourceserver (id, contactEmail,  contactName, name, key0, secret, owner, thumbNailUrl)
VALUES
	(99998, 'localadmin@example.com','local admin','Authorization Server Apis',
	'authorization-server-admin', 'cafebabe-cafe-babe-cafe-babecafebabe', null, 'https://static.surfconext.nl/media/logo-surfnet-small.png');
INSERT INTO Resourceserver_scopes values (99998, 'read'),(99998, 'write') ;

INSERT INTO resourceserver (id, contactEmail,  contactName, name, key0, secret, owner)
VALUES
	(101, 'admin@youdrive.com', 'you drive', 'main resource server', '174f3aac-0dc8-49e7-bffc-cc6f178427b1', '2cbec3bb-8837-49bd-bc0f-d35ca29505c1',
	 'authorization-server-admin');

INSERT INTO Resourceserver_scopes values (99998, 'read'),(99998, 'write') ;

INSERT INTO client (id, contactEmail, contactName, description, name, thumbNailUrl, resourceserver_id,
clientId, secret)
VALUES
    (99998, 'client@coolapp.com', 'john.doe', 'Javascript application for authorization server administration',
    'Authorization Server Admin Client',
    'https://static.surfconext.nl/media/logo-surfnet-small.png', 99998,
    'authorization-server-admin-js-client', '');
INSERT INTO Client_scopes values (99998, 'read'), (99998, 'write');
INSERT INTO accesstoken (id, creationDate, modificationDate, encodedPrincipal, expires, refreshToken, resourceOwnerId, token, client_id)
VALUES
  (51, '2017-02-11 17:45:54', '2017-02-11 17:45:54', '["org.surfnet.oaaas.conext.SAMLAuthenticatedPrincipal",{"name":"authorization-server-admin","roles":["java.util.ArrayList",[]],"groups":["java.util.ArrayList",[]],"adminPrincipal":false,"attributes":["java.util.HashMap",{"IDENTITY_PROVIDER":"http://mock-idp","DISPLAY_NAME":"authorization-server-admin"}]}]',
  0, NULL, 'authorization-server-admin', 'b441fe73-deb2-4b88-ba35-a7828693ba59', '99998');
