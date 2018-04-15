
 -- INSERT DATA
  
        
        
        
        
        
            -- INSERT: StaffDirectory
            --  STATIC: 
            --  Rows: 35
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec03FgPrRWv8aheP')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rec03FgPrRWv8aheP', 
                        
                                'Ã‡akÄ±l Demir', 
                        
                                'Producer / Editor', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Ã‡akÄ±l Demir', 
                                [Title] = 'Producer / Editor', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec03FgPrRWv8aheP';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec0J4TjLIBFflHHO')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rec0J4TjLIBFflHHO', 
                        
                                'Gayle Thornton', 
                        
                                'Senior Producer / Writer', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Gayle Thornton', 
                                [Title] = 'Senior Producer / Writer', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec0J4TjLIBFflHHO';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec3DkGQ3iksGWFC4')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rec3DkGQ3iksGWFC4', 
                        
                                'Joyce Luna', 
                        
                                'Senior Producer / Writer', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Joyce Luna', 
                                [Title] = 'Senior Producer / Writer', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec3DkGQ3iksGWFC4';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec5QolQaIaTR1mSZ')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rec5QolQaIaTR1mSZ', 
                        
                                'Maria Kozlov', 
                        
                                'Producer', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Maria Kozlov', 
                                [Title] = 'Producer', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec5QolQaIaTR1mSZ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec5UF2DoOgiF2mw8')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rec5UF2DoOgiF2mw8', 
                        
                                'Karla Cohen', 
                        
                                'Product Manager', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Karla Cohen', 
                                [Title] = 'Product Manager', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec5UF2DoOgiF2mw8';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec6G1P5OG3n7Enpu')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rec6G1P5OG3n7Enpu', 
                        
                                'Pete Tran', 
                        
                                'Editor', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Pete Tran', 
                                [Title] = 'Editor', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec6G1P5OG3n7Enpu';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec8sLTwNKJoLRJkh')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rec8sLTwNKJoLRJkh', 
                        
                                'Andy Burns', 
                        
                                'Editor', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Andy Burns', 
                                [Title] = 'Editor', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec8sLTwNKJoLRJkh';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recCbLqrRCBkERxTE')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recCbLqrRCBkERxTE', 
                        
                                'Laura Knox', 
                        
                                'Senior Producer', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Laura Knox', 
                                [Title] = 'Senior Producer', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recCbLqrRCBkERxTE';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recFnNlw9J91ugPqQ')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recFnNlw9J91ugPqQ', 
                        
                                'Aziz Mehani', 
                        
                                'Intern', 
                        
                                'Audience Development', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Aziz Mehani', 
                                [Title] = 'Intern', 
                                [Team] = 'Audience Development', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recFnNlw9J91ugPqQ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recGbGXDNV9Y064jq')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recGbGXDNV9Y064jq', 
                        
                                'Annette Herrera', 
                        
                                'Director of Production', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Annette Herrera', 
                                [Title] = 'Director of Production', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recGbGXDNV9Y064jq';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recHd4ohgNDkChXqH')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recHd4ohgNDkChXqH', 
                        
                                'Corin Lafenestre', 
                        
                                'Writer/Host', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Corin Lafenestre', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recHd4ohgNDkChXqH';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recJcnlVMKdLok8CN')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recJcnlVMKdLok8CN', 
                        
                                'Chester Gilmour', 
                        
                                'Program Manager', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Chester Gilmour', 
                                [Title] = 'Program Manager', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recJcnlVMKdLok8CN';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recKmiGUbKMOsSl32')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recKmiGUbKMOsSl32', 
                        
                                'Katie Lacy', 
                        
                                'Writer/Host', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Katie Lacy', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recKmiGUbKMOsSl32';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recMMvINxEUp0taax')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recMMvINxEUp0taax', 
                        
                                'Aisha Harris', 
                        
                                'Writer/Host', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Aisha Harris', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recMMvINxEUp0taax';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recMzP5XiDoQOJxia')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recMzP5XiDoQOJxia', 
                        
                                'Darren Wheeler', 
                        
                                'Audience Development Specialist', 
                        
                                'Audience Development', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Darren Wheeler', 
                                [Title] = 'Audience Development Specialist', 
                                [Team] = 'Audience Development', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recMzP5XiDoQOJxia';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recNZMbXPsIlffcM8')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recNZMbXPsIlffcM8', 
                        
                                'Sophie Grumbach', 
                        
                                'Branded Content Producer', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Sophie Grumbach', 
                                [Title] = 'Branded Content Producer', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recNZMbXPsIlffcM8';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recQcNH02l59jtXsl')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recQcNH02l59jtXsl', 
                        
                                'Darya Petrova', 
                        
                                'Preditor', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Darya Petrova', 
                                [Title] = 'Preditor', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recQcNH02l59jtXsl';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recTsbBvVeArkDKY8')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recTsbBvVeArkDKY8', 
                        
                                'Mindy Patrick', 
                        
                                'VP of Product', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Mindy Patrick', 
                                [Title] = 'VP of Product', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recTsbBvVeArkDKY8';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recVixPAKcqFvBJUy')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recVixPAKcqFvBJUy', 
                        
                                'Hannah Wise', 
                        
                                'Studio Manager / Shooter', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Hannah Wise', 
                                [Title] = 'Studio Manager / Shooter', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recVixPAKcqFvBJUy';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recWbmoMieC0S7mj0')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recWbmoMieC0S7mj0', 
                        
                                'Frankie Phelps', 
                        
                                'Producer', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Frankie Phelps', 
                                [Title] = 'Producer', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recWbmoMieC0S7mj0';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recZ4GKD7hOBqx6KP')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recZ4GKD7hOBqx6KP', 
                        
                                'Maple Mahnke', 
                        
                                'Producer / Editor', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Maple Mahnke', 
                                [Title] = 'Producer / Editor', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recZ4GKD7hOBqx6KP';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recZKppXZ0hrzxYQs')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recZKppXZ0hrzxYQs', 
                        
                                'Sooyoung Ahn', 
                        
                                'Manager', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Sooyoung Ahn', 
                                [Title] = 'Manager', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recZKppXZ0hrzxYQs';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recZYhdaAksa6al1k')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recZYhdaAksa6al1k', 
                        
                                'Ken Fujimoto', 
                        
                                'Talent Manager', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Ken Fujimoto', 
                                [Title] = 'Talent Manager', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recZYhdaAksa6al1k';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recc4Zp5ZhleUAOkW')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recc4Zp5ZhleUAOkW', 
                        
                                'Mercedes Lane', 
                        
                                'Freelance Shooter', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:30Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Mercedes Lane', 
                                [Title] = 'Freelance Shooter', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:30Z'
                        WHERE StaffDirectoryId = 'recc4Zp5ZhleUAOkW';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rechMV1okID4aje6R')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'rechMV1okID4aje6R', 
                        
                                'AndrÃ©s Diallo', 
                        
                                'Director of Audience Development', 
                        
                                'Audience Development', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'AndrÃ©s Diallo', 
                                [Title] = 'Director of Audience Development', 
                                [Team] = 'Audience Development', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rechMV1okID4aje6R';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'reciQQKzDI1Af9ma4')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'reciQQKzDI1Af9ma4', 
                        
                                'Darrin Oliver', 
                        
                                'Associate Producer', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Darrin Oliver', 
                                [Title] = 'Associate Producer', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'reciQQKzDI1Af9ma4';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recj3lezavi0eVJ2j')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recj3lezavi0eVJ2j', 
                        
                                'Sara JÃ¶nsson', 
                        
                                'Producer/Editor', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Sara JÃ¶nsson', 
                                [Title] = 'Producer/Editor', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recj3lezavi0eVJ2j';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'reckPPjJoRZykfr4S')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'reckPPjJoRZykfr4S', 
                        
                                'Mariel Escobedo', 
                        
                                'Writer/Host', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Mariel Escobedo', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'reckPPjJoRZykfr4S';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'reclArgEVqQBfWkf0')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'Shiori Okuda', 
                        
                                'Intern', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Shiori Okuda', 
                                [Title] = 'Intern', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'reclArgEVqQBfWkf0';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recmf5YZQ4IgsrWKJ')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recmf5YZQ4IgsrWKJ', 
                        
                                'Angelica Padilla', 
                        
                                'Associate Producer', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Angelica Padilla', 
                                [Title] = 'Associate Producer', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recmf5YZQ4IgsrWKJ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recoFTQvthNwg5Hvx')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recoFTQvthNwg5Hvx', 
                        
                                'Rob Chan', 
                        
                                'Editor', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Rob Chan', 
                                [Title] = 'Editor', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recoFTQvthNwg5Hvx';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recpCfJf74l2LoKIT')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recpCfJf74l2LoKIT', 
                        
                                'Shirin Rassul', 
                        
                                'Editor', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Shirin Rassul', 
                                [Title] = 'Editor', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recpCfJf74l2LoKIT';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recpSmamhkmLWHtsn')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recpSmamhkmLWHtsn', 
                        
                                'Laura Bubnis', 
                        
                                'Branded Content Producer', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Laura Bubnis', 
                                [Title] = 'Branded Content Producer', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recpSmamhkmLWHtsn';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recxnmbwrQ6lcg7Ib')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                'Rickey Rios', 
                        
                                'Writer/Host', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Rickey Rios', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recxnmbwrQ6lcg7Ib';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recz0sUxCCMCL5vou')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [createdTime] ) VALUES (
                        
                                'recz0sUxCCMCL5vou', 
                        
                                'Elias Flowers', 
                        
                                'Vice President', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Elias Flowers', 
                                [Title] = 'Vice President', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recz0sUxCCMCL5vou';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Location
            --  STATIC: 
            --  Rows: 3
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT LocationId FROM Location WHERE LocationId = 'rec3qq2H1SIZF2ozn')
                    BEGIN
                        INSERT INTO [Location] ([LocationId] , [Name] , [Address] , [MainContact] , [Hours] , [CurrentStatus] , [createdTime] ) VALUES (
                        
                                'rec3qq2H1SIZF2ozn', 
                        
                                'Waveform HQ', 
                        
                                '700 Seaside Terrace
Santa Monica, CA 90401', 
                        
                                'Sheryl Strauss
', 
                        
                                '9-2 PM M-W', 
                        
                                'Shoot approved', 
                        
                                '2017-03-31T02:37:01Z');
                    END ELSE BEGIN
                        UPDATE  [Location] 
                            SET 
                                [Name] = 'Waveform HQ', 
                                [Address] = '700 Seaside Terrace
Santa Monica, CA 90401', 
                                [MainContact] = 'Sheryl Strauss
', 
                                [Hours] = '9-2 PM M-W', 
                                [CurrentStatus] = 'Shoot approved', 
                                [createdTime] = '2017-03-31T02:37:01Z'
                        WHERE LocationId = 'rec3qq2H1SIZF2ozn';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT LocationId FROM Location WHERE LocationId = 'recDLe3h9FJAGLfVI')
                    BEGIN
                        INSERT INTO [Location] ([LocationId] , [Name] , [Address] , [MainContact] , [Hours] , [CurrentStatus] , [createdTime] ) VALUES (
                        
                                'recDLe3h9FJAGLfVI', 
                        
                                'Outside', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Reached out', 
                        
                                '2017-03-31T02:37:01Z');
                    END ELSE BEGIN
                        UPDATE  [Location] 
                            SET 
                                [Name] = 'Outside', 
                                [Address] = NULL, 
                                [MainContact] = NULL, 
                                [Hours] = NULL, 
                                [CurrentStatus] = 'Reached out', 
                                [createdTime] = '2017-03-31T02:37:01Z'
                        WHERE LocationId = 'recDLe3h9FJAGLfVI';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT LocationId FROM Location WHERE LocationId = 'recl1atkI6EBcVADD')
                    BEGIN
                        INSERT INTO [Location] ([LocationId] , [Name] , [Address] , [MainContact] , [Hours] , [CurrentStatus] , [createdTime] ) VALUES (
                        
                                'recl1atkI6EBcVADD', 
                        
                                'CrestFALLEN Store', 
                        
                                '345 Addie St, Pismo Beach, CA 93449', 
                        
                                'Chandra Coggins
', 
                        
                                '9-5 PM M-F', 
                        
                                'Shoot scheduled', 
                        
                                '2017-03-31T02:37:01Z');
                    END ELSE BEGIN
                        UPDATE  [Location] 
                            SET 
                                [Name] = 'CrestFALLEN Store', 
                                [Address] = '345 Addie St, Pismo Beach, CA 93449', 
                                [MainContact] = 'Chandra Coggins
', 
                                [Hours] = '9-5 PM M-F', 
                                [CurrentStatus] = 'Shoot scheduled', 
                                [createdTime] = '2017-03-31T02:37:01Z'
                        WHERE LocationId = 'recl1atkI6EBcVADD';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Shot
            --  STATIC: 
            --  Rows: 11
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'rec1KT9k8VKaELGaH')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'rec1KT9k8VKaELGaH', 
                        
                                'CU (OTS)', 
                        
                                'Low Angle', 
                        
                                'Tilt', 
                        
                                '50mm', 
                        
                                '2018-03-29', 
                        
                                '3', 
                        
                                '2.3', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'CU (OTS)', 
                                [Angle] = 'Low Angle', 
                                [CameraMovement] = 'Tilt', 
                                [Lens] = '50mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '3', 
                                [Name] = '2.3', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'rec1KT9k8VKaELGaH';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'rec2eCsJhBb43D6wH')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'rec2eCsJhBb43D6wH', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '2018-03-24', 
                        
                                '2', 
                        
                                '1.2', 
                        
                                '2017-07-12T03:21:48Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = NULL, 
                                [Angle] = NULL, 
                                [CameraMovement] = NULL, 
                                [Lens] = NULL, 
                                [ShootDate] = '2018-03-24', 
                                [ShotNum] = '2', 
                                [Name] = '1.2', 
                                [createdTime] = '2017-07-12T03:21:48Z'
                        WHERE ShotId = 'rec2eCsJhBb43D6wH';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'rec8PJCVrSZbRemV0')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'rec8PJCVrSZbRemV0', 
                        
                                'CU', 
                        
                                'Dutch Tilt', 
                        
                                'Steadicam', 
                        
                                'Zoom', 
                        
                                '2018-03-17', 
                        
                                '2', 
                        
                                '1.2', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'CU', 
                                [Angle] = 'Dutch Tilt', 
                                [CameraMovement] = 'Steadicam', 
                                [Lens] = 'Zoom', 
                                [ShootDate] = '2018-03-17', 
                                [ShotNum] = '2', 
                                [Name] = '1.2', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'rec8PJCVrSZbRemV0';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recUjeeTKxv0t7Vi4')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'recUjeeTKxv0t7Vi4', 
                        
                                'MCU (OTS)', 
                        
                                'Extreme Low', 
                        
                                'Static', 
                        
                                '25mm', 
                        
                                '2018-03-23', 
                        
                                '1', 
                        
                                '1.1', 
                        
                                '2017-07-12T03:21:36Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'MCU (OTS)', 
                                [Angle] = 'Extreme Low', 
                                [CameraMovement] = 'Static', 
                                [Lens] = '25mm', 
                                [ShootDate] = '2018-03-23', 
                                [ShotNum] = '1', 
                                [Name] = '1.1', 
                                [createdTime] = '2017-07-12T03:21:36Z'
                        WHERE ShotId = 'recUjeeTKxv0t7Vi4';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recVTQElDzIvjx9Jx')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'recVTQElDzIvjx9Jx', 
                        
                                'MCU (OTS)', 
                        
                                'High Angle', 
                        
                                'Handheld', 
                        
                                '35mm', 
                        
                                '2018-03-29', 
                        
                                '2', 
                        
                                '2.2', 
                        
                                '2017-03-31T02:36:51Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'MCU (OTS)', 
                                [Angle] = 'High Angle', 
                                [CameraMovement] = 'Handheld', 
                                [Lens] = '35mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '2', 
                                [Name] = '2.2', 
                                [createdTime] = '2017-03-31T02:36:51Z'
                        WHERE ShotId = 'recVTQElDzIvjx9Jx';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recYH48Pmls9Vm8HU')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'recYH48Pmls9Vm8HU', 
                        
                                'CU', 
                        
                                'Low Angle', 
                        
                                'Steadicam', 
                        
                                '50mm', 
                        
                                '2018-03-26', 
                        
                                '1', 
                        
                                '2.1', 
                        
                                '2017-07-12T03:21:55Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'CU', 
                                [Angle] = 'Low Angle', 
                                [CameraMovement] = 'Steadicam', 
                                [Lens] = '50mm', 
                                [ShootDate] = '2018-03-26', 
                                [ShotNum] = '1', 
                                [Name] = '2.1', 
                                [createdTime] = '2017-07-12T03:21:55Z'
                        WHERE ShotId = 'recYH48Pmls9Vm8HU';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recdDKMh12KYpDwZ2')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'recdDKMh12KYpDwZ2', 
                        
                                'ELS', 
                        
                                'Eyelevel', 
                        
                                'Static', 
                        
                                'Zoom', 
                        
                                '2018-03-23', 
                        
                                '2', 
                        
                                '3.2', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'ELS', 
                                [Angle] = 'Eyelevel', 
                                [CameraMovement] = 'Static', 
                                [Lens] = 'Zoom', 
                                [ShootDate] = '2018-03-23', 
                                [ShotNum] = '2', 
                                [Name] = '3.2', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'recdDKMh12KYpDwZ2';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recdbtPMIpby7IV6c')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'recdbtPMIpby7IV6c', 
                        
                                'LS', 
                        
                                'High Angle', 
                        
                                'Pan', 
                        
                                '18mm', 
                        
                                '2018-03-28', 
                        
                                '1', 
                        
                                '1.1', 
                        
                                '2017-03-31T02:36:51Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'LS', 
                                [Angle] = 'High Angle', 
                                [CameraMovement] = 'Pan', 
                                [Lens] = '18mm', 
                                [ShootDate] = '2018-03-28', 
                                [ShotNum] = '1', 
                                [Name] = '1.1', 
                                [createdTime] = '2017-03-31T02:36:51Z'
                        WHERE ShotId = 'recdbtPMIpby7IV6c';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recj4zxI8MVUprozy')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'recj4zxI8MVUprozy', 
                        
                                'MCU (OTS)', 
                        
                                'High Angle', 
                        
                                'Pan', 
                        
                                '35mm', 
                        
                                '2018-03-29', 
                        
                                '1', 
                        
                                '3.1', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'MCU (OTS)', 
                                [Angle] = 'High Angle', 
                                [CameraMovement] = 'Pan', 
                                [Lens] = '35mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '1', 
                                [Name] = '3.1', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'recj4zxI8MVUprozy';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'reclZ3yvsxaXUQoGy')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'reclZ3yvsxaXUQoGy', 
                        
                                'LS', 
                        
                                'POV', 
                        
                                'Dolly', 
                        
                                '100mm', 
                        
                                '2018-03-23', 
                        
                                '3', 
                        
                                '1.3', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'LS', 
                                [Angle] = 'POV', 
                                [CameraMovement] = 'Dolly', 
                                [Lens] = '100mm', 
                                [ShootDate] = '2018-03-23', 
                                [ShotNum] = '3', 
                                [Name] = '1.3', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'reclZ3yvsxaXUQoGy';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recoywUS0diP7bPmE')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [createdTime] ) VALUES (
                        
                                'recoywUS0diP7bPmE', 
                        
                                'MS', 
                        
                                'Extreme High', 
                        
                                'Pan', 
                        
                                '25mm', 
                        
                                '2018-03-29', 
                        
                                '1', 
                        
                                '2.1', 
                        
                                '2017-03-31T02:36:51Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [ShotSize] = 'MS', 
                                [Angle] = 'Extreme High', 
                                [CameraMovement] = 'Pan', 
                                [Lens] = '25mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '1', 
                                [Name] = '2.1', 
                                [createdTime] = '2017-03-31T02:36:51Z'
                        WHERE ShotId = 'recoywUS0diP7bPmE';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Video
            --  STATIC: 
            --  Rows: 18
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'rec9vJ34Uq1BWX6PR')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'rec9vJ34Uq1BWX6PR', 
                        
                                'Waveform x CrestFALLEN', 
                        
                                'YouTube', 
                        
                                'Animated / Mixed Media', 
                        
                                '2018-05-15T07:00:00Z', 
                        
                                'VO / Host Record', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-13', 
                        
                                '2018-03-22', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-15', 
                        
                                'Ready to Cut, Not Cleared', 
                        
                                'Product Launches', 
                        
                                '300', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:39Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Waveform x CrestFALLEN', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Animated / Mixed Media', 
                                [ReleaseDate] = '2018-05-15T07:00:00Z', 
                                [ProjectStatus] = 'VO / Host Record', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-22', 
                                [ReviewCutLatest] = 'www.thisistotallyalink.com', 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-15', 
                                [RightsClearancesStatus] = 'Ready to Cut, Not Cleared', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '300', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:39Z'
                        WHERE VideoId = 'rec9vJ34Uq1BWX6PR';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recCkDVKJiQ4FpDbV')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recCkDVKJiQ4FpDbV', 
                        
                                'Kenting, Taiwan: Asia''s Hidden Gem', 
                        
                                'Facebook', 
                        
                                'WebDoc - Commissioned', 
                        
                                '2018-06-04T07:00:00Z', 
                        
                                'Scripting', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-10', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-07', 
                        
                                'Ready to Cut, Not Cleared', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                '11000', 
                        
                                '10980', 
                        
                                '20', 
                        
                                '2017-03-30T11:18:32Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Kenting, Taiwan: Asia''s Hidden Gem', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Commissioned', 
                                [ReleaseDate] = '2018-06-04T07:00:00Z', 
                                [ProjectStatus] = 'Scripting', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-10', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-07', 
                                [RightsClearancesStatus] = 'Ready to Cut, Not Cleared', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = '11000', 
                                [Spend] = '10980', 
                                [RemainingBudget] = '20', 
                                [createdTime] = '2017-03-30T11:18:32Z'
                        WHERE VideoId = 'recCkDVKJiQ4FpDbV';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recD0gozCpp3juwoc')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recD0gozCpp3juwoc', 
                        
                                'Announcing: Your New Favorite Longboard', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-25T07:00:00Z', 
                        
                                'Needs Fact Check', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-13', 
                        
                                '2018-03-06', 
                        
                                NULL, 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-06', 
                        
                                'Permissions Being Negotiated', 
                        
                                'Product Launches', 
                        
                                '600', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-05-23T17:24:11Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Announcing: Your New Favorite Longboard', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-25T07:00:00Z', 
                                [ProjectStatus] = 'Needs Fact Check', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-06', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-06', 
                                [RightsClearancesStatus] = 'Permissions Being Negotiated', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '600', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-05-23T17:24:11Z'
                        WHERE VideoId = 'recD0gozCpp3juwoc';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recGBPGD9qXlWOuTk')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recGBPGD9qXlWOuTk', 
                        
                                'Meet the SurfDrone', 
                        
                                '.com', 
                        
                                'WebDoc - Mixed Media', 
                        
                                '2018-05-28T07:00:00Z', 
                        
                                'VO / Host Record', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-13', 
                        
                                '2018-03-22', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-15', 
                        
                                'Ready to Cut, Not Cleared', 
                        
                                'Brand BTS', 
                        
                                '300', 
                        
                                '13000', 
                        
                                '9182', 
                        
                                '3818', 
                        
                                '2017-05-23T17:23:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Meet the SurfDrone', 
                                [Platform] = '.com', 
                                [Format] = 'WebDoc - Mixed Media', 
                                [ReleaseDate] = '2018-05-28T07:00:00Z', 
                                [ProjectStatus] = 'VO / Host Record', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-22', 
                                [ReviewCutLatest] = 'www.thisistotallyalink.com', 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-15', 
                                [RightsClearancesStatus] = 'Ready to Cut, Not Cleared', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '300', 
                                [Budget] = '13000', 
                                [Spend] = '9182', 
                                [RemainingBudget] = '3818', 
                                [createdTime] = '2017-05-23T17:23:09Z'
                        WHERE VideoId = 'recGBPGD9qXlWOuTk';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recGjg0xD0ZERsvKr')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recGjg0xD0ZERsvKr', 
                        
                                'Playa Colorado, Nicaragua: Sand Juan del Sur', 
                        
                                'Facebook', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-06-01T07:00:00Z', 
                        
                                'Researching', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-06', 
                        
                                '2018-03-10', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-09', 
                        
                                'Permissions Cleared', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-05-23T17:24:12Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Playa Colorado, Nicaragua: Sand Juan del Sur', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-06-01T07:00:00Z', 
                                [ProjectStatus] = 'Researching', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-06', 
                                [ShootDate] = '2018-03-10', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-09', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-05-23T17:24:12Z'
                        WHERE VideoId = 'recGjg0xD0ZERsvKr';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recOnkOzWRcP1r8ws')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recOnkOzWRcP1r8ws', 
                        
                                '#wipeoutwednesday: Almost, But Not Quite', 
                        
                                '.com', 
                        
                                'WebDoc - Mixed Media', 
                        
                                '2018-05-16T07:00:00Z', 
                        
                                'Pre-production', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-13', 
                        
                                '2018-03-06', 
                        
                                NULL, 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-06', 
                        
                                'Permissions Being Negotiated', 
                        
                                'Brand BTS', 
                        
                                '600', 
                        
                                '12000', 
                        
                                '10277', 
                        
                                '1723', 
                        
                                '2017-03-30T11:18:29Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = '#wipeoutwednesday: Almost, But Not Quite', 
                                [Platform] = '.com', 
                                [Format] = 'WebDoc - Mixed Media', 
                                [ReleaseDate] = '2018-05-16T07:00:00Z', 
                                [ProjectStatus] = 'Pre-production', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-06', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-06', 
                                [RightsClearancesStatus] = 'Permissions Being Negotiated', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '600', 
                                [Budget] = '12000', 
                                [Spend] = '10277', 
                                [RemainingBudget] = '1723', 
                                [createdTime] = '2017-03-30T11:18:29Z'
                        WHERE VideoId = 'recOnkOzWRcP1r8ws';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recQieCCTeJcvGmux')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recQieCCTeJcvGmux', 
                        
                                'The Waveform Pro International 2018', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-22T07:00:00Z', 
                        
                                'Outreach in Progress', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-13', 
                        
                                '2018-03-24', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-30', 
                        
                                NULL, 
                        
                                'Event Announcement', 
                        
                                '180', 
                        
                                '18000', 
                        
                                '14027', 
                        
                                '3973', 
                        
                                '2017-03-30T14:37:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Waveform Pro International 2018', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-22T07:00:00Z', 
                                [ProjectStatus] = 'Outreach in Progress', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-24', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-30', 
                                [RightsClearancesStatus] = NULL, 
                                [Series] = 'Event Announcement', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = '18000', 
                                [Spend] = '14027', 
                                [RemainingBudget] = '3973', 
                                [createdTime] = '2017-03-30T14:37:09Z'
                        WHERE VideoId = 'recQieCCTeJcvGmux';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recT6cveTimMDxAGI')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recT6cveTimMDxAGI', 
                        
                                'The Waveform Team at Work', 
                        
                                '.com', 
                        
                                'Animated / Mixed Media', 
                        
                                '2018-05-07T11:45:00Z', 
                        
                                'In Edit', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-08', 
                        
                                '2018-03-02', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-03', 
                        
                                'Permissions Cleared', 
                        
                                'Brand BTS', 
                        
                                '60', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T10:52:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Waveform Team at Work', 
                                [Platform] = '.com', 
                                [Format] = 'Animated / Mixed Media', 
                                [ReleaseDate] = '2018-05-07T11:45:00Z', 
                                [ProjectStatus] = 'In Edit', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-08', 
                                [ShootDate] = '2018-03-02', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-03', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '60', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T10:52:09Z'
                        WHERE VideoId = 'recT6cveTimMDxAGI';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recWh4mNcOfVe2qrJ')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recWh4mNcOfVe2qrJ', 
                        
                                'The Surfboard Leash, Unleashed', 
                        
                                'YouTube', 
                        
                                'WebDoc - Commissioned', 
                        
                                '2018-05-31T07:00:00Z', 
                        
                                'Ready to Publish', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-22', 
                        
                                '2018-03-16', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-21', 
                        
                                'Needs Attention', 
                        
                                'Product Launches', 
                        
                                '2', 
                        
                                '8000', 
                        
                                '7382', 
                        
                                '618', 
                        
                                '2017-03-30T11:18:41Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Surfboard Leash, Unleashed', 
                                [Platform] = 'YouTube', 
                                [Format] = 'WebDoc - Commissioned', 
                                [ReleaseDate] = '2018-05-31T07:00:00Z', 
                                [ProjectStatus] = 'Ready to Publish', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-22', 
                                [ShootDate] = '2018-03-16', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-21', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '2', 
                                [Budget] = '8000', 
                                [Spend] = '7382', 
                                [RemainingBudget] = '618', 
                                [createdTime] = '2017-03-30T11:18:41Z'
                        WHERE VideoId = 'recWh4mNcOfVe2qrJ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recYzXUrNytYRMRcy')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recYzXUrNytYRMRcy', 
                        
                                'Skeleton Coast, Namibia: the Final Frontier of Surfing', 
                        
                                '.com', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-05-09T07:00:00Z', 
                        
                                'Researching', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-15', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-17', 
                        
                                'Permissions Being Negotiated', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:39Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Skeleton Coast, Namibia: the Final Frontier of Surfing', 
                                [Platform] = '.com', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-05-09T07:00:00Z', 
                                [ProjectStatus] = 'Researching', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-15', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-17', 
                                [RightsClearancesStatus] = 'Permissions Being Negotiated', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:39Z'
                        WHERE VideoId = 'recYzXUrNytYRMRcy';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recZZMj76Adyg4j0L')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recZZMj76Adyg4j0L', 
                        
                                'Surf Wax Poetic', 
                        
                                'Facebook', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-05-11T07:00:00Z', 
                        
                                'Needs Final Review', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-14', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-27', 
                        
                                'Needs Attention', 
                        
                                'Product Launches', 
                        
                                '180', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:27Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Surf Wax Poetic', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-05-11T07:00:00Z', 
                                [ProjectStatus] = 'Needs Final Review', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-14', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-27', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:27Z'
                        WHERE VideoId = 'recZZMj76Adyg4j0L';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'reci8UGapXPA4PsGP')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'reci8UGapXPA4PsGP', 
                        
                                'When to Rent Gear and When to Buy Gear', 
                        
                                'Facebook', 
                        
                                'Animated / Mixed Media', 
                        
                                '2018-05-31T07:00:00Z', 
                        
                                'Pre-production', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '2018-03-04', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Education', 
                        
                                '180', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T16:28:36Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'When to Rent Gear and When to Buy Gear', 
                                [Platform] = 'Facebook', 
                                [Format] = 'Animated / Mixed Media', 
                                [ReleaseDate] = '2018-05-31T07:00:00Z', 
                                [ProjectStatus] = 'Pre-production', 
                                [ScriptURL] = NULL, 
                                [ScriptDeadline] = NULL, 
                                [ShootDate] = '2018-03-04', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = NULL, 
                                [ShootPlan] = NULL, 
                                [LIVEURL] = NULL, 
                                [AssignedEditDate] = NULL, 
                                [RightsClearancesStatus] = NULL, 
                                [Series] = 'Education', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T16:28:36Z'
                        WHERE VideoId = 'reci8UGapXPA4PsGP';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recjX1AvfhP9dqlIt')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recjX1AvfhP9dqlIt', 
                        
                                'The World Cat Surfing Championships 2018', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-18T07:00:00Z', 
                        
                                'Needs Fact Check', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-06', 
                        
                                '2018-03-10', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-09', 
                        
                                'Permissions Cleared', 
                        
                                'Fun / Viral', 
                        
                                '120', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:38Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The World Cat Surfing Championships 2018', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-18T07:00:00Z', 
                                [ProjectStatus] = 'Needs Fact Check', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-06', 
                                [ShootDate] = '2018-03-10', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-09', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'Fun / Viral', 
                                [TargetLengthminutes] = '120', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:38Z'
                        WHERE VideoId = 'recjX1AvfhP9dqlIt';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recmH1WuuWHcxyFZw')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recmH1WuuWHcxyFZw', 
                        
                                '#wipeoutwednesday: Gone Surfing?', 
                        
                                'Facebook', 
                        
                                'Hosted', 
                        
                                '2018-05-02T13:00:00Z', 
                        
                                'Live', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-14', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-27', 
                        
                                'Needs Attention', 
                        
                                'Brand BTS', 
                        
                                '180', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-05-23T17:23:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = '#wipeoutwednesday: Gone Surfing?', 
                                [Platform] = 'Facebook', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-02T13:00:00Z', 
                                [ProjectStatus] = 'Live', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-14', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-27', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-05-23T17:23:09Z'
                        WHERE VideoId = 'recmH1WuuWHcxyFZw';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recmsqqbCausVfDrI')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recmsqqbCausVfDrI', 
                        
                                'The Best Surf Photography Gear', 
                        
                                'Facebook', 
                        
                                'WebDoc - Mixed Media', 
                        
                                '2018-05-01T14:41:00Z', 
                        
                                'Live', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-16', 
                        
                                '2018-03-29', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-31', 
                        
                                NULL, 
                        
                                'Education', 
                        
                                '120', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T14:37:17Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Best Surf Photography Gear', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Mixed Media', 
                                [ReleaseDate] = '2018-05-01T14:41:00Z', 
                                [ProjectStatus] = 'Live', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-16', 
                                [ShootDate] = '2018-03-29', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-31', 
                                [RightsClearancesStatus] = NULL, 
                                [Series] = 'Education', 
                                [TargetLengthminutes] = '120', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T14:37:17Z'
                        WHERE VideoId = 'recmsqqbCausVfDrI';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recoAIdaDhhhXqW06')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '72 Hours in a Surf Shop', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-16T07:00:00Z', 
                        
                                'Needs Revisions', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-16', 
                        
                                '2018-03-27', 
                        
                                NULL, 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-24', 
                        
                                'Needs Attention', 
                        
                                'Fun / Viral', 
                        
                                '900', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:38Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = '72 Hours in a Surf Shop', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-16T07:00:00Z', 
                                [ProjectStatus] = 'Needs Revisions', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-16', 
                                [ShootDate] = '2018-03-27', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-24', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Fun / Viral', 
                                [TargetLengthminutes] = '900', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:38Z'
                        WHERE VideoId = 'recoAIdaDhhhXqW06';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recqR93OBtXH7t1T7')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recqR93OBtXH7t1T7', 
                        
                                'Reykjanes, Iceland: Arctic Adventure', 
                        
                                'YouTube', 
                        
                                'WebDoc - Commissioned', 
                        
                                '2018-05-08T07:00:00Z', 
                        
                                'Scripting', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-22', 
                        
                                '2018-03-16', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-21', 
                        
                                'Needs Attention', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                '7000', 
                        
                                '5812', 
                        
                                '1188', 
                        
                                '2017-05-23T17:23:08Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Reykjanes, Iceland: Arctic Adventure', 
                                [Platform] = 'YouTube', 
                                [Format] = 'WebDoc - Commissioned', 
                                [ReleaseDate] = '2018-05-08T07:00:00Z', 
                                [ProjectStatus] = 'Scripting', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-22', 
                                [ShootDate] = '2018-03-16', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-21', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = '7000', 
                                [Spend] = '5812', 
                                [RemainingBudget] = '1188', 
                                [createdTime] = '2017-05-23T17:23:08Z'
                        WHERE VideoId = 'recqR93OBtXH7t1T7';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recyFoC1PX6fITY7T')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [ScriptURL] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recyFoC1PX6fITY7T', 
                        
                                'Arugam Bay, Sri Lanka: No Off-Season', 
                        
                                'YouTube', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-05-04T04:00:00Z', 
                        
                                'Live', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-10', 
                        
                                '2018-03-14', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-22', 
                        
                                'Permissions Cleared', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:40Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Arugam Bay, Sri Lanka: No Off-Season', 
                                [Platform] = 'YouTube', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-05-04T04:00:00Z', 
                                [ProjectStatus] = 'Live', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [ScriptDeadline] = '2018-03-10', 
                                [ShootDate] = '2018-03-14', 
                                [ReviewCutLatest] = 'www.thisistotallyalink.com', 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-22', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:40Z'
                        WHERE VideoId = 'recyFoC1PX6fITY7T';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: AgencyContact
            --  STATIC: 
            --  Rows: 20
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'rec3rcBYlgUmrI1V8')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'rec3rcBYlgUmrI1V8', 
                        
                                'Robert Gallman', 
                        
                                '(111) 111-1111', 
                        
                                'robert@anomnomalee.com', 
                        
                                'User research', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Robert Gallman', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'robert@anomnomalee.com', 
                                [Team] = 'User research', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'rec3rcBYlgUmrI1V8';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'rec42EmJpCmqOeyO6')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'rec42EmJpCmqOeyO6', 
                        
                                'Michael Zimmerman', 
                        
                                '(111) 111-1111', 
                        
                                'michael@doitch.com', 
                        
                                'VR', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Michael Zimmerman', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'michael@doitch.com', 
                                [Team] = 'VR', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'rec42EmJpCmqOeyO6';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recB1lCoVd0xmtqYM')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recB1lCoVd0xmtqYM', 
                        
                                'Ann Martina', 
                        
                                '(111) 111-1111', 
                        
                                'ann@dragon8.com', 
                        
                                'User research', 
                        
                                '2017-05-23T17:35:13Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Ann Martina', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'ann@dragon8.com', 
                                [Team] = 'User research', 
                                [createdTime] = '2017-05-23T17:35:13Z'
                        WHERE AgencyContactId = 'recB1lCoVd0xmtqYM';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recBDZk8RHbsuxfn0')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recBDZk8RHbsuxfn0', 
                        
                                'Edward Culbert', 
                        
                                '(111) 111-1111', 
                        
                                'edward@doitch.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:35:59Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Edward Culbert', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'edward@doitch.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:35:59Z'
                        WHERE AgencyContactId = 'recBDZk8RHbsuxfn0';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recC6NVMvfjj1CUmL')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recC6NVMvfjj1CUmL', 
                        
                                'Michael Turner', 
                        
                                '(111) 111-1111', 
                        
                                'michael@dragon8.com', 
                        
                                'Social', 
                        
                                '2017-03-31T03:02:17Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Michael Turner', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'michael@dragon8.com', 
                                [Team] = 'Social', 
                                [createdTime] = '2017-03-31T03:02:17Z'
                        WHERE AgencyContactId = 'recC6NVMvfjj1CUmL';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recJZFqI3q0d5yxEv')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recJZFqI3q0d5yxEv', 
                        
                                'Randy Morgan', 
                        
                                '(111) 111-1111', 
                        
                                'randy@astronaut.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:36:03Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Randy Morgan', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'randy@astronaut.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:36:03Z'
                        WHERE AgencyContactId = 'recJZFqI3q0d5yxEv';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recKtODCGJOaxvdem')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recKtODCGJOaxvdem', 
                        
                                'Laura Gillard', 
                        
                                '(111) 111-1111', 
                        
                                'laura@sockhop.com', 
                        
                                'Social', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Laura Gillard', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'laura@sockhop.com', 
                                [Team] = 'Social', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'recKtODCGJOaxvdem';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recLf0S8w7eM86tbe')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recLf0S8w7eM86tbe', 
                        
                                'Mary Spikes', 
                        
                                '(111) 111-1111', 
                        
                                'mary@sockhop.com', 
                        
                                'Social', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Mary Spikes', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'mary@sockhop.com', 
                                [Team] = 'Social', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'recLf0S8w7eM86tbe';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recT43PMNW0yGxBZe')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recT43PMNW0yGxBZe', 
                        
                                'Noel Hamilton', 
                        
                                '(111) 111-1111', 
                        
                                'noel@sockhop.com', 
                        
                                'User research', 
                        
                                '2017-03-31T04:04:26Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Noel Hamilton', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'noel@sockhop.com', 
                                [Team] = 'User research', 
                                [createdTime] = '2017-03-31T04:04:26Z'
                        WHERE AgencyContactId = 'recT43PMNW0yGxBZe';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recVnBzrrB9LtIspI')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recVnBzrrB9LtIspI', 
                        
                                'Michael Elam', 
                        
                                '(111) 111-1111', 
                        
                                'michael@73andcloudy.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:35:13Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Michael Elam', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'michael@73andcloudy.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:35:13Z'
                        WHERE AgencyContactId = 'recVnBzrrB9LtIspI';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recVtSh50FK2rF6SB')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recVtSh50FK2rF6SB', 
                        
                                'Christopher Wright', 
                        
                                '(111) 111-1111', 
                        
                                'christopher@doitch.com', 
                        
                                'VR', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Christopher Wright', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'christopher@doitch.com', 
                                [Team] = 'VR', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recVtSh50FK2rF6SB';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recb29GQobavcpugD')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recb29GQobavcpugD', 
                        
                                'Jerry Pritchard', 
                        
                                '(111) 111-1111', 
                        
                                'jerry@anomnomalee.com', 
                        
                                'UX', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Jerry Pritchard', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'jerry@anomnomalee.com', 
                                [Team] = 'UX', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recb29GQobavcpugD';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recbCLakUkmETsp2h')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recbCLakUkmETsp2h', 
                        
                                'Joseph Osborn', 
                        
                                '(111) 111-1111', 
                        
                                'joseph@astronaut.com', 
                        
                                'VR', 
                        
                                '2017-03-31T03:02:17Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Joseph Osborn', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'joseph@astronaut.com', 
                                [Team] = 'VR', 
                                [createdTime] = '2017-03-31T03:02:17Z'
                        WHERE AgencyContactId = 'recbCLakUkmETsp2h';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recf2iuyCzRiPju9m')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recf2iuyCzRiPju9m', 
                        
                                'Marline King', 
                        
                                '(111) 111-1111', 
                        
                                'marline@astronaut.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Marline King', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'marline@astronaut.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recf2iuyCzRiPju9m';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recfn5GWQZqvAnUcK')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recfn5GWQZqvAnUcK', 
                        
                                'Matthew Funke', 
                        
                                '(111) 111-1111', 
                        
                                'matthew@anomnomalee.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Matthew Funke', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'matthew@anomnomalee.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'recfn5GWQZqvAnUcK';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'reci2l62HZWCaEcBd')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'reci2l62HZWCaEcBd', 
                        
                                'Hillary Fiqueroa', 
                        
                                '(111) 111-1111', 
                        
                                'hillary@dragon8.com', 
                        
                                'Social', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Hillary Fiqueroa', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'hillary@dragon8.com', 
                                [Team] = 'Social', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'reci2l62HZWCaEcBd';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'reciJqNojBMxW2nor')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'reciJqNojBMxW2nor', 
                        
                                'Joan Morgan', 
                        
                                '(111) 111-1111', 
                        
                                'joan@73andcloudy.com', 
                        
                                'Video', 
                        
                                '2017-03-31T03:02:17Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Joan Morgan', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'joan@73andcloudy.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-03-31T03:02:17Z'
                        WHERE AgencyContactId = 'reciJqNojBMxW2nor';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recnU8MHXS3w4uWzv')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recnU8MHXS3w4uWzv', 
                        
                                'Andres Roth', 
                        
                                '(111) 111-1111', 
                        
                                'andres@sockhop.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:36:03Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Andres Roth', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'andres@sockhop.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:36:03Z'
                        WHERE AgencyContactId = 'recnU8MHXS3w4uWzv';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recyGBMSc2hKp5D1W')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recyGBMSc2hKp5D1W', 
                        
                                'Kerry Skiba', 
                        
                                '(111) 111-1111', 
                        
                                'kerry@anomnomalee.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:36:04Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Kerry Skiba', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'kerry@anomnomalee.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:36:04Z'
                        WHERE AgencyContactId = 'recyGBMSc2hKp5D1W';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recyIX0Nk5dBTx951')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [createdTime] ) VALUES (
                        
                                'recyIX0Nk5dBTx951', 
                        
                                'Wendy Keener', 
                        
                                '(111) 111-1111', 
                        
                                'wendy@73andcloudy.com', 
                        
                                'Video', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Wendy Keener', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'wendy@73andcloudy.com', 
                                [Team] = 'Video', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recyIX0Nk5dBTx951';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Scene
            --  STATIC: 
            --  Rows: 5
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recALzohOmW8FamWd')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recALzohOmW8FamWd', 
                        
                                'Talking to customers', 
                        
                                'thisistotallyalink.com', 
                        
                                '2', 
                        
                                '2017-03-31T02:36:56Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'Talking to customers', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '2', 
                                [createdTime] = '2017-03-31T02:36:56Z'
                        WHERE SceneId = 'recALzohOmW8FamWd';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recDjtCKSoZ4bI3Ef')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recDjtCKSoZ4bI3Ef', 
                        
                                'Meeting the staff', 
                        
                                'thisistotallyalink.com', 
                        
                                '1', 
                        
                                '2017-03-31T02:36:56Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'Meeting the staff', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '1', 
                                [createdTime] = '2017-03-31T02:36:56Z'
                        WHERE SceneId = 'recDjtCKSoZ4bI3Ef';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recEc433jfpCbXOai')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recEc433jfpCbXOai', 
                        
                                'SurfDrone at work', 
                        
                                'thisistotallyalink.com', 
                        
                                '1', 
                        
                                '2017-07-12T03:14:49Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'SurfDrone at work', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '1', 
                                [createdTime] = '2017-07-12T03:14:49Z'
                        WHERE SceneId = 'recEc433jfpCbXOai';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recTcp5b065uUYRGl')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recTcp5b065uUYRGl', 
                        
                                'SurfDrone''s favorite things', 
                        
                                'thisistotallyalink.com', 
                        
                                '2', 
                        
                                '2017-07-12T03:14:49Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'SurfDrone''s favorite things', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '2', 
                                [createdTime] = '2017-07-12T03:14:49Z'
                        WHERE SceneId = 'recTcp5b065uUYRGl';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'rece5b2vDyyVr0Lg7')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'rece5b2vDyyVr0Lg7', 
                        
                                'CrestFALLEN company culture', 
                        
                                'thisistotallyalink.com', 
                        
                                '3', 
                        
                                '2017-03-31T02:36:56Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'CrestFALLEN company culture', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '3', 
                                [createdTime] = '2017-03-31T02:36:56Z'
                        WHERE SceneId = 'rece5b2vDyyVr0Lg7';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: InventoryItem
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'rec0AibB9TnelBelX')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'rec0AibB9TnelBelX', 
                        
                                'Waveform Longbort', 
                        
                                'Prop', 
                        
                                'Made in house', 
                        
                                'In Use', 
                        
                                NULL, 
                        
                                '2017-03-31T03:46:40Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Waveform Longbort', 
                                [Type] = 'Prop', 
                                [Source] = 'Made in house', 
                                [Status] = 'In Use', 
                                [NextShootDate] = NULL, 
                                [createdTime] = '2017-03-31T03:46:40Z'
                        WHERE InventoryItemId = 'rec0AibB9TnelBelX';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recBmgsqB96PwTJcF')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recBmgsqB96PwTJcF', 
                        
                                'Roland V-4EX 4-Ch Digital Video Mixer w/ Effects (4-Ch Video Mixer)', 
                        
                                'Mixer', 
                        
                                'Boston Warehouse', 
                        
                                'In Use', 
                        
                                '2018-03-23', 
                        
                                '2017-03-31T02:39:24Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Roland V-4EX 4-Ch Digital Video Mixer w/ Effects (4-Ch Video Mixer)', 
                                [Type] = 'Mixer', 
                                [Source] = 'Boston Warehouse', 
                                [Status] = 'In Use', 
                                [NextShootDate] = '2018-03-23', 
                                [createdTime] = '2017-03-31T02:39:24Z'
                        WHERE InventoryItemId = 'recBmgsqB96PwTJcF';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recSqbYFLjWFjiJD2')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recSqbYFLjWFjiJD2', 
                        
                                'Enormous bottle of sunscreen', 
                        
                                'Prop', 
                        
                                'Goodwill', 
                        
                                'In Use', 
                        
                                NULL, 
                        
                                '2017-03-31T03:46:54Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Enormous bottle of sunscreen', 
                                [Type] = 'Prop', 
                                [Source] = 'Goodwill', 
                                [Status] = 'In Use', 
                                [NextShootDate] = NULL, 
                                [createdTime] = '2017-03-31T03:46:54Z'
                        WHERE InventoryItemId = 'recSqbYFLjWFjiJD2';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'reccnwiufryqkL7VQ')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'reccnwiufryqkL7VQ', 
                        
                                'Sennheiser MKE 600', 
                        
                                'Shotgun Mic', 
                        
                                'Mics R Us', 
                        
                                'Available', 
                        
                                '2018-03-23', 
                        
                                '2017-03-31T03:42:11Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Sennheiser MKE 600', 
                                [Type] = 'Shotgun Mic', 
                                [Source] = 'Mics R Us', 
                                [Status] = 'Available', 
                                [NextShootDate] = '2018-03-23', 
                                [createdTime] = '2017-03-31T03:42:11Z'
                        WHERE InventoryItemId = 'reccnwiufryqkL7VQ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recl8efmmvetFcQUX')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recl8efmmvetFcQUX', 
                        
                                'Sony PMW-300', 
                        
                                'Video Camera', 
                        
                                'Boston Video Rentals', 
                        
                                'Reserved', 
                        
                                '2018-03-24', 
                        
                                '2017-03-31T02:39:24Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Sony PMW-300', 
                                [Type] = 'Video Camera', 
                                [Source] = 'Boston Video Rentals', 
                                [Status] = 'Reserved', 
                                [NextShootDate] = '2018-03-24', 
                                [createdTime] = '2017-03-31T02:39:24Z'
                        WHERE InventoryItemId = 'recl8efmmvetFcQUX';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recwdEoqtZmqZvdzk')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recwdEoqtZmqZvdzk', 
                        
                                'Roland V-1HD Portable Compact Live HD Video Mixer & Production Switcher', 
                        
                                'Mixer', 
                        
                                'Boston Warehouse', 
                        
                                'In Use', 
                        
                                '2018-03-17', 
                        
                                '2017-03-31T02:39:24Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Roland V-1HD Portable Compact Live HD Video Mixer & Production Switcher', 
                                [Type] = 'Mixer', 
                                [Source] = 'Boston Warehouse', 
                                [Status] = 'In Use', 
                                [NextShootDate] = '2018-03-17', 
                                [createdTime] = '2017-03-31T02:39:24Z'
                        WHERE InventoryItemId = 'recwdEoqtZmqZvdzk';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Agency
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recQYW2nMKsCzZDQa')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recQYW2nMKsCzZDQa', 
                        
                                'Dragon8', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'Dragon8', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recQYW2nMKsCzZDQa';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recSecPmghN7Pxb9i')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recSecPmghN7Pxb9i', 
                        
                                'Doitch', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'Doitch', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recSecPmghN7Pxb9i';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recfji4t4myY4wSGg')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recfji4t4myY4wSGg', 
                        
                                'A Nom Nom-alee', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'A Nom Nom-alee', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recfji4t4myY4wSGg';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recgJgtey6g3GjIYl')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recgJgtey6g3GjIYl', 
                        
                                'Sockhop x Sockhop', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'Sockhop x Sockhop', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recgJgtey6g3GjIYl';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'reciowbEIqOg9zzDG')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'reciowbEIqOg9zzDG', 
                        
                                'ASTRONAUT', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'ASTRONAUT', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'reciowbEIqOg9zzDG';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recsUo7Ar75R1FYGQ')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recsUo7Ar75R1FYGQ', 
                        
                                '73andcloudy', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = '73andcloudy', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recsUo7Ar75R1FYGQ';
                    END
                
            
 

-- ADD RELATIONSHIPS
   
        
        
        
        
        
            -- ADD ALL DATA FOR: StaffDirectory
            --  STATIC: 
            --  Rows: 35
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec03FgPrRWv8aheP')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rec03FgPrRWv8aheP', 
                        
                                'Ã‡akÄ±l Demir', 
                        
                                'Producer / Editor', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Ã‡akÄ±l Demir', 
                                [Title] = 'Producer / Editor', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec03FgPrRWv8aheP';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec0J4TjLIBFflHHO')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rec0J4TjLIBFflHHO', 
                        
                                'Gayle Thornton', 
                        
                                'Senior Producer / Writer', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Gayle Thornton', 
                                [Title] = 'Senior Producer / Writer', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec0J4TjLIBFflHHO';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec3DkGQ3iksGWFC4')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rec3DkGQ3iksGWFC4', 
                        
                                'Joyce Luna', 
                        
                                'Senior Producer / Writer', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                'rec0AibB9TnelBelX', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Joyce Luna', 
                                [Title] = 'Senior Producer / Writer', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = 'rec0AibB9TnelBelX', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec3DkGQ3iksGWFC4';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec5QolQaIaTR1mSZ')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rec5QolQaIaTR1mSZ', 
                        
                                'Maria Kozlov', 
                        
                                'Producer', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Maria Kozlov', 
                                [Title] = 'Producer', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec5QolQaIaTR1mSZ';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec5UF2DoOgiF2mw8')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rec5UF2DoOgiF2mw8', 
                        
                                'Karla Cohen', 
                        
                                'Product Manager', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Karla Cohen', 
                                [Title] = 'Product Manager', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec5UF2DoOgiF2mw8';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec6G1P5OG3n7Enpu')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rec6G1P5OG3n7Enpu', 
                        
                                'Pete Tran', 
                        
                                'Editor', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Pete Tran', 
                                [Title] = 'Editor', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec6G1P5OG3n7Enpu';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rec8sLTwNKJoLRJkh')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rec8sLTwNKJoLRJkh', 
                        
                                'Andy Burns', 
                        
                                'Editor', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Andy Burns', 
                                [Title] = 'Editor', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rec8sLTwNKJoLRJkh';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recCbLqrRCBkERxTE')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recCbLqrRCBkERxTE', 
                        
                                'Laura Knox', 
                        
                                'Senior Producer', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Laura Knox', 
                                [Title] = 'Senior Producer', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recCbLqrRCBkERxTE';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recFnNlw9J91ugPqQ')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recFnNlw9J91ugPqQ', 
                        
                                'Aziz Mehani', 
                        
                                'Intern', 
                        
                                'Audience Development', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Aziz Mehani', 
                                [Title] = 'Intern', 
                                [Team] = 'Audience Development', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recFnNlw9J91ugPqQ';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recGbGXDNV9Y064jq')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recGbGXDNV9Y064jq', 
                        
                                'Annette Herrera', 
                        
                                'Director of Production', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Annette Herrera', 
                                [Title] = 'Director of Production', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recGbGXDNV9Y064jq';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recHd4ohgNDkChXqH')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recHd4ohgNDkChXqH', 
                        
                                'Corin Lafenestre', 
                        
                                'Writer/Host', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Corin Lafenestre', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recHd4ohgNDkChXqH';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recJcnlVMKdLok8CN')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recJcnlVMKdLok8CN', 
                        
                                'Chester Gilmour', 
                        
                                'Program Manager', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Chester Gilmour', 
                                [Title] = 'Program Manager', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recJcnlVMKdLok8CN';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recKmiGUbKMOsSl32')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recKmiGUbKMOsSl32', 
                        
                                'Katie Lacy', 
                        
                                'Writer/Host', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Katie Lacy', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recKmiGUbKMOsSl32';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recMMvINxEUp0taax')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recMMvINxEUp0taax', 
                        
                                'Aisha Harris', 
                        
                                'Writer/Host', 
                        
                                'YouTube', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Aisha Harris', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'YouTube', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recMMvINxEUp0taax';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recMzP5XiDoQOJxia')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recMzP5XiDoQOJxia', 
                        
                                'Darren Wheeler', 
                        
                                'Audience Development Specialist', 
                        
                                'Audience Development', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Darren Wheeler', 
                                [Title] = 'Audience Development Specialist', 
                                [Team] = 'Audience Development', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recMzP5XiDoQOJxia';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recNZMbXPsIlffcM8')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recNZMbXPsIlffcM8', 
                        
                                'Sophie Grumbach', 
                        
                                'Branded Content Producer', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Sophie Grumbach', 
                                [Title] = 'Branded Content Producer', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recNZMbXPsIlffcM8';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recQcNH02l59jtXsl')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recQcNH02l59jtXsl', 
                        
                                'Darya Petrova', 
                        
                                'Preditor', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Darya Petrova', 
                                [Title] = 'Preditor', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recQcNH02l59jtXsl';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recTsbBvVeArkDKY8')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recTsbBvVeArkDKY8', 
                        
                                'Mindy Patrick', 
                        
                                'VP of Product', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Mindy Patrick', 
                                [Title] = 'VP of Product', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recTsbBvVeArkDKY8';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recVixPAKcqFvBJUy')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recVixPAKcqFvBJUy', 
                        
                                'Hannah Wise', 
                        
                                'Studio Manager / Shooter', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Hannah Wise', 
                                [Title] = 'Studio Manager / Shooter', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recVixPAKcqFvBJUy';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recWbmoMieC0S7mj0')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recWbmoMieC0S7mj0', 
                        
                                'Frankie Phelps', 
                        
                                'Producer', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                'recBmgsqB96PwTJcF', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Frankie Phelps', 
                                [Title] = 'Producer', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = 'recBmgsqB96PwTJcF', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recWbmoMieC0S7mj0';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recZ4GKD7hOBqx6KP')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recZ4GKD7hOBqx6KP', 
                        
                                'Maple Mahnke', 
                        
                                'Producer / Editor', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Maple Mahnke', 
                                [Title] = 'Producer / Editor', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recZ4GKD7hOBqx6KP';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recZKppXZ0hrzxYQs')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recZKppXZ0hrzxYQs', 
                        
                                'Sooyoung Ahn', 
                        
                                'Manager', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Sooyoung Ahn', 
                                [Title] = 'Manager', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recZKppXZ0hrzxYQs';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recZYhdaAksa6al1k')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recZYhdaAksa6al1k', 
                        
                                'Ken Fujimoto', 
                        
                                'Talent Manager', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Ken Fujimoto', 
                                [Title] = 'Talent Manager', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recZYhdaAksa6al1k';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recc4Zp5ZhleUAOkW')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recc4Zp5ZhleUAOkW', 
                        
                                'Mercedes Lane', 
                        
                                'Freelance Shooter', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                'recwdEoqtZmqZvdzk', 
                        
                                '2017-03-30T11:01:30Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Mercedes Lane', 
                                [Title] = 'Freelance Shooter', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = 'recwdEoqtZmqZvdzk', 
                                [createdTime] = '2017-03-30T11:01:30Z'
                        WHERE StaffDirectoryId = 'recc4Zp5ZhleUAOkW';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'rechMV1okID4aje6R')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'rechMV1okID4aje6R', 
                        
                                'AndrÃ©s Diallo', 
                        
                                'Director of Audience Development', 
                        
                                'Audience Development', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'AndrÃ©s Diallo', 
                                [Title] = 'Director of Audience Development', 
                                [Team] = 'Audience Development', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'rechMV1okID4aje6R';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'reciQQKzDI1Af9ma4')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'reciQQKzDI1Af9ma4', 
                        
                                'Darrin Oliver', 
                        
                                'Associate Producer', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Darrin Oliver', 
                                [Title] = 'Associate Producer', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'reciQQKzDI1Af9ma4';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recj3lezavi0eVJ2j')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recj3lezavi0eVJ2j', 
                        
                                'Sara JÃ¶nsson', 
                        
                                'Producer/Editor', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Sara JÃ¶nsson', 
                                [Title] = 'Producer/Editor', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recj3lezavi0eVJ2j';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'reckPPjJoRZykfr4S')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'reckPPjJoRZykfr4S', 
                        
                                'Mariel Escobedo', 
                        
                                'Writer/Host', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Mariel Escobedo', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'reckPPjJoRZykfr4S';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'reclArgEVqQBfWkf0')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'Shiori Okuda', 
                        
                                'Intern', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Shiori Okuda', 
                                [Title] = 'Intern', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'reclArgEVqQBfWkf0';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recmf5YZQ4IgsrWKJ')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recmf5YZQ4IgsrWKJ', 
                        
                                'Angelica Padilla', 
                        
                                'Associate Producer', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Angelica Padilla', 
                                [Title] = 'Associate Producer', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recmf5YZQ4IgsrWKJ';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recoFTQvthNwg5Hvx')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recoFTQvthNwg5Hvx', 
                        
                                'Rob Chan', 
                        
                                'Editor', 
                        
                                'Social', 
                        
                                'yo@example.com', 
                        
                                'Santa Monica', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Rob Chan', 
                                [Title] = 'Editor', 
                                [Team] = 'Social', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Santa Monica', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recoFTQvthNwg5Hvx';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recpCfJf74l2LoKIT')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recpCfJf74l2LoKIT', 
                        
                                'Shirin Rassul', 
                        
                                'Editor', 
                        
                                'VR', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Shirin Rassul', 
                                [Title] = 'Editor', 
                                [Team] = 'VR', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recpCfJf74l2LoKIT';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recpSmamhkmLWHtsn')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recpSmamhkmLWHtsn', 
                        
                                'Laura Bubnis', 
                        
                                'Branded Content Producer', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Laura Bubnis', 
                                [Title] = 'Branded Content Producer', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recpSmamhkmLWHtsn';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recxnmbwrQ6lcg7Ib')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                'Rickey Rios', 
                        
                                'Writer/Host', 
                        
                                'Webdoc', 
                        
                                'yo@example.com', 
                        
                                'Los Angeles', 
                        
                                '(111) 111-1111', 
                        
                                'recSqbYFLjWFjiJD2', 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Rickey Rios', 
                                [Title] = 'Writer/Host', 
                                [Team] = 'Webdoc', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Los Angeles', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = 'recSqbYFLjWFjiJD2', 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recxnmbwrQ6lcg7Ib';
                    END
                

                    IF NOT EXISTS (SELECT StaffDirectoryId FROM StaffDirectory WHERE StaffDirectoryId = 'recz0sUxCCMCL5vou')
                    BEGIN
                        INSERT INTO [StaffDirectory] ([StaffDirectoryId] , [Name] , [Title] , [Team] , [Email] , [Office] , [CellPhone] , [PropsEquipmentinPossession] , [createdTime] ) VALUES (
                        
                                'recz0sUxCCMCL5vou', 
                        
                                'Elias Flowers', 
                        
                                'Vice President', 
                        
                                'Branded', 
                        
                                'yo@example.com', 
                        
                                'Miami', 
                        
                                '(111) 111-1111', 
                        
                                NULL, 
                        
                                '2017-03-30T11:01:36Z');
                    END ELSE BEGIN
                        UPDATE  [StaffDirectory] 
                            SET 
                                [Name] = 'Elias Flowers', 
                                [Title] = 'Vice President', 
                                [Team] = 'Branded', 
                                [Email] = 'yo@example.com', 
                                [Office] = 'Miami', 
                                [CellPhone] = '(111) 111-1111', 
                                [PropsEquipmentinPossession] = NULL, 
                                [createdTime] = '2017-03-30T11:01:36Z'
                        WHERE StaffDirectoryId = 'recz0sUxCCMCL5vou';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Location
            --  STATIC: 
            --  Rows: 3
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT LocationId FROM Location WHERE LocationId = 'rec3qq2H1SIZF2ozn')
                    BEGIN
                        INSERT INTO [Location] ([LocationId] , [Name] , [Address] , [MainContact] , [Hours] , [CurrentStatus] , [createdTime] ) VALUES (
                        
                                'rec3qq2H1SIZF2ozn', 
                        
                                'Waveform HQ', 
                        
                                '700 Seaside Terrace
Santa Monica, CA 90401', 
                        
                                'Sheryl Strauss
', 
                        
                                '9-2 PM M-W', 
                        
                                'Shoot approved', 
                        
                                '2017-03-31T02:37:01Z');
                    END ELSE BEGIN
                        UPDATE  [Location] 
                            SET 
                                [Name] = 'Waveform HQ', 
                                [Address] = '700 Seaside Terrace
Santa Monica, CA 90401', 
                                [MainContact] = 'Sheryl Strauss
', 
                                [Hours] = '9-2 PM M-W', 
                                [CurrentStatus] = 'Shoot approved', 
                                [createdTime] = '2017-03-31T02:37:01Z'
                        WHERE LocationId = 'rec3qq2H1SIZF2ozn';
                    END
                

                    IF NOT EXISTS (SELECT LocationId FROM Location WHERE LocationId = 'recDLe3h9FJAGLfVI')
                    BEGIN
                        INSERT INTO [Location] ([LocationId] , [Name] , [Address] , [MainContact] , [Hours] , [CurrentStatus] , [createdTime] ) VALUES (
                        
                                'recDLe3h9FJAGLfVI', 
                        
                                'Outside', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Reached out', 
                        
                                '2017-03-31T02:37:01Z');
                    END ELSE BEGIN
                        UPDATE  [Location] 
                            SET 
                                [Name] = 'Outside', 
                                [Address] = NULL, 
                                [MainContact] = NULL, 
                                [Hours] = NULL, 
                                [CurrentStatus] = 'Reached out', 
                                [createdTime] = '2017-03-31T02:37:01Z'
                        WHERE LocationId = 'recDLe3h9FJAGLfVI';
                    END
                

                    IF NOT EXISTS (SELECT LocationId FROM Location WHERE LocationId = 'recl1atkI6EBcVADD')
                    BEGIN
                        INSERT INTO [Location] ([LocationId] , [Name] , [Address] , [MainContact] , [Hours] , [CurrentStatus] , [createdTime] ) VALUES (
                        
                                'recl1atkI6EBcVADD', 
                        
                                'CrestFALLEN Store', 
                        
                                '345 Addie St, Pismo Beach, CA 93449', 
                        
                                'Chandra Coggins
', 
                        
                                '9-5 PM M-F', 
                        
                                'Shoot scheduled', 
                        
                                '2017-03-31T02:37:01Z');
                    END ELSE BEGIN
                        UPDATE  [Location] 
                            SET 
                                [Name] = 'CrestFALLEN Store', 
                                [Address] = '345 Addie St, Pismo Beach, CA 93449', 
                                [MainContact] = 'Chandra Coggins
', 
                                [Hours] = '9-5 PM M-F', 
                                [CurrentStatus] = 'Shoot scheduled', 
                                [createdTime] = '2017-03-31T02:37:01Z'
                        WHERE LocationId = 'recl1atkI6EBcVADD';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Shot
            --  STATIC: 
            --  Rows: 11
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'rec1KT9k8VKaELGaH')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'rec1KT9k8VKaELGaH', 
                        
                                'recALzohOmW8FamWd', 
                        
                                'CU (OTS)', 
                        
                                'Low Angle', 
                        
                                'Tilt', 
                        
                                '50mm', 
                        
                                '2018-03-29', 
                        
                                '3', 
                        
                                '2.3', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recALzohOmW8FamWd', 
                                [ShotSize] = 'CU (OTS)', 
                                [Angle] = 'Low Angle', 
                                [CameraMovement] = 'Tilt', 
                                [Lens] = '50mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '3', 
                                [Name] = '2.3', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'rec1KT9k8VKaELGaH';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'rec2eCsJhBb43D6wH')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'rec2eCsJhBb43D6wH', 
                        
                                'recEc433jfpCbXOai', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '2018-03-24', 
                        
                                '2', 
                        
                                '1.2', 
                        
                                'recGBPGD9qXlWOuTk', 
                        
                                '2017-07-12T03:21:48Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recEc433jfpCbXOai', 
                                [ShotSize] = NULL, 
                                [Angle] = NULL, 
                                [CameraMovement] = NULL, 
                                [Lens] = NULL, 
                                [ShootDate] = '2018-03-24', 
                                [ShotNum] = '2', 
                                [Name] = '1.2', 
                                [Video] = 'recGBPGD9qXlWOuTk', 
                                [createdTime] = '2017-07-12T03:21:48Z'
                        WHERE ShotId = 'rec2eCsJhBb43D6wH';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'rec8PJCVrSZbRemV0')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'rec8PJCVrSZbRemV0', 
                        
                                'recDjtCKSoZ4bI3Ef', 
                        
                                'CU', 
                        
                                'Dutch Tilt', 
                        
                                'Steadicam', 
                        
                                'Zoom', 
                        
                                '2018-03-17', 
                        
                                '2', 
                        
                                '1.2', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recDjtCKSoZ4bI3Ef', 
                                [ShotSize] = 'CU', 
                                [Angle] = 'Dutch Tilt', 
                                [CameraMovement] = 'Steadicam', 
                                [Lens] = 'Zoom', 
                                [ShootDate] = '2018-03-17', 
                                [ShotNum] = '2', 
                                [Name] = '1.2', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'rec8PJCVrSZbRemV0';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recUjeeTKxv0t7Vi4')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'recUjeeTKxv0t7Vi4', 
                        
                                'recEc433jfpCbXOai', 
                        
                                'MCU (OTS)', 
                        
                                'Extreme Low', 
                        
                                'Static', 
                        
                                '25mm', 
                        
                                '2018-03-23', 
                        
                                '1', 
                        
                                '1.1', 
                        
                                'recGBPGD9qXlWOuTk', 
                        
                                '2017-07-12T03:21:36Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recEc433jfpCbXOai', 
                                [ShotSize] = 'MCU (OTS)', 
                                [Angle] = 'Extreme Low', 
                                [CameraMovement] = 'Static', 
                                [Lens] = '25mm', 
                                [ShootDate] = '2018-03-23', 
                                [ShotNum] = '1', 
                                [Name] = '1.1', 
                                [Video] = 'recGBPGD9qXlWOuTk', 
                                [createdTime] = '2017-07-12T03:21:36Z'
                        WHERE ShotId = 'recUjeeTKxv0t7Vi4';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recVTQElDzIvjx9Jx')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'recVTQElDzIvjx9Jx', 
                        
                                'recALzohOmW8FamWd', 
                        
                                'MCU (OTS)', 
                        
                                'High Angle', 
                        
                                'Handheld', 
                        
                                '35mm', 
                        
                                '2018-03-29', 
                        
                                '2', 
                        
                                '2.2', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:36:51Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recALzohOmW8FamWd', 
                                [ShotSize] = 'MCU (OTS)', 
                                [Angle] = 'High Angle', 
                                [CameraMovement] = 'Handheld', 
                                [Lens] = '35mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '2', 
                                [Name] = '2.2', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:36:51Z'
                        WHERE ShotId = 'recVTQElDzIvjx9Jx';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recYH48Pmls9Vm8HU')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'recYH48Pmls9Vm8HU', 
                        
                                'recTcp5b065uUYRGl', 
                        
                                'CU', 
                        
                                'Low Angle', 
                        
                                'Steadicam', 
                        
                                '50mm', 
                        
                                '2018-03-26', 
                        
                                '1', 
                        
                                '2.1', 
                        
                                'recGBPGD9qXlWOuTk', 
                        
                                '2017-07-12T03:21:55Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recTcp5b065uUYRGl', 
                                [ShotSize] = 'CU', 
                                [Angle] = 'Low Angle', 
                                [CameraMovement] = 'Steadicam', 
                                [Lens] = '50mm', 
                                [ShootDate] = '2018-03-26', 
                                [ShotNum] = '1', 
                                [Name] = '2.1', 
                                [Video] = 'recGBPGD9qXlWOuTk', 
                                [createdTime] = '2017-07-12T03:21:55Z'
                        WHERE ShotId = 'recYH48Pmls9Vm8HU';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recdDKMh12KYpDwZ2')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'recdDKMh12KYpDwZ2', 
                        
                                'rece5b2vDyyVr0Lg7', 
                        
                                'ELS', 
                        
                                'Eyelevel', 
                        
                                'Static', 
                        
                                'Zoom', 
                        
                                '2018-03-23', 
                        
                                '2', 
                        
                                '3.2', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'rece5b2vDyyVr0Lg7', 
                                [ShotSize] = 'ELS', 
                                [Angle] = 'Eyelevel', 
                                [CameraMovement] = 'Static', 
                                [Lens] = 'Zoom', 
                                [ShootDate] = '2018-03-23', 
                                [ShotNum] = '2', 
                                [Name] = '3.2', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'recdDKMh12KYpDwZ2';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recdbtPMIpby7IV6c')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'recdbtPMIpby7IV6c', 
                        
                                'recDjtCKSoZ4bI3Ef', 
                        
                                'LS', 
                        
                                'High Angle', 
                        
                                'Pan', 
                        
                                '18mm', 
                        
                                '2018-03-28', 
                        
                                '1', 
                        
                                '1.1', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:36:51Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recDjtCKSoZ4bI3Ef', 
                                [ShotSize] = 'LS', 
                                [Angle] = 'High Angle', 
                                [CameraMovement] = 'Pan', 
                                [Lens] = '18mm', 
                                [ShootDate] = '2018-03-28', 
                                [ShotNum] = '1', 
                                [Name] = '1.1', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:36:51Z'
                        WHERE ShotId = 'recdbtPMIpby7IV6c';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recj4zxI8MVUprozy')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'recj4zxI8MVUprozy', 
                        
                                'rece5b2vDyyVr0Lg7', 
                        
                                'MCU (OTS)', 
                        
                                'High Angle', 
                        
                                'Pan', 
                        
                                '35mm', 
                        
                                '2018-03-29', 
                        
                                '1', 
                        
                                '3.1', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'rece5b2vDyyVr0Lg7', 
                                [ShotSize] = 'MCU (OTS)', 
                                [Angle] = 'High Angle', 
                                [CameraMovement] = 'Pan', 
                                [Lens] = '35mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '1', 
                                [Name] = '3.1', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'recj4zxI8MVUprozy';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'reclZ3yvsxaXUQoGy')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'reclZ3yvsxaXUQoGy', 
                        
                                'recDjtCKSoZ4bI3Ef', 
                        
                                'LS', 
                        
                                'POV', 
                        
                                'Dolly', 
                        
                                '100mm', 
                        
                                '2018-03-23', 
                        
                                '3', 
                        
                                '1.3', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:38:05Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recDjtCKSoZ4bI3Ef', 
                                [ShotSize] = 'LS', 
                                [Angle] = 'POV', 
                                [CameraMovement] = 'Dolly', 
                                [Lens] = '100mm', 
                                [ShootDate] = '2018-03-23', 
                                [ShotNum] = '3', 
                                [Name] = '1.3', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:38:05Z'
                        WHERE ShotId = 'reclZ3yvsxaXUQoGy';
                    END
                

                    IF NOT EXISTS (SELECT ShotId FROM Shot WHERE ShotId = 'recoywUS0diP7bPmE')
                    BEGIN
                        INSERT INTO [Shot] ([ShotId] , [Scene] , [ShotSize] , [Angle] , [CameraMovement] , [Lens] , [ShootDate] , [ShotNum] , [Name] , [Video] , [createdTime] ) VALUES (
                        
                                'recoywUS0diP7bPmE', 
                        
                                'recALzohOmW8FamWd', 
                        
                                'MS', 
                        
                                'Extreme High', 
                        
                                'Pan', 
                        
                                '25mm', 
                        
                                '2018-03-29', 
                        
                                '1', 
                        
                                '2.1', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '2017-03-31T02:36:51Z');
                    END ELSE BEGIN
                        UPDATE  [Shot] 
                            SET 
                                [Scene] = 'recALzohOmW8FamWd', 
                                [ShotSize] = 'MS', 
                                [Angle] = 'Extreme High', 
                                [CameraMovement] = 'Pan', 
                                [Lens] = '25mm', 
                                [ShootDate] = '2018-03-29', 
                                [ShotNum] = '1', 
                                [Name] = '2.1', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [createdTime] = '2017-03-31T02:36:51Z'
                        WHERE ShotId = 'recoywUS0diP7bPmE';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Video
            --  STATIC: 
            --  Rows: 18
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'rec9vJ34Uq1BWX6PR')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'rec9vJ34Uq1BWX6PR', 
                        
                                'Waveform x CrestFALLEN', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                'YouTube', 
                        
                                'Animated / Mixed Media', 
                        
                                '2018-05-15T07:00:00Z', 
                        
                                'VO / Host Record', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'recmf5YZQ4IgsrWKJ', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                '2018-03-13', 
                        
                                '2018-03-22', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-15', 
                        
                                'Ready to Cut, Not Cleared', 
                        
                                'Product Launches', 
                        
                                '300', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'recQYW2nMKsCzZDQa', 
                        
                                '0', 
                        
                                '2017-03-30T11:18:39Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Waveform x CrestFALLEN', 
                                [Writer] = 'recKmiGUbKMOsSl32', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Animated / Mixed Media', 
                                [ReleaseDate] = '2018-05-15T07:00:00Z', 
                                [ProjectStatus] = 'VO / Host Record', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'recmf5YZQ4IgsrWKJ', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recxnmbwrQ6lcg7Ib', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-22', 
                                [ReviewCutLatest] = 'www.thisistotallyalink.com', 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-15', 
                                [RightsClearancesStatus] = 'Ready to Cut, Not Cleared', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '300', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = 'recQYW2nMKsCzZDQa', 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:39Z'
                        WHERE VideoId = 'rec9vJ34Uq1BWX6PR';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recCkDVKJiQ4FpDbV')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recCkDVKJiQ4FpDbV', 
                        
                                'Kenting, Taiwan: Asia''s Hidden Gem', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                'Facebook', 
                        
                                'WebDoc - Commissioned', 
                        
                                '2018-06-04T07:00:00Z', 
                        
                                'Scripting', 
                        
                                'rec8sLTwNKJoLRJkh', 
                        
                                'recmf5YZQ4IgsrWKJ', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recHd4ohgNDkChXqH', 
                        
                                '2018-03-10', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-07', 
                        
                                'Ready to Cut, Not Cleared', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                '11000', 
                        
                                '10980', 
                        
                                'recgJgtey6g3GjIYl', 
                        
                                '20', 
                        
                                '2017-03-30T11:18:32Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Kenting, Taiwan: Asia''s Hidden Gem', 
                                [Writer] = 'recKmiGUbKMOsSl32', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Commissioned', 
                                [ReleaseDate] = '2018-06-04T07:00:00Z', 
                                [ProjectStatus] = 'Scripting', 
                                [Editor] = 'rec8sLTwNKJoLRJkh', 
                                [FactCheck] = 'recmf5YZQ4IgsrWKJ', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recHd4ohgNDkChXqH', 
                                [ScriptDeadline] = '2018-03-10', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-07', 
                                [RightsClearancesStatus] = 'Ready to Cut, Not Cleared', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = '11000', 
                                [Spend] = '10980', 
                                [Agency] = 'recgJgtey6g3GjIYl', 
                                [RemainingBudget] = '20', 
                                [createdTime] = '2017-03-30T11:18:32Z'
                        WHERE VideoId = 'recCkDVKJiQ4FpDbV';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recD0gozCpp3juwoc')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recD0gozCpp3juwoc', 
                        
                                'Announcing: Your New Favorite Longboard', 
                        
                                'recMMvINxEUp0taax', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-25T07:00:00Z', 
                        
                                'Needs Fact Check', 
                        
                                'recoFTQvthNwg5Hvx', 
                        
                                'recFnNlw9J91ugPqQ', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                '2018-03-13', 
                        
                                '2018-03-06', 
                        
                                NULL, 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-06', 
                        
                                'Permissions Being Negotiated', 
                        
                                'Product Launches', 
                        
                                '600', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-05-23T17:24:11Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Announcing: Your New Favorite Longboard', 
                                [Writer] = 'recMMvINxEUp0taax', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-25T07:00:00Z', 
                                [ProjectStatus] = 'Needs Fact Check', 
                                [Editor] = 'recoFTQvthNwg5Hvx', 
                                [FactCheck] = 'recFnNlw9J91ugPqQ', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recxnmbwrQ6lcg7Ib', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-06', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-06', 
                                [RightsClearancesStatus] = 'Permissions Being Negotiated', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '600', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-05-23T17:24:11Z'
                        WHERE VideoId = 'recD0gozCpp3juwoc';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recGBPGD9qXlWOuTk')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recGBPGD9qXlWOuTk', 
                        
                                'Meet the SurfDrone', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                '.com', 
                        
                                'WebDoc - Mixed Media', 
                        
                                '2018-05-28T07:00:00Z', 
                        
                                'VO / Host Record', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'recmf5YZQ4IgsrWKJ', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                '2018-03-13', 
                        
                                '2018-03-22', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-15', 
                        
                                'Ready to Cut, Not Cleared', 
                        
                                'Brand BTS', 
                        
                                '300', 
                        
                                '13000', 
                        
                                '9182', 
                        
                                'recsUo7Ar75R1FYGQ', 
                        
                                '3818', 
                        
                                '2017-05-23T17:23:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Meet the SurfDrone', 
                                [Writer] = 'recKmiGUbKMOsSl32', 
                                [Platform] = '.com', 
                                [Format] = 'WebDoc - Mixed Media', 
                                [ReleaseDate] = '2018-05-28T07:00:00Z', 
                                [ProjectStatus] = 'VO / Host Record', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'recmf5YZQ4IgsrWKJ', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recxnmbwrQ6lcg7Ib', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-22', 
                                [ReviewCutLatest] = 'www.thisistotallyalink.com', 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-15', 
                                [RightsClearancesStatus] = 'Ready to Cut, Not Cleared', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '300', 
                                [Budget] = '13000', 
                                [Spend] = '9182', 
                                [Agency] = 'recsUo7Ar75R1FYGQ', 
                                [RemainingBudget] = '3818', 
                                [createdTime] = '2017-05-23T17:23:09Z'
                        WHERE VideoId = 'recGBPGD9qXlWOuTk';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recGjg0xD0ZERsvKr')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recGjg0xD0ZERsvKr', 
                        
                                'Playa Colorado, Nicaragua: Sand Juan del Sur', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                'Facebook', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-06-01T07:00:00Z', 
                        
                                'Researching', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'recCbLqrRCBkERxTE', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recMMvINxEUp0taax', 
                        
                                '2018-03-06', 
                        
                                '2018-03-10', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-09', 
                        
                                'Permissions Cleared', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-05-23T17:24:12Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Playa Colorado, Nicaragua: Sand Juan del Sur', 
                                [Writer] = 'recxnmbwrQ6lcg7Ib', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-06-01T07:00:00Z', 
                                [ProjectStatus] = 'Researching', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'recCbLqrRCBkERxTE', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recMMvINxEUp0taax', 
                                [ScriptDeadline] = '2018-03-06', 
                                [ShootDate] = '2018-03-10', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-09', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-05-23T17:24:12Z'
                        WHERE VideoId = 'recGjg0xD0ZERsvKr';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recOnkOzWRcP1r8ws')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recOnkOzWRcP1r8ws', 
                        
                                '#wipeoutwednesday: Almost, But Not Quite', 
                        
                                'recMMvINxEUp0taax', 
                        
                                '.com', 
                        
                                'WebDoc - Mixed Media', 
                        
                                '2018-05-16T07:00:00Z', 
                        
                                'Pre-production', 
                        
                                'recoFTQvthNwg5Hvx', 
                        
                                'recFnNlw9J91ugPqQ', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                '2018-03-13', 
                        
                                '2018-03-06', 
                        
                                NULL, 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-06', 
                        
                                'Permissions Being Negotiated', 
                        
                                'Brand BTS', 
                        
                                '600', 
                        
                                '12000', 
                        
                                '10277', 
                        
                                'recQYW2nMKsCzZDQa', 
                        
                                '1723', 
                        
                                '2017-03-30T11:18:29Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = '#wipeoutwednesday: Almost, But Not Quite', 
                                [Writer] = 'recMMvINxEUp0taax', 
                                [Platform] = '.com', 
                                [Format] = 'WebDoc - Mixed Media', 
                                [ReleaseDate] = '2018-05-16T07:00:00Z', 
                                [ProjectStatus] = 'Pre-production', 
                                [Editor] = 'recoFTQvthNwg5Hvx', 
                                [FactCheck] = 'recFnNlw9J91ugPqQ', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recxnmbwrQ6lcg7Ib', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-06', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-06', 
                                [RightsClearancesStatus] = 'Permissions Being Negotiated', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '600', 
                                [Budget] = '12000', 
                                [Spend] = '10277', 
                                [Agency] = 'recQYW2nMKsCzZDQa', 
                                [RemainingBudget] = '1723', 
                                [createdTime] = '2017-03-30T11:18:29Z'
                        WHERE VideoId = 'recOnkOzWRcP1r8ws';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recQieCCTeJcvGmux')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recQieCCTeJcvGmux', 
                        
                                'The Waveform Pro International 2018', 
                        
                                'recMMvINxEUp0taax', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-22T07:00:00Z', 
                        
                                'Outreach in Progress', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'recCbLqrRCBkERxTE', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                '2018-03-13', 
                        
                                '2018-03-24', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-30', 
                        
                                NULL, 
                        
                                'Event Announcement', 
                        
                                '180', 
                        
                                '18000', 
                        
                                '14027', 
                        
                                'recSecPmghN7Pxb9i', 
                        
                                '3973', 
                        
                                '2017-03-30T14:37:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Waveform Pro International 2018', 
                                [Writer] = 'recMMvINxEUp0taax', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-22T07:00:00Z', 
                                [ProjectStatus] = 'Outreach in Progress', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'recCbLqrRCBkERxTE', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'reckPPjJoRZykfr4S', 
                                [ScriptDeadline] = '2018-03-13', 
                                [ShootDate] = '2018-03-24', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-30', 
                                [RightsClearancesStatus] = NULL, 
                                [Series] = 'Event Announcement', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = '18000', 
                                [Spend] = '14027', 
                                [Agency] = 'recSecPmghN7Pxb9i', 
                                [RemainingBudget] = '3973', 
                                [createdTime] = '2017-03-30T14:37:09Z'
                        WHERE VideoId = 'recQieCCTeJcvGmux';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recT6cveTimMDxAGI')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recT6cveTimMDxAGI', 
                        
                                'The Waveform Team at Work', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                '.com', 
                        
                                'Animated / Mixed Media', 
                        
                                '2018-05-07T11:45:00Z', 
                        
                                'In Edit', 
                        
                                'rec8sLTwNKJoLRJkh', 
                        
                                'recCbLqrRCBkERxTE', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                '2018-03-08', 
                        
                                '2018-03-02', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-03', 
                        
                                'Permissions Cleared', 
                        
                                'Brand BTS', 
                        
                                '60', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T10:52:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Waveform Team at Work', 
                                [Writer] = 'recxnmbwrQ6lcg7Ib', 
                                [Platform] = '.com', 
                                [Format] = 'Animated / Mixed Media', 
                                [ReleaseDate] = '2018-05-07T11:45:00Z', 
                                [ProjectStatus] = 'In Edit', 
                                [Editor] = 'rec8sLTwNKJoLRJkh', 
                                [FactCheck] = 'recCbLqrRCBkERxTE', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'reckPPjJoRZykfr4S', 
                                [ScriptDeadline] = '2018-03-08', 
                                [ShootDate] = '2018-03-02', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-03', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '60', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T10:52:09Z'
                        WHERE VideoId = 'recT6cveTimMDxAGI';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recWh4mNcOfVe2qrJ')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recWh4mNcOfVe2qrJ', 
                        
                                'The Surfboard Leash, Unleashed', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                'YouTube', 
                        
                                'WebDoc - Commissioned', 
                        
                                '2018-05-31T07:00:00Z', 
                        
                                'Ready to Publish', 
                        
                                'rec8sLTwNKJoLRJkh', 
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recMMvINxEUp0taax', 
                        
                                '2018-03-22', 
                        
                                '2018-03-16', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-21', 
                        
                                'Needs Attention', 
                        
                                'Product Launches', 
                        
                                '2', 
                        
                                '8000', 
                        
                                '7382', 
                        
                                'recsUo7Ar75R1FYGQ', 
                        
                                '618', 
                        
                                '2017-03-30T11:18:41Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Surfboard Leash, Unleashed', 
                                [Writer] = 'reckPPjJoRZykfr4S', 
                                [Platform] = 'YouTube', 
                                [Format] = 'WebDoc - Commissioned', 
                                [ReleaseDate] = '2018-05-31T07:00:00Z', 
                                [ProjectStatus] = 'Ready to Publish', 
                                [Editor] = 'rec8sLTwNKJoLRJkh', 
                                [FactCheck] = 'reclArgEVqQBfWkf0', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recMMvINxEUp0taax', 
                                [ScriptDeadline] = '2018-03-22', 
                                [ShootDate] = '2018-03-16', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-21', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '2', 
                                [Budget] = '8000', 
                                [Spend] = '7382', 
                                [Agency] = 'recsUo7Ar75R1FYGQ', 
                                [RemainingBudget] = '618', 
                                [createdTime] = '2017-03-30T11:18:41Z'
                        WHERE VideoId = 'recWh4mNcOfVe2qrJ';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recYzXUrNytYRMRcy')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recYzXUrNytYRMRcy', 
                        
                                'Skeleton Coast, Namibia: the Final Frontier of Surfing', 
                        
                                'recMMvINxEUp0taax', 
                        
                                '.com', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-05-09T07:00:00Z', 
                        
                                'Researching', 
                        
                                'rec8sLTwNKJoLRJkh', 
                        
                                'recFnNlw9J91ugPqQ', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                '2018-03-15', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-17', 
                        
                                'Permissions Being Negotiated', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:39Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Skeleton Coast, Namibia: the Final Frontier of Surfing', 
                                [Writer] = 'recMMvINxEUp0taax', 
                                [Platform] = '.com', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-05-09T07:00:00Z', 
                                [ProjectStatus] = 'Researching', 
                                [Editor] = 'rec8sLTwNKJoLRJkh', 
                                [FactCheck] = 'recFnNlw9J91ugPqQ', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recKmiGUbKMOsSl32', 
                                [ScriptDeadline] = '2018-03-15', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-17', 
                                [RightsClearancesStatus] = 'Permissions Being Negotiated', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:39Z'
                        WHERE VideoId = 'recYzXUrNytYRMRcy';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recZZMj76Adyg4j0L')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recZZMj76Adyg4j0L', 
                        
                                'Surf Wax Poetic', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                'Facebook', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-05-11T07:00:00Z', 
                        
                                'Needs Final Review', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                '2018-03-14', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-27', 
                        
                                'Needs Attention', 
                        
                                'Product Launches', 
                        
                                '180', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:27Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Surf Wax Poetic', 
                                [Writer] = 'reckPPjJoRZykfr4S', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-05-11T07:00:00Z', 
                                [ProjectStatus] = 'Needs Final Review', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'reclArgEVqQBfWkf0', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recKmiGUbKMOsSl32', 
                                [ScriptDeadline] = '2018-03-14', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-27', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Product Launches', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:27Z'
                        WHERE VideoId = 'recZZMj76Adyg4j0L';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'reci8UGapXPA4PsGP')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'reci8UGapXPA4PsGP', 
                        
                                'When to Rent Gear and When to Buy Gear', 
                        
                                NULL, 
                        
                                'Facebook', 
                        
                                'Animated / Mixed Media', 
                        
                                '2018-05-31T07:00:00Z', 
                        
                                'Pre-production', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '2018-03-04', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Education', 
                        
                                '180', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T16:28:36Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'When to Rent Gear and When to Buy Gear', 
                                [Writer] = NULL, 
                                [Platform] = 'Facebook', 
                                [Format] = 'Animated / Mixed Media', 
                                [ReleaseDate] = '2018-05-31T07:00:00Z', 
                                [ProjectStatus] = 'Pre-production', 
                                [Editor] = NULL, 
                                [FactCheck] = NULL, 
                                [ScriptURL] = NULL, 
                                [HostVOArtist] = NULL, 
                                [ScriptDeadline] = NULL, 
                                [ShootDate] = '2018-03-04', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = NULL, 
                                [ShootPlan] = NULL, 
                                [LIVEURL] = NULL, 
                                [AssignedEditDate] = NULL, 
                                [RightsClearancesStatus] = NULL, 
                                [Series] = 'Education', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T16:28:36Z'
                        WHERE VideoId = 'reci8UGapXPA4PsGP';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recjX1AvfhP9dqlIt')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recjX1AvfhP9dqlIt', 
                        
                                'The World Cat Surfing Championships 2018', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-18T07:00:00Z', 
                        
                                'Needs Fact Check', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'recCbLqrRCBkERxTE', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recMMvINxEUp0taax', 
                        
                                '2018-03-06', 
                        
                                '2018-03-10', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-09', 
                        
                                'Permissions Cleared', 
                        
                                'Fun / Viral', 
                        
                                '120', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:38Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The World Cat Surfing Championships 2018', 
                                [Writer] = 'recxnmbwrQ6lcg7Ib', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-18T07:00:00Z', 
                                [ProjectStatus] = 'Needs Fact Check', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'recCbLqrRCBkERxTE', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recMMvINxEUp0taax', 
                                [ScriptDeadline] = '2018-03-06', 
                                [ShootDate] = '2018-03-10', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-09', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'Fun / Viral', 
                                [TargetLengthminutes] = '120', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:38Z'
                        WHERE VideoId = 'recjX1AvfhP9dqlIt';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recmH1WuuWHcxyFZw')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recmH1WuuWHcxyFZw', 
                        
                                '#wipeoutwednesday: Gone Surfing?', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                'Facebook', 
                        
                                'Hosted', 
                        
                                '2018-05-02T13:00:00Z', 
                        
                                'Live', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                '2018-03-14', 
                        
                                '2018-03-08', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-27', 
                        
                                'Needs Attention', 
                        
                                'Brand BTS', 
                        
                                '180', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-05-23T17:23:09Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = '#wipeoutwednesday: Gone Surfing?', 
                                [Writer] = 'reckPPjJoRZykfr4S', 
                                [Platform] = 'Facebook', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-02T13:00:00Z', 
                                [ProjectStatus] = 'Live', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'reclArgEVqQBfWkf0', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recKmiGUbKMOsSl32', 
                                [ScriptDeadline] = '2018-03-14', 
                                [ShootDate] = '2018-03-08', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-27', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Brand BTS', 
                                [TargetLengthminutes] = '180', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-05-23T17:23:09Z'
                        WHERE VideoId = 'recmH1WuuWHcxyFZw';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recmsqqbCausVfDrI')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recmsqqbCausVfDrI', 
                        
                                'The Best Surf Photography Gear', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                'Facebook', 
                        
                                'WebDoc - Mixed Media', 
                        
                                '2018-05-01T14:41:00Z', 
                        
                                'Live', 
                        
                                'recQcNH02l59jtXsl', 
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recKmiGUbKMOsSl32', 
                        
                                '2018-03-16', 
                        
                                '2018-03-29', 
                        
                                NULL, 
                        
                                'Mitch Makuda', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-31', 
                        
                                NULL, 
                        
                                'Education', 
                        
                                '120', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T14:37:17Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'The Best Surf Photography Gear', 
                                [Writer] = 'recKmiGUbKMOsSl32', 
                                [Platform] = 'Facebook', 
                                [Format] = 'WebDoc - Mixed Media', 
                                [ReleaseDate] = '2018-05-01T14:41:00Z', 
                                [ProjectStatus] = 'Live', 
                                [Editor] = 'recQcNH02l59jtXsl', 
                                [FactCheck] = 'reclArgEVqQBfWkf0', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recKmiGUbKMOsSl32', 
                                [ScriptDeadline] = '2018-03-16', 
                                [ShootDate] = '2018-03-29', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Mitch Makuda', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-31', 
                                [RightsClearancesStatus] = NULL, 
                                [Series] = 'Education', 
                                [TargetLengthminutes] = '120', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T14:37:17Z'
                        WHERE VideoId = 'recmsqqbCausVfDrI';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recoAIdaDhhhXqW06')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recoAIdaDhhhXqW06', 
                        
                                '72 Hours in a Surf Shop', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                'YouTube', 
                        
                                'Hosted', 
                        
                                '2018-05-16T07:00:00Z', 
                        
                                'Needs Revisions', 
                        
                                'recoFTQvthNwg5Hvx', 
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                '2018-03-16', 
                        
                                '2018-03-27', 
                        
                                NULL, 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-24', 
                        
                                'Needs Attention', 
                        
                                'Fun / Viral', 
                        
                                '900', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:38Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = '72 Hours in a Surf Shop', 
                                [Writer] = 'reckPPjJoRZykfr4S', 
                                [Platform] = 'YouTube', 
                                [Format] = 'Hosted', 
                                [ReleaseDate] = '2018-05-16T07:00:00Z', 
                                [ProjectStatus] = 'Needs Revisions', 
                                [Editor] = 'recoFTQvthNwg5Hvx', 
                                [FactCheck] = 'reclArgEVqQBfWkf0', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'reckPPjJoRZykfr4S', 
                                [ScriptDeadline] = '2018-03-16', 
                                [ShootDate] = '2018-03-27', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-24', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'Fun / Viral', 
                                [TargetLengthminutes] = '900', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:38Z'
                        WHERE VideoId = 'recoAIdaDhhhXqW06';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recqR93OBtXH7t1T7')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recqR93OBtXH7t1T7', 
                        
                                'Reykjanes, Iceland: Arctic Adventure', 
                        
                                'reckPPjJoRZykfr4S', 
                        
                                'YouTube', 
                        
                                'WebDoc - Commissioned', 
                        
                                '2018-05-08T07:00:00Z', 
                        
                                'Scripting', 
                        
                                'rec8sLTwNKJoLRJkh', 
                        
                                'reclArgEVqQBfWkf0', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recMMvINxEUp0taax', 
                        
                                '2018-03-22', 
                        
                                '2018-03-16', 
                        
                                NULL, 
                        
                                'Elaine Sullivan', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-21', 
                        
                                'Needs Attention', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                '7000', 
                        
                                '5812', 
                        
                                'recgJgtey6g3GjIYl', 
                        
                                '1188', 
                        
                                '2017-05-23T17:23:08Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Reykjanes, Iceland: Arctic Adventure', 
                                [Writer] = 'reckPPjJoRZykfr4S', 
                                [Platform] = 'YouTube', 
                                [Format] = 'WebDoc - Commissioned', 
                                [ReleaseDate] = '2018-05-08T07:00:00Z', 
                                [ProjectStatus] = 'Scripting', 
                                [Editor] = 'rec8sLTwNKJoLRJkh', 
                                [FactCheck] = 'reclArgEVqQBfWkf0', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recMMvINxEUp0taax', 
                                [ScriptDeadline] = '2018-03-22', 
                                [ShootDate] = '2018-03-16', 
                                [ReviewCutLatest] = NULL, 
                                [Signoff] = 'Elaine Sullivan', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-21', 
                                [RightsClearancesStatus] = 'Needs Attention', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = '7000', 
                                [Spend] = '5812', 
                                [Agency] = 'recgJgtey6g3GjIYl', 
                                [RemainingBudget] = '1188', 
                                [createdTime] = '2017-05-23T17:23:08Z'
                        WHERE VideoId = 'recqR93OBtXH7t1T7';
                    END
                

                    IF NOT EXISTS (SELECT VideoId FROM Video WHERE VideoId = 'recyFoC1PX6fITY7T')
                    BEGIN
                        INSERT INTO [Video] ([VideoId] , [SlugName] , [Writer] , [Platform] , [Format] , [ReleaseDate] , [ProjectStatus] , [Editor] , [FactCheck] , [ScriptURL] , [HostVOArtist] , [ScriptDeadline] , [ShootDate] , [ReviewCutLatest] , [Signoff] , [ShootPlan] , [LIVEURL] , [AssignedEditDate] , [RightsClearancesStatus] , [Series] , [TargetLengthminutes] , [Budget] , [Spend] , [Agency] , [RemainingBudget] , [createdTime] ) VALUES (
                        
                                'recyFoC1PX6fITY7T', 
                        
                                'Arugam Bay, Sri Lanka: No Off-Season', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                'YouTube', 
                        
                                'WebDoc - Original Field', 
                        
                                '2018-05-04T04:00:00Z', 
                        
                                'Live', 
                        
                                'recoFTQvthNwg5Hvx', 
                        
                                'recCbLqrRCBkERxTE', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'recHd4ohgNDkChXqH', 
                        
                                '2018-03-10', 
                        
                                '2018-03-14', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'Sorena Illitch', 
                        
                                'www.thisistotallyalink.com', 
                        
                                'www.thisistotallyalink.com', 
                        
                                '2018-03-22', 
                        
                                'Permissions Cleared', 
                        
                                'On Tour', 
                        
                                '1800', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2017-03-30T11:18:40Z');
                    END ELSE BEGIN
                        UPDATE  [Video] 
                            SET 
                                [SlugName] = 'Arugam Bay, Sri Lanka: No Off-Season', 
                                [Writer] = 'recxnmbwrQ6lcg7Ib', 
                                [Platform] = 'YouTube', 
                                [Format] = 'WebDoc - Original Field', 
                                [ReleaseDate] = '2018-05-04T04:00:00Z', 
                                [ProjectStatus] = 'Live', 
                                [Editor] = 'recoFTQvthNwg5Hvx', 
                                [FactCheck] = 'recCbLqrRCBkERxTE', 
                                [ScriptURL] = 'www.thisistotallyalink.com', 
                                [HostVOArtist] = 'recHd4ohgNDkChXqH', 
                                [ScriptDeadline] = '2018-03-10', 
                                [ShootDate] = '2018-03-14', 
                                [ReviewCutLatest] = 'www.thisistotallyalink.com', 
                                [Signoff] = 'Sorena Illitch', 
                                [ShootPlan] = 'www.thisistotallyalink.com', 
                                [LIVEURL] = 'www.thisistotallyalink.com', 
                                [AssignedEditDate] = '2018-03-22', 
                                [RightsClearancesStatus] = 'Permissions Cleared', 
                                [Series] = 'On Tour', 
                                [TargetLengthminutes] = '1800', 
                                [Budget] = NULL, 
                                [Spend] = NULL, 
                                [Agency] = NULL, 
                                [RemainingBudget] = '0', 
                                [createdTime] = '2017-03-30T11:18:40Z'
                        WHERE VideoId = 'recyFoC1PX6fITY7T';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: AgencyContact
            --  STATIC: 
            --  Rows: 20
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'rec3rcBYlgUmrI1V8')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'rec3rcBYlgUmrI1V8', 
                        
                                'Robert Gallman', 
                        
                                '(111) 111-1111', 
                        
                                'robert@anomnomalee.com', 
                        
                                'User research', 
                        
                                'recfji4t4myY4wSGg', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Robert Gallman', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'robert@anomnomalee.com', 
                                [Team] = 'User research', 
                                [Agency] = 'recfji4t4myY4wSGg', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'rec3rcBYlgUmrI1V8';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'rec42EmJpCmqOeyO6')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'rec42EmJpCmqOeyO6', 
                        
                                'Michael Zimmerman', 
                        
                                '(111) 111-1111', 
                        
                                'michael@doitch.com', 
                        
                                'VR', 
                        
                                'recSecPmghN7Pxb9i', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Michael Zimmerman', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'michael@doitch.com', 
                                [Team] = 'VR', 
                                [Agency] = 'recSecPmghN7Pxb9i', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'rec42EmJpCmqOeyO6';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recB1lCoVd0xmtqYM')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recB1lCoVd0xmtqYM', 
                        
                                'Ann Martina', 
                        
                                '(111) 111-1111', 
                        
                                'ann@dragon8.com', 
                        
                                'User research', 
                        
                                'recQYW2nMKsCzZDQa', 
                        
                                '2017-05-23T17:35:13Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Ann Martina', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'ann@dragon8.com', 
                                [Team] = 'User research', 
                                [Agency] = 'recQYW2nMKsCzZDQa', 
                                [createdTime] = '2017-05-23T17:35:13Z'
                        WHERE AgencyContactId = 'recB1lCoVd0xmtqYM';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recBDZk8RHbsuxfn0')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recBDZk8RHbsuxfn0', 
                        
                                'Edward Culbert', 
                        
                                '(111) 111-1111', 
                        
                                'edward@doitch.com', 
                        
                                'Video', 
                        
                                'recSecPmghN7Pxb9i', 
                        
                                '2017-05-23T17:35:59Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Edward Culbert', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'edward@doitch.com', 
                                [Team] = 'Video', 
                                [Agency] = 'recSecPmghN7Pxb9i', 
                                [createdTime] = '2017-05-23T17:35:59Z'
                        WHERE AgencyContactId = 'recBDZk8RHbsuxfn0';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recC6NVMvfjj1CUmL')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recC6NVMvfjj1CUmL', 
                        
                                'Michael Turner', 
                        
                                '(111) 111-1111', 
                        
                                'michael@dragon8.com', 
                        
                                'Social', 
                        
                                'recQYW2nMKsCzZDQa', 
                        
                                '2017-03-31T03:02:17Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Michael Turner', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'michael@dragon8.com', 
                                [Team] = 'Social', 
                                [Agency] = 'recQYW2nMKsCzZDQa', 
                                [createdTime] = '2017-03-31T03:02:17Z'
                        WHERE AgencyContactId = 'recC6NVMvfjj1CUmL';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recJZFqI3q0d5yxEv')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recJZFqI3q0d5yxEv', 
                        
                                'Randy Morgan', 
                        
                                '(111) 111-1111', 
                        
                                'randy@astronaut.com', 
                        
                                'Video', 
                        
                                'reciowbEIqOg9zzDG', 
                        
                                '2017-05-23T17:36:03Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Randy Morgan', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'randy@astronaut.com', 
                                [Team] = 'Video', 
                                [Agency] = 'reciowbEIqOg9zzDG', 
                                [createdTime] = '2017-05-23T17:36:03Z'
                        WHERE AgencyContactId = 'recJZFqI3q0d5yxEv';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recKtODCGJOaxvdem')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recKtODCGJOaxvdem', 
                        
                                'Laura Gillard', 
                        
                                '(111) 111-1111', 
                        
                                'laura@sockhop.com', 
                        
                                'Social', 
                        
                                'recgJgtey6g3GjIYl', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Laura Gillard', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'laura@sockhop.com', 
                                [Team] = 'Social', 
                                [Agency] = 'recgJgtey6g3GjIYl', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'recKtODCGJOaxvdem';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recLf0S8w7eM86tbe')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recLf0S8w7eM86tbe', 
                        
                                'Mary Spikes', 
                        
                                '(111) 111-1111', 
                        
                                'mary@sockhop.com', 
                        
                                'Social', 
                        
                                'recgJgtey6g3GjIYl', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Mary Spikes', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'mary@sockhop.com', 
                                [Team] = 'Social', 
                                [Agency] = 'recgJgtey6g3GjIYl', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'recLf0S8w7eM86tbe';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recT43PMNW0yGxBZe')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recT43PMNW0yGxBZe', 
                        
                                'Noel Hamilton', 
                        
                                '(111) 111-1111', 
                        
                                'noel@sockhop.com', 
                        
                                'User research', 
                        
                                'recgJgtey6g3GjIYl', 
                        
                                '2017-03-31T04:04:26Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Noel Hamilton', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'noel@sockhop.com', 
                                [Team] = 'User research', 
                                [Agency] = 'recgJgtey6g3GjIYl', 
                                [createdTime] = '2017-03-31T04:04:26Z'
                        WHERE AgencyContactId = 'recT43PMNW0yGxBZe';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recVnBzrrB9LtIspI')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recVnBzrrB9LtIspI', 
                        
                                'Michael Elam', 
                        
                                '(111) 111-1111', 
                        
                                'michael@73andcloudy.com', 
                        
                                'Video', 
                        
                                'recsUo7Ar75R1FYGQ', 
                        
                                '2017-05-23T17:35:13Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Michael Elam', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'michael@73andcloudy.com', 
                                [Team] = 'Video', 
                                [Agency] = 'recsUo7Ar75R1FYGQ', 
                                [createdTime] = '2017-05-23T17:35:13Z'
                        WHERE AgencyContactId = 'recVnBzrrB9LtIspI';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recVtSh50FK2rF6SB')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recVtSh50FK2rF6SB', 
                        
                                'Christopher Wright', 
                        
                                '(111) 111-1111', 
                        
                                'christopher@doitch.com', 
                        
                                'VR', 
                        
                                'recSecPmghN7Pxb9i', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Christopher Wright', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'christopher@doitch.com', 
                                [Team] = 'VR', 
                                [Agency] = 'recSecPmghN7Pxb9i', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recVtSh50FK2rF6SB';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recb29GQobavcpugD')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recb29GQobavcpugD', 
                        
                                'Jerry Pritchard', 
                        
                                '(111) 111-1111', 
                        
                                'jerry@anomnomalee.com', 
                        
                                'UX', 
                        
                                'recfji4t4myY4wSGg', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Jerry Pritchard', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'jerry@anomnomalee.com', 
                                [Team] = 'UX', 
                                [Agency] = 'recfji4t4myY4wSGg', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recb29GQobavcpugD';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recbCLakUkmETsp2h')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recbCLakUkmETsp2h', 
                        
                                'Joseph Osborn', 
                        
                                '(111) 111-1111', 
                        
                                'joseph@astronaut.com', 
                        
                                'VR', 
                        
                                'reciowbEIqOg9zzDG', 
                        
                                '2017-03-31T03:02:17Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Joseph Osborn', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'joseph@astronaut.com', 
                                [Team] = 'VR', 
                                [Agency] = 'reciowbEIqOg9zzDG', 
                                [createdTime] = '2017-03-31T03:02:17Z'
                        WHERE AgencyContactId = 'recbCLakUkmETsp2h';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recf2iuyCzRiPju9m')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recf2iuyCzRiPju9m', 
                        
                                'Marline King', 
                        
                                '(111) 111-1111', 
                        
                                'marline@astronaut.com', 
                        
                                'Video', 
                        
                                'reciowbEIqOg9zzDG', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Marline King', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'marline@astronaut.com', 
                                [Team] = 'Video', 
                                [Agency] = 'reciowbEIqOg9zzDG', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recf2iuyCzRiPju9m';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recfn5GWQZqvAnUcK')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recfn5GWQZqvAnUcK', 
                        
                                'Matthew Funke', 
                        
                                '(111) 111-1111', 
                        
                                'matthew@anomnomalee.com', 
                        
                                'Video', 
                        
                                'recfji4t4myY4wSGg', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Matthew Funke', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'matthew@anomnomalee.com', 
                                [Team] = 'Video', 
                                [Agency] = 'recfji4t4myY4wSGg', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'recfn5GWQZqvAnUcK';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'reci2l62HZWCaEcBd')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'reci2l62HZWCaEcBd', 
                        
                                'Hillary Fiqueroa', 
                        
                                '(111) 111-1111', 
                        
                                'hillary@dragon8.com', 
                        
                                'Social', 
                        
                                'recQYW2nMKsCzZDQa', 
                        
                                '2017-05-23T17:35:12Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Hillary Fiqueroa', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'hillary@dragon8.com', 
                                [Team] = 'Social', 
                                [Agency] = 'recQYW2nMKsCzZDQa', 
                                [createdTime] = '2017-05-23T17:35:12Z'
                        WHERE AgencyContactId = 'reci2l62HZWCaEcBd';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'reciJqNojBMxW2nor')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'reciJqNojBMxW2nor', 
                        
                                'Joan Morgan', 
                        
                                '(111) 111-1111', 
                        
                                'joan@73andcloudy.com', 
                        
                                'Video', 
                        
                                'recsUo7Ar75R1FYGQ', 
                        
                                '2017-03-31T03:02:17Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Joan Morgan', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'joan@73andcloudy.com', 
                                [Team] = 'Video', 
                                [Agency] = 'recsUo7Ar75R1FYGQ', 
                                [createdTime] = '2017-03-31T03:02:17Z'
                        WHERE AgencyContactId = 'reciJqNojBMxW2nor';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recnU8MHXS3w4uWzv')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recnU8MHXS3w4uWzv', 
                        
                                'Andres Roth', 
                        
                                '(111) 111-1111', 
                        
                                'andres@sockhop.com', 
                        
                                'Video', 
                        
                                'recgJgtey6g3GjIYl', 
                        
                                '2017-05-23T17:36:03Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Andres Roth', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'andres@sockhop.com', 
                                [Team] = 'Video', 
                                [Agency] = 'recgJgtey6g3GjIYl', 
                                [createdTime] = '2017-05-23T17:36:03Z'
                        WHERE AgencyContactId = 'recnU8MHXS3w4uWzv';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recyGBMSc2hKp5D1W')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recyGBMSc2hKp5D1W', 
                        
                                'Kerry Skiba', 
                        
                                '(111) 111-1111', 
                        
                                'kerry@anomnomalee.com', 
                        
                                'Video', 
                        
                                'recfji4t4myY4wSGg', 
                        
                                '2017-05-23T17:36:04Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Kerry Skiba', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'kerry@anomnomalee.com', 
                                [Team] = 'Video', 
                                [Agency] = 'recfji4t4myY4wSGg', 
                                [createdTime] = '2017-05-23T17:36:04Z'
                        WHERE AgencyContactId = 'recyGBMSc2hKp5D1W';
                    END
                

                    IF NOT EXISTS (SELECT AgencyContactId FROM AgencyContact WHERE AgencyContactId = 'recyIX0Nk5dBTx951')
                    BEGIN
                        INSERT INTO [AgencyContact] ([AgencyContactId] , [Name] , [Phone] , [Email] , [Team] , [Agency] , [createdTime] ) VALUES (
                        
                                'recyIX0Nk5dBTx951', 
                        
                                'Wendy Keener', 
                        
                                '(111) 111-1111', 
                        
                                'wendy@73andcloudy.com', 
                        
                                'Video', 
                        
                                'recsUo7Ar75R1FYGQ', 
                        
                                '2017-05-23T17:35:11Z');
                    END ELSE BEGIN
                        UPDATE  [AgencyContact] 
                            SET 
                                [Name] = 'Wendy Keener', 
                                [Phone] = '(111) 111-1111', 
                                [Email] = 'wendy@73andcloudy.com', 
                                [Team] = 'Video', 
                                [Agency] = 'recsUo7Ar75R1FYGQ', 
                                [createdTime] = '2017-05-23T17:35:11Z'
                        WHERE AgencyContactId = 'recyIX0Nk5dBTx951';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Scene
            --  STATIC: 
            --  Rows: 5
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recALzohOmW8FamWd')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Video] , [Props] , [Location] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recALzohOmW8FamWd', 
                        
                                'Talking to customers', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                NULL, 
                        
                                'recl1atkI6EBcVADD', 
                        
                                'thisistotallyalink.com', 
                        
                                '2', 
                        
                                '2017-03-31T02:36:56Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'Talking to customers', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [Props] = NULL, 
                                [Location] = 'recl1atkI6EBcVADD', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '2', 
                                [createdTime] = '2017-03-31T02:36:56Z'
                        WHERE SceneId = 'recALzohOmW8FamWd';
                    END
                

                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recDjtCKSoZ4bI3Ef')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Video] , [Props] , [Location] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recDjtCKSoZ4bI3Ef', 
                        
                                'Meeting the staff', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                NULL, 
                        
                                'rec3qq2H1SIZF2ozn', 
                        
                                'thisistotallyalink.com', 
                        
                                '1', 
                        
                                '2017-03-31T02:36:56Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'Meeting the staff', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [Props] = NULL, 
                                [Location] = 'rec3qq2H1SIZF2ozn', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '1', 
                                [createdTime] = '2017-03-31T02:36:56Z'
                        WHERE SceneId = 'recDjtCKSoZ4bI3Ef';
                    END
                

                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recEc433jfpCbXOai')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Video] , [Props] , [Location] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recEc433jfpCbXOai', 
                        
                                'SurfDrone at work', 
                        
                                'recGBPGD9qXlWOuTk', 
                        
                                'rec0AibB9TnelBelX', 
                        
                                'rec3qq2H1SIZF2ozn', 
                        
                                'thisistotallyalink.com', 
                        
                                '1', 
                        
                                '2017-07-12T03:14:49Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'SurfDrone at work', 
                                [Video] = 'recGBPGD9qXlWOuTk', 
                                [Props] = 'rec0AibB9TnelBelX', 
                                [Location] = 'rec3qq2H1SIZF2ozn', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '1', 
                                [createdTime] = '2017-07-12T03:14:49Z'
                        WHERE SceneId = 'recEc433jfpCbXOai';
                    END
                

                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'recTcp5b065uUYRGl')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Video] , [Props] , [Location] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'recTcp5b065uUYRGl', 
                        
                                'SurfDrone''s favorite things', 
                        
                                'recGBPGD9qXlWOuTk', 
                        
                                NULL, 
                        
                                'rec3qq2H1SIZF2ozn', 
                        
                                'thisistotallyalink.com', 
                        
                                '2', 
                        
                                '2017-07-12T03:14:49Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'SurfDrone''s favorite things', 
                                [Video] = 'recGBPGD9qXlWOuTk', 
                                [Props] = NULL, 
                                [Location] = 'rec3qq2H1SIZF2ozn', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '2', 
                                [createdTime] = '2017-07-12T03:14:49Z'
                        WHERE SceneId = 'recTcp5b065uUYRGl';
                    END
                

                    IF NOT EXISTS (SELECT SceneId FROM Scene WHERE SceneId = 'rece5b2vDyyVr0Lg7')
                    BEGIN
                        INSERT INTO [Scene] ([SceneId] , [SceneName] , [Video] , [Props] , [Location] , [Script] , [SceneNum] , [createdTime] ) VALUES (
                        
                                'rece5b2vDyyVr0Lg7', 
                        
                                'CrestFALLEN company culture', 
                        
                                'recoAIdaDhhhXqW06', 
                        
                                NULL, 
                        
                                'recDLe3h9FJAGLfVI', 
                        
                                'thisistotallyalink.com', 
                        
                                '3', 
                        
                                '2017-03-31T02:36:56Z');
                    END ELSE BEGIN
                        UPDATE  [Scene] 
                            SET 
                                [SceneName] = 'CrestFALLEN company culture', 
                                [Video] = 'recoAIdaDhhhXqW06', 
                                [Props] = NULL, 
                                [Location] = 'recDLe3h9FJAGLfVI', 
                                [Script] = 'thisistotallyalink.com', 
                                [SceneNum] = '3', 
                                [createdTime] = '2017-03-31T02:36:56Z'
                        WHERE SceneId = 'rece5b2vDyyVr0Lg7';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: InventoryItem
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'rec0AibB9TnelBelX')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [Whocurrentlyhasit] , [Scenes] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'rec0AibB9TnelBelX', 
                        
                                'Waveform Longbort', 
                        
                                'Prop', 
                        
                                'Made in house', 
                        
                                'In Use', 
                        
                                'rec3DkGQ3iksGWFC4', 
                        
                                'recEc433jfpCbXOai', 
                        
                                NULL, 
                        
                                '2017-03-31T03:46:40Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Waveform Longbort', 
                                [Type] = 'Prop', 
                                [Source] = 'Made in house', 
                                [Status] = 'In Use', 
                                [Whocurrentlyhasit] = 'rec3DkGQ3iksGWFC4', 
                                [Scenes] = 'recEc433jfpCbXOai', 
                                [NextShootDate] = NULL, 
                                [createdTime] = '2017-03-31T03:46:40Z'
                        WHERE InventoryItemId = 'rec0AibB9TnelBelX';
                    END
                

                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recBmgsqB96PwTJcF')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [Whocurrentlyhasit] , [Scenes] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recBmgsqB96PwTJcF', 
                        
                                'Roland V-4EX 4-Ch Digital Video Mixer w/ Effects (4-Ch Video Mixer)', 
                        
                                'Mixer', 
                        
                                'Boston Warehouse', 
                        
                                'In Use', 
                        
                                'recWbmoMieC0S7mj0', 
                        
                                NULL, 
                        
                                '2018-03-23', 
                        
                                '2017-03-31T02:39:24Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Roland V-4EX 4-Ch Digital Video Mixer w/ Effects (4-Ch Video Mixer)', 
                                [Type] = 'Mixer', 
                                [Source] = 'Boston Warehouse', 
                                [Status] = 'In Use', 
                                [Whocurrentlyhasit] = 'recWbmoMieC0S7mj0', 
                                [Scenes] = NULL, 
                                [NextShootDate] = '2018-03-23', 
                                [createdTime] = '2017-03-31T02:39:24Z'
                        WHERE InventoryItemId = 'recBmgsqB96PwTJcF';
                    END
                

                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recSqbYFLjWFjiJD2')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [Whocurrentlyhasit] , [Scenes] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recSqbYFLjWFjiJD2', 
                        
                                'Enormous bottle of sunscreen', 
                        
                                'Prop', 
                        
                                'Goodwill', 
                        
                                'In Use', 
                        
                                'recxnmbwrQ6lcg7Ib', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '2017-03-31T03:46:54Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Enormous bottle of sunscreen', 
                                [Type] = 'Prop', 
                                [Source] = 'Goodwill', 
                                [Status] = 'In Use', 
                                [Whocurrentlyhasit] = 'recxnmbwrQ6lcg7Ib', 
                                [Scenes] = NULL, 
                                [NextShootDate] = NULL, 
                                [createdTime] = '2017-03-31T03:46:54Z'
                        WHERE InventoryItemId = 'recSqbYFLjWFjiJD2';
                    END
                

                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'reccnwiufryqkL7VQ')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [Whocurrentlyhasit] , [Scenes] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'reccnwiufryqkL7VQ', 
                        
                                'Sennheiser MKE 600', 
                        
                                'Shotgun Mic', 
                        
                                'Mics R Us', 
                        
                                'Available', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '2018-03-23', 
                        
                                '2017-03-31T03:42:11Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Sennheiser MKE 600', 
                                [Type] = 'Shotgun Mic', 
                                [Source] = 'Mics R Us', 
                                [Status] = 'Available', 
                                [Whocurrentlyhasit] = NULL, 
                                [Scenes] = NULL, 
                                [NextShootDate] = '2018-03-23', 
                                [createdTime] = '2017-03-31T03:42:11Z'
                        WHERE InventoryItemId = 'reccnwiufryqkL7VQ';
                    END
                

                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recl8efmmvetFcQUX')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [Whocurrentlyhasit] , [Scenes] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recl8efmmvetFcQUX', 
                        
                                'Sony PMW-300', 
                        
                                'Video Camera', 
                        
                                'Boston Video Rentals', 
                        
                                'Reserved', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '2018-03-24', 
                        
                                '2017-03-31T02:39:24Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Sony PMW-300', 
                                [Type] = 'Video Camera', 
                                [Source] = 'Boston Video Rentals', 
                                [Status] = 'Reserved', 
                                [Whocurrentlyhasit] = NULL, 
                                [Scenes] = NULL, 
                                [NextShootDate] = '2018-03-24', 
                                [createdTime] = '2017-03-31T02:39:24Z'
                        WHERE InventoryItemId = 'recl8efmmvetFcQUX';
                    END
                

                    IF NOT EXISTS (SELECT InventoryItemId FROM InventoryItem WHERE InventoryItemId = 'recwdEoqtZmqZvdzk')
                    BEGIN
                        INSERT INTO [InventoryItem] ([InventoryItemId] , [Name] , [Type] , [Source] , [Status] , [Whocurrentlyhasit] , [Scenes] , [NextShootDate] , [createdTime] ) VALUES (
                        
                                'recwdEoqtZmqZvdzk', 
                        
                                'Roland V-1HD Portable Compact Live HD Video Mixer & Production Switcher', 
                        
                                'Mixer', 
                        
                                'Boston Warehouse', 
                        
                                'In Use', 
                        
                                'recc4Zp5ZhleUAOkW', 
                        
                                NULL, 
                        
                                '2018-03-17', 
                        
                                '2017-03-31T02:39:24Z');
                    END ELSE BEGIN
                        UPDATE  [InventoryItem] 
                            SET 
                                [Name] = 'Roland V-1HD Portable Compact Live HD Video Mixer & Production Switcher', 
                                [Type] = 'Mixer', 
                                [Source] = 'Boston Warehouse', 
                                [Status] = 'In Use', 
                                [Whocurrentlyhasit] = 'recc4Zp5ZhleUAOkW', 
                                [Scenes] = NULL, 
                                [NextShootDate] = '2018-03-17', 
                                [createdTime] = '2017-03-31T02:39:24Z'
                        WHERE InventoryItemId = 'recwdEoqtZmqZvdzk';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Agency
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recQYW2nMKsCzZDQa')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recQYW2nMKsCzZDQa', 
                        
                                'Dragon8', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'Dragon8', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recQYW2nMKsCzZDQa';
                    END
                

                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recSecPmghN7Pxb9i')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recSecPmghN7Pxb9i', 
                        
                                'Doitch', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'Doitch', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recSecPmghN7Pxb9i';
                    END
                

                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recfji4t4myY4wSGg')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recfji4t4myY4wSGg', 
                        
                                'A Nom Nom-alee', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'A Nom Nom-alee', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recfji4t4myY4wSGg';
                    END
                

                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recgJgtey6g3GjIYl')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recgJgtey6g3GjIYl', 
                        
                                'Sockhop x Sockhop', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'Sockhop x Sockhop', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recgJgtey6g3GjIYl';
                    END
                

                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'reciowbEIqOg9zzDG')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'reciowbEIqOg9zzDG', 
                        
                                'ASTRONAUT', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = 'ASTRONAUT', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'reciowbEIqOg9zzDG';
                    END
                

                    IF NOT EXISTS (SELECT AgencyId FROM Agency WHERE AgencyId = 'recsUo7Ar75R1FYGQ')
                    BEGIN
                        INSERT INTO [Agency] ([AgencyId] , [Name] , [createdTime] ) VALUES (
                        
                                'recsUo7Ar75R1FYGQ', 
                        
                                '73andcloudy', 
                        
                                '2017-05-23T18:00:13Z');
                    END ELSE BEGIN
                        UPDATE  [Agency] 
                            SET 
                                [Name] = '73andcloudy', 
                                [createdTime] = '2017-05-23T18:00:13Z'
                        WHERE AgencyId = 'recsUo7Ar75R1FYGQ';
                    END
                
            
 
                